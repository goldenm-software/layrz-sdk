import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('SearchType Tests', () {
    test('fromJson() all values', () {
      expect(SearchType.fromJson('POINT'), SearchType.point);
      expect(SearchType.fromJson('RADIAL'), SearchType.radial);
      expect(SearchType.fromJson('POLYGON'), SearchType.polygon);
      expect(SearchType.fromJson('LINEAR'), SearchType.linear);
    });

    test('fromJson() falls back to point on unknown value', () {
      expect(SearchType.fromJson('BOGUS'), SearchType.point);
    });

    test('toJson() all values', () {
      expect(SearchType.point.toJson(), 'POINT');
      expect(SearchType.radial.toJson(), 'RADIAL');
      expect(SearchType.polygon.toJson(), 'POLYGON');
      expect(SearchType.linear.toJson(), 'LINEAR');
    });

    test('toString() matches toJson()', () {
      for (final value in SearchType.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in SearchType.values) {
        expect(SearchType.fromJson(value.toJson()), value);
      }
    });
  });

  group('GeofenceSearchBy Tests', () {
    test('fromJson() all values', () {
      expect(GeofenceSearchBy.fromJson('ASSETS'), GeofenceSearchBy.assets);
      expect(GeofenceSearchBy.fromJson('GEOFENCES'), GeofenceSearchBy.geofences);
      expect(GeofenceSearchBy.fromJson('ADDRESSES'), GeofenceSearchBy.addresses);
    });

    test('fromJson() falls back to assets on unknown value', () {
      expect(GeofenceSearchBy.fromJson('BOGUS'), GeofenceSearchBy.assets);
    });

    test('toJson() all values', () {
      expect(GeofenceSearchBy.assets.toJson(), 'ASSETS');
      expect(GeofenceSearchBy.geofences.toJson(), 'GEOFENCES');
      expect(GeofenceSearchBy.addresses.toJson(), 'ADDRESSES');
    });

    test('toString() matches toJson()', () {
      for (final value in GeofenceSearchBy.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in GeofenceSearchBy.values) {
        expect(GeofenceSearchBy.fromJson(value.toJson()), value);
      }
    });
  });

  group('SearchItem Tests', () {
    test('constructs with required fields', () {
      final item = SearchItem(
        name: 'Warehouse A',
        type: SearchType.point,
        path: [GeoPoint(latitude: 19.4, longitude: -99.1)],
        searchedOn: GeofenceSearchBy.geofences,
      );

      expect(item.name, 'Warehouse A');
      expect(item.type, SearchType.point);
      expect(item.path, hasLength(1));
      expect(item.searchedOn, GeofenceSearchBy.geofences);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'name': 'Truck 1',
        'type': 'RADIAL',
        'path': [
          {'latitude': 19.4, 'longitude': -99.1},
        ],
        'searchedOn': 'ASSETS',
      };

      final item = SearchItem.fromJson(json);
      expect(item.name, 'Truck 1');
      expect(item.type, SearchType.radial);
      expect(item.path.first.latitude, 19.4);
      expect(item.searchedOn, GeofenceSearchBy.assets);

      final restored = item.toJson();
      expect(restored['name'], 'Truck 1');
      expect(restored['type'], 'RADIAL');
      expect(restored['searchedOn'], 'ASSETS');
    });

    test('hashCode is based on name, type and searchedOn', () {
      final a = SearchItem(name: 'x', type: SearchType.point, path: [], searchedOn: GeofenceSearchBy.assets);
      final b = SearchItem(name: 'x', type: SearchType.point, path: [], searchedOn: GeofenceSearchBy.assets);

      // NOTE: SearchItem's `==` override checks `identical` before comparing fields, so two
      // distinct instances with equal fields are NOT `==`, even though their hashCode matches.
      // This mirrors the model's current (pre-existing) implementation.
      expect(a.hashCode, b.hashCode);
      expect(a, isNot(b));
      expect(a, a);
    });

    test('copyWith updates fields', () {
      final item = SearchItem(name: 'a', type: SearchType.point, path: [], searchedOn: GeofenceSearchBy.assets);
      final updated = item.copyWith(name: 'b', type: SearchType.linear);

      expect(updated.name, 'b');
      expect(updated.type, SearchType.linear);
    });
  });
}
