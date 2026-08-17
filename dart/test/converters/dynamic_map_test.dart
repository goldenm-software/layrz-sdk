import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('DynamicMapConverter', () {
    test('fromJson with Map<String, dynamic> returns same map', () {
      const converter = DynamicMapConverter();
      final input = {'key': 'value', 'number': 42};
      final result = converter.fromJson(input);

      expect(result, input);
      expect(result, {'key': 'value', 'number': 42});
    });

    test('fromJson with Map<dynamic, dynamic> stringifies keys', () {
      const converter = DynamicMapConverter();
      final input = <dynamic, dynamic>{'key': 'value', 1: 'one', 2.5: 'two point five'};
      final result = converter.fromJson(input);

      expect(result, {'key': 'value', '1': 'one', '2.5': 'two point five'});
    });

    test('fromJson with null returns empty map', () {
      const converter = DynamicMapConverter();
      final result = converter.fromJson(null);

      expect(result, isEmpty);
      expect(result, {});
    });

    test('fromJson with non-Map returns empty map', () {
      const converter = DynamicMapConverter();
      expect(converter.fromJson('string'), {});
      expect(converter.fromJson(42), {});
      expect(converter.fromJson([1, 2, 3]), {});
    });

    test('toJson returns the same map', () {
      const converter = DynamicMapConverter();
      final input = {'key': 'value', 'number': 42};
      final result = converter.toJson(input);

      expect(result, input);
      expect(identical(result, input), isTrue);
    });

    test('round-trip with Map<String, dynamic>', () {
      const converter = DynamicMapConverter();
      final original = {'key': 'value', 'nested': {'inner': 'data'}};
      final json = converter.toJson(original);
      final restored = converter.fromJson(json);

      expect(restored, original);
    });
  });

  group('DynamicMapConverterNullable', () {
    test('fromJson with Map<String, dynamic> returns same map', () {
      const converter = DynamicMapConverterNullable();
      final input = {'key': 'value', 'number': 42};
      final result = converter.fromJson(input);

      expect(result, input);
      expect(result, {'key': 'value', 'number': 42});
    });

    test('fromJson with Map<dynamic, dynamic> stringifies keys', () {
      const converter = DynamicMapConverterNullable();
      final input = <dynamic, dynamic>{'key': 'value', 1: 'one', 2.5: 'two point five'};
      final result = converter.fromJson(input);

      expect(result, {'key': 'value', '1': 'one', '2.5': 'two point five'});
    });

    test('fromJson with null returns null', () {
      const converter = DynamicMapConverterNullable();
      final result = converter.fromJson(null);

      expect(result, isNull);
    });

    test('fromJson with non-Map returns null', () {
      const converter = DynamicMapConverterNullable();
      expect(converter.fromJson('string'), isNull);
      expect(converter.fromJson(42), isNull);
      expect(converter.fromJson([1, 2, 3]), isNull);
    });

    test('toJson returns the same map or null', () {
      const converter = DynamicMapConverterNullable();
      final input = {'key': 'value', 'number': 42};
      final result = converter.toJson(input);

      expect(result, input);
      expect(identical(result, input), isTrue);
    });

    test('toJson with null returns null', () {
      const converter = DynamicMapConverterNullable();
      final result = converter.toJson(null);

      expect(result, isNull);
    });

    test('round-trip with Map<String, dynamic>', () {
      const converter = DynamicMapConverterNullable();
      final original = {'key': 'value', 'nested': {'inner': 'data'}};
      final json = converter.toJson(original);
      final restored = converter.fromJson(json);

      expect(restored, original);
    });

    test('round-trip with null', () {
      const converter = DynamicMapConverterNullable();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);

      expect(restored, isNull);
    });
  });
}
