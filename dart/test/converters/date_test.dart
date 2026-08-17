import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('DateConverter()', () {
    const dateStr = "2024-01-01";
    final date = DateTime(2024, 1, 1);
    const converter = DateConverter();
    final dateConverted = converter.fromJson(dateStr);

    expect(dateConverted, date);
    expect(converter.toJson(dateConverted), dateStr);
  });

  group('DateConverter edge cases', () {
    test('fromJson with various dates', () {
      const converter = DateConverter();
      final test1 = converter.fromJson('2023-12-31');
      expect(test1, DateTime(2023, 12, 31));

      final test2 = converter.fromJson('2000-01-01');
      expect(test2, DateTime(2000, 1, 1));

      final test3 = converter.fromJson('2025-06-15');
      expect(test3, DateTime(2025, 6, 15));
    });

    test('toJson with leading zeros for month and day', () {
      const converter = DateConverter();
      final date = DateTime(2024, 1, 5);
      expect(converter.toJson(date), '2024-01-05');
    });

    test('round-trip multiple dates', () {
      const converter = DateConverter();
      final dates = [
        DateTime(2020, 1, 1),
        DateTime(2024, 12, 31),
        DateTime(2000, 6, 15),
      ];

      for (final date in dates) {
        final json = converter.toJson(date);
        final restored = converter.fromJson(json);
        expect(restored, date);
      }
    });
  });

  group('DateOrNullConverter', () {
    test('fromJson with valid date string returns DateTime', () {
      const converter = DateOrNullConverter();
      final result = converter.fromJson('2024-01-01');
      expect(result, DateTime(2024, 1, 1));
    });

    test('fromJson with null returns null', () {
      const converter = DateOrNullConverter();
      final result = converter.fromJson(null);
      expect(result, isNull);
    });

    test('toJson with DateTime returns date string', () {
      const converter = DateOrNullConverter();
      final date = DateTime(2024, 1, 1);
      final result = converter.toJson(date);
      expect(result, '2024-01-01');
    });

    test('toJson with null returns null', () {
      const converter = DateOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('round-trip with valid date', () {
      const converter = DateOrNullConverter();
      const json = '2024-06-15';
      final date = converter.fromJson(json);
      final restored = converter.toJson(date);
      expect(restored, json);
    });

    test('round-trip with null', () {
      const converter = DateOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });
  });

  group('DateExtension.toDate', () {
    test('toDate formats DateTime as YYYY-MM-DD', () {
      final date = DateTime(2024, 1, 1);
      expect(date.toDate(), '2024-01-01');
    });

    test('toDate pads month with leading zero', () {
      final date = DateTime(2024, 1, 15);
      expect(date.toDate(), '2024-01-15');

      final date2 = DateTime(2024, 9, 5);
      expect(date2.toDate(), '2024-09-05');
    });

    test('toDate pads day with leading zero', () {
      final date = DateTime(2024, 12, 5);
      expect(date.toDate(), '2024-12-05');

      final date2 = DateTime(2024, 6, 9);
      expect(date2.toDate(), '2024-06-09');
    });

    test('toDate with double digit month and day', () {
      final date = DateTime(2024, 12, 31);
      expect(date.toDate(), '2024-12-31');
    });

    test('toDate ignores time components', () {
      final date = DateTime(2024, 6, 15, 14, 30, 45, 123, 456);
      expect(date.toDate(), '2024-06-15');
    });
  });
}
