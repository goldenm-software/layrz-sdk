import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Every field the detail selection returns, besides `access`.
const _detailFields = [
  'id', 'name', 'code', 'kind', 'isPaused', 'timezoneId', 'cooldownTime', 'searchTimeDelta', 'childrenIds', //
  'caseKind', 'caseCommentPattern', 'caseCommentPatternValue', 'geofenceKind', 'geofencesIds', 'tagsGeofencesIds',
  'formula', 'script', 'exactHour', 'crontabFormat', 'isPlainCrontab', 'weekdays', 'parameters', 'authAssetsIds',
  'authTagsIds', 'authUsersIds', 'careProtocolId', 'priority', 'visualEventEffect', 'color', 'hasCaseExpirity',
  'whenCaseExpiresDelta', 'stackUpperLimit', 'shouldStack', 'manualActionFields', 'assetsIds', 'tagsAssetsIds',
  'shouldGenerateLocator', 'locatorExpiresDelta', 'locatorGeofencesIds', 'locatorExpiresTriggersIds',
  'locatorCustomizationId',
];

/// Payload shaped like the detail selection of `Trigger.fetch`.
Map<String, dynamic> _detailJson() => {
  'id': '1',
  'name': 'Alpha',
  'code': 'ALPHA',
  'kind': 'MANUAL_ACTION',
  'isPaused': true,
  'timezoneId': 'tz-1',
  'cooldownTime': 120,
  'searchTimeDelta': 60,
  'childrenIds': ['2'],
  'caseKind': 'ON_FOLLOW',
  'caseCommentPattern': 'CONTAINS',
  'caseCommentPatternValue': 'ok',
  'geofenceKind': 'ENTRANCE',
  'geofencesIds': ['g1'],
  'tagsGeofencesIds': ['tg1'],
  'formula': 'TRUE',
  'script': null,
  'exactHour': '08:30',
  'crontabFormat': '* * * * *',
  'isPlainCrontab': false,
  'weekdays': ['MON', 'TUE'],
  'parameters': ['p1'],
  'authAssetsIds': ['a1'],
  'authTagsIds': ['t1'],
  'authUsersIds': ['u1'],
  'careProtocolId': 'cp1',
  'priority': 3,
  'visualEventEffect': 'NONE',
  'color': '#FF0000',
  'hasCaseExpirity': true,
  'whenCaseExpiresDelta': 300,
  'stackUpperLimit': 5,
  'shouldStack': true,
  'manualActionFields': [
    {'question': 'How many?', 'answer': 'RANGE', 'minValue': 1, 'maxValue': 10, 'choices': <String>[]},
  ],
  'assetsIds': ['a2'],
  'tagsAssetsIds': ['ta2'],
  'shouldGenerateLocator': true,
  'locatorExpiresDelta': 3600,
  'locatorGeofencesIds': ['lg1'],
  'locatorExpiresTriggersIds': ['lt1'],
  'locatorCustomizationId': 'app1',
  'access': [
    {'id': 'ac1', 'userId': 'u1', 'objectId': '1', 'module': 'TRIGGERS', 'read': true, 'write': true, 'manage': false},
  ],
};

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

