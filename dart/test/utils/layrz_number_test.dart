import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('LayrzNumber Tests - from layrz_models/test/other_tests/layrz_number_test.dart', () {
    test('LayrzNumber SAPO conversion with case insensitivity', () {
      int number = 1320252;

      expect(LayrzNumber.toSystem(number), 'SAPO', reason: 'The number $number should be converted to SAPO');
      expect(LayrzNumber.toSystem(number), isNot('sapo'), reason: 'The response should be only UPPERCASE');
      expect(
        LayrzNumber.toNumber('sapo'),
        number,
        reason: 'The string sapo should be converted to $number (Case insensitive)',
      );
      expect(
        LayrzNumber.toNumber('SAPO'),
        number,
        reason: 'The string SAPO should be converted to $number (Case insensitive)',
      );
    });

    test('LayrzNumber zero edge case', () {
      expect(LayrzNumber.toSystem(0), '0', reason: 'The number 0 should be converted to 0');
      expect(LayrzNumber.toNumber('0'), 0, reason: 'The string 0 should be converted to 0');
    });

    test('LayrzNumber one and padded conversion', () {
      expect(LayrzNumber.toSystem(1), '1', reason: 'The number 1 should be converted to 1');
      expect(LayrzNumber.toNumber('001'), 1, reason: 'The string 001 should be converted to 1');
    });

    test('LayrzNumber max value ZZZZZZ', () {
      expect(LayrzNumber.toNumber('ZZZZZZ'), 2176782335, reason: 'The number ZZZZZZ should be converted to 2176782335');
      expect(LayrzNumber.toSystem(2176782335), 'ZZZZZZ', reason: 'The number 2176782335 should be converted to ZZZZZZ');
    });
  });

  group('LayrzNumber Tests - from layrz_models/test/utils/utils_test.dart', () {
    test('LayrzNumber - zero edge case', () {
      expect(LayrzNumber.toSystem(0), '0');
      expect(LayrzNumber.toNumber('0'), 0);
    });

    test('LayrzNumber - single digit numbers', () {
      for (int i = 0; i < 10; i++) {
        final system = LayrzNumber.toSystem(i);
        expect(LayrzNumber.toNumber(system), i);
      }
    });

    test('LayrzNumber - base-36 conversions', () {
      expect(LayrzNumber.toSystem(35), 'Z');
      expect(LayrzNumber.toNumber('Z'), 35);
      expect(LayrzNumber.toSystem(36), '10');
      expect(LayrzNumber.toNumber('10'), 36);
    });

    test('LayrzNumber - large numbers roundtrip', () {
      const testCases = [1, 100, 1000, 10000, 100000, 1000000];

      for (final num in testCases) {
        final system = LayrzNumber.toSystem(num);
        final restored = LayrzNumber.toNumber(system);
        expect(restored, num, reason: 'Failed for number $num');
      }
    });

    test('LayrzNumber - case insensitive conversion', () {
      const testStrings = ['ABC', 'abc', 'AbC', 'aBc', 'xyz', 'XYZ'];

      for (final str in testStrings) {
        final num = LayrzNumber.toNumber(str);
        final upperNum = LayrzNumber.toNumber(str.toUpperCase());
        expect(num, upperNum, reason: 'Case insensitivity failed for $str');
      }
    });

    test('LayrzNumber - padded zero conversion', () {
      expect(LayrzNumber.toNumber('001'), 1);
      // '00100' in base-36 is 0*36^4 + 0*36^3 + 1*36^2 + 0*36 + 0 = 1296
      expect(LayrzNumber.toNumber('00100'), 1296);
      expect(LayrzNumber.toNumber('000'), 0);
    });

    test('LayrzNumber - equivalences list length', () {
      expect(LayrzNumber.equivalences.length, 36);
    });

    test('LayrzNumber - equivalences contains 0-9 and A-Z', () {
      final equiv = LayrzNumber.equivalences;
      expect(equiv.sublist(0, 10), ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']);
      expect(equiv[10], 'A');
      expect(equiv[35], 'Z');
    });

    test('LayrzNumber - very large number edge case', () {
      const largeNum = 2176782335; // Maximum for 6 base-36 digits
      final system = LayrzNumber.toSystem(largeNum);
      expect(system, 'ZZZZZZ');
      expect(LayrzNumber.toNumber(system), largeNum);
    });

    test('LayrzNumber - roundtrip int ↔ base36 ↔ int', () {
      const inputs = [0, 1, 10, 35, 36, 100, 1320252, 1000000];

      for (final input in inputs) {
        final base36 = LayrzNumber.toSystem(input);
        final result = LayrzNumber.toNumber(base36);
        expect(result, input);
      }
    });

    test('LayrzNumber - specific known conversion', () {
      // From existing test: 1320252 should convert to SAPO
      expect(LayrzNumber.toSystem(1320252), 'SAPO');
      expect(LayrzNumber.toNumber('SAPO'), 1320252);
      expect(LayrzNumber.toNumber('sapo'), 1320252);
    });
  });
}
