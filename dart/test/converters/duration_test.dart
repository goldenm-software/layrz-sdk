import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('DurationConverter()', () {
    const converter = DurationConverter();
    expect(converter.fromJson(1), const Duration(seconds: 1));
    expect(converter.toJson(const Duration(seconds: 1)), 1);

    expect(converter.fromJson(1.5), const Duration(seconds: 1));
    expect(converter.toJson(const Duration(seconds: 1)), 1);
  });

  group('DurationConverter edge cases', () {
    test('fromJson converts seconds to Duration', () {
      const converter = DurationConverter();
      expect(converter.fromJson(0), const Duration(seconds: 0));
      expect(converter.fromJson(60), const Duration(seconds: 60));
      expect(converter.fromJson(3600), const Duration(seconds: 3600));
    });

    test('fromJson truncates float to int', () {
      const converter = DurationConverter();
      expect(converter.fromJson(5.9), const Duration(seconds: 5));
      expect(converter.fromJson(10.1), const Duration(seconds: 10));
    });

    test('toJson returns seconds', () {
      const converter = DurationConverter();
      expect(converter.toJson(const Duration(seconds: 60)), 60);
      expect(converter.toJson(const Duration(minutes: 1)), 60);
      expect(converter.toJson(const Duration(hours: 1)), 3600);
    });

    test('round-trip preserves duration', () {
      const converter = DurationConverter();
      final original = const Duration(seconds: 120);
      final json = converter.toJson(original);
      final restored = converter.fromJson(json);
      expect(restored, original);
    });
  });

  group('DurationOrNullConverter', () {
    test('fromJson with valid seconds returns Duration', () {
      const converter = DurationOrNullConverter();
      final result = converter.fromJson(42);
      expect(result, const Duration(seconds: 42));
    });

    test('fromJson with null returns null', () {
      const converter = DurationOrNullConverter();
      final result = converter.fromJson(null);
      expect(result, isNull);
    });

    test('fromJson with zero returns zero duration', () {
      const converter = DurationOrNullConverter();
      final result = converter.fromJson(0);
      expect(result, const Duration(seconds: 0));
    });

    test('fromJson truncates float to int', () {
      const converter = DurationOrNullConverter();
      expect(converter.fromJson(5.9), const Duration(seconds: 5));
      expect(converter.fromJson(10.1), const Duration(seconds: 10));
    });

    test('toJson with Duration returns seconds', () {
      const converter = DurationOrNullConverter();
      final result = converter.toJson(const Duration(seconds: 42));
      expect(result, 42);
    });

    test('toJson with null returns null', () {
      const converter = DurationOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('toJson returns seconds as int', () {
      const converter = DurationOrNullConverter();
      expect(converter.toJson(const Duration(minutes: 1)), 60);
      expect(converter.toJson(const Duration(hours: 1)), 3600);
    });

    test('round-trip with valid duration', () {
      const converter = DurationOrNullConverter();
      const json = 120;
      final duration = converter.fromJson(json);
      final restored = converter.toJson(duration);
      expect(restored, json);
    });

    test('round-trip with null', () {
      const converter = DurationOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });
  });
}
