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

  group('DeviceCommand.fetchAllMappit', () {
    test('sends mappitDeviceCommands filtered by protocols and models', () async {
      payload = {
        'mappitDeviceCommands': {
          'status': 'OK',
          'errors': null,
          'result': [
            {'id': '31', 'name': 'Engine stop', 'source': 'NATIVE', 'protocolId': '4', 'modelId': '12'},
            {'id': '32', 'name': 'Reboot', 'source': 'SMS', 'protocolId': '4', 'modelId': null},
          ],
        },
      };
      ApiStatus? status;

      final commands = await DeviceCommand.fetchAllMappit(
        apiToken: 't',
        uri: uri(),
        protocolsIds: ['4'],
        modelsIds: ['12'],
        onResponse: (s) => status = s,
      );

      expect(status, isNull);
      expect(commands.map((c) => c.id), ['31', '32']);
      expect(commands.first.source, CommandSource.protocolNative);
      expect(commands.first.modelId, '12');
      expect(commands.last.source, CommandSource.sms);
      final query = lastRequest['query'] as String;
      expect(query, contains(r'mappitDeviceCommands(protocolsIds: $protocolsIds, modelsIds: $modelsIds)'));
      expect(query, contains(r'$protocolsIds: [ID]'));
      expect(query, contains(r'$modelsIds: [ID]'));
      for (final field in ['id', 'name', 'source', 'protocolId', 'modelId']) {
        expect(query, contains(field));
      }
      expect(lastRequest['variables'], {
        'protocolsIds': ['4'],
        'modelsIds': ['12'],
      });
    });

    test('reports the status and returns an empty list on failure', () async {
      payload = {
        'mappitDeviceCommands': {'status': 'ACCESS_DENIED', 'errors': null, 'result': null},
      };
      ApiStatus? status;

      final commands = await DeviceCommand.fetchAllMappit(
        apiToken: 't',
        uri: uri(),
        protocolsIds: [],
        modelsIds: [],
        onResponse: (s) => status = s,
      );

      expect(commands, isEmpty);
      expect(status, ApiStatus.accessDenied);
    });
  });
}
