import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

String _query(Map<String, dynamic> body) => (body['query'] as String).replaceAll(RegExp(r'\s+'), ' ').trim();

/// Local GraphQL server answering every request with [respond].
class _FakeServer {
  _FakeServer._(this._server);

  final HttpServer _server;
  final List<Map<String, dynamic>> requests = [];
  FutureOr<Map<String, dynamic>> Function(Map<String, dynamic> body) respond = (_) => {};

  Uri get uri => Uri.parse('http://${_server.address.host}:${_server.port}/graphql');

  static Future<_FakeServer> start() async {
    final fake = _FakeServer._(await HttpServer.bind(InternetAddress.loopbackIPv4, 0));
    fake._server.listen((request) async {
      final body = jsonDecode(await utf8.decoder.bind(request).join()) as Map<String, dynamic>;
      fake.requests.add(body);
      final response = await fake.respond(body);
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(response));
      await request.response.close();
    });
    return fake;
  }

  Future<void> close() => _server.close(force: true);
}

const _trigger = Trigger(id: 't1', name: 'Door', code: 'DOOR', kind: TriggerType.manualAction);

void main() {
  late _FakeServer server;

  setUp(() async {
    HttpOverrides.global = null;
    server = await _FakeServer.start();
  });

  tearDown(() => server.close());

  group('Trigger.fetchManualFromAsset', () {
    test('selects the manual action fields and decodes every answer kind', () async {
      server.respond = (_) => {
        'data': {
          'findManualTriggersFromAsset': {
            'status': 'OK',
            'result': [
              {
                'id': 't1',
                'name': 'Door',
                'code': 'DOOR',
                'kind': 'MANUAL_ACTION',
                'isPaused': false,
                'manualActionFields': [
                  {'question': 'Note', 'answer': 'TEXT', 'minValue': 0, 'maxValue': 0, 'choices': <String>[]},
                  {'question': 'Count', 'answer': 'RANGE', 'minValue': 1, 'maxValue': 10, 'choices': <String>[]},
                  {'question': 'Ok?', 'answer': 'BOOLEAN', 'minValue': 0, 'maxValue': 0, 'choices': <String>[]},
                  {
                    'question': 'Color',
                    'answer': 'CHOICE',
                    'minValue': 0,
                    'maxValue': 0,
                    'choices': ['red', 'blue'],
                  },
                ],
              },
            ],
          },
        },
      };

      final result = await Trigger.fetchManualFromAsset(apiToken: 'token', uri: server.uri, assetId: 'a1');

      final fields = result.single.manualActionFields!;
      expect(result.single.kind, TriggerType.manualAction);
      expect(fields.map((f) => f.answer), [AnswerKind.text, AnswerKind.range, AnswerKind.boolean, AnswerKind.choice]);
      expect(fields[1].minValue, 1);
      expect(fields[1].maxValue, 10);
      expect(fields[3].choices, ['red', 'blue']);
      final body = server.requests.single;
      expect(body['variables'], {'assetId': 'a1'});
      final query = _query(body);
      expect(query, contains('\$assetId: ID!'));
      expect(query, contains('findManualTriggersFromAsset(assetId: \$assetId) { status errors result {'));
      expect(query, contains('manualActionFields { question answer minValue maxValue choices }'));
      expect(query, isNot(contains('apiToken')));
    });

    test('returns an empty list and reports a failing status', () async {
      server.respond = (_) => {
        'data': {
          'findManualTriggersFromAsset': {'status': 'NOT_FOUND'},
        },
      };
      final statuses = <ApiStatus>[];

      final result = await Trigger.fetchManualFromAsset(
        apiToken: 'token',
        uri: server.uri,
        assetId: 'a1',
        onResponse: statuses.add,
      );

      expect(result, isEmpty);
      expect(statuses, [ApiStatus.notfound]);
    });
  });

  group('Trigger.fetchManualAssets', () {
    test('selects id and name of the assets linked to the trigger', () async {
      server.respond = (_) => {
        'data': {
          'findAssetsFromManualTrigger': {
            'status': 'OK',
            'result': [
              {'id': 'a1', 'name': 'Truck'},
              {'id': 'a2', 'name': 'Van'},
            ],
          },
        },
      };

      final result = await _trigger.fetchManualAssets(apiToken: 'token', uri: server.uri);

      expect(result.map((a) => a.name), ['Truck', 'Van']);
      final body = server.requests.single;
      expect(body['variables'], {'triggerId': 't1'});
      expect(
        _query(body),
        contains('findAssetsFromManualTrigger(triggerId: \$triggerId) { status errors result { id name } }'),
      );
    });

    test('returns an empty list and reports a failing status', () async {
      server.respond = (_) => {
        'data': {
          'findAssetsFromManualTrigger': {'status': 'UNAUTHORIZED'},
        },
      };
      final statuses = <ApiStatus>[];

      final result = await _trigger.fetchManualAssets(apiToken: 'token', uri: server.uri, onResponse: statuses.add);

      expect(result, isEmpty);
      expect(statuses, [ApiStatus.unauthorized]);
    });
  });

  group('Trigger.registerManualActivation', () {
    test('sends the answers as Json and returns OK', () async {
      server.respond = (_) => {
        'data': {
          'registerManualTriggerActivation': {'status': 'OK'},
        },
      };

      final (status, errors, _) = await _trigger.registerManualActivation(
        apiToken: 'token',
        uri: server.uri,
        assetId: 'a1',
        data: {'Count': 3, 'Ok?': true},
      );

      expect(status, ApiStatus.ok);
      expect(errors, isNull);
      final body = server.requests.single;
      expect(body['variables'], {
        'triggerId': 't1',
        'assetId': 'a1',
        'data': {'Count': 3, 'Ok?': true},
      });
      final query = _query(body);
      expect(query, contains('\$data: Json!'));
      expect(
        query,
        contains(
          'registerManualTriggerActivation(triggerId: \$triggerId, assetId: \$assetId, data: \$data) '
          '{ status errors }',
        ),
      );
    });

    test('returns the field errors of a rejected activation', () async {
      server.respond = (_) => {
        'data': {
          'registerManualTriggerActivation': {
            'status': 'BAD_REQUEST',
            'errors': {
              'manualActionFields.0': [
                {'code': 'minValue', 'min': 1},
              ],
            },
          },
        },
      };
      final statuses = <ApiStatus>[];

      final (status, errors, _) = await _trigger.registerManualActivation(
        apiToken: 'token',
        uri: server.uri,
        assetId: 'a1',
        data: {'Count': 0},
        onResponse: statuses.add,
      );

      expect(status, ApiStatus.badRequest);
      expect(errors, contains('manualActionFields.0'));
      expect(statuses, [ApiStatus.badRequest]);
    });
  });
}
