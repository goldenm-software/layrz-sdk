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

  Uri uri() => Uri.parse('http://127.0.0.1:${server.port}/graphql');

  Map<String, dynamic> ok() => {
    'status': 'OK',
    'errors': null,
    'result': [
      {'id': '3', 'name': 'Truck', 'ident': '123'},
    ],
  };

  group('Device.fetchAll', () {
    test('sends devices for the standard variant', () async {
      payload = {'devices': ok()};

      final devices = await Device.fetchAll(apiToken: 't', uri: uri());

      expect(devices.map((d) => d.id), ['3']);
      expect(lastRequest['query'] as String, contains('devices {'));
    });

    test('sends mappitDevices for the mappit variant', () async {
      payload = {'mappitDevices': ok()};

      final devices = await Device.fetchAll(apiToken: 't', uri: uri(), variant: DeviceVariant.mappit);

      expect(devices.map((d) => d.id), ['3']);
      expect(lastRequest['query'] as String, contains('mappitDevices {'));
    });
  });

  group('Device.fetch', () {
    test('sends mappitDevices for the mappit variant', () async {
      payload = {'mappitDevices': ok()};

      final device = await Device.fromJson({
        'id': '3',
        'name': 'Truck',
        'ident': '123',
      }).fetch(apiToken: 't', uri: uri(), variant: DeviceVariant.mappit);

      expect(device?.id, '3');
      expect(lastRequest['query'] as String, contains(r'mappitDevices(id: $id)'));
    });
  });
}
