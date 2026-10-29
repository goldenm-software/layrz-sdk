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

  group('RegisteredApp.fetchAllMappit', () {
    test('sends mappitRegisteredApps with appIdentifier and decodes instances and builds', () async {
      payload = {
        'mappitRegisteredApps': {
          'status': 'OK',
          'errors': null,
          'result': [
            {
              'id': '55',
              'name': 'Mappit Analytics',
              'nickname': 'analytics',
              'technology': 'FLUTTER',
              'sourceId': '3',
              'legalInformation': {
                'companyUrl': 'https://example.com',
                'companyName': 'Example',
                'privacyPolicy': 'https://example.com/privacy',
              },
              'designInformation': {
                'mainColor': '#2196F3',
                'theme': 'BLUE',
                'appicon': 'https://cdn.example.com/icon.png',
                'footerFormat': 'SIMPLE',
                'favicons': {'normal': 'https://cdn.example.com/f.png', 'white': 'https://cdn.example.com/fw.png'},
                'logos': {'normal': 'https://cdn.example.com/l.png', 'white': 'https://cdn.example.com/lw.png'},
                'login': null,
                'titleFont': null,
                'bodyFont': null,
              },
              'instances': [
                {
                  'id': '90',
                  'appId': '55',
                  'platform': 'WEB',
                  'appIdentifier': 'com.example.analytics',
                  'developerName': 'Example',
                  'developerIdentifier': 'example',
                  'host': 'analytics.example.com',
                  'status': 'PENDING',
                  'migrationStatus': null,
                  'builds': [
                    {
                      'id': '700',
                      'fileUri': 'https://cdn.example.com/build.zip',
                      'buildNumber': 12,
                      'buildName': '1.2.0',
                      'isNext': false,
                    },
                  ],
                },
              ],
            },
          ],
        },
      };
      ApiStatus? status;

      final apps = await RegisteredApp.fetchAllMappit(
        apiToken: 't',
        uri: uri(),
        appIdentifier: .analyticsDashboard,
        onResponse: (s) => status = s,
      );

      expect(status, isNull);
      expect(apps, hasLength(1));
      final app = apps.first;
      expect(app.nickname, 'analytics');
      expect(app.technology, AppTechnology.flutter);
      expect(app.legalInformation?.companyName, 'Example');
      expect(app.designInformation?.logos.white, 'https://cdn.example.com/lw.png');
      expect(app.instances?.first.host, 'analytics.example.com');
      expect(app.instances?.first.builds.first.buildNumber, 12);

      final query = lastRequest['query'] as String;
      expect(query, contains(r'mappitRegisteredApps(appIdentifier: $appIdentifier)'));
      expect(query, contains(r'$appIdentifier: InternalIdentifier'));
      expect(query, contains('builds'));
      expect(lastRequest['variables'], {'appIdentifier': 'ANALYTICS_DASHBOARD'});
    });

    test('omits appIdentifier when not given', () async {
      payload = {
        'mappitRegisteredApps': {'status': 'OK', 'errors': null, 'result': []},
      };

      final apps = await RegisteredApp.fetchAllMappit(apiToken: 't', uri: uri());

      expect(apps, isEmpty);
      expect((lastRequest['variables'] as Map?) ?? {}, isEmpty);
    });

    test('reports the status and returns an empty list on failure', () async {
      payload = {
        'mappitRegisteredApps': {'status': 'UNAUTHORIZED', 'errors': null, 'result': null},
      };
      ApiStatus? status;

      final apps = await RegisteredApp.fetchAllMappit(apiToken: 't', uri: uri(), onResponse: (s) => status = s);

      expect(apps, isEmpty);
      expect(status, ApiStatus.unauthorized);
    });
  });
}
