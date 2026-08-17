import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('GqlField', () {
    test('field creation with name only', () {
      final field = GqlField(name: 'id');

      expect(field.name, 'id');
      expect(field.alias, isNull);
      expect(field.fields, isEmpty);
      expect(field.args, isEmpty);
      expect(field.fragment, isNull);
      expect(field.parser, isNull);
    });

    test('field creation with all parameters', () {
      final fragment = GqlFragment(
        name: 'TestFragment',
        onType: 'TestType',
        fields: [],
      );
      Object? parser(Object? value) => value as String;

      final field = GqlField(
        name: 'test',
        alias: 'myTest',
        parser: parser,
        fields: [GqlField(name: 'child')],
        fragment: fragment,
        args: {'arg1': 'var1'},
      );

      expect(field.name, 'test');
      expect(field.alias, 'myTest');
      expect(field.fields, hasLength(1));
      expect(field.parser, isNotNull);
      expect(field.fragment, fragment);
      expect(field.args, {'arg1': 'var1'});
    });

    test('field with alias renders correctly', () {
      final field = GqlField(name: 'charts', alias: 'myCharts');
      final query = GqlQuery(
        name: 'GetData',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('myCharts: charts'));
    });

    test('field with args renders correctly', () {
      final field = GqlField(
        name: 'search',
        args: {'query': 'q', 'limit': 'limit'},
        fields: [GqlField(name: 'id')],
      );
      final query = GqlQuery(
        name: 'Search',
        variables: [
          GqlVariable(name: 'q', type: GqlVariableType.string),
          GqlVariable(name: 'limit', type: GqlVariableType.int),
        ],
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('search(query: \$q, limit: \$limit)'));
    });

    test('field with empty args map does not render parentheses', () {
      final field = GqlField(name: 'data', args: {});
      final query = GqlQuery(
        name: 'GetData',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('data\n'));
      expect(generated, isNot(contains('data()')));
    });

    test('field with single child field', () {
      final field = GqlField(
        name: 'user',
        fields: [GqlField(name: 'id')],
      );
      final query = GqlQuery(
        name: 'GetUser',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('user {'));
      expect(generated, contains('id'));
      expect(generated, contains('}'));
    });

    test('field with multiple child fields', () {
      final field = GqlField(
        name: 'asset',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
          GqlField(name: 'type'),
        ],
      );
      final query = GqlQuery(
        name: 'GetAsset',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('asset {'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
      expect(generated, contains('type'));
    });

    test('add() method appends child field', () {
      final field = GqlField(name: 'parent');
      expect(field.fields, isEmpty);

      field.add(GqlField(name: 'child1'));
      expect(field.fields, hasLength(1));
      expect(field.fields.first.name, 'child1');

      field.add(GqlField(name: 'child2'));
      expect(field.fields, hasLength(2));
    });

    test('field with parser callback', () {
      List<int> parseIntList(Object? value) {
        if (value is List) {
          return value.map((v) => int.tryParse(v.toString()) ?? 0).toList();
        }
        return <int>[];
      }

      final field = GqlField<List<int>>(
        name: 'numbers',
        parser: parseIntList,
      );

      expect(field.parser, isNotNull);
      final parsed = field.parser!(['1', '2', '3']);
      expect(parsed, [1, 2, 3]);
    });

    test('field with fragment spread', () {
      final fragment = GqlFragment(
        name: 'UserFields',
        onType: 'User',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'email'),
        ],
      );

      final field = GqlField(
        name: 'user',
        fragment: fragment,
      );
      final query = GqlQuery(
        name: 'GetUser',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('...UserFields'));
      expect(generated, contains('fragment UserFields on User'));
    });

    test('field combining alias, args, and nested fields', () {
      final field = GqlField(
        name: 'charts',
        alias: 'myCharts',
        args: {'limit': 'limit'},
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );
      final query = GqlQuery(
        name: 'GetCharts',
        variables: [GqlVariable(name: 'limit', type: GqlVariableType.int)],
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('myCharts: charts(limit: \$limit)'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
    });

    test('field is generic type parameter', () {
      final fieldString = GqlField<String>(
        name: 'name',
        parser: (value) => value.toString(),
      );

      final fieldInt = GqlField<int>(
        name: 'count',
        parser: (value) => int.parse(value.toString()),
      );

      expect(fieldString.parser, isNotNull);
      expect(fieldInt.parser, isNotNull);
    });

    test('field with deeply nested structure', () {
      final field = GqlField(
        name: 'company',
        fields: [
          GqlField(
            name: 'employees',
            fields: [
              GqlField(
                name: 'address',
                fields: [
                  GqlField(name: 'city'),
                  GqlField(name: 'country'),
                ],
              ),
            ],
          ),
        ],
      );
      final query = GqlQuery(
        name: 'GetCompany',
        fields: [field],
      );

      final generated = query.generated;
      expect(generated, contains('company {'));
      expect(generated, contains('employees {'));
      expect(generated, contains('address {'));
      expect(generated, contains('city'));
      expect(generated, contains('country'));
    });
  });

  group('GqlFragment', () {
    test('fragment creation with name and type', () {
      final fragment = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      expect(fragment.name, 'UserFragment');
      expect(fragment.onType, 'User');
      expect(fragment.fields, isEmpty);
    });

    test('fragment creation with fields', () {
      final fragment = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'email'),
        ],
      );

      expect(fragment.name, 'UserFragment');
      expect(fragment.onType, 'User');
      expect(fragment.fields, hasLength(2));
      expect(fragment.fields[0].name, 'id');
      expect(fragment.fields[1].name, 'email');
    });

    test('add() method appends field to fragment', () {
      final fragment = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      expect(fragment.fields, isEmpty);

      fragment.add(GqlField(name: 'id'));
      expect(fragment.fields, hasLength(1));

      fragment.add(GqlField(name: 'name'));
      expect(fragment.fields, hasLength(2));
    });

    test('fragment equality based on name and onType only', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
        fields: [GqlField(name: 'id')],
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
        fields: [GqlField(name: 'id'), GqlField(name: 'name')],
      );

      // Two fragments with same name and type are equal, regardless of fields
      expect(fragment1, equals(fragment2));
    });

    test('fragment inequality when name differs', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'AdminFragment',
        onType: 'User',
      );

      expect(fragment1, isNot(equals(fragment2)));
    });

    test('fragment inequality when type differs', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'Admin',
      );

      expect(fragment1, isNot(equals(fragment2)));
    });

    test('fragment hashCode consistency', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      expect(fragment1.hashCode, equals(fragment2.hashCode));
    });

    test('fragment hashCode differs for different names', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'AdminFragment',
        onType: 'User',
      );

      expect(fragment1.hashCode, isNot(equals(fragment2.hashCode)));
    });

    test('fragment hashCode differs for different types', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'Admin',
      );

      expect(fragment1.hashCode, isNot(equals(fragment2.hashCode)));
    });

    test('fragments can be used in a set (deduplication)', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment3 = GqlFragment(
        name: 'AdminFragment',
        onType: 'Admin',
      );

      final set = {fragment1, fragment2, fragment3};
      // fragment1 and fragment2 are equal, so set should have 2 items
      expect(set, hasLength(2));
    });

    test('fragment identity vs equality', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
      );

      // They are not identical (different objects)
      expect(identical(fragment1, fragment2), false);
      // But they are equal (same name and type)
      expect(fragment1, equals(fragment2));
    });

    test('fragment with nested fields in query', () {
      final fragment = GqlFragment(
        name: 'UserProfile',
        onType: 'User',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
          GqlField(
            name: 'address',
            fields: [
              GqlField(name: 'city'),
              GqlField(name: 'country'),
            ],
          ),
        ],
      );

      final query = GqlQuery(
        name: 'GetUser',
        fields: [
          GqlField(
            name: 'user',
            fragment: fragment,
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('fragment UserProfile on User'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
      expect(generated, contains('address {'));
      expect(generated, contains('city'));
      expect(generated, contains('country'));
    });

    test('fragment with multiple uses is not duplicated', () {
      final fragment = GqlFragment(
        name: 'UserFields',
        onType: 'User',
        fields: [GqlField(name: 'id')],
      );

      final query = GqlQuery(
        name: 'GetUsers',
        fields: [
          GqlField(name: 'user1', fragment: fragment),
          GqlField(name: 'user2', fragment: fragment),
        ],
      );

      final generated = query.generated;
      // Count occurrences of the fragment definition
      final fragmentCount = 'fragment UserFields on User'.allMatches(generated).length;
      expect(fragmentCount, 1,
          reason: 'Fragment should appear exactly once despite being used twice');
    });

    test('fragment comparison with fields does not affect equality', () {
      final fragment1 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
        fields: [GqlField(name: 'id')],
      );

      final fragment2 = GqlFragment(
        name: 'UserFragment',
        onType: 'User',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'email'),
          GqlField(name: 'name'),
        ],
      );

      // Fragments are equal based on name and type only
      expect(fragment1, equals(fragment2));
      // But they have different fields
      expect(fragment1.fields.length, isNot(equals(fragment2.fields.length)));
    });
  });
}
