import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('GqlQuery', () {
    test('Basic query generation with name', () {
      final query = GqlQuery(
        name: 'GetCharts',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('query GetCharts'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
    });

    test('Query without explicit name auto-generates from first field', () {
      final query = GqlQuery(
        fields: [
          GqlField(name: 'charts'),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('query charts'));
    });

    test('Query with no fields returns UnnamedOperation', () {
      final query = GqlQuery();

      final generated = query.generated;
      expect(generated, contains('query UnnamedOperation'));
    });

    test('Query with single variable', () {
      final query = GqlQuery(
        name: 'GetChart',
        variables: [
          GqlVariable(
            name: 'id',
            type: GqlVariableType.id,
            isRequired: true,
          ),
        ],
        fields: [
          GqlField(
            name: 'chart',
            args: {'id': 'id'},
            fields: [GqlField(name: 'id')],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('\$id: ID!'));
      expect(generated, contains('chart(id: \$id)'));
    });

    test('Query with multiple variables', () {
      final query = GqlQuery(
        name: 'SearchCharts',
        variables: [
          GqlVariable(
            name: 'apiToken',
            type: GqlVariableType.string,
            isRequired: true,
          ),
          GqlVariable(
            name: 'limit',
            type: GqlVariableType.int,
            isRequired: false,
          ),
        ],
        fields: [
          GqlField(
            name: 'charts',
            args: {'apiToken': 'apiToken', 'limit': 'limit'},
            fields: [GqlField(name: 'id')],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('\$apiToken: String!'));
      expect(generated, contains('\$limit: Int'));
      expect(generated, contains('charts(apiToken: \$apiToken, limit: \$limit)'));
    });

    test('Query with nested fields', () {
      final query = GqlQuery(
        name: 'GetAsset',
        fields: [
          GqlField(
            name: 'asset',
            fields: [
              GqlField(name: 'id'),
              GqlField(
                name: 'device',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'name'),
                ],
              ),
            ],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('asset {'));
      expect(generated, contains('device {'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
      // Verify device appears after id and before closing braces
      final assetIdx = generated.indexOf('asset {');
      final idIdx = generated.indexOf('id', assetIdx);
      final deviceIdx = generated.indexOf('device {', assetIdx);
      expect(idIdx, lessThan(deviceIdx),
          reason: 'id field should appear before device field');
    });

    test('add() method appends field to operation', () {
      final query = GqlQuery(name: 'GetData');
      expect(query.fields, isEmpty);

      query.add(GqlField(name: 'id'));
      expect(query.fields, hasLength(1));
      expect(query.fields.first.name, 'id');

      query.add(GqlField(name: 'name'));
      expect(query.fields, hasLength(2));
    });

    test('Query with field aliases', () {
      final query = GqlQuery(
        name: 'GetAliasedData',
        fields: [
          GqlField(
            name: 'charts',
            alias: 'myCharts',
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name', alias: 'chartName'),
            ],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('myCharts: charts'));
      expect(generated, contains('chartName: name'));
    });

    test('Query with includeTypename', () {
      final query = GqlQuery(
        name: 'GetWithTypename',
        includeTypename: true,
        fields: [
          GqlField(
            name: 'charts',
            fields: [
              GqlField(name: 'id'),
            ],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('__typename'));
    });

    test('Query respects empty variables list', () {
      final query = GqlQuery(
        name: 'GetData',
        variables: [],
        fields: [GqlField(name: 'data')],
      );

      final generated = query.generated;
      expect(generated, contains('query GetData'));
      expect(generated.contains('('), false,
          reason: 'Empty variables list should not render parentheses');
    });
  });

  group('GqlMutation', () {
    test('Basic mutation generation with name', () {
      final mutation = GqlMutation(
        name: 'CreateChart',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );

      final generated = mutation.generated;
      expect(generated, contains('mutation CreateChart'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
    });

    test('Mutation with variables and arguments', () {
      final mutation = GqlMutation(
        name: 'CreateChart',
        variables: [
          GqlVariable(
            name: 'data',
            type: GqlVariableType.input(of: 'CreateChartInput'),
            isRequired: true,
          ),
        ],
        fields: [
          GqlField(
            name: 'createChart',
            args: {'data': 'data'},
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name'),
            ],
          ),
        ],
      );

      final generated = mutation.generated;
      expect(generated, contains('mutation CreateChart'));
      expect(generated, contains('\$data: CreateChartInput!'));
      expect(generated, contains('createChart(data: \$data)'));
    });

    test('Mutation auto-generates name from first field', () {
      final mutation = GqlMutation(
        fields: [
          GqlField(name: 'updateChart'),
        ],
      );

      final generated = mutation.generated;
      expect(generated, contains('mutation updateChart'));
    });

    test('Mutation without explicit name and no fields returns UnnamedOperation',
        () {
      final mutation = GqlMutation();

      final generated = mutation.generated;
      expect(generated, contains('mutation UnnamedOperation'));
    });

    test('add() method works on mutations', () {
      final mutation = GqlMutation(name: 'Mutate');
      expect(mutation.fields, isEmpty);

      mutation.add(GqlField(name: 'result'));
      expect(mutation.fields, hasLength(1));
      expect(mutation.fields.first.name, 'result');
    });

    test('Mutation with nested fields', () {
      final mutation = GqlMutation(
        name: 'UpdateAsset',
        fields: [
          GqlField(
            name: 'updateAsset',
            fields: [
              GqlField(name: 'id'),
              GqlField(
                name: 'device',
                fields: [
                  GqlField(name: 'id'),
                ],
              ),
            ],
          ),
        ],
      );

      final generated = mutation.generated;
      expect(generated, contains('updateAsset {'));
      expect(generated, contains('device {'));
    });
  });

  group('GqlSubscription', () {
    test('Basic subscription generation with name', () {
      final subscription = GqlSubscription(
        name: 'OnChartUpdated',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );

      final generated = subscription.generated;
      expect(generated, contains('subscription OnChartUpdated'));
      expect(generated, contains('id'));
      expect(generated, contains('name'));
    });

    test('Subscription with variables', () {
      final subscription = GqlSubscription(
        name: 'OnChartUpdated',
        variables: [
          GqlVariable(
            name: 'id',
            type: GqlVariableType.id,
            isRequired: true,
          ),
        ],
        fields: [
          GqlField(
            name: 'chartUpdated',
            args: {'id': 'id'},
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name'),
            ],
          ),
        ],
      );

      final generated = subscription.generated;
      expect(generated, contains('subscription OnChartUpdated'));
      expect(generated, contains('\$id: ID!'));
      expect(generated, contains('chartUpdated(id: \$id)'));
    });

    test('Subscription auto-generates name from first field', () {
      final subscription = GqlSubscription(
        fields: [
          GqlField(name: 'assetUpdated'),
        ],
      );

      final generated = subscription.generated;
      expect(generated, contains('subscription assetUpdated'));
    });

    test('add() method works on subscriptions', () {
      final subscription = GqlSubscription(name: 'Subscribe');
      expect(subscription.fields, isEmpty);

      subscription.add(GqlField(name: 'update'));
      expect(subscription.fields, hasLength(1));
      expect(subscription.fields.first.name, 'update');
    });
  });

  group('Gql shared behavior', () {
    test('Field with empty args map renders without parentheses', () {
      final query = GqlQuery(
        name: 'GetData',
        fields: [
          GqlField(name: 'data', args: {}),
        ],
      );

      final generated = query.generated;
      // Empty args should not render parentheses
      expect(generated, contains('data\n'));
    });

    test('Field with multiple arguments renders correctly', () {
      final query = GqlQuery(
        name: 'Search',
        variables: [
          GqlVariable(name: 'q', type: GqlVariableType.string),
          GqlVariable(name: 'limit', type: GqlVariableType.int),
        ],
        fields: [
          GqlField(
            name: 'search',
            args: {'q': 'q', 'limit': 'limit'},
            fields: [GqlField(name: 'id')],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('search(q: \$q, limit: \$limit)'));
    });

    test('Complex query with mixed fields, arguments, and nesting', () {
      final query = GqlQuery(
        name: 'ComplexQuery',
        variables: [
          GqlVariable(name: 'token', type: GqlVariableType.string, isRequired: true),
          GqlVariable(name: 'limit', type: GqlVariableType.int),
        ],
        includeTypename: true,
        fields: [
          GqlField(
            name: 'assets',
            alias: 'myAssets',
            args: {'apiToken': 'token', 'limit': 'limit'},
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name', alias: 'assetName'),
              GqlField(
                name: 'device',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'status'),
                ],
              ),
            ],
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('\$token: String!'));
      expect(generated, contains('\$limit: Int'));
      expect(generated, contains('myAssets: assets(apiToken: \$token, limit: \$limit)'));
      expect(generated, contains('assetName: name'));
      expect(generated, contains('__typename'));
    });

    test('Fragment in field renders spread syntax', () {
      final deviceFragment = GqlFragment(
        name: 'DeviceFields',
        onType: 'Device',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
        ],
      );
      final query = GqlQuery(
        name: 'GetWithFragment',
        fields: [
          GqlField(
            name: 'device',
            fragment: deviceFragment,
          ),
        ],
      );

      final generated = query.generated;
      expect(generated, contains('...DeviceFields'));
      expect(generated, contains('fragment DeviceFields on Device'));
    });

    test('Scalar variables without required modifier omit exclamation', () {
      final query = GqlQuery(
        name: 'GetOptional',
        variables: [
          GqlVariable(name: 'id', type: GqlVariableType.id, isRequired: false),
        ],
        fields: [GqlField(name: 'chart')],
      );

      final generated = query.generated;
      expect(generated, contains('\$id: ID'));
      expect(generated, isNot(contains('\$id: ID!')));
    });
  });
}
