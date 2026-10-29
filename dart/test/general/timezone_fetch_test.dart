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

  group('Timezone.fetchAll', () {
    test('sends timezones and decodes id, name and offset', () async {
      payload = {
        'timezones': {
          'status': 'OK',
          'errors': null,
          'result': [
            {'id': '1', 'name': 'America/Panama', 'offset': '-05:00'},
            {'id': '2', 'name': 'Europe/Madrid', 'offset': '+01:00'},
          ],
        },
      };
      ApiStatus? status;

      final timezones = await Timezone.fetchAll(uri: uri(), onResponse: (s) => status = s);

      expect(status, isNull);
      expect(timezones, [
        const Timezone(id: '1', name: 'America/Panama', offset: '-05:00'),
        const Timezone(id: '2', name: 'Europe/Madrid', offset: '+01:00'),
      ]);
      final query = lastRequest['query'] as String;
      expect(query, contains('timezones {'));
      expect(query, isNot(contains(r'$')));
    });

    test('reports the status and returns an empty list on failure', () async {
      payload = {
        'timezones': {'status': 'INTERNAL_ERROR', 'errors': null, 'result': null},
      };
      ApiStatus? status;

      final timezones = await Timezone.fetchAll(apiToken: 't', uri: uri(), onResponse: (s) => status = s);

      expect(timezones, isEmpty);
      expect(status, ApiStatus.internalError);
    });
  });
}
