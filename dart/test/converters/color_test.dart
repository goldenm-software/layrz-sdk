import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('ColorConverter()', () {
    const color = "#1a356a";

    const converter = ColorConverter();
    final colorConverted = converter.fromJson(color);
    expect(colorConverted, const Color(0xFF1A356A));
    expect(converter.toJson(colorConverted), color);
  });

  group('ColorConverter edge cases', () {
    test('fromJson with hex string without # returns fallback blue', () {
      const converter = ColorConverter();
      final result = converter.fromJson('FF0000');
      expect(result, const Color(0xFF2196F3));
    });

    test('fromJson with random string returns fallback blue', () {
      const converter = ColorConverter();
      final result = converter.fromJson('not a color');
      expect(result, const Color(0xFF2196F3));
    });

    test('fromJson with #FF0000 returns red', () {
      const converter = ColorConverter();
      final result = converter.fromJson('#FF0000');
      expect(result, const Color(0xFFFF0000));
    });

    test('fromJson with #00FF00 returns green', () {
      const converter = ColorConverter();
      final result = converter.fromJson('#00FF00');
      expect(result, const Color(0xFF00FF00));
    });

    test('fromJson with #0000FF returns blue', () {
      const converter = ColorConverter();
      final result = converter.fromJson('#0000FF');
      expect(result, const Color(0xFF0000FF));
    });

    test('toJson formats as lowercase hex with #', () {
      const converter = ColorConverter();
      final color = Color.fromARGB(255, 26, 53, 106);
      final result = converter.toJson(color);
      expect(result, '#1a356a');
    });

    test('toJson round-trip multiple colors', () {
      const converter = ColorConverter();
      final colors = [
        const Color(0xFFFF0000),
        const Color(0xFF00FF00),
        const Color(0xFF0000FF),
        const Color(0xFFFFFFFF),
        const Color(0xFF000000),
      ];

      for (final color in colors) {
        final json = converter.toJson(color);
        final restored = converter.fromJson(json);
        expect(restored, color);
      }
    });
  });

  group('ColorOrNullConverter', () {
    test('fromJson with valid hex string returns Color', () {
      const converter = ColorOrNullConverter();
      final result = converter.fromJson('#1a356a');
      expect(result, const Color(0xFF1A356A));
    });

    test('fromJson with null returns null', () {
      const converter = ColorOrNullConverter();
      final result = converter.fromJson(null);
      expect(result, isNull);
    });

    test('fromJson with empty string returns null', () {
      const converter = ColorOrNullConverter();
      final result = converter.fromJson('');
      expect(result, isNull);
    });

    test('fromJson with string without # returns null', () {
      const converter = ColorOrNullConverter();
      final result = converter.fromJson('FF0000');
      expect(result, isNull);
    });

    test('fromJson with random string returns null', () {
      const converter = ColorOrNullConverter();
      final result = converter.fromJson('not a color');
      expect(result, isNull);
    });

    test('toJson with Color returns hex string', () {
      const converter = ColorOrNullConverter();
      final color = Color.fromARGB(255, 26, 53, 106);
      final result = converter.toJson(color);
      expect(result, '#1a356a');
    });

    test('toJson with null returns null', () {
      const converter = ColorOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('round-trip with valid color', () {
      const converter = ColorOrNullConverter();
      const json = '#FF0000';
      final color = converter.fromJson(json);
      final restored = converter.toJson(color);
      expect(restored, '#ff0000');
    });

    test('round-trip with null', () {
      const converter = ColorOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });
  });
}
