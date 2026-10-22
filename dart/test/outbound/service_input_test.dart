import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _wire(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

void main() {
  group('OutboundStructureInput', () {
    test('defaults to a constant field', () {
      final input = OutboundStructureInput();
      expect(_wire(input.toJson()), {
        'field': 'newField',
        'type': 'constant',
        'value': '',
        'source': null,
        'nested': [],
      });
    });

    test('tolerates a null value from the API', () {
      final input = OutboundStructureInput.fromJson({
        'field': 'f',
        'type': 'json',
        'value': null,
      });
      expect(input.value, '');
      expect(input.nested, isEmpty);
    });

    test('fromStructure copies the nested entries', () {
      const structure = OutboundStructure(
        field: 'root',
        type: 'json.array',
        value: '',
        source: 'items',
        nested: [
          OutboundStructure(field: 'child', type: 'constant', value: 'v'),
        ],
      );

      final input = OutboundStructureInput.fromStructure(structure);
      expect(input.source, 'items');
      expect(input.nested.single.field, 'child');
      input.nested.add(OutboundStructureInput());
      expect(structure.nested, hasLength(1));
    });
  });

  group('OutboundServiceInput', () {
    OutboundServiceInput build() => OutboundServiceInput(
      id: '1',
      name: 'Service',
      credentials: {
        'host': 'example.com',
        'headers': {'x': '1'},
        'list': [1, 2],
      },
      protocolId: '60',
      assetsIds: ['10'],
      groupsIds: ['20'],
      structure: [
        OutboundStructureInput(
          field: 'root',
          type: 'json',
          nested: [
            OutboundStructureInput(
              field: 'child',
              type: 'json.array',
              source: 'items',
              nested: [OutboundStructureInput(field: 'leaf', value: 'v')],
            ),
          ],
        ),
      ],
      atsModel: AtsStreamModel.exit,
    );

    test('defaults send every list empty', () {
      expect(_wire(OutboundServiceInput().toJson()), {
        'id': null,
        'name': '',
        'credentials': <String, dynamic>{},
        'protocolId': null,
        'assetsIds': [],
        'groupsIds': [],
        'structure': [],
        'atsModel': null,
      });
    });

    test('serializes the nested structure and the ATS model', () {
      final json = _wire(build().toJson());
      expect(json['atsModel'], 'EXIT');
      expect(json['credentials'], {
        'host': 'example.com',
        'headers': {'x': '1'},
        'list': [1, 2],
      });
      final leaf =
          json['structure'][0]['nested'][0]['nested'][0]
              as Map<String, dynamic>;
      expect(leaf, {
        'field': 'leaf',
        'type': 'constant',
        'value': 'v',
        'source': null,
        'nested': [],
      });
      expect(json['structure'][0]['nested'][0]['source'], 'items');
    });

    test('round trips through JSON', () {
      final json = _wire(build().toJson());
      expect(_wire(OutboundServiceInput.fromJson(json).toJson()), json);
    });

    test('maps an unknown ATS model to exit', () {
      expect(
        OutboundServiceInput.fromJson({
          'name': 'S',
          'atsModel': 'NOPE',
        }).atsModel,
        AtsStreamModel.exit,
      );
    });

    test('copy is deep', () {
      final input = build();
      final copy = input.copy();
      (copy.credentials['headers'] as Map)['x'] = 'changed';
      copy.structure.first.nested.first.nested.add(OutboundStructureInput());
      copy.assetsIds.add('11');

      expect((input.credentials['headers'] as Map)['x'], '1');
      expect(input.structure.first.nested.first.nested, hasLength(1));
      expect(input.assetsIds, ['10']);
    });

    group('fromService', () {
      OutboundService service() => OutboundService(
        id: '1',
        name: 'Service',
        credentials: {
          'host': 'example.com',
          'headers': {'x': '1'},
        },
        protocolId: '60',
        isEnabled: true,
        token: 'read-only',
        assetsIds: ['10'],
        groupsIds: ['20'],
        structure: const [
          OutboundStructure(
            field: 'root',
            type: 'json',
            value: '',
            nested: [
              OutboundStructure(field: 'child', type: 'constant', value: 'v'),
            ],
          ),
        ],
        atsModel: AtsStreamModel.exit,
      );

      test('keeps every editable field', () {
        expect(_wire(OutboundServiceInput.fromService(service()).toJson()), {
          'id': '1',
          'name': 'Service',
          'credentials': {
            'host': 'example.com',
            'headers': {'x': '1'},
          },
          'protocolId': '60',
          'assetsIds': ['10'],
          'groupsIds': ['20'],
          'structure': [
            {
              'field': 'root',
              'type': 'json',
              'value': '',
              'source': null,
              'nested': [
                {
                  'field': 'child',
                  'type': 'constant',
                  'value': 'v',
                  'source': null,
                  'nested': [],
                },
              ],
            },
          ],
          'atsModel': 'EXIT',
        });
      });

      test('deep copies the credentials and the lists', () {
        final source = service();
        final input = OutboundServiceInput.fromService(source);
        (input.credentials['headers'] as Map)['x'] = 'changed';
        input.credentials['host'] = 'other';
        input.assetsIds.add('11');
        input.groupsIds.clear();

        expect(source.credentials?['host'], 'example.com');
        expect((source.credentials?['headers'] as Map)['x'], '1');
        expect(source.assetsIds, ['10']);
        expect(source.groupsIds, ['20']);
      });

      test('handles a service without optional fields', () {
        final input = OutboundServiceInput.fromService(
          const OutboundService(id: '2', name: 'Bare'),
        );
        expect(input.credentials, isEmpty);
        expect(input.structure, isEmpty);
        expect(input.assetsIds, isEmpty);
        expect(input.atsModel, isNull);
      });
    });
  });

  group('AtsStreamExitStructureType', () {
    const wires = [
      'constant',
      'constant.number',
      'fromAsset.name',
      'fromAsset.vin',
      'fromAsset.plate',
      'fromAsset.custom.field',
      'toAsset.name',
      'toAsset.vin',
      'toAsset.plate',
      'toAsset.custom.field',
      'startAt',
      'endAt',
      'identifier',
      'initial.fluxometer',
      'final.fluxometer',
      'total.liters',
      'initial.tank.volume',
      'final.tank.volume',
      'toAsset.mileage',
      'density',
      'temperature',
      'fuel.type',
      'fuel.subtype',
      'unit.value',
      'total.value',
      'registerDate',
      'attendant.name',
      'attendant.vin',
      'attendant.plate',
      'attendant.custom.field',
      'attendant.id',
      'attendant.user.id',
      'json',
      'json.array',
    ];

    test('has the 34 wire values in order', () {
      expect(
        AtsStreamExitStructureType.values.map((e) => e.toJson()).toList(),
        wires,
      );
    });

    test('round trips every value', () {
      for (final value in AtsStreamExitStructureType.values) {
        expect(AtsStreamExitStructureType.fromJson(value.toJson()), value);
        expect(value.toString(), value.toJson());
      }
      expect(
        AtsStreamExitStructureType.constantNumber.toJson(),
        'constant.number',
      );
      expect(AtsStreamExitStructureType.jsonArray.toJson(), 'json.array');
    });

    test('falls back to constant for an unknown value', () {
      expect(
        AtsStreamExitStructureType.fromJson('nope'),
        AtsStreamExitStructureType.constant,
      );
    });

    test('isCustom is true only for values outside the enum', () {
      expect(AtsStreamExitStructureType.isCustom('my.custom.field'), isTrue);
      for (final value in AtsStreamExitStructureType.values) {
        expect(AtsStreamExitStructureType.isCustom(value.toJson()), isFalse);
      }
    });
  });

  group('OutboundServiceInput.token', () {
    test('is omitted from toJson when null', () {
      expect(OutboundServiceInput().toJson().containsKey('token'), isFalse);
    });

    test('round trips when set', () {
      final input = OutboundServiceInput.fromJson({
        'name': 'S',
        'token': 'abc',
      });
      expect(input.token, 'abc');
      expect(input.toJson()['token'], 'abc');
    });
  });
}
