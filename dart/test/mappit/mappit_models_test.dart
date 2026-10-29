import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MappitHomeConfig', () {
    test('decodes ranges and keeps defaults', () {
      final config = MappitHomeConfig.fromJson({
        'firstVisit': [
          {'min': 0, 'max': 3600, 'color': '#FF0000'},
        ],
        'avgTimePerVisit': [],
        'customersVisited': [
          {'min': 1, 'max': 5, 'color': '#00FF00'},
        ],
        'dailyDistance': [
          {'min': 0.5, 'max': 10.5, 'color': '#0000FF'},
        ],
      });

      expect(config.firstVisit.single.max, const Duration(hours: 1));
      expect(config.customersVisited.single.max, 5);
      expect(config.dailyDistance.single.max, 10.5);
      expect(MappitHomeConfig.fromJson(config.toJson()), config);
    });

    test('ranges default to a blue color and zero bounds', () {
      expect(const MappitIntRange().color, const Color(0xFF2196F3));
      expect(const MappitDoubleRange().min, 0);
      expect(const MappitDurationRange().max, Duration.zero);
      expect(const MappitHomeConfig().firstVisit, isEmpty);
    });
  });

  group('MappitProfile', () {
    test('decodes geofence overrides', () {
      final profile = MappitProfile.fromJson({
        'id': '1',
        'name': 'Default',
        'geofences': [
          {'geofenceId': '10', 'color': '#FF0000'},
          {'geofenceId': '11', 'color': null},
        ],
      });

      expect(profile.geofences.first.geofenceId, '10');
      expect(profile.geofences.first.color, isNotNull);
      expect(profile.geofences.last.color, isNull);
      expect(MappitProfile.fromJson(profile.toJson()), profile);
    });
  });

  group('ContainedRouteCategory', () {
    test('falls back to none for unknown categories', () {
      final category = ContainedRouteCategory.fromJson({'category': 'UNKNOWN_VALUE', 'geofenceCount': 3});
      expect(category.category, GeofenceCategory.none);
      expect(category.routes, isEmpty);
      expect(category.geofenceCount, 3);
    });
  });

  group('MappitRecalculate', () {
    test('decodes timestamps and status', () {
      final recalc = MappitRecalculate.fromJson({
        'id': 'a',
        'assetId': '1',
        'requestedById': '2',
        'requestedByIp': '127.0.0.1',
        'progress': 50,
        'requestedAt': 1700000000,
        'recalcStartAt': 1700000000,
        'recalcEndAt': 1700003600,
        'status': 'RUNNING',
      });

      expect(recalc.status, MappitRecalculateStatus.processing);
      expect(recalc.progress, 50);
      expect(recalc.recalcEndAt.difference(recalc.recalcStartAt), const Duration(hours: 1));
    });

    test('status maps unknown values to scheduled', () {
      expect(MappitRecalculateStatus.fromJson('FINISHED'), MappitRecalculateStatus.completed);
      expect(MappitRecalculateStatus.fromJson('OTHER'), MappitRecalculateStatus.scheduled);
      expect(MappitRecalculateStatus.processing.toJson(), 'RUNNING');
      expect(MappitRecalculateStatus.completed.color, const Color(0xFF4CAF50));
    });
  });

  group('Mappit report inputs', () {
    test('encode the time filter in seconds', () {
      final input = MappitReportInput(startAt: 1, endAt: 2, timeFilter: const Duration(minutes: 1), sellerId: '3');
      expect(input.toJson()['timeFilter'], 60);
      final multi = MappitReportMultiInput(sellerIds: ['1', '2']);
      expect(multi.toJson()['sellerIds'], ['1', '2']);
    });
  });
}
