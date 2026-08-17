import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ParamDataMapConverter', () {
    test('fromJson converts Map<String, dynamic> to Map<String, ParamData>', () {
      const converter = ParamDataMapConverter();
      final input = {
        'param1': {'value': 42, 'updatedAt': 1000},
        'param2': {'value': 'hello'},
      };

      final result = converter.fromJson(input);

      expect(result, isNotEmpty);
      expect(result!['param1']?.value, 42);
      expect(result['param2']?.value, 'hello');
    });

    test('fromJson with null returns empty map', () {
      const converter = ParamDataMapConverter();
      final result = converter.fromJson(null);

      expect(result, isEmpty);
      expect(result, {});
    });

    test('fromJson translates double underscores to dots in keys', () {
      const converter = ParamDataMapConverter();
      final input = {
        'parent__child': {'value': 123},
        'nested__level__deep': {'value': 'data'},
      };

      final result = converter.fromJson(input);

      expect(result!.containsKey('parent.child'), isTrue);
      expect(result.containsKey('nested.level.deep'), isTrue);
      expect(result['parent.child']?.value, 123);
      expect(result['nested.level.deep']?.value, 'data');
    });

    test('fromJson keeps single underscores unchanged', () {
      const converter = ParamDataMapConverter();
      final input = {
        'parent_child': {'value': 42},
      };

      final result = converter.fromJson(input);

      expect(result!.containsKey('parent_child'), isTrue);
      expect(result['parent_child']?.value, 42);
    });

    test('fromJson with mixed keys', () {
      const converter = ParamDataMapConverter();
      final input = {
        'simple': {'value': 1},
        'parent__child': {'value': 2},
        'parent_child': {'value': 3},
        'deep__nested__key': {'value': 4},
      };

      final result = converter.fromJson(input);

      expect(result!['simple']?.value, 1);
      expect(result['parent.child']?.value, 2);
      expect(result['parent_child']?.value, 3);
      expect(result['deep.nested.key']?.value, 4);
    });

    test('fromJson with ParamData containing updatedAt timestamp', () {
      const converter = ParamDataMapConverter();
      final input = {
        'param1': {'value': 42, 'updatedAt': 1609459200},
      };

      final result = converter.fromJson(input);

      expect(result!['param1']?.value, 42);
      expect(result['param1']?.updatedAt, isNotNull);
    });

    test('toJson converts Map<String, ParamData> to Map<String, dynamic>', () {
      const converter = ParamDataMapConverter();
      final input = {
        'param1': const ParamData(value: 42),
        'param2': const ParamData(value: 'hello'),
      };

      final result = converter.toJson(input);

      expect(result, isNotEmpty);
      expect(result!['param1'], isA<Map<String, dynamic>>());
      expect(result['param2'], isA<Map<String, dynamic>>());
    });

    test('toJson with null returns empty map', () {
      const converter = ParamDataMapConverter();
      final result = converter.toJson(null);

      expect(result, isEmpty);
      expect(result, {});
    });

    test('toJson translates dots to double underscores in keys', () {
      const converter = ParamDataMapConverter();
      final input = {
        'parent.child': const ParamData(value: 123),
        'nested.level.deep': const ParamData(value: 'data'),
      };

      final result = converter.toJson(input);

      expect(result!.containsKey('parent__child'), isTrue);
      expect(result.containsKey('nested__level__deep'), isTrue);
    });

    test('toJson keeps single underscores unchanged', () {
      const converter = ParamDataMapConverter();
      final input = {
        'parent_child': const ParamData(value: 42),
      };

      final result = converter.toJson(input);

      expect(result!.containsKey('parent_child'), isTrue);
    });

    test('round-trip with dotted keys', () {
      const converter = ParamDataMapConverter();
      final original = {
        'parent.child': const ParamData(value: 123),
        'other': const ParamData(value: 'data'),
      };

      final json = converter.toJson(original);
      final restored = converter.fromJson(json);

      expect(restored, isNotNull);
      expect(restored!['parent.child']?.value, 123);
      expect(restored['other']?.value, 'data');
    });

    test('round-trip with nested keys conversion', () {
      const converter = ParamDataMapConverter();
      final json = {
        'parent__child__nested': {'value': 'test'},
      };

      final fromJson = converter.fromJson(json);
      expect(fromJson!['parent.child.nested']?.value, 'test');

      final toJson = converter.toJson(fromJson);
      expect(toJson!['parent__child__nested'], isNotNull);
    });

    test('round-trip with empty map', () {
      const converter = ParamDataMapConverter();
      final json = converter.toJson({});
      final restored = converter.fromJson(json);

      expect(restored, isEmpty);
    });

    test('fromJson with empty map returns empty map', () {
      const converter = ParamDataMapConverter();
      final result = converter.fromJson({});

      expect(result, isEmpty);
    });

    test('toJson with empty map returns empty map', () {
      const converter = ParamDataMapConverter();
      final result = converter.toJson({});

      expect(result, isEmpty);
    });

    test('fromJson preserves ParamData structure', () {
      const converter = ParamDataMapConverter();
      final now = DateTime.now();
      final nowTimestamp = (now.millisecondsSinceEpoch / 1000).toInt();
      final input = {
        'param1': {
          'value': 100,
          'updatedAt': nowTimestamp,
        },
      };

      final result = converter.fromJson(input);

      expect(result!['param1']?.value, 100);
      expect(result['param1']?.updatedAt, isNotNull);
    });

    test('toJson preserves ParamData values', () {
      const converter = ParamDataMapConverter();
      final input = {
        'param1': ParamData(value: 42, updatedAt: DateTime(2024, 1, 1)),
      };

      final result = converter.toJson(input);

      expect(result!['param1']['value'], 42);
      expect(result['param1'], isA<Map<String, dynamic>>());
    });
  });
}
