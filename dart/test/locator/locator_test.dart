import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('LocatorMqttConfig Tests', () {
    test('all fields are nullable', () {
      final config = LocatorMqttConfig();

      expect(config.host, isNull);
      expect(config.port, isNull);
      expect(config.topic, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final config = LocatorMqttConfig.fromJson({
        'host': 'broker.example.com',
        'port': 1883,
        'username': 'user',
        'password': 'pass',
        'topic': 'locators/abc',
      });

      expect(config.host, 'broker.example.com');
      expect(config.port, 1883);
      expect(config.topic, 'locators/abc');

      final restored = config.toJson();
      expect(restored['host'], 'broker.example.com');
      expect(restored['port'], 1883);
      expect(restored['username'], 'user');
    });
  });

  group('LocatorBoundary Tests', () {
    test('point fromJson/toJson roundtrip', () {
      final point = LocatorBoundaryPoint.fromJson({'latitude': 10.5, 'longitude': -66.9});

      expect(point.latitude, 10.5);
      expect(point.longitude, -66.9);
      expect(point.toJson(), {'latitude': 10.5, 'longitude': -66.9});
    });

    test('boundary maps topleft/bottomright keys', () {
      final boundary = LocatorBoundary.fromJson({
        'topleft': {'latitude': 11.0, 'longitude': -67.0},
        'bottomright': {'latitude': 10.0, 'longitude': -66.0},
      });

      expect(boundary.topLeft?.latitude, 11.0);
      expect(boundary.bottomRight?.longitude, -66.0);

      final restored = boundary.toJson();
      expect(restored.containsKey('topleft'), isTrue);
      expect(restored.containsKey('bottomright'), isTrue);
      expect(restored.containsKey('topLeft'), isFalse);
      expect((restored['topleft'] as Map)['latitude'], 11.0);
    });

    test('boundary input maps topleft/bottomright keys', () {
      final input = LocatorBoundaryInput(
        topLeft: LocatorBoundaryPointInput(latitude: 1, longitude: 2),
        bottomRight: LocatorBoundaryPointInput(latitude: 3, longitude: 4),
      );

      final json = input.toJson();
      expect(json['topleft'], {'latitude': 1.0, 'longitude': 2.0});
      expect(json['bottomright'], {'latitude': 3.0, 'longitude': 4.0});

      final restored = LocatorBoundaryInput.fromJson(json);
      expect(restored.topLeft?.latitude, 1.0);
      expect(restored.bottomRight?.longitude, 4.0);
    });
  });

  group('Locator Tests', () {
    test('fromJson accepts a minimal payload with null timestamps', () {
      final locator = Locator.fromJson({'id': 'loc-1', 'token': 'xxx'});

      expect(locator.id, 'loc-1');
      expect(locator.token, 'xxx');
      expect(locator.createdAt, isNull);
      expect(locator.updatedAt, isNull);
      expect(locator.expiresAt, isNull);
      expect(locator.mqttConfig, isNull);
      expect(locator.boundary, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final locator = Locator.fromJson({
        'id': 'loc-1',
        'token': 'xxx',
        'description': 'Demo',
        'isExpired': false,
        'expiresAt': 1700000000,
        'createdAt': 1690000000,
        'updatedAt': 1690000100,
        'assetsIds': ['1', '2'],
        'poisIds': ['3'],
        'enableSidebar': true,
        'mqttConfig': {'host': 'h', 'port': 1883, 'topic': 't'},
        'boundary': {
          'topleft': {'latitude': 11.0, 'longitude': -67.0},
          'bottomright': {'latitude': 10.0, 'longitude': -66.0},
        },
      });

      expect(locator.description, 'Demo');
      expect(locator.expiresAt, DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000));
      expect(locator.createdAt, isNotNull);
      expect(locator.assetsIds, ['1', '2']);
      expect(locator.mqttConfig?.port, 1883);
      expect(locator.boundary?.topLeft?.latitude, 11.0);

      final restored = locator.toJson();
      expect(restored['id'], 'loc-1');
      expect(restored['expiresAt'], 1700000000);
      expect((restored['boundary'] as Map).containsKey('topleft'), isTrue);
    });

    test('link falls back to the default host without customization', () {
      final locator = Locator(id: 'loc-1', token: 'abc');

      expect(locator.link, 'https://find.layrz.com/#/abc');
    });
  });

  group('LocatorInput Tests', () {
    test('has sensible defaults', () {
      final input = LocatorInput();

      expect(input.id, isNull);
      expect(input.assetsIds, isEmpty);
      expect(input.geofencesIds, isEmpty);
      expect(input.triggersIds, isEmpty);
      expect(input.poisIds, isEmpty);
      expect(input.enableSidebar, isTrue);
      expect(input.showAssetsLabels, isFalse);
      expect(input.showGeofencesLabels, isFalse);
      expect(input.showPoisLabels, isFalse);
      expect(input.showAssetsTrails, isTrue);
      expect(input.boundary, isNull);
    });

    test('toJson/fromJson roundtrip including boundary', () {
      final input = LocatorInput(
        id: 'loc-1',
        assetsIds: ['1'],
        description: 'Demo',
        expiresAt: DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000),
        boundary: LocatorBoundaryInput(
          topLeft: LocatorBoundaryPointInput(latitude: 11, longitude: -67),
          bottomRight: LocatorBoundaryPointInput(latitude: 10, longitude: -66),
        ),
      );

      final json = input.toJson();
      expect(json['id'], 'loc-1');
      expect(json['expiresAt'], 1700000000);
      expect((json['boundary'] as Map)['topleft'], {'latitude': 11.0, 'longitude': -67.0});

      final restored = LocatorInput.fromJson(json);
      expect(restored.id, 'loc-1');
      expect(restored.assetsIds, ['1']);
      expect(restored.boundary?.bottomRight?.latitude, 10.0);
    });

    test('simulateLink falls back to the default host without customization', () {
      expect(LocatorInput().simulateLink(), 'https://find.layrz.com/#/SIMULATED_TOKEN');
    });
  });
}
