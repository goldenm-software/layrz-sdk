import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('TimestampConverter', () {
    test('fromJson converts seconds to DateTime', () {
      const converter = TimestampConverter();
      final result = converter.fromJson(1609459200);

      expect(result, DateTime.fromMillisecondsSinceEpoch(1609459200000));
    });

    test('fromJson with float seconds', () {
      const converter = TimestampConverter();
      final result = converter.fromJson(1609459200.5);

      expect(result, DateTime.fromMillisecondsSinceEpoch(1609459200500));
    });

    test('toJson converts DateTime to seconds', () {
      const converter = TimestampConverter();
      final dateTime = DateTime.fromMillisecondsSinceEpoch(1609459200000);
      final result = converter.toJson(dateTime);

      expect(result, 1609459200);
    });

    test('round-trip preserves timestamp', () {
      const converter = TimestampConverter();
      final now = DateTime.now();
      final json = converter.toJson(now);
      final restored = converter.fromJson(json);

      // Allow small rounding differences due to milliseconds truncation
      expect(restored, isNotNull);
      expect(restored.difference(now).abs().inMilliseconds, lessThan(1000));
    });

    test('fromJson with zero epoch', () {
      const converter = TimestampConverter();
      final result = converter.fromJson(0);

      expect(result, DateTime.fromMillisecondsSinceEpoch(0));
    });

    test('toJson with epoch', () {
      const converter = TimestampConverter();
      final dateTime = DateTime.fromMillisecondsSinceEpoch(0);
      final result = converter.toJson(dateTime);

      expect(result, 0);
    });

    test('round-trip with zero timestamp', () {
      const converter = TimestampConverter();
      final json = converter.toJson(DateTime.fromMillisecondsSinceEpoch(0));
      final restored = converter.fromJson(json);

      expect(restored, DateTime.fromMillisecondsSinceEpoch(0));
    });

    test('fromJson with large timestamp', () {
      const converter = TimestampConverter();
      final result = converter.fromJson(1704067200);

      expect(result, DateTime.fromMillisecondsSinceEpoch(1704067200000));
    });
  });

  group('TimestampOrNullConverter', () {
    test('fromJson converts seconds to DateTime', () {
      const converter = TimestampOrNullConverter();
      final result = converter.fromJson(1609459200);

      expect(result, DateTime.fromMillisecondsSinceEpoch(1609459200000));
    });

    test('fromJson with null returns null', () {
      const converter = TimestampOrNullConverter();
      final result = converter.fromJson(null);

      expect(result, isNull);
    });

    test('fromJson with zero', () {
      const converter = TimestampOrNullConverter();
      final result = converter.fromJson(0);

      expect(result, DateTime.fromMillisecondsSinceEpoch(0));
    });

    test('toJson converts DateTime to seconds', () {
      const converter = TimestampOrNullConverter();
      final dateTime = DateTime.fromMillisecondsSinceEpoch(1609459200000);
      final result = converter.toJson(dateTime);

      expect(result, 1609459200);
    });

    test('toJson with null returns null', () {
      const converter = TimestampOrNullConverter();
      final result = converter.toJson(null);

      expect(result, isNull);
    });

    test('round-trip with valid timestamp', () {
      const converter = TimestampOrNullConverter();
      final now = DateTime.now();
      final json = converter.toJson(now);
      final restored = converter.fromJson(json);

      expect(restored, isNotNull);
      expect(restored!.difference(now).abs().inMilliseconds, lessThan(1000));
    });

    test('round-trip with null', () {
      const converter = TimestampOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);

      expect(restored, isNull);
    });

    test('fromJson with float seconds', () {
      const converter = TimestampOrNullConverter();
      final result = converter.fromJson(1609459200.5);

      expect(result, DateTime.fromMillisecondsSinceEpoch(1609459200500));
    });
  });

  group('DateConverter', () {
    test('fromJson parses ISO date string', () {
      const converter = DateConverter();
      final result = converter.fromJson('2024-01-01');

      expect(result, DateTime(2024, 1, 1));
    });

    test('toJson formats DateTime as ISO date', () {
      const converter = DateConverter();
      final dateTime = DateTime(2024, 1, 1);
      final result = converter.toJson(dateTime);

      expect(result, '2024-01-01');
    });

    test('round-trip preserves date', () {
      const converter = DateConverter();
      final original = DateTime(2024, 6, 15);
      final json = converter.toJson(original);
      final restored = converter.fromJson(json);

      expect(restored, original);
    });

    test('fromJson with various dates', () {
      const converter = DateConverter();
      expect(converter.fromJson('2020-01-01'), DateTime(2020, 1, 1));
      expect(converter.fromJson('2025-12-31'), DateTime(2025, 12, 31));
      expect(converter.fromJson('2000-06-15'), DateTime(2000, 6, 15));
    });

    test('toJson with leading zeros', () {
      const converter = DateConverter();
      expect(converter.toJson(DateTime(2024, 1, 5)), '2024-01-05');
      expect(converter.toJson(DateTime(2024, 9, 1)), '2024-09-01');
    });

    test('fromJson ignores time components', () {
      const converter = DateConverter();
      final result = converter.fromJson('2024-06-15');

      expect(result.year, 2024);
      expect(result.month, 6);
      expect(result.day, 15);
    });
  });

  group('DateOrNullConverter', () {
    test('fromJson parses ISO date string', () {
      const converter = DateOrNullConverter();
      final result = converter.fromJson('2024-01-01');

      expect(result, DateTime(2024, 1, 1));
    });

    test('fromJson with null returns null', () {
      const converter = DateOrNullConverter();
      final result = converter.fromJson(null);

      expect(result, isNull);
    });

    test('toJson formats DateTime as ISO date', () {
      const converter = DateOrNullConverter();
      final dateTime = DateTime(2024, 1, 1);
      final result = converter.toJson(dateTime);

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

    test('fromJson with various dates', () {
      const converter = DateOrNullConverter();
      expect(converter.fromJson('2020-01-01'), DateTime(2020, 1, 1));
      expect(converter.fromJson('2025-12-31'), DateTime(2025, 12, 31));
      expect(converter.fromJson('2000-06-15'), DateTime(2000, 6, 15));
    });
  });
}
