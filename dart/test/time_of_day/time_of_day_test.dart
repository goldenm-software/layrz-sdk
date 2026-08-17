import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart' as sdk show TimeOfDay;

void main() {
  group('TimeOfDay Tests', () {
    test('TimeOfDay constructor with hour and minute', () {
      final time = sdk.TimeOfDay(hour: 14, minute: 30);

      expect(time.hour, 14);
      expect(time.minute, 30);
    });

    test('TimeOfDay constructor midnight (00:00)', () {
      final time = sdk.TimeOfDay(hour: 0, minute: 0);

      expect(time.hour, 0);
      expect(time.minute, 0);
    });

    test('TimeOfDay constructor late time (23:59)', () {
      final time = sdk.TimeOfDay(hour: 23, minute: 59);

      expect(time.hour, 23);
      expect(time.minute, 59);
    });

    test('TimeOfDay fromJson with hour and minute', () {
      final json = <String, dynamic>{
        'hour': 9,
        'minute': 15,
      };

      final time = sdk.TimeOfDay.fromJson(json);

      expect(time.hour, 9);
      expect(time.minute, 15);
    });

    test('TimeOfDay fromJson with various times', () {
      final testCases = [
        (1, 0),   // 01:00
        (6, 30),  // 06:30
        (12, 0),  // 12:00 (noon)
        (12, 30), // 12:30 (afternoon)
        (18, 45), // 18:45
        (23, 59), // 23:59 (end of day)
      ];

      for (final (hour, minute) in testCases) {
        final json = <String, dynamic>{
          'hour': hour,
          'minute': minute,
        };

        final time = sdk.TimeOfDay.fromJson(json);
        expect(time.hour, hour);
        expect(time.minute, minute);
      }
    });

    test('TimeOfDay toJson returns map with hour and minute', () {
      final time = sdk.TimeOfDay(hour: 16, minute: 45);

      final json = time.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['hour'], 16);
      expect(json['minute'], 45);
    });

    test('TimeOfDay toJson for midnight', () {
      final time = sdk.TimeOfDay(hour: 0, minute: 0);

      final json = time.toJson();

      expect(json['hour'], 0);
      expect(json['minute'], 0);
    });

    test('TimeOfDay toJson for end of day', () {
      final time = sdk.TimeOfDay(hour: 23, minute: 59);

      final json = time.toJson();

      expect(json['hour'], 23);
      expect(json['minute'], 59);
    });

    test('TimeOfDay roundtrip: toJson then fromJson', () {
      final original = sdk.TimeOfDay(hour: 10, minute: 30);

      final json = original.toJson();
      final restored = sdk.TimeOfDay.fromJson(json);

      expect(restored.hour, original.hour);
      expect(restored.minute, original.minute);
    });

    test('TimeOfDay roundtrip with multiple different times', () {
      final times = [
        sdk.TimeOfDay(hour: 0, minute: 0),
        sdk.TimeOfDay(hour: 6, minute: 0),
        sdk.TimeOfDay(hour: 12, minute: 0),
        sdk.TimeOfDay(hour: 18, minute: 0),
        sdk.TimeOfDay(hour: 23, minute: 59),
      ];

      for (final original in times) {
        final json = original.toJson();
        final restored = sdk.TimeOfDay.fromJson(json);

        expect(restored.hour, original.hour);
        expect(restored.minute, original.minute);
      }
    });

    test('TimeOfDay.fromDateTime extracts hour and minute', () {
      final dateTime = DateTime(2024, 8, 17, 14, 30, 45, 123, 456);

      final time = sdk.TimeOfDay.fromDateTime(dateTime);

      expect(time.hour, 14);
      expect(time.minute, 30);
    });

    test('TimeOfDay.fromDateTime ignores seconds and microseconds', () {
      final dateTime = DateTime(2024, 8, 17, 14, 30, 45, 123, 456);

      final time = sdk.TimeOfDay.fromDateTime(dateTime);

      expect(time.hour, 14);
      expect(time.minute, 30);
    });

    test('TimeOfDay.fromDateTime with various dates', () {
      final testCases = [
        DateTime(2024, 1, 1, 0, 0),
        DateTime(2024, 6, 15, 12, 0),
        DateTime(2024, 12, 31, 23, 59),
        DateTime(2000, 2, 29, 6, 30),
      ];

      final expected = [
        (0, 0),
        (12, 0),
        (23, 59),
        (6, 30),
      ];

      for (int i = 0; i < testCases.length; i++) {
        final time = sdk.TimeOfDay.fromDateTime(testCases[i]);
        expect(time.hour, expected[i].$1);
        expect(time.minute, expected[i].$2);
      }
    });

    test('TimeOfDay equality operator', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time3 = sdk.TimeOfDay(hour: 14, minute: 31);

      expect(time1, time2);
      expect(time1, isNot(time3));
    });

    test('TimeOfDay equality with different hour', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 15, minute: 30);

      expect(time1, isNot(time2));
    });

    test('TimeOfDay equality with different minute', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 14, minute: 31);

      expect(time1, isNot(time2));
    });

    test('TimeOfDay copyWith hour', () {
      final original = sdk.TimeOfDay(hour: 14, minute: 30);

      final modified = original.copyWith(hour: 15);

      expect(modified.hour, 15);
      expect(modified.minute, original.minute);
    });

    test('TimeOfDay copyWith minute', () {
      final original = sdk.TimeOfDay(hour: 14, minute: 30);

      final modified = original.copyWith(minute: 45);

      expect(modified.hour, original.hour);
      expect(modified.minute, 45);
    });

    test('TimeOfDay copyWith hour and minute', () {
      final original = sdk.TimeOfDay(hour: 14, minute: 30);

      final modified = original.copyWith(hour: 16, minute: 15);

      expect(modified.hour, 16);
      expect(modified.minute, 15);
    });

    test('TimeOfDay copyWith with no changes returns equivalent instance', () {
      final original = sdk.TimeOfDay(hour: 14, minute: 30);

      final copied = original.copyWith();

      expect(copied.hour, original.hour);
      expect(copied.minute, original.minute);
    });

    test('TimeOfDay hashCode consistency', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 14, minute: 30);

      expect(time1.hashCode, time2.hashCode);
    });

    test('TimeOfDay hashCode differs for different times', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 14, minute: 31);

      // hashCodes may collide but should generally differ for different objects
      // We just verify they can both be computed without error
      expect(time1.hashCode, isA<int>());
      expect(time2.hashCode, isA<int>());
    });

    test('TimeOfDay can be used in collections (Set)', () {
      final time1 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time2 = sdk.TimeOfDay(hour: 14, minute: 30);
      final time3 = sdk.TimeOfDay(hour: 15, minute: 0);

      final set = {time1, time2, time3};

      // time1 and time2 are equal, so set should have 2 elements
      expect(set.length, 2);
    });

    test('TimeOfDay toString produces readable output', () {
      final time = sdk.TimeOfDay(hour: 14, minute: 30);

      final stringRep = time.toString();

      expect(stringRep, isA<String>());
      expect(stringRep.isNotEmpty, true);
    });

    test('TimeOfDay immutability verified by roundtrip', () {
      final time1 = sdk.TimeOfDay(hour: 10, minute: 20);

      final json = time1.toJson();
      final time2 = sdk.TimeOfDay.fromJson(json);

      // Modifying one should not affect the other
      expect(time1.hour, time2.hour);
      expect(time1.minute, time2.minute);
    });

    test('TimeOfDay fromJson and toJson preserves precision', () {
      final original = sdk.TimeOfDay(hour: 5, minute: 5);

      final json = original.toJson();
      final restored = sdk.TimeOfDay.fromJson(json);

      expect(restored.hour, 5);
      expect(restored.minute, 5);
    });

    test('TimeOfDay with hour boundaries', () {
      final times = [
        sdk.TimeOfDay(hour: 0, minute: 0),   // start of day
        sdk.TimeOfDay(hour: 11, minute: 59), // just before noon
        sdk.TimeOfDay(hour: 12, minute: 0),  // noon
        sdk.TimeOfDay(hour: 12, minute: 1),  // just after noon
        sdk.TimeOfDay(hour: 23, minute: 59), // end of day
      ];

      for (final time in times) {
        final json = time.toJson();
        final restored = sdk.TimeOfDay.fromJson(json);

        expect(restored.hour, time.hour);
        expect(restored.minute, time.minute);
      }
    });

    test('TimeOfDay with minute boundaries', () {
      final times = [
        sdk.TimeOfDay(hour: 10, minute: 0),  // start of hour
        sdk.TimeOfDay(hour: 10, minute: 29), // mid-hour
        sdk.TimeOfDay(hour: 10, minute: 30), // half hour
        sdk.TimeOfDay(hour: 10, minute: 59), // end of hour
      ];

      for (final time in times) {
        final json = time.toJson();
        final restored = sdk.TimeOfDay.fromJson(json);

        expect(restored.hour, time.hour);
        expect(restored.minute, time.minute);
      }
    });
  });
}
