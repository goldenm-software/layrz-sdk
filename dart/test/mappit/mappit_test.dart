import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MappitLaborHour Tests', () {
    test('constructs with required fields', () {
      final laborHour = MappitLaborHour(
        id: 'lh-1',
        weekday: Weekday.monday,
        administrative: const Duration(minutes: 30),
        f2f: const Duration(hours: 2),
        other: const Duration(minutes: 15),
      );

      expect(laborHour.id, 'lh-1');
      expect(laborHour.weekday, Weekday.monday);
      expect(laborHour.administrative, const Duration(minutes: 30));
      expect(laborHour.f2f, const Duration(hours: 2));
      expect(laborHour.other, const Duration(minutes: 15));
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'lh-2',
        'weekday': 'TUE',
        'administrative': 1800,
        'f2f': 3600,
        'other': 900,
      };

      final laborHour = MappitLaborHour.fromJson(json);
      expect(laborHour.id, 'lh-2');
      expect(laborHour.weekday, Weekday.tuesday);
      expect(laborHour.administrative, const Duration(seconds: 1800));

      final restored = laborHour.toJson();
      expect(restored['id'], 'lh-2');
      expect(restored['weekday'], 'TUE');
    });

    test('copyWith updates fields', () {
      final laborHour = MappitLaborHour(
        id: 'a',
        weekday: Weekday.monday,
        administrative: Duration.zero,
        f2f: Duration.zero,
        other: Duration.zero,
      );
      final updated = laborHour.copyWith(weekday: Weekday.friday);

      expect(updated.id, 'a');
      expect(updated.weekday, Weekday.friday);
    });

    test('equality', () {
      final a = MappitLaborHour(
        id: 'x',
        weekday: Weekday.monday,
        administrative: Duration.zero,
        f2f: Duration.zero,
        other: Duration.zero,
      );
      final b = MappitLaborHour(
        id: 'x',
        weekday: Weekday.monday,
        administrative: Duration.zero,
        f2f: Duration.zero,
        other: Duration.zero,
      );

      expect(a, b);
    });

    test('MappitLaborHourInput defaults', () {
      final input = MappitLaborHourInput(weekday: Weekday.wednesday);

      expect(input.id, isNull);
      expect(input.weekday, Weekday.wednesday);
      expect(input.administrative, Duration.zero);
      expect(input.f2f, Duration.zero);
      expect(input.other, Duration.zero);
    });

    test('MappitLaborHourInput fromJson/toJson roundtrip', () {
      final json = {
        'id': 'input-lh',
        'weekday': 'SAT',
        'administrative': 600,
        'f2f': 1200,
        'other': 0,
      };

      final input = MappitLaborHourInput.fromJson(json);
      expect(input.id, 'input-lh');
      expect(input.weekday, Weekday.saturday);

      final restored = input.toJson();
      expect(restored['id'], 'input-lh');
      expect(restored['weekday'], 'SAT');
    });
  });

  group('MappitRouteLinkingHistory Tests', () {
    test('constructs with required fields', () {
      final history = MappitRouteLinkingHistory(
        performedById: 'user-1',
        performedAt: DateTime.utc(2026, 1, 1),
      );

      expect(history.performedById, 'user-1');
      expect(history.performedAt, DateTime.utc(2026, 1, 1));
      expect(history.currentSeller, isNull);
      expect(history.currentSellerId, isNull);
      expect(history.performedBy, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'performedById': 'user-2',
        'performedAt': 1735689600,
        'currentSellerId': 'asset-1',
        'currentSeller': {'id': 'asset-1', 'name': 'Seller Truck'},
      };

      final history = MappitRouteLinkingHistory.fromJson(json);
      expect(history.performedById, 'user-2');
      expect(history.currentSellerId, 'asset-1');
      expect(history.currentSeller, isNotNull);
      expect(history.currentSeller!.name, 'Seller Truck');

      final restored = history.toJson();
      expect(restored['performedById'], 'user-2');
      expect(restored['currentSellerId'], 'asset-1');
    });

    test('copyWith updates fields', () {
      final history = MappitRouteLinkingHistory(
        performedById: 'a',
        performedAt: DateTime.utc(2026, 1, 1),
      );
      final updated = history.copyWith(performedById: 'b');

      expect(updated.performedById, 'b');
    });
  });

  group('MappitRoute Tests', () {
    test('constructs with required fields', () {
      final route = MappitRoute(id: 'route-1', name: 'Downtown Route');

      expect(route.id, 'route-1');
      expect(route.name, 'Downtown Route');
      expect(route.currentSeller, isNull);
      expect(route.geofences, isNull);
      expect(route.assignmentsHistory, isNull);
      expect(route.secondarySellers, isNull);
    });

    test('fromJson/toJson roundtrip with nested data', () {
      final json = {
        'id': 'route-2',
        'name': 'North Route',
        'currentSellerId': 'asset-1',
        'currentSeller': {'id': 'asset-1', 'name': 'Truck 1'},
        'geofencesIds': ['geo-1', 'geo-2'],
        'geofences': [
          {'id': 'geo-1', 'name': 'Zone A', 'mode': 'RADIAL'},
        ],
        'ownerId': 'owner-1',
        'secondarySellersIds': ['asset-2'],
        'assignmentsHistory': [
          {
            'performedById': 'user-1',
            'performedAt': 1735689600,
            'currentSellerId': 'asset-1',
          },
        ],
      };

      final route = MappitRoute.fromJson(json);
      expect(route.id, 'route-2');
      expect(route.currentSellerId, 'asset-1');
      expect(route.currentSeller!.name, 'Truck 1');
      expect(route.geofencesIds, ['geo-1', 'geo-2']);
      expect(route.geofences, hasLength(1));
      expect(route.geofences!.first.name, 'Zone A');
      expect(route.ownerId, 'owner-1');
      expect(route.secondarySellersIds, ['asset-2']);
      expect(route.assignmentsHistory, hasLength(1));

      final restored = route.toJson();
      expect(restored['id'], 'route-2');
      expect(restored['name'], 'North Route');
      expect(restored['geofencesIds'], ['geo-1', 'geo-2']);
    });

    test('copyWith updates fields', () {
      final route = MappitRoute(id: 'a', name: 'A');
      final updated = route.copyWith(name: 'B');

      expect(updated.id, 'a');
      expect(updated.name, 'B');
    });

    test('equality', () {
      final a = MappitRoute(id: 'x', name: 'X');
      final b = MappitRoute(id: 'x', name: 'X');
      final c = MappitRoute(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });

    test('fromJson with secondary sellers objects', () {
      final json = {
        'id': 'route-3',
        'name': 'Route 3',
        'secondarySellers': [
          {'id': 'asset-3', 'name': 'Truck 3'},
        ],
      };

      final route = MappitRoute.fromJson(json);
      expect(route.secondarySellers, hasLength(1));
      expect(route.secondarySellers!.first.id, 'asset-3');
    });
  });
}
