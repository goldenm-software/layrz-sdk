import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ExchangeProtocol Tests', () {
    test('constructs with required fields', () {
      final protocol = ExchangeProtocol(
        id: 'proto-1',
        name: 'wialon',
        color: const Color(0xFF2196F3),
        isEnabled: true,
      );

      expect(protocol.id, 'proto-1');
      expect(protocol.name, 'wialon');
      expect(protocol.color, const Color(0xFF2196F3));
      expect(protocol.isEnabled, isTrue);
      expect(protocol.dynamicIcon, isNull);
      expect(protocol.requiredFields, isEmpty);
      expect(protocol.requiresFlespiToken, isNull);
      expect(protocol.flespiAcl, isNull);
      expect(protocol.usage, isNull);
      expect(protocol.requiresAssets, isNull);
      expect(protocol.requiresGeofences, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'proto-2',
        'name': 'geotab',
        'color': '#FF5733',
        'isEnabled': false,
        'requiredFields': [
          {'field': 'apiKey', 'type': 'STRING'},
        ],
        'requiresFlespiToken': true,
        'usage': 10,
        'requiresAssets': true,
        'requiresGeofences': false,
      };

      final protocol = ExchangeProtocol.fromJson(json);
      expect(protocol.id, 'proto-2');
      expect(protocol.name, 'geotab');
      expect(protocol.isEnabled, isFalse);
      expect(protocol.requiredFields, hasLength(1));
      expect(protocol.requiresFlespiToken, isTrue);
      expect(protocol.usage, 10);
      expect(protocol.requiresAssets, isTrue);
      expect(protocol.requiresGeofences, isFalse);

      final restored = protocol.toJson();
      expect(restored['id'], 'proto-2');
      expect(restored['name'], 'geotab');
    });

    test('copyWith updates fields', () {
      final protocol = ExchangeProtocol(
        id: 'a',
        name: 'A',
        color: const Color(0xFF000000),
        isEnabled: true,
      );
      final updated = protocol.copyWith(name: 'B', isEnabled: false);

      expect(updated.name, 'B');
      expect(updated.isEnabled, isFalse);
    });

    test('equality', () {
      final a = ExchangeProtocol(id: 'x', name: 'X', color: const Color(0xFF000000), isEnabled: true);
      final b = ExchangeProtocol(id: 'x', name: 'X', color: const Color(0xFF000000), isEnabled: true);

      expect(a, b);
    });
  });

  group('ExchangeService Tests', () {
    test('constructs with required fields', () {
      final service = ExchangeService(id: 'svc-1', name: 'My Service');

      expect(service.id, 'svc-1');
      expect(service.name, 'My Service');
      expect(service.credentials, isNull);
      expect(service.protocol, isNull);
      expect(service.protocolId, isNull);
      expect(service.isEnabled, isNull);
      expect(service.assetsIds, isNull);
      expect(service.assets, isNull);
      expect(service.tagsIds, isNull);
      expect(service.tags, isNull);
      expect(service.access, isNull);
      expect(service.geofencesIds, isNull);
      expect(service.geofences, isNull);
      expect(service.geofencesGroupsIds, isNull);
      expect(service.geofencesGroups, isNull);
    });

    test('fromJson/toJson roundtrip with nested data', () {
      final json = {
        'id': 'svc-2',
        'name': 'Full Service',
        'credentials': {'apiKey': 'xxx'},
        'protocolId': 'proto-1',
        'protocol': {
          'id': 'proto-1',
          'name': 'wialon',
          'color': '#00FF00',
          'isEnabled': true,
        },
        'isEnabled': true,
        'assetsIds': ['asset-1'],
        'tagsIds': ['tag-1'],
        'geofencesIds': ['geo-1'],
        'geofences': [
          {'id': 'geo-1', 'name': 'Zone A', 'mode': 'POLYGON'},
        ],
        'geofencesGroupsIds': ['tag-2'],
      };

      final service = ExchangeService.fromJson(json);
      expect(service.id, 'svc-2');
      expect(service.credentials, {'apiKey': 'xxx'});
      expect(service.protocolId, 'proto-1');
      expect(service.protocol, isNotNull);
      expect(service.protocol!.name, 'wialon');
      expect(service.isEnabled, isTrue);
      expect(service.assetsIds, ['asset-1']);
      expect(service.tagsIds, ['tag-1']);
      expect(service.geofencesIds, ['geo-1']);
      expect(service.geofences, hasLength(1));
      expect(service.geofences!.first.name, 'Zone A');
      expect(service.geofencesGroupsIds, ['tag-2']);

      final restored = service.toJson();
      expect(restored['id'], 'svc-2');
      expect(restored['name'], 'Full Service');
    });

    test('fromJson with assets, tags and geofencesGroups objects', () {
      final json = {
        'id': 'svc-3',
        'name': 'Grouped Service',
        'assets': [
          {'id': 'asset-1', 'name': 'Truck A'},
        ],
        'tags': [
          {'id': 'tag-1', 'name': 'Fleet', 'color': '#123456'},
        ],
        'geofencesGroups': [
          {'id': 'tag-2', 'name': 'Zones', 'color': '#654321'},
        ],
      };

      final service = ExchangeService.fromJson(json);
      expect(service.assets, hasLength(1));
      expect(service.assets!.first.name, 'Truck A');
      expect(service.tags, hasLength(1));
      expect(service.tags!.first.name, 'Fleet');
      expect(service.geofencesGroups, hasLength(1));
      expect(service.geofencesGroups!.first.name, 'Zones');
    });

    test('copyWith updates fields', () {
      final service = ExchangeService(id: 'a', name: 'A');
      final updated = service.copyWith(name: 'B', isEnabled: true);

      expect(updated.name, 'B');
      expect(updated.isEnabled, isTrue);
    });

    test('equality', () {
      final a = ExchangeService(id: 'x', name: 'X');
      final b = ExchangeService(id: 'x', name: 'X');
      final c = ExchangeService(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });
  });
}
