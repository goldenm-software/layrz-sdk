import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('GrowthItem Tests', () {
    test('GrowthItem.fromJson() parses month and defaults predicted', () {
      final item = GrowthItem.fromJson(<String, dynamic>{
        'month': '2026-03',
        'totalAssets': 10,
        'totalDevices': 20,
        'totalUsers': 30,
      });

      expect(item.month, DateTime(2026, 3, 1));
      expect(item.totalAssets, 10);
      expect(item.totalDevices, 20);
      expect(item.totalUsers, 30);
      expect(item.predicted, isFalse);
    });

    test('GrowthItem.fromJson() reads predicted true', () {
      final item = GrowthItem.fromJson(<String, dynamic>{
        'month': '2026-12',
        'totalAssets': 1,
        'totalDevices': 2,
        'totalUsers': 3,
        'predicted': true,
      });

      expect(item.month, DateTime(2026, 12, 1));
      expect(item.predicted, isTrue);
    });

    test('GrowthItem.toJson() writes month as YYYY-MM', () {
      final json = GrowthItem(
        month: DateTime(2026, 1, 1),
        totalAssets: 1,
        totalDevices: 2,
        totalUsers: 3,
      ).toJson();

      expect(json['month'], '2026-01');
      expect(json['predicted'], false);
      expect(GrowthItem.fromJson(json).month, DateTime(2026, 1, 1));
    });
  });

  group('DailyGrowthItem Tests', () {
    test('DailyGrowthItem.fromJson() parses day', () {
      final item = DailyGrowthItem.fromJson(<String, dynamic>{
        'day': '2026-03-09',
        'totalAssets': 4,
        'totalDevices': 5,
        'totalUsers': 6,
      });

      expect(item.day, DateTime(2026, 3, 9));
      expect(item.totalAssets, 4);
      expect(item.totalDevices, 5);
      expect(item.totalUsers, 6);
    });

    test('DailyGrowthItem.toJson() writes day as YYYY-MM-DD', () {
      final json = DailyGrowthItem(
        day: DateTime(2026, 1, 5),
        totalAssets: 1,
        totalDevices: 2,
        totalUsers: 3,
      ).toJson();

      expect(json['day'], '2026-01-05');
    });
  });
}
