part of '../utils.dart';

/// A base-36 numeric system using digits and letters for compact number representation.
///
/// [LayrzNumber] converts between standard decimal integers and a base-36 encoding
/// using digits (0–9) and letters (A–Z). This is useful for representing large numbers
/// in a compact, human-readable string format.
///
/// The base-36 alphabet is: 0–9 (0 to 9) followed by A–Z (10 to 35).
/// For example, the decimal number 100 converts to "2S" in base-36.
///
/// Use [toSystem] to encode decimal integers and [toNumber] to decode base-36 strings.
class LayrzNumber {
  /// The character alphabet used in base-36 encoding.
  ///
  /// A list of 36 characters representing digit values 0–35:
  /// digits 0–9 (indices 0–9) and uppercase letters A–Z (indices 10–35).
  /// This is used for both encoding decimal to base-36 and decoding base-36 to decimal.
  static List<String> get equivalences => [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  /// Converts a decimal integer to a base-36 string representation.
  ///
  /// Encodes a non-negative decimal integer as a base-36 string using the [equivalences]
  /// alphabet (digits 0–9 and letters A–Z). The result is always uppercase.
  ///
  /// Parameters:
  ///   - [value]: A non-negative integer (>= 0) to encode. Asserts if negative.
  ///
  /// Returns: A base-36 encoded string. The number 0 returns '0'; larger numbers
  /// return a string of length ceil(log_36(value + 1)).
  ///
  /// Example:
  /// ```dart
  /// LayrzNumber.toSystem(0)   // Returns '0'
  /// LayrzNumber.toSystem(35)  // Returns 'Z'
  /// LayrzNumber.toSystem(36)  // Returns '10'
  /// LayrzNumber.toSystem(100) // Returns '2S'
  /// ```
  static String toSystem(int value) {
    assert(value >= 0, 'The value must be greater than or equal to 0.');

    int baseSystem = equivalences.length;
    String result = '';

    while (true) {
      int q = value ~/ baseSystem;
      int r = value % baseSystem;

      result = '${equivalences[r]}$result';
      value = q;

      if (q == 0) break;
    }

    return result;
  }

  /// Converts a base-36 string to a decimal integer.
  ///
  /// Decodes a base-36 encoded string back to its original decimal integer value.
  /// The input is case-insensitive (uppercase and lowercase letters are treated the same).
  /// Each character must be a valid base-36 digit (0–9 or A–Z; assert fails otherwise).
  ///
  /// Parameters:
  ///   - [value]: A non-empty base-36 string to decode. Asserts if empty. Characters are
  ///     converted to uppercase before decoding, so 'a' is treated as 'A' (value 10).
  ///
  /// Returns: The decoded decimal integer. Throws [StateError] or [RangeError] if a
  /// character is not found in [equivalences] (not a valid base-36 digit).
  ///
  /// Example:
  /// ```dart
  /// LayrzNumber.toNumber('0')   // Returns 0
  /// LayrzNumber.toNumber('Z')   // Returns 35
  /// LayrzNumber.toNumber('10')  // Returns 36
  /// LayrzNumber.toNumber('2S')  // Returns 100
  /// LayrzNumber.toNumber('2s')  // Also returns 100 (case-insensitive)
  /// ```
  static int toNumber(String value) {
    assert(value.isNotEmpty, 'The value must not be empty.');

    int result = 0;
    int baseSystem = equivalences.length;
    List<String> chars = value.toUpperCase().split('');

    for (int i = 0; i < chars.length; i++) {
      int exp = chars.length - (i + 1);
      result += (equivalences.indexOf(chars[i]) * pow(baseSystem, exp)).toInt();
    }

    return result;
  }
}
