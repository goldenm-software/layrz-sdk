import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('TopAccount Tests', () {
    test('TopAccount.fromJson() and toJson()', () {
      final account = TopAccount.fromJson(<String, dynamic>{
        'id': '7',
        'name': 'Acme',
      });

      expect(account.id, '7');
      expect(account.name, 'Acme');
      expect(account.toJson(), <String, dynamic>{'id': '7', 'name': 'Acme'});
    });
  });

  group('GrowthSummary Tests', () {
    test('GrowthSummary.fromJson() parses nested lists', () {
      final summary = GrowthSummary.fromJson(<String, dynamic>{
        'totalAssets': 100,
        'totalDevices': 200,
        'totalUsers': 300,
        'topAccounts': [
          {'id': '1', 'name': 'A'},
          {'id': '2', 'name': 'B'},
        ],
        'accumulatedGrowth': [
          {
            'month': '2026-01',
            'totalAssets': 1,
            'totalDevices': 2,
            'totalUsers': 3,
            'predicted': false,
          },
          {
            'month': '2026-02',
            'totalAssets': 4,
            'totalDevices': 5,
            'totalUsers': 6,
            'predicted': true,
          },
        ],
      });

      expect(summary.totalAssets, 100);
      expect(summary.totalDevices, 200);
      expect(summary.totalUsers, 300);
      expect(summary.topAccounts.map((e) => e.id), ['1', '2']);
      expect(summary.accumulatedGrowth, hasLength(2));
      expect(summary.accumulatedGrowth[0].predicted, isFalse);
      expect(summary.accumulatedGrowth[1].month, DateTime(2026, 2, 1));
      expect(summary.accumulatedGrowth[1].predicted, isTrue);
    });
  });

  group('AccountGrowth Tests', () {
    test('AccountGrowth.fromJson() parses account and growth', () {
      final item = AccountGrowth.fromJson(<String, dynamic>{
        'account': {'id': '9', 'name': 'Zed'},
        'growth': [
          {
            'month': '2026-05',
            'totalAssets': 1,
            'totalDevices': 2,
            'totalUsers': 3,
          },
        ],
      });

      expect(item.account.name, 'Zed');
      expect(item.growth, hasLength(1));
      expect(item.growth.first.month, DateTime(2026, 5, 1));
      expect(item.growth.first.predicted, isFalse);
    });

    test('AccountGrowth.fromJson() with empty growth', () {
      final item = AccountGrowth.fromJson(<String, dynamic>{
        'account': {'id': '9', 'name': 'Zed'},
        'growth': <dynamic>[],
      });

      expect(item.growth, isEmpty);
    });
  });
}
