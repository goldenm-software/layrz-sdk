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

  group('Geofence.exportMappit', () {
    test('sends exportMappitGeofences without variables and returns the file URL', () async {
      payload = {
        'exportMappitGeofences': {'status': 'OK', 'errors': null, 'result': 'https://files.example.com/geofences.xlsx'},
      };
      String? status;

      final url = await Geofence.exportMappit(apiToken: 'token', uri: uri(), onResponse: (code) => status = code);

      expect(url, 'https://files.example.com/geofences.xlsx');
      expect(status, isNull);
      expect(lastRequest['query'], contains('exportMappitGeofences {'));
      expect(lastRequest['query'], isNot(contains(r'$')));
    });

    test('reports the status and returns null on failure', () async {
      payload = {
        'exportMappitGeofences': {'status': 'UNAUTHORIZED', 'errors': null, 'result': null},
      };
      String? status;

      final url = await Geofence.exportMappit(apiToken: 'token', uri: uri(), onResponse: (code) => status = code);

      expect(url, isNull);
      expect(status, 'UNAUTHORIZED');
    });
  });
}
