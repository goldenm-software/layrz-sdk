import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test("TimeOfDayFormatting", () async {
    const time1 = TimeOfDay(hour: 12, minute: 0);
    final asJson = const TimeOfDayOrNullConverter().toJson(time1);
    expect(asJson, "12:00:00");

    final fromJson = const TimeOfDayOrNullConverter().fromJson(asJson);
    expect(fromJson, time1);
  });

  group('TimeOfDayConverter', () {
    test('fromJson parses HH:MM:SS format', () {
      const converter = TimeOfDayConverter();
      final result = converter.fromJson('14:30:00');
      expect(result, const TimeOfDay(hour: 14, minute: 30));
    });

    test('fromJson with leading zeros', () {
      const converter = TimeOfDayConverter();
      final result = converter.fromJson('09:05:00');
      expect(result, const TimeOfDay(hour: 9, minute: 5));
    });

    test('fromJson with midnight', () {
      const converter = TimeOfDayConverter();
      final result = converter.fromJson('00:00:00');
      expect(result, const TimeOfDay(hour: 0, minute: 0));
    });

    test('fromJson with end of day', () {
      const converter = TimeOfDayConverter();
      final result = converter.fromJson('23:59:00');
      expect(result, const TimeOfDay(hour: 23, minute: 59));
    });

    test('toJson formats as HH:MM:00', () {
      const converter = TimeOfDayConverter();
      const time = TimeOfDay(hour: 14, minute: 30);
      expect(converter.toJson(time), '14:30:00');
    });

    test('toJson pads single digit hour with leading zero', () {
      const converter = TimeOfDayConverter();
      const time = TimeOfDay(hour: 9, minute: 5);
      expect(converter.toJson(time), '09:05:00');
    });

    test('toJson with midnight', () {
      const converter = TimeOfDayConverter();
      const time = TimeOfDay(hour: 0, minute: 0);
      expect(converter.toJson(time), '00:00:00');
    });

    test('round-trip preserves time', () {
      const converter = TimeOfDayConverter();
      const original = TimeOfDay(hour: 14, minute: 30);
      final json = converter.toJson(original);
      final restored = converter.fromJson(json);
      expect(restored, original);
    });

    test('round-trip multiple times', () {
      const converter = TimeOfDayConverter();
      final times = [
        const TimeOfDay(hour: 0, minute: 0),
        const TimeOfDay(hour: 6, minute: 30),
        const TimeOfDay(hour: 12, minute: 0),
        const TimeOfDay(hour: 18, minute: 45),
        const TimeOfDay(hour: 23, minute: 59),
      ];

      for (final time in times) {
        final json = converter.toJson(time);
        final restored = converter.fromJson(json);
        expect(restored, time);
      }
    });
  });

  group('TimeOfDayOrNullConverter', () {
    test('fromJson parses HH:MM:SS format', () {
      const converter = TimeOfDayOrNullConverter();
      final result = converter.fromJson('14:30:00');
      expect(result, const TimeOfDay(hour: 14, minute: 30));
    });

    test('fromJson with null returns null', () {
      const converter = TimeOfDayOrNullConverter();
      final result = converter.fromJson(null);
      expect(result, isNull);
    });

    test('fromJson ignores seconds component', () {
      const converter = TimeOfDayOrNullConverter();
      final result = converter.fromJson('14:30:45');
      expect(result, const TimeOfDay(hour: 14, minute: 30));
    });

    test('toJson formats as HH:MM:00', () {
      const converter = TimeOfDayOrNullConverter();
      const time = TimeOfDay(hour: 14, minute: 30);
      expect(converter.toJson(time), '14:30:00');
    });

    test('toJson with null returns null', () {
      const converter = TimeOfDayOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('round-trip with valid time', () {
      const converter = TimeOfDayOrNullConverter();
      const json = '14:30:00';
      final time = converter.fromJson(json);
      final restored = converter.toJson(time);
      expect(restored, json);
    });

    test('round-trip with null', () {
      const converter = TimeOfDayOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });
  });
}
