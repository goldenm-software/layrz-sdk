import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MonthConverter', () {
    const converter = MonthConverter();

    test('fromJson returns the first day of the month', () {
      expect(converter.fromJson('2026-03'), DateTime(2026, 3));
      expect(converter.fromJson('2000-12'), DateTime(2000, 12));
    });

    test('toJson pads the month', () {
      expect(converter.toJson(DateTime(2026, 1, 20)), '2026-01');
    });

    test('round-trip', () {
      expect(
        converter.fromJson(converter.toJson(DateTime(2024, 7))),
        DateTime(2024, 7),
      );
    });
  });

  group('MonthOrNullConverter', () {
    const converter = MonthOrNullConverter();

    test('handles null both ways', () {
      expect(converter.fromJson(null), isNull);
      expect(converter.toJson(null), isNull);
    });

    test('converts non-null values', () {
      expect(converter.fromJson('2026-03'), DateTime(2026, 3));
      expect(converter.toJson(DateTime(2026, 3)), '2026-03');
    });
  });
}
