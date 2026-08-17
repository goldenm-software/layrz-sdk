import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('GqlVariableType scalar constants', () {
    test('string constant has correct name', () {
      expect(GqlVariableType.string.name, 'String');
    });

    test('int constant has correct name', () {
      expect(GqlVariableType.int.name, 'Int');
    });

    test('float constant has correct name', () {
      expect(GqlVariableType.float.name, 'Float');
    });

    test('boolean constant has correct name', () {
      expect(GqlVariableType.boolean.name, 'Boolean');
    });

    test('id constant has correct name', () {
      expect(GqlVariableType.id.name, 'ID');
    });

    test('json constant has correct name', () {
      expect(GqlVariableType.json.name, 'Json');
    });

    test('uuid constant has correct name', () {
      expect(GqlVariableType.uuid.name, 'Uuid');
    });

    test('duration constant has correct name', () {
      expect(GqlVariableType.duration.name, 'Duration');
    });

    test('unix constant has correct name', () {
      expect(GqlVariableType.unix.name, 'Unix');
    });
  });

  group('GqlVariableType.list factory', () {
    test('list of string with required elements', () {
      final type = GqlVariableType.list(
        of: GqlVariableType.string,
        isRequired: true,
      );
      expect(type.name, '[String!]');
    });

    test('list of string without required elements', () {
      final type = GqlVariableType.list(
        of: GqlVariableType.string,
        isRequired: false,
      );
      expect(type.name, '[String]');
    });

    test('list of id with required elements', () {
      final type = GqlVariableType.list(
        of: GqlVariableType.id,
        isRequired: true,
      );
      expect(type.name, '[ID!]');
    });

    test('list of int without required elements (default)', () {
      final type = GqlVariableType.list(of: GqlVariableType.int);
      expect(type.name, '[Int]');
    });

    test('nested list of lists', () {
      final innerList = GqlVariableType.list(
        of: GqlVariableType.int,
        isRequired: true,
      );
      final outerList = GqlVariableType.list(
        of: innerList,
        isRequired: false,
      );
      expect(outerList.name, '[[Int!]]');
    });
  });

  group('GqlVariableType.input factory', () {
    test('input type with simple name', () {
      final type = GqlVariableType.input(of: 'CreateChartInput');
      expect(type.name, 'CreateChartInput');
    });

    test('input type with complex name', () {
      final type = GqlVariableType.input(of: 'UpdateAssetDeviceInput');
      expect(type.name, 'UpdateAssetDeviceInput');
    });

    test('input type in list', () {
      final inputType = GqlVariableType.input(of: 'ChartInput');
      final listType = GqlVariableType.list(
        of: inputType,
        isRequired: true,
      );
      expect(listType.name, '[ChartInput!]');
    });
  });

  group('GqlVariableType.enum_ factory', () {
    test('enum type with simple name', () {
      final type = GqlVariableType.enum_(of: 'AssetType');
      expect(type.name, 'AssetType');
    });

    test('enum type with complex name', () {
      final type = GqlVariableType.enum_(of: 'DeviceOperationMode');
      expect(type.name, 'DeviceOperationMode');
    });

    test('enum type in list', () {
      final enumType = GqlVariableType.enum_(of: 'Status');
      final listType = GqlVariableType.list(
        of: enumType,
        isRequired: false,
      );
      expect(listType.name, '[Status]');
    });
  });

  group('GqlVariable', () {
    test('basic variable construction', () {
      final variable = GqlVariable(
        name: 'id',
        type: GqlVariableType.id,
      );

      expect(variable.name, 'id');
      expect(variable.type, GqlVariableType.id);
      expect(variable.isRequired, false);
      expect(variable.value, isNull);
    });

    test('variable with required flag', () {
      final variable = GqlVariable(
        name: 'token',
        type: GqlVariableType.string,
        isRequired: true,
      );

      expect(variable.name, 'token');
      expect(variable.type, GqlVariableType.string);
      expect(variable.isRequired, true);
    });

    test('variable with value', () {
      final variable = GqlVariable(
        name: 'limit',
        type: GqlVariableType.int,
        value: 10,
      );

      expect(variable.name, 'limit');
      expect(variable.value, 10);
    });

    test('variable with all parameters', () {
      final variable = GqlVariable(
        name: 'data',
        type: GqlVariableType.input(of: 'CreateInput'),
        isRequired: true,
        value: {'key': 'value'},
      );

      expect(variable.name, 'data');
      expect(variable.type.name, 'CreateInput');
      expect(variable.isRequired, true);
      expect(variable.value, {'key': 'value'});
    });

    test('variable with list type required', () {
      final variable = GqlVariable(
        name: 'ids',
        type: GqlVariableType.list(
          of: GqlVariableType.id,
          isRequired: true,
        ),
        isRequired: true,
      );

      expect(variable.name, 'ids');
      expect(variable.type.name, '[ID!]');
      expect(variable.isRequired, true);
    });

    test('multiple variables with different types', () {
      final variables = [
        GqlVariable(name: 'token', type: GqlVariableType.string, isRequired: true),
        GqlVariable(name: 'id', type: GqlVariableType.id),
        GqlVariable(name: 'limit', type: GqlVariableType.int),
        GqlVariable(name: 'active', type: GqlVariableType.boolean),
        GqlVariable(name: 'data', type: GqlVariableType.json),
      ];

      expect(variables, hasLength(5));
      expect(variables[0].name, 'token');
      expect(variables[1].name, 'id');
      expect(variables[2].name, 'limit');
      expect(variables[3].name, 'active');
      expect(variables[4].name, 'data');
    });

    test('variable naming without dollar sign', () {
      final variable = GqlVariable(
        name: 'apiToken',
        type: GqlVariableType.string,
      );

      // Variable name should not include the $ prefix
      expect(variable.name, 'apiToken');
      expect(variable.name, isNot('\$apiToken'));
    });

    test('variable with enum type', () {
      final variable = GqlVariable(
        name: 'type',
        type: GqlVariableType.enum_(of: 'AssetType'),
        isRequired: true,
      );

      expect(variable.name, 'type');
      expect(variable.type.name, 'AssetType');
      expect(variable.isRequired, true);
    });
  });

  group('GqlVariableType and GqlVariable integration', () {
    test('variable integrates into query correctly', () {
      final variable = GqlVariable(
        name: 'id',
        type: GqlVariableType.id,
        isRequired: true,
      );
      final query = GqlQuery(
        name: 'GetChart',
        variables: [variable],
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

    test('multiple variables with mixed types in mutation', () {
      final variables = [
        GqlVariable(
          name: 'data',
          type: GqlVariableType.input(of: 'CreateInput'),
          isRequired: true,
        ),
        GqlVariable(
          name: 'force',
          type: GqlVariableType.boolean,
        ),
      ];
      final mutation = GqlMutation(
        name: 'Create',
        variables: variables,
        fields: [
          GqlField(
            name: 'create',
            args: {'data': 'data', 'force': 'force'},
            fields: [GqlField(name: 'id')],
          ),
        ],
      );

      final generated = mutation.generated;
      expect(generated, contains('\$data: CreateInput!'));
      expect(generated, contains('\$force: Boolean'));
      expect(generated, contains('create(data: \$data, force: \$force)'));
    });
  });
}
