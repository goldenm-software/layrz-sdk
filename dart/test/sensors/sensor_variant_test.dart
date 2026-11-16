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

  Map<String, dynamic> ok(List<Map<String, dynamic>> result) => {'status': 'OK', 'errors': null, 'result': result};

  final sensorJson = {'id': '7', 'name': 'Fuel', 'slug': 'fuel'};

  group('Sensor.fetchAll', () {
    test('sends globalSensors by default', () async {
      payload = {
        'globalSensors': ok([sensorJson]),
      };

      final sensors = await Sensor.fetchAll(apiToken: 't', uri: uri());

      expect(sensors.map((s) => s.id), ['7']);
      expect(lastRequest['query'] as String, contains('globalSensors {'));
    });

    test('sends mappitGlobalSensors for the mappit variant', () async {
      payload = {
        'mappitGlobalSensors': ok([sensorJson]),
      };

      final sensors = await Sensor.fetchAll(apiToken: 't', uri: uri(), variant: SensorVariant.mappit);

      expect(sensors.map((s) => s.id), ['7']);
      expect(lastRequest['query'] as String, contains('mappitGlobalSensors {'));
    });
  });

  group('Sensor.fetch', () {
    test('sends mappitGlobalSensors for the mappit variant', () async {
      payload = {
        'mappitGlobalSensors': ok([sensorJson]),
      };

      final sensor = await Sensor.fetch(id: '7', apiToken: 't', uri: uri(), variant: SensorVariant.mappit);

      expect(sensor?.id, '7');
      expect(lastRequest['query'] as String, contains(r'mappitGlobalSensors(id: $id)'));
    });
  });

  group('Sensor.deleteMultiple', () {
    test('sends deleteGlobalSensors by default', () async {
      payload = {
        'deleteGlobalSensors': {'status': 'OK', 'errors': null},
      };

      final ok = await Sensor.deleteMultiple(ids: ['7'], apiToken: 't', uri: uri());

      expect(ok, isTrue);
      expect(lastRequest['query'] as String, contains(r'deleteGlobalSensors(ids: $ids)'));
    });

    test('sends deleteMappitGlobalSensors for the mappit variant', () async {
      payload = {
        'deleteMappitGlobalSensors': {'status': 'OK', 'errors': null},
      };

      final ok = await Sensor.deleteMultiple(ids: ['7'], apiToken: 't', uri: uri(), variant: SensorVariant.mappit);

      expect(ok, isTrue);
      expect(lastRequest['query'] as String, contains(r'deleteMappitGlobalSensors(ids: $ids)'));
    });

    test('keeps deleteSensors for nested sensors', () async {
      payload = {
        'deleteSensors': {'status': 'OK', 'errors': null},
      };

      final ok = await Sensor.deleteMultiple(
        ids: ['7'],
        apiToken: 't',
        uri: uri(),
        isGlobal: false,
        variant: SensorVariant.mappit,
      );

      expect(ok, isTrue);
      expect(lastRequest['query'] as String, contains(r'deleteSensors(ids: $ids)'));
    });
  });

  group('SensorInput.save', () {
    test('sends addGlobalSensor by default', () async {
      payload = {'addGlobalSensor': {'status': 'OK', 'errors': null, 'result': sensorJson}};

      final (status, _, sensor) = await SensorInput(name: 'Fuel').save(apiToken: 't', uri: uri());

      expect(status, ApiStatus.ok);
      expect(sensor?.id, '7');
      expect(lastRequest['query'] as String, contains(r'addGlobalSensor(data: $data)'));
    });

    test('sends addMappitGlobalSensor for the mappit variant', () async {
      payload = {'addMappitGlobalSensor': {'status': 'OK', 'errors': null, 'result': sensorJson}};

      final (status, _, sensor) = await SensorInput(
        name: 'Fuel',
      ).save(apiToken: 't', uri: uri(), variant: SensorVariant.mappit);

      expect(status, ApiStatus.ok);
      expect(sensor?.id, '7');
      expect(lastRequest['query'] as String, contains(r'addMappitGlobalSensor(data: $data)'));
    });

    test('sends editMappitGlobalSensor for the mappit variant', () async {
      payload = {'editMappitGlobalSensor': {'status': 'OK', 'errors': null, 'result': sensorJson}};

      final (status, _, sensor) = await SensorInput(
        id: '7',
        name: 'Fuel',
      ).save(apiToken: 't', uri: uri(), variant: SensorVariant.mappit);

      expect(status, ApiStatus.ok);
      expect(sensor?.id, '7');
      expect(lastRequest['query'] as String, contains(r'editMappitGlobalSensor(data: $data)'));
    });

    test('keeps addSensor for nested sensors', () async {
      payload = {'addSensor': {'status': 'OK', 'errors': null, 'result': sensorJson}};

      final (status, _, _) = await SensorInput(
        name: 'Fuel',
        assetId: '1',
      ).save(apiToken: 't', uri: uri(), isGlobal: false, variant: SensorVariant.mappit);

      expect(status, ApiStatus.ok);
      expect(lastRequest['query'] as String, contains(r'addSensor(data: $data)'));
    });
  });
}