void main() {
  group('Trigger detail payload', () {
    test('fromJson decodes the exact shape the detail selection returns', () {
      final trigger = Trigger.fromJson(_detailJson());

      expect(trigger.id, '1');
      expect(trigger.kind, TriggerType.manualAction);
      expect(trigger.isPaused, isTrue);
      expect(trigger.cooldownTime, const Duration(minutes: 2));
      expect(trigger.exactHour, const TimeOfDay(hour: 8, minute: 30));
      expect(trigger.weekdays, [Weekday.monday, Weekday.tuesday]);
      expect(trigger.color, const Color(0xFFFF0000));
      expect(trigger.manualActionFields?.single.question, 'How many?');
      expect(trigger.manualActionFields?.single.maxValue, 10);
      expect(trigger.access?.single.userId, 'u1');
      expect(trigger.locatorCustomizationId, 'app1');
    });
  });

  group('TriggerInput JSON', () {
    test('round trips through JSON', () {
      final input = TriggerInput(
        id: '1',
        name: 'Alpha',
        code: 'ALPHA',
        kind: TriggerType.exactTime,
        exactHour: const TimeOfDay(hour: 8, minute: 30),
        weekdays: [Weekday.monday],
        childrenIds: ['2'],
        cooldownTime: const Duration(minutes: 5),
        manualActionFields: [
          CareTaskInput(question: 'Q', answer: AnswerKind.choice, choices: ['a', 'b']),
        ],
      );

      final decoded = TriggerInput.fromJson(jsonDecode(jsonEncode(input.toJson())) as Map<String, dynamic>);

      expect(decoded.toJson(), jsonDecode(jsonEncode(input.toJson())));
      expect(decoded.kind, TriggerType.exactTime);
      expect(decoded.cooldownTime, const Duration(minutes: 5));
      expect(decoded.manualActionFields?.single.choices, ['a', 'b']);
    });
  });

  group('TriggerVariant', () {
    test('has the standard and Mappit variants', () {
      expect(TriggerVariant.values, [TriggerVariant.standard, TriggerVariant.mappit]);
    });
  });

  group('API callers', () {
    late _FakeServer server;

    setUp(() async {
      HttpOverrides.global = null;
      server = await _FakeServer.start();
    });

    tearDown(() => server.close());

    test('every operation uses the root field of its variant', () async {
      server.respond = (_) => {'data': <String, dynamic>{}};
      const trigger = Trigger(id: '1', name: 'A', code: 'A', kind: TriggerType.formula);

      for (final variant in TriggerVariant.values) {
        await Trigger.fetchAll(apiToken: 'token', uri: server.uri, variant: variant);
        await trigger.fetch(apiToken: 'token', uri: server.uri, variant: variant);
        await TriggerInput().save(apiToken: 'token', uri: server.uri, variant: variant);
        await TriggerInput(id: '1').save(apiToken: 'token', uri: server.uri, variant: variant);
        await Trigger.deleteMany(apiToken: 'token', uri: server.uri, ids: const ['1'], variant: variant);
      }

      final queries = server.requests.map(_query).toList();
      expect(queries, hasLength(10));
      expect(queries[0], contains('triggers {'));
      expect(queries[1], contains('triggers(id: \$id)'));
      expect(queries[2], contains('addTrigger(data: \$data)'));
      expect(queries[3], contains('editTrigger(data: \$data)'));
      expect(queries[4], contains('deleteTriggers(ids: \$ids) { status }'));
      expect(queries[5], contains('mappitTriggers {'));
      expect(queries[6], contains('mappitTriggers(id: \$id)'));
      expect(queries[7], contains('addMappitTrigger(data: \$data)'));
      expect(queries[8], contains('editMappitTrigger(data: \$data)'));
      expect(queries[9], contains('deleteMappitTriggers(ids: \$ids) { status }'));
      expect(queries[2], contains('\$data: TriggerInput!'));
      for (final query in queries) {
        expect(query, isNot(contains('apiToken')));
      }
    });

    test('fetchAll selects the lightweight fields plus extraFields', () async {
      server.respond = (_) => {
        'data': {
          'triggers': {
            'status': 'OK',
            'result': [
              {'id': '1', 'name': 'A', 'code': 'A', 'kind': 'FORMULA', 'isPaused': true, 'formula': 'TRUE'},
            ],
          },
        },
      };

      final result = await Trigger.fetchAll(
        apiToken: 'token',
        uri: server.uri,
        extraFields: [GqlField(name: 'formula')],
      );

      expect(result.single.isPaused, isTrue);
      expect(result.single.formula, 'TRUE');
      final query = _query(server.requests.single);
      for (final field in ['id', 'name', 'code', 'kind', 'isPaused', 'formula']) {
        expect(query, contains(field), reason: field);
      }
      for (final field in ['geofencesIds', 'manualActionFields', 'access', 'locatorCustomizationId']) {
        expect(query, isNot(contains(field)), reason: field);
      }
    });

    test('fetch selects the full detail and decodes it', () async {
      server.respond = (_) => {
        'data': {
          'triggers': {
            'status': 'OK',
            'result': [_detailJson()],
          },
        },
      };
      const trigger = Trigger(id: '1', name: 'A', code: 'A', kind: TriggerType.formula);

      final result = await trigger.fetch(apiToken: 'token', uri: server.uri);

      expect(result?.manualActionFields?.single.question, 'How many?');
      expect(result?.access?.single.id, 'ac1');
      final body = server.requests.single;
      expect(body['variables'], {'id': '1'});
      final query = _query(body);
      for (final field in _detailFields) {
        expect(query, contains(field), reason: field);
      }
      expect(query, contains('manualActionFields { question answer minValue maxValue choices }'));
      expect(query, contains('access {'));
    });

    test('fetch reports NOTFOUND on an empty result', () async {
      server.respond = (_) => {
        'data': {
          'triggers': {'status': 'OK', 'result': <Object>[]},
        },
      };
      final statuses = <ApiStatus>[];
      const trigger = Trigger(id: '1', name: 'A', code: 'A', kind: TriggerType.formula);

      final result = await trigger.fetch(apiToken: 'token', uri: server.uri, onResponse: statuses.add);

      expect(result, isNull);
      expect(statuses, [ApiStatus.notfound]);
    });

    test('save returns the saved trigger and selects the detail without access', () async {
      server.respond = (_) => {
        'data': {
          'addTrigger': {'status': 'OK', 'result': _detailJson()..remove('access')},
        },
      };

      final (status, errors, trigger) = await TriggerInput(name: 'A').save(apiToken: 'token', uri: server.uri);

      expect(status, ApiStatus.ok);
      expect(errors, isNull);
      expect(trigger?.code, 'ALPHA');
      final body = server.requests.single;
      expect((body['variables'] as Map)['data']['name'], 'A');
      final query = _query(body);
      for (final field in _detailFields) {
        expect(query, contains(field), reason: field);
      }
      expect(query, isNot(contains('access')));
    });

    test('save returns the errors and reports a failing status', () async {
      server.respond = (_) => {
        'data': {
          'editTrigger': {
            'status': 'BAD_REQUEST',
            'errors': {
              'name': [
                {'code': 'required'},
              ],
            },
          },
        },
      };
      final statuses = <ApiStatus>[];

      final (status, errors, trigger) = await TriggerInput(
        id: '1',
      ).save(apiToken: 'token', uri: server.uri, onResponse: statuses.add);

      expect(status, ApiStatus.badRequest);
      expect(errors, isNotNull);
      expect(trigger, isNull);
      expect(statuses, [ApiStatus.badRequest]);
    });

    test('deleteMany reports the failing status', () async {
      server.respond = (_) => {
        'data': {
          'deleteTriggers': {'status': 'ACCESS_DENIED'},
        },
      };
      final statuses = <ApiStatus>[];

      final success = await Trigger.deleteMany(
        apiToken: 'token',
        uri: server.uri,
        ids: const ['1', '2'],
        onResponse: statuses.add,
      );

      expect(success, isFalse);
      expect(statuses, [ApiStatus.accessDenied]);
      expect(server.requests.single['variables'], {
        'ids': ['1', '2'],
      });
    });

    test('deleteMany returns true on OK', () async {
      server.respond = (_) => {
        'data': {
          'deleteTriggers': {'status': 'OK'},
        },
      };

      expect(await Trigger.deleteMany(apiToken: 'token', uri: server.uri, ids: const ['1']), isTrue);
    });

    test('toggle calls toggleTriggerState and returns the trigger', () async {
      server.respond = (_) => {
        'data': {
          'toggleTriggerState': {
            'status': 'OK',
            'result': {'id': '1', 'name': 'A', 'code': 'A', 'kind': 'FORMULA', 'isPaused': true},
          },
        },
      };

      final (status, _, trigger) = await Trigger.toggle(apiToken: 'token', uri: server.uri, id: '1');

      expect(status, ApiStatus.ok);
      expect(trigger?.isPaused, isTrue);
      final body = server.requests.single;
      expect(body['variables'], {'triggerId': '1'});
      expect(_query(body), contains('toggleTriggerState(triggerId: \$triggerId)'));
      expect(_query(body), contains('locatorCustomizationId'));
    });

    test('toggle reports a failing status', () async {
      server.respond = (_) => {
        'data': {
          'toggleTriggerState': {'status': 'INTERNAL_ERROR'},
        },
      };
      final statuses = <ApiStatus>[];

      final (status, _, trigger) = await Trigger.toggle(
        apiToken: 'token',
        uri: server.uri,
        id: '1',
        onResponse: statuses.add,
      );

      expect(status, ApiStatus.internalError);
      expect(trigger, isNull);
      expect(statuses, [ApiStatus.internalError]);
    });

    test('fetchLast10 selects id, asset and at', () async {
      server.respond = (_) => {
        'data': {
          'last10TriggerActivations': {
            'status': 'OK',
            'result': [
              {
                'id': 'act1',
                'asset': {'id': 'a1', 'name': 'Truck'},
                'at': 1700000000,
              },
            ],
          },
        },
      };

      final result = await TriggerActivation.fetchLast10(apiToken: 'token', uri: server.uri, triggerId: '1');

      expect(result.single.asset.name, 'Truck');
      expect(result.single.date, DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000));
      final body = server.requests.single;
      expect(body['variables'], {'triggerId': '1'});
      expect(
        _query(body),
        contains(
          'last10TriggerActivations(triggerId: \$triggerId) { status errors result { id asset { id name } at } }',
        ),
      );
    });

    test('fetchLast10 returns an empty list and reports a failing status', () async {
      server.respond = (_) => {
        'data': {
          'last10TriggerActivations': {'status': 'ACCESS_DENIED'},
        },
      };
      final statuses = <ApiStatus>[];

      final result = await TriggerActivation.fetchLast10(
        apiToken: 'token',
        uri: server.uri,
        triggerId: '1',
        onResponse: statuses.add,
      );

      expect(result, isEmpty);
      expect(statuses, [ApiStatus.accessDenied]);
    });
  });
}
