import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  late HttpServer server;
  late Map<String, dynamic> payload;
  late Map<String, dynamic> lastRequest;

  setUp(() async {
    HttpOverrides.global = null;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) async {
      lastRequest = jsonDecode(await utf8.decodeStream(request)) as Map<String, dynamic>;
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode({'data': payload}));
      await request.response.close();
    });
  });

  tearDown(() => server.close(force: true));

  Uri uri() => Uri.parse('http://127.0.0.1:${server.port}/mappit/graphql');

  group('Asset.fetchSensorsLastUpdate (mappit)', () {
    test('sends mappitSensorsLastUpdate and decodes assetId -> slug -> lastUpdate', () async {
      payload = {
        'mappitSensorsLastUpdate': {
          'status': 'OK',
          'errors': null,
          'result': [
            {
              'assetId': '120',
              'sensors': [
                {'slug': 'gps.speed', 'lastUpdate': 1761609600.25},
                {'slug': 'battery', 'lastUpdate': 1761609500},
              ],
            },
            {'assetId': '121', 'sensors': []},
          ],
        },
      };

      final result = await Asset.fetchSensorsLastUpdate(
        apiToken: 't',
        uri: uri(),
        assetsIds: ['120', '121'],
        variant: .mappit,
      );

      expect(result, {
        '120': {
          'gps.speed': DateTime.fromMillisecondsSinceEpoch(1761609600250),
          'battery': DateTime.fromMillisecondsSinceEpoch(1761609500000),
        },
        '121': <String, DateTime>{},
      });
      final query = lastRequest['query'] as String;
      expect(query, contains(r'mappitSensorsLastUpdate(assetsIds: $assetsIds)'));
      expect(query, isNot(contains(' sensorsLastUpdate')));
      expect(lastRequest['variables'], {
        'assetsIds': ['120', '121'],
      });
    });

    test('the standard variant keeps sensorsLastUpdate', () async {
      payload = {
        'sensorsLastUpdate': {'status': 'OK', 'errors': null, 'result': []},
      };

      final result = await Asset.fetchSensorsLastUpdate(apiToken: 't', uri: uri(), assetsIds: ['1']);

      expect(result, isEmpty);
      final query = lastRequest['query'] as String;
      expect(query, contains(r'sensorsLastUpdate(assetsIds: $assetsIds)'));
      expect(query, isNot(contains('mappitSensorsLastUpdate')));
    });

    test('reports the status and returns null on failure', () async {
      payload = {
        'mappitSensorsLastUpdate': {'status': 'UNAUTHORIZED', 'errors': null, 'result': null},
      };
      ApiStatus? status;

      final result = await Asset.fetchSensorsLastUpdate(
        apiToken: 't',
        uri: uri(),
        assetsIds: ['1'],
        variant: .mappit,
        onResponse: (s) => status = s,
      );

      expect(result, isNull);
      expect(status, ApiStatus.unauthorized);
    });
  });
}
