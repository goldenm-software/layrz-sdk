import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ByteListConverter', () {
    test('fromJson converts List<int> to Uint8List', () {
      const converter = ByteListConverter();
      final input = [1, 2, 3, 255, 0];
      final result = converter.fromJson(input);

      expect(result, isA<Uint8List>());
      expect(result, [1, 2, 3, 255, 0]);
    });

    test('fromJson with empty list returns empty Uint8List', () {
      const converter = ByteListConverter();
      final input = <int>[];
      final result = converter.fromJson(input);

      expect(result, isEmpty);
      expect(result, isA<Uint8List>());
    });

    test('toJson converts Uint8List back to List<int>', () {
      const converter = ByteListConverter();
      final input = Uint8List.fromList([1, 2, 3, 255, 0]);
      final result = converter.toJson(input);

      expect(result, [1, 2, 3, 255, 0]);
      expect(result, isA<List<int>>());
    });

    test('toJson with empty Uint8List returns empty list', () {
      const converter = ByteListConverter();
      final input = Uint8List(0);
      final result = converter.toJson(input);

      expect(result, isEmpty);
      expect(result, isA<List<int>>());
    });

    test('round-trip preserves byte values', () {
      const converter = ByteListConverter();
      final original = [0, 1, 127, 128, 255];
      final bytes = converter.fromJson(original);
      final restored = converter.toJson(bytes);

      expect(restored, original);
    });

    test('round-trip preserves byte order', () {
      const converter = ByteListConverter();
      final original = [255, 200, 150, 100, 50, 0];
      final bytes = converter.fromJson(original);
      final restored = converter.toJson(bytes);

      expect(restored, original);
    });
  });

  group('ByteListOrNullConverter', () {
    test('fromJson converts List<int> to Uint8List', () {
      const converter = ByteListOrNullConverter();
      final input = [1, 2, 3, 255, 0];
      final result = converter.fromJson(input);

      expect(result, isA<Uint8List>());
      expect(result, [1, 2, 3, 255, 0]);
    });

    test('fromJson with empty list returns empty Uint8List', () {
      const converter = ByteListOrNullConverter();
      final input = <int>[];
      final result = converter.fromJson(input);

      expect(result, isEmpty);
      expect(result, isA<Uint8List>());
    });

    test('fromJson with null returns null', () {
      const converter = ByteListOrNullConverter();
      final result = converter.fromJson(null);

      expect(result, isNull);
    });

    test('toJson converts Uint8List back to List<int>', () {
      const converter = ByteListOrNullConverter();
      final input = Uint8List.fromList([1, 2, 3, 255, 0]);
      final result = converter.toJson(input);

      expect(result, [1, 2, 3, 255, 0]);
      expect(result, isA<List<int>>());
    });

    test('toJson with empty Uint8List returns empty list', () {
      const converter = ByteListOrNullConverter();
      final input = Uint8List(0);
      final result = converter.toJson(input);

      expect(result, isEmpty);
      expect(result, isA<List<int>>());
    });

    test('toJson with null returns null', () {
      const converter = ByteListOrNullConverter();
      final result = converter.toJson(null);

      expect(result, isNull);
    });

    test('round-trip preserves byte values', () {
      const converter = ByteListOrNullConverter();
      final original = [0, 1, 127, 128, 255];
      final bytes = converter.fromJson(original);
      final restored = converter.toJson(bytes);

      expect(restored, original);
    });

    test('round-trip with null', () {
      const converter = ByteListOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);

      expect(restored, isNull);
    });
  });
}
