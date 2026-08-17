import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('RegExpOrNullConverter()', () {
    const converter = RegExpOrNullConverter();
    const json = '^([0-9a-fA-F]{8})\$|^([0-9a-fA-F]{16})\$';
    final object = converter.fromJson(json);

    expect(object, isA<RegExp>());
    expect(object?.pattern, json);
    expect(converter.toJson(object), json);

    // Test the regex
    final random = Random();
    final hex = RegExp(json);

    List<String> testList = List.generate(10, (_) {
      // Generate a random hex string with 8 or 16 characters
      final length = random.nextBool() ? 8 : 16;
      final hexString = List.generate(length, (_) => random.nextInt(16).toRadixString(16)).join();
      return hexString;
    });

    for (final test in testList) {
      expect(hex.hasMatch(test), isTrue);

      // Test the regex with TextEditingValue
      final text = TextEditingValue(text: test);
      final result = FilteringTextInputFormatter.allow(hex).formatEditUpdate(text, text);
      expect(result.text, test);
    }

    testList = List.generate(10, (_) {
      // Generate a random hex string with 5 characters
      final hexString = List.generate(5, (_) => random.nextInt(16).toRadixString(16)).join();
      return hexString;
    });

    for (final test in testList) {
      expect(hex.hasMatch(test), isFalse);

      // Test the regex with TextEditingValue
      final text = TextEditingValue(text: test);
      final result = FilteringTextInputFormatter.allow(hex).formatEditUpdate(text, text);
      expect(result.text, '');
    }

    // Test null
    expect(converter.fromJson(null), isNull);
    expect(converter.toJson(null), isNull);
  });

  group('RegExpConverter', () {
    test('fromJson creates RegExp from pattern string', () {
      const converter = RegExpConverter();
      const pattern = '^[0-9]+\$';
      final result = converter.fromJson(pattern);

      expect(result, isA<RegExp>());
      expect(result.pattern, pattern);
    });

    test('fromJson with simple pattern', () {
      const converter = RegExpConverter();
      const pattern = '[a-z]+';
      final result = converter.fromJson(pattern);

      expect(result.pattern, pattern);
      expect(result.hasMatch('abc'), isTrue);
      expect(result.hasMatch('123'), isFalse);
    });

    test('toJson returns pattern string', () {
      const converter = RegExpConverter();
      final regex = RegExp('^[0-9]+\$');
      final result = converter.toJson(regex);

      expect(result, '^[0-9]+\$');
      expect(result, regex.pattern);
    });

    test('toJson with special characters in pattern', () {
      const converter = RegExpConverter();
      const pattern = r'\.+\*\?';
      final regex = RegExp(pattern);
      final result = converter.toJson(regex);

      expect(result, pattern);
    });

    test('round-trip with pattern', () {
      const converter = RegExpConverter();
      const pattern = '^([a-z])+\$';
      final regex = converter.fromJson(pattern);
      final restored = converter.toJson(regex);

      expect(restored, pattern);
    });

    test('round-trip with complex pattern', () {
      const converter = RegExpConverter();
      const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$';
      final regex = converter.fromJson(pattern);
      final restored = converter.toJson(regex);

      expect(restored, pattern);
    });

    test('created regex matches correctly', () {
      const converter = RegExpConverter();
      const pattern = r'^\d{3}-\d{2}-\d{4}$';
      final regex = converter.fromJson(pattern);

      expect(regex.hasMatch('123-45-6789'), isTrue);
      expect(regex.hasMatch('12-345-6789'), isFalse);
    });
  });

  group('RegExpOrNullConverter edge cases', () {
    test('fromJson with null returns null', () {
      const converter = RegExpOrNullConverter();
      expect(converter.fromJson(null), isNull);
    });

    test('toJson with null returns null', () {
      const converter = RegExpOrNullConverter();
      expect(converter.toJson(null), isNull);
    });

    test('round-trip with null', () {
      const converter = RegExpOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });

    test('fromJson with empty pattern creates empty regex', () {
      const converter = RegExpOrNullConverter();
      final result = converter.fromJson('');
      expect(result?.pattern, '');
    });

    test('fromJson with simple pattern', () {
      const converter = RegExpOrNullConverter();
      const pattern = r'test';
      final result = converter.fromJson(pattern);
      expect(result?.pattern, pattern);
      expect(result?.hasMatch('test'), isTrue);
    });

    test('toJson with RegExp returns pattern', () {
      const converter = RegExpOrNullConverter();
      final regex = RegExp('pattern');
      final result = converter.toJson(regex);
      expect(result, 'pattern');
    });
  });
}
