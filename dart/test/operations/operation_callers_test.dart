import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

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
  group('OperationInput.fromOperation', () {
    test('keeps the external account that Operation serializes as accountId', () {
      const operation = Operation(
        id: '1',
        name: 'Webhook',
        operationType: OperationType.webhook,
        externalAccountId: 'ext-9',
        emailSubject: 'Alert',
      );

      final input = OperationInput.fromOperation(operation);

      expect(input.id, '1');
      expect(input.name, 'Webhook');
      expect(input.operationType, OperationType.webhook);
      expect(input.externalAccountId, 'ext-9');
      expect(input.emailSubject, 'Alert');
    });
  });

  group('OperationInput.saveWithResponse', () {
    late _FakeServer server;

    setUp(() async {
      HttpOverrides.global = null;
      server = await _FakeServer.start();
    });

    tearDown(() => server.close());

    test('returns the field errors of a rejected save', () async {
      server.respond = (_) => {
        'data': {
          'editOperation': {
            'status': 'BAD_REQUEST',
            'errors': {
              'name': ['required'],
            },
          },
        },
      };
      final reported = <ApiStatus>[];

      final (status, errors, saved) = await OperationInput(
        id: '1',
        name: '',
      ).saveWithResponse(apiToken: 'token', uri: server.uri, onResponse: reported.add);

      expect(status, ApiStatus.badRequest);
      expect(errors, {
        'name': ['required'],
      });
      expect(saved, isNull);
      expect(reported, [ApiStatus.badRequest]);
      expect(server.requests.single['query'], contains('editOperation(data: \$data)'));
    });

    test('returns the saved operation and uses the add mutation for a new input', () async {
      server.respond = (_) => {
        'data': {
          'addMappitOperation': {
            'status': 'OK',
            'result': {'id': '7', 'name': 'New', 'operationType': 'WEBHOOK'},
          },
        },
      };

      final (status, errors, saved) = await OperationInput(
        name: 'New',
      ).saveWithResponse(apiToken: 'token', uri: server.uri, variant: OperationVariant.mappit);

      expect(status, ApiStatus.ok);
      expect(errors, isNull);
      expect(saved?.id, '7');
      expect(server.requests.single['query'], contains('addMappitOperation(data: \$data)'));
    });
  });
}
