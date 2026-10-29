import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MappitFreeDay', () {
    test('decodes the detail selection with assets', () {
      final day = MappitFreeDay.fromJson({
        'id': '1',
        'name': 'Christmas',
        'date': '2026-12-25',
        'assetsIds': ['10', '11'],
        'assets': [
          {
            'id': '10',
            'name': 'Seller A',
            'mode': 'SINGLE',
            'dynamicIcon': {'type': 'EMOJI', 'emoji': '🎄', 'url': null, 'icon': null, 'base64': null},
          },
          {'id': '11', 'name': 'Seller B', 'mode': null, 'dynamicIcon': null},
        ],
      });

      expect(day.date, DateTime(2026, 12, 25));
      expect(day.assetsIds, ['10', '11']);
      expect(day.assets?.first.mode, AssetMode.single);
      expect(day.assets?.first.dynamicIcon?.emoji, '🎄');
    });

    test('decodes the listing selection without assets', () {
      final day = MappitFreeDay.fromJson({'id': '2', 'name': 'New year', 'date': '2027-01-01', 'assetsIds': []});
      expect(day.assets, isNull);
      expect(day.assetsIds, isEmpty);
      expect(MappitFreeDay.fromJson(day.toJson()), day);
    });

    test('selections', () {
      final listing = MappitFreeDay.fields.map((field) => field.name).toList();
      expect(listing, ['id', 'name', 'date', 'assetsIds']);
      final detail = MappitFreeDay.detailFields.map((field) => field.name).toList();
      expect(detail, [...listing, 'assets']);
    });
  });

  group('MappitFreeDayInput', () {
    test('sends the backend input shape', () {
      final input = MappitFreeDayInput(name: 'Holiday', date: DateTime(2026, 5, 1, 13, 30), assetsIds: ['10']);
      expect(input.toJson(), {
        'name': 'Holiday',
        'date': '2026-05-01',
        'assetsIds': ['10'],
      });
    });

    test('fromFreeDay keeps the id and every asset', () {
      final day = MappitFreeDay(id: '3', name: 'Labor day', date: DateTime(2026, 5, 1), assetsIds: ['a', 'b']);
      final input = MappitFreeDayInput.fromFreeDay(day);
      expect(input.toJson(), {
        'id': '3',
        'name': 'Labor day',
        'date': '2026-05-01',
        'assetsIds': ['a', 'b'],
      });

      input.assetsIds.add('c');
      expect(day.assetsIds, ['a', 'b']);
    });

    test('fromFreeDay falls back to the assets when assetsIds is missing', () {
      final day = MappitFreeDay(
        id: '4',
        name: 'Day',
        date: DateTime(2026, 1, 2),
        assets: const [Asset(id: 'x', name: 'X')],
      );
      expect(MappitFreeDayInput.fromFreeDay(day).assetsIds, ['x']);
    });
  });
}
