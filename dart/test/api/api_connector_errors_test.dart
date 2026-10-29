import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  LayrzApiExtras.name = 'layrz-sdk-dart-tests';
  LayrzApiExtras.version = '1.0.0';

  late HttpServer server;
  late Map<String, dynamic> payload;

  setUp(() async {
    HttpOverrides.global = null;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) async {
      await request.drain<void>();
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode({'data': payload}));
      await request.response.close();
    });
  });

  tearDown(() => server.close(force: true));

  LayrzConnector connector() => LayrzConnector(uri: Uri.parse('http://127.0.0.1:${server.port}/graphql'));

  group('LayrzConnector errors decoding', () {
    test('query keeps the status when errors is a list', () async {
      payload = {
        'items': {
          'status': 'INTERNAL_ERROR',
          'errors': [
            {'message': 'boom'},
          ],
          'result': null,
        },
      };

      final response = await connector().query(GqlQuery(name: 'items', fields: [GqlField(name: 'items')]));

      expect(response.status, ApiStatus.internalError);
      expect(response.errors, isEmpty);
      expect(response.result, isNull);
    });

    test('mutate keeps the status when errors is a list', () async {
      payload = {
        'exportItems': {
          'status': 'INTERNAL_ERROR',
          'errors': [
            {'message': 'boom'},
          ],
          'result': null,
        },
      };

      final response = await connector().mutate(
        GqlMutation(name: 'exportItems', fields: [GqlField(name: 'exportItems')]),
      );

      expect(response.status, ApiStatus.internalError);
      expect(response.errors, isEmpty);
    });

    test('mutate still passes field errors through as a map', () async {
      payload = {
        'saveItem': {
          'status': 'BAD_REQUEST',
          'errors': {
            'name': [
              {'code': 'required'},
            ],
          },
          'result': null,
        },
      };

      final response = await connector().mutate(GqlMutation(name: 'saveItem', fields: [GqlField(name: 'saveItem')]));

      expect(response.status, ApiStatus.badRequest);
      expect(response.errors?['name'], isNotNull);
    });
  });
}
