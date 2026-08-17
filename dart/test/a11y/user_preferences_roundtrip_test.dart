import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('UserPreferences Full Roundtrip Tests', () {
    test('UserPreferences complete roundtrip with all fields and all colorblind modes', () {
      final modes = [
        ColorblindMode.protanopia,
        ColorblindMode.protanomaly,
        ColorblindMode.deuteranopia,
        ColorblindMode.deuteranomaly,
        ColorblindMode.tritanopia,
        ColorblindMode.tritanomaly,
        ColorblindMode.normal,
      ];

      for (final mode in modes) {
        final original = UserPreferences(
          timezone: 'UTC',
          dateTimeFormat: '%Y-%m-%d %H:%M:%S',
          dateFormat: '%Y-%m-%d',
          timeFormat: '%H:%M:%S',
          colorblindMode: mode,
          colorblindForce: 0.5,
        );

        final json = original.toJson();
        final restored = UserPreferences.fromJson(json);

        expect(restored.timezone, original.timezone);
        expect(restored.dateTimeFormat, original.dateTimeFormat);
        expect(restored.dateFormat, original.dateFormat);
        expect(restored.timeFormat, original.timeFormat);
        expect(restored.colorblindMode, mode);
        expect(restored.colorblindForce, 0.5);
      }
    });

    test('UserPreferences with all format strings different', () {
      final original = UserPreferences(
        timezone: 'America/New_York',
        dateTimeFormat: '%d/%m/%Y %I:%M %p',
        dateFormat: '%d/%m/%Y',
        timeFormat: '%I:%M %p',
        colorblindMode: ColorblindMode.protanopia,
        colorblindForce: 0.75,
      );

      final json = original.toJson();
      final restored = UserPreferences.fromJson(json);

      expect(restored.timezone, 'America/New_York');
      expect(restored.dateTimeFormat, '%d/%m/%Y %I:%M %p');
      expect(restored.dateFormat, '%d/%m/%Y');
      expect(restored.timeFormat, '%I:%M %p');
    });

    test('UserPreferences toJson preserves all fields in map', () {
      final original = UserPreferences(
        timezone: 'Europe/London',
        dateTimeFormat: '%Y-%m-%d %H:%M',
        dateFormat: '%Y-%m-%d',
        timeFormat: '%H:%M',
        colorblindMode: ColorblindMode.deuteranomaly,
        colorblindForce: 0.9,
      );

      final json = original.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['timezone'], 'Europe/London');
      expect(json['dateTimeFormat'], '%Y-%m-%d %H:%M');
      expect(json['dateFormat'], '%Y-%m-%d');
      expect(json['timeFormat'], '%H:%M');
      expect(json['colorblindMode'], 'DEUTERANOMALY');
      expect(json['colorblindForce'], 0.9);
    });

    test('UserPreferences fromJson with minimal fields uses defaults', () {
      final json = <String, dynamic>{};

      final prefs = UserPreferences.fromJson(json);

      expect(prefs.timezone, '');
      expect(prefs.dateTimeFormat, '%Y-%m-%d %I:%M %p');
      expect(prefs.dateFormat, '%Y-%m-%d');
      expect(prefs.timeFormat, '%I:%M %p');
      expect(prefs.colorblindMode, ColorblindMode.normal);
      expect(prefs.colorblindForce, 1.0);
    });

    test('UserPreferences from JSON with only timezone field', () {
      final json = <String, dynamic>{
        'timezone': 'Asia/Tokyo',
      };

      final prefs = UserPreferences.fromJson(json);

      expect(prefs.timezone, 'Asia/Tokyo');
      expect(prefs.dateTimeFormat, '%Y-%m-%d %I:%M %p');
      expect(prefs.dateFormat, '%Y-%m-%d');
      expect(prefs.timeFormat, '%I:%M %p');
      expect(prefs.colorblindMode, ColorblindMode.normal);
      expect(prefs.colorblindForce, 1.0);
    });

    test('UserPreferences from JSON with only colorblindMode field', () {
      final json = <String, dynamic>{
        'colorblindMode': 'PROTANOMALY',
      };

      final prefs = UserPreferences.fromJson(json);

      expect(prefs.timezone, '');
      expect(prefs.dateTimeFormat, '%Y-%m-%d %I:%M %p');
      expect(prefs.dateFormat, '%Y-%m-%d');
      expect(prefs.timeFormat, '%I:%M %p');
      expect(prefs.colorblindMode, ColorblindMode.protanomaly);
      expect(prefs.colorblindForce, 1.0);
    });

    test('UserPreferences from JSON with only colorblindForce field', () {
      final json = <String, dynamic>{
        'colorblindForce': 0.6,
      };

      final prefs = UserPreferences.fromJson(json);

      expect(prefs.timezone, '');
      expect(prefs.dateTimeFormat, '%Y-%m-%d %I:%M %p');
      expect(prefs.dateFormat, '%Y-%m-%d');
      expect(prefs.timeFormat, '%I:%M %p');
      expect(prefs.colorblindMode, ColorblindMode.normal);
      expect(prefs.colorblindForce, 0.6);
    });

    test('UserPreferences with mixed default and custom values', () {
      final original = UserPreferences(
        timezone: 'America/Los_Angeles',
        // dateTimeFormat uses default
        dateFormat: '%m/%d/%Y',
        // timeFormat uses default
        colorblindMode: ColorblindMode.tritanopia,
        colorblindForce: 0.5,
      );

      final json = original.toJson();
      final restored = UserPreferences.fromJson(json);

      expect(restored.timezone, 'America/Los_Angeles');
      expect(restored.dateTimeFormat, '%Y-%m-%d %I:%M %p'); // default
      expect(restored.dateFormat, '%m/%d/%Y');
      expect(restored.timeFormat, '%I:%M %p'); // default
      expect(restored.colorblindMode, ColorblindMode.tritanopia);
      expect(restored.colorblindForce, 0.5);
    });

    test('UserPreferencesInput complete roundtrip with all colorblind modes', () {
      final modes = [
        ColorblindMode.protanopia,
        ColorblindMode.protanomaly,
        ColorblindMode.deuteranopia,
        ColorblindMode.deuteranomaly,
        ColorblindMode.tritanopia,
        ColorblindMode.tritanomaly,
        ColorblindMode.normal,
      ];

      for (final mode in modes) {
        final original = UserPreferencesInput(
          timezone: 'UTC',
          dateTimeFormat: '%Y-%m-%d %H:%M:%S',
          dateFormat: '%Y-%m-%d',
          timeFormat: '%H:%M:%S',
          colorblindMode: mode,
          colorblindForce: 0.5,
        );

        final json = original.toJson();
        final restored = UserPreferencesInput.fromJson(json);

        expect(restored.timezone, original.timezone);
        expect(restored.dateTimeFormat, original.dateTimeFormat);
        expect(restored.dateFormat, original.dateFormat);
        expect(restored.timeFormat, original.timeFormat);
        expect(restored.colorblindMode, mode);
        expect(restored.colorblindForce, 0.5);
      }
    });

    test('UserPreferencesInput mutability and roundtrip', () {
      final input = UserPreferencesInput(
        timezone: 'America/New_York',
      );

      input.timezone = 'America/Chicago';
      input.dateFormat = '%m-%d-%Y';
      input.timeFormat = '%H:%M';
      input.colorblindMode = ColorblindMode.deuteranomaly;
      input.colorblindForce = 0.7;

      expect(input.timezone, 'America/Chicago');
      expect(input.dateFormat, '%m-%d-%Y');
      expect(input.timeFormat, '%H:%M');
      expect(input.colorblindMode, ColorblindMode.deuteranomaly);
      expect(input.colorblindForce, 0.7);

      final json = input.toJson();
      final restored = UserPreferencesInput.fromJson(json);

      expect(restored.timezone, 'America/Chicago');
      expect(restored.dateFormat, '%m-%d-%Y');
      expect(restored.timeFormat, '%H:%M');
      expect(restored.colorblindMode, ColorblindMode.deuteranomaly);
      expect(restored.colorblindForce, 0.7);
    });

    test('UserPreferencesInput toJson preserves all fields', () {
      final original = UserPreferencesInput(
        timezone: 'Europe/Paris',
        dateTimeFormat: '%d/%m/%Y %H:%M',
        dateFormat: '%d/%m/%Y',
        timeFormat: '%H:%M',
        colorblindMode: ColorblindMode.tritanomaly,
        colorblindForce: 0.85,
      );

      final json = original.toJson();

      expect(json['timezone'], 'Europe/Paris');
      expect(json['dateTimeFormat'], '%d/%m/%Y %H:%M');
      expect(json['dateFormat'], '%d/%m/%Y');
      expect(json['timeFormat'], '%H:%M');
      expect(json['colorblindMode'], 'TRITANOMALY');
      expect(json['colorblindForce'], 0.85);
    });

    test('UserPreferencesInput fromJson with minimal fields applies defaults', () {
      final json = <String, dynamic>{};

      final input = UserPreferencesInput.fromJson(json);

      expect(input.timezone, '');
      expect(input.dateTimeFormat, '%Y-%m-%d %I:%M %p');
      expect(input.dateFormat, '%Y-%m-%d');
      expect(input.timeFormat, '%I:%M %p');
      expect(input.colorblindMode, ColorblindMode.normal);
      expect(input.colorblindForce, 1.0);
    });

    test('UserPreferencesInput fromJson with partial fields and defaults', () {
      final json = <String, dynamic>{
        'timezone': 'Australia/Sydney',
        'colorblindMode': 'PROTANOPIA',
      };

      final input = UserPreferencesInput.fromJson(json);

      expect(input.timezone, 'Australia/Sydney');
      expect(input.dateTimeFormat, '%Y-%m-%d %I:%M %p'); // default
      expect(input.dateFormat, '%Y-%m-%d'); // default
      expect(input.timeFormat, '%I:%M %p'); // default
      expect(input.colorblindMode, ColorblindMode.protanopia);
      expect(input.colorblindForce, 1.0); // default
    });

    test('UserPreferences equality comparison', () {
      final prefs1 = UserPreferences(
        timezone: 'UTC',
        colorblindMode: ColorblindMode.normal,
      );

      final prefs2 = UserPreferences(
        timezone: 'UTC',
        colorblindMode: ColorblindMode.normal,
      );

      expect(prefs1, prefs2);
    });

    test('UserPreferences inequality with different timezone', () {
      final prefs1 = UserPreferences(timezone: 'UTC');
      final prefs2 = UserPreferences(timezone: 'America/New_York');

      expect(prefs1, isNot(prefs2));
    });

    test('UserPreferences inequality with different colorblind mode', () {
      final prefs1 = UserPreferences(colorblindMode: ColorblindMode.normal);
      final prefs2 = UserPreferences(colorblindMode: ColorblindMode.protanopia);

      expect(prefs1, isNot(prefs2));
    });

    test('UserPreferencesInput copyWith functionality', () {
      final original = UserPreferencesInput(
        timezone: 'UTC',
        colorblindMode: ColorblindMode.normal,
      );

      final modified = original.copyWith(
        timezone: 'America/New_York',
        colorblindMode: ColorblindMode.deuteranomaly,
      );

      expect(modified.timezone, 'America/New_York');
      expect(modified.colorblindMode, ColorblindMode.deuteranomaly);
    });

    test('UserPreferencesInput copyWith preserves other fields', () {
      final original = UserPreferencesInput(
        timezone: 'UTC',
        dateFormat: '%Y-%m-%d',
        timeFormat: '%H:%M',
        colorblindMode: ColorblindMode.normal,
        colorblindForce: 0.8,
      );

      final modified = original.copyWith(timezone: 'Europe/London');

      expect(modified.timezone, 'Europe/London');
      expect(modified.dateFormat, '%Y-%m-%d');
      expect(modified.timeFormat, '%H:%M');
      expect(modified.colorblindMode, ColorblindMode.normal);
      expect(modified.colorblindForce, 0.8);
    });

    test('UserPreferences with colorblindForce edge values', () {
      final edgeCases = [0.0, 0.1, 0.5, 0.9, 1.0];

      for (final force in edgeCases) {
        final prefs = UserPreferences(colorblindForce: force);

        final json = prefs.toJson();
        final restored = UserPreferences.fromJson(json);

        expect(restored.colorblindForce, force);
      }
    });

    test('UserPreferencesInput with various timezone strings', () {
      final timezones = [
        'UTC',
        'America/New_York',
        'Europe/London',
        'Asia/Tokyo',
        'Australia/Sydney',
        'America/Los_Angeles',
        '',
      ];

      for (final tz in timezones) {
        final input = UserPreferencesInput(timezone: tz);

        final json = input.toJson();
        final restored = UserPreferencesInput.fromJson(json);

        expect(restored.timezone, tz);
      }
    });

    test('UserPreferences complex format strings roundtrip', () {
      final formatStrings = [
        '%Y-%m-%d',
        '%d/%m/%Y',
        '%m-%d-%Y',
        '%d.%m.%Y',
        '%Y/%m/%d',
        '%Y%m%d',
      ];

      for (final format in formatStrings) {
        final prefs = UserPreferences(dateFormat: format);

        final json = prefs.toJson();
        final restored = UserPreferences.fromJson(json);

        expect(restored.dateFormat, format);
      }
    });
  });
}
