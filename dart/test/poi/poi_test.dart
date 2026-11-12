import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Poi Tests', () {
    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'poi-1',
        'name': 'Warehouse',
        'description': 'Main warehouse',
        'icon': MdiRemapIconsClasses.mapMarker.name,
        'latitude': 10.5,
        'longitude': -66.9,
        'access': [
          {
            'id': 'a1',
            'read': true,
            'write': false,
            'manage': false,
            'objectId': 'poi-1',
            'userId': 'u1',
            'module': 'pois',
          },
        ],
      };

      final poi = Poi.fromJson(json);
      expect(poi.id, 'poi-1');
      expect(poi.name, 'Warehouse');
      expect(poi.description, 'Main warehouse');
      expect(poi.icon, MdiRemapIconsClasses.mapMarker);
      expect(poi.latitude, 10.5);
      expect(poi.longitude, -66.9);
      expect(poi.access, hasLength(1));

      final restored = Poi.fromJson(poi.toJson());
      expect(restored.id, poi.id);
      expect(restored.icon, poi.icon);
      expect(restored.latitude, poi.latitude);
    });

    test('optional fields are null when absent', () {
      final poi = Poi.fromJson({'id': 'p', 'name': 'n'});
      expect(poi.description, isNull);
      expect(poi.icon, isNull);
      expect(poi.latitude, isNull);
      expect(poi.access, isNull);
    });

    test('equality and copyWith', () {
      const a = Poi(id: '1', name: 'a');
      expect(a, const Poi(id: '1', name: 'a'));
      expect(a.copyWith(name: 'b').name, 'b');
    });
  });

  group('PoiInput Tests', () {
    test('defaults', () {
      final input = PoiInput();
      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.description, '');
      expect(input.icon, MdiRemapIconsClasses.mapMarker);
      expect(input.latitude, isNull);
      expect(input.longitude, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final input = PoiInput.fromJson({
        'id': 'poi-1',
        'name': 'Warehouse',
        'description': 'Main',
        'icon': MdiRemapIconsClasses.mapMarker.name,
        'latitude': 1.5,
        'longitude': 2.5,
      });
      expect(input.id, 'poi-1');
      expect(input.latitude, 1.5);

      final json = input.toJson();
      expect(json['name'], 'Warehouse');
      expect(json['icon'], MdiRemapIconsClasses.mapMarker.name);
      expect(json['longitude'], 2.5);
    });

    test('is mutable', () {
      final input = PoiInput()..name = 'x';
      input.latitude = 3.0;
      expect(input.name, 'x');
      expect(input.latitude, 3.0);
    });
  });
}
