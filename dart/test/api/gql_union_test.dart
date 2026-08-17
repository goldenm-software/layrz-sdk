import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('GqlUnion', () {
    test('basic inline fragment rendering', () {
      final union = GqlUnion(
        name: 'Chart',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );

      // When rendered in a query context
      final query = GqlQuery(
        name: 'GetUnion',
        fields: [
          GqlField(
            name: 'result',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Chart'));
      expect(generated, contains(RegExp(r'\.\.\. on Chart\s*\{')));
    });

    test('union with single field', () {
      final union = GqlUnion(
        name: 'Device',
        fields: [GqlField(name: 'id')],
      );

      final query = GqlQuery(
        name: 'GetDevice',
        fields: [
          GqlField(
            name: 'entity',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Device'));
      expect(generated, contains('id'));
    });

    test('union with nested fields', () {
      final union = GqlUnion(
        name: 'Broadcast',
        fields: [
          GqlField(name: 'id'),
          GqlField(
            name: 'target',
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name'),
            ],
          ),
        ],
      );

      final query = GqlQuery(
        name: 'GetBroadcast',
        fields: [
          GqlField(
            name: 'broadcast',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Broadcast'));
      expect(generated, contains('target {'));
    });

    test('multiple unions in same field', () {
      final chartUnion = GqlUnion(
        name: 'Chart',
        fields: [GqlField(name: 'chartId')],
      );
      final reportUnion = GqlUnion(
        name: 'Report',
        fields: [GqlField(name: 'reportId')],
      );

      final query = GqlQuery(
        name: 'GetMultipleUnions',
        fields: [
          GqlField(
            name: 'items',
            fields: [chartUnion, reportUnion],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Chart'));
      expect(generated, contains('... on Report'));
      expect(generated, contains('chartId'));
      expect(generated, contains('reportId'));
    });

    test('union toString representation', () {
      final union = GqlUnion(
        name: 'TestUnion',
        fields: [GqlField(name: 'field1')],
      );

      final str = union.toString();
      expect(str, contains('GqlUnion'));
      expect(str, contains('TestUnion'));
      expect(str, contains('fields'));
    });

    test('union extends GqlField and inherits field properties', () {
      final union = GqlUnion(
        name: 'Asset',
        fields: [GqlField(name: 'id')],
      );

      // GqlUnion should inherit name from GqlField
      expect(union.name, 'Asset');
      expect(union.fields, hasLength(1));
      expect(union.fields.first.name, 'id');
    });

    test('union with alias does not apply (unions do not use aliases)', () {
      final union = GqlUnion(
        name: 'Device',
        fields: [GqlField(name: 'id')],
      );

      // Union itself does not render with alias; the syntax is always '... on Type'
      final query = GqlQuery(
        name: 'GetData',
        fields: [
          GqlField(
            name: 'entity',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Device'));
      // Verify the union is not aliased
      expect(generated, isNot(contains('myDevice: ... on Device')));
    });

    test('union with complex nested structure', () {
      final union = GqlUnion(
        name: 'SearchResult',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'type'),
          GqlField(
            name: 'metadata',
            fields: [
              GqlField(name: 'createdAt'),
              GqlField(name: 'createdBy'),
            ],
          ),
        ],
      );

      final query = GqlQuery(
        name: 'Search',
        fields: [
          GqlField(
            name: 'search',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on SearchResult'));
      expect(generated, contains('metadata {'));
      expect(generated, contains('createdAt'));
      expect(generated, contains('createdBy'));
    });

    test('union within fragment', () {
      final union = GqlUnion(
        name: 'Entity',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );

      final fragment = GqlFragment(
        name: 'EntityFragment',
        onType: 'EntityInterface',
        fields: [union],
      );

      final query = GqlQuery(
        name: 'GetWithUnionFragment',
        fields: [
          GqlField(
            name: 'entities',
            fragment: fragment,
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('fragment EntityFragment on EntityInterface'));
      expect(generated, contains('... on Entity'));
    });

    test('union field rendering produces correct syntax without alias', () {
      final union = GqlUnion(
        name: 'Type1',
        fields: [GqlField(name: 'field1')],
      );

      final query = GqlQuery(
        name: 'Test',
        fields: [
          GqlField(
            name: 'root',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      // The union should NOT have a colon (no alias syntax)
      expect(generated, contains('... on Type1'));
      expect(generated, isNot(contains(': ... on Type1')));
    });

    test('union with includeTypename in query', () {
      final union = GqlUnion(
        name: 'Result',
        fields: [GqlField(name: 'id')],
      );

      final query = GqlQuery(
        name: 'GetResult',
        includeTypename: true,
        fields: [
          GqlField(
            name: 'data',
            fields: [union],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('__typename'));
      expect(generated, contains('... on Result'));
    });

    test('multiple unions with fields that have arguments', () {
      final union1 = GqlUnion(
        name: 'Chart',
        fields: [
          GqlField(
            name: 'data',
            args: {'limit': 'limit'},
            fields: [GqlField(name: 'value')],
          ),
        ],
      );

      final union2 = GqlUnion(
        name: 'Report',
        fields: [
          GqlField(
            name: 'data',
            args: {'limit': 'limit'},
            fields: [GqlField(name: 'count')],
          ),
        ],
      );

      final query = GqlQuery(
        name: 'GetReports',
        variables: [
          GqlVariable(name: 'limit', type: GqlVariableType.int),
        ],
        fields: [
          GqlField(
            name: 'items',
            fields: [union1, union2],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('... on Chart'));
      expect(generated, contains('... on Report'));
      expect(generated, contains('\$limit: Int'));
    });
  });
}
