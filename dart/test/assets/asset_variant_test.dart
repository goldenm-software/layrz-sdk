import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

const _mappitKeys = ['mappitLaborHours', 'mappitLaborStartTime', 'mappitLaborEndTime', 'mappitSecondaryRoutesIds'];
const _atsKeys = [
  'nfcIdentifier',
  'authenticationCardId',
  'linkedSupplyPointAssetsIds',
  'authenticationCardCardboardId',
  'authenticationCardTagId',
  'authenticationCardNfcId',
  'linkedStorageTerminalsIds',
  'geofencesIds',
];

void main() {
  group('AssetVariant', () {
    test('has the four variants', () {
      expect(AssetVariant.values, [
        AssetVariant.standard,
        AssetVariant.ats,
        AssetVariant.mappit,
        AssetVariant.tenvioWarehouses,
      ]);
    });
  });

  group('AssetInput.toVariantJson', () {
    AssetInput build() => AssetInput(
      name: 'Truck',
      connection: ConnectionInput(),
      nfcIdentifier: 'nfc',
      authenticationCardTagId: 'tag',
      linkedStorageTerminalsIds: ['t1'],
      geofencesIds: ['g1'],
      mappitSecondaryRoutesIds: ['r1'],
    );

    test('standard drops ATS and Mappit keys', () {
      final json = build().toVariantJson(.standard);
      for (final key in [..._atsKeys, ..._mappitKeys]) {
        expect(json.containsKey(key), isFalse, reason: key);
      }
      expect(json['name'], 'Truck');
    });

    test('tenvioWarehouses serializes like standard', () {
      expect(build().toVariantJson(.tenvioWarehouses), build().toVariantJson(.standard));
    });

    test('ats keeps ATS keys and drops Mappit keys', () {
      final json = build().toVariantJson(.ats);
      for (final key in _atsKeys) {
        expect(json.containsKey(key), isTrue, reason: key);
      }
      for (final key in _mappitKeys) {
        expect(json.containsKey(key), isFalse, reason: key);
      }
      expect(json['nfcIdentifier'], 'nfc');
      expect(json['linkedStorageTerminalsIds'], ['t1']);
      expect(json['geofencesIds'], ['g1']);
    });

    test('mappit keeps Mappit keys and drops ATS keys', () {
      final json = build().toVariantJson(.mappit);
      for (final key in _mappitKeys) {
        expect(json.containsKey(key), isTrue, reason: key);
      }
      for (final key in _atsKeys) {
        expect(json.containsKey(key), isFalse, reason: key);
      }
      expect(json['mappitSecondaryRoutesIds'], ['r1']);
    });

    test('mappit keeps the fetched labor hours and secondary routes through the form round trip', () {
      final asset = Asset.fromJson({
        'id': '1',
        'name': 'Seller',
        'mode': 'SINGLE',
        'mappitLaborHours': [
          {'id': 'l1', 'weekday': 'MON', 'administrative': 60, 'f2f': 120, 'other': 0},
        ],
        'mappitLaborStartTime': '08:30',
        'mappitLaborEndTime': '17:00',
        'mappitSecondaryRoutesIds': ['r1', 'r2'],
      });
      final json = AssetInput.fromJson({
        ...asset.toJson(),
        'connection': ConnectionInput().toJson(),
      }).toVariantJson(.mappit);

      expect(json['mappitLaborHours'], [
        {'id': 'l1', 'weekday': 'MON', 'administrative': 60, 'f2f': 120, 'other': 0},
      ]);
      expect(json['mappitSecondaryRoutesIds'], ['r1', 'r2']);
      expect(json['mappitLaborStartTime'], '08:30:00');
      expect(json['mappitLaborEndTime'], '17:00:00');
      expect(json.containsKey('geofencesIds'), isFalse);
    });

    test('does not mutate the input', () {
      final input = build();
      input.toVariantJson(.standard);
      expect(input.nfcIdentifier, 'nfc');
      expect(input.mappitSecondaryRoutesIds, ['r1']);
    });
  });

  group('Asset.fromJson with the detail selection', () {
    test('decodes the nested detail payload', () {
      final asset = Asset.fromJson({
        'id': '1',
        'name': 'Truck',
        'mode': 'SINGLE',
        'kind': {'id': '24', 'name': 'Truck', 'kind': 'ASSET', 'assetKind': 'CONNECTED'},
        'commands': [
          {'id': 'c1', 'name': 'Stop', 'source': 'NATIVE', 'payload': '{}', 'tagId': null},
        ],
        'authenticatedUsers': [
          {'id': 'u1', 'name': 'Ana', 'avatar': null},
        ],
        'authenticatedAssets': [
          {'id': 'a2', 'name': 'Pump', 'icon': null},
        ],
        'devices': [
          {
            'id': 'd1',
            'name': 'GPS',
            'ident': '123',
            'zigbeeZoneId': null,
            'exposes': [],
            'protocol': {'id': 'p1', 'name': 'Teltonika', 'operationMode': 'LISTENING', 'isEnabled': true, 'color': '#FF0000'},
          },
        ],
        'children': [
          {'id': 'a3', 'name': 'Child'},
        ],
        'telemetry': {
          'id': 't1',
          'assetId': '1',
          'position': {'latitude': 1.0, 'longitude': 2.0, 'speed': 0, 'direction': 0},
          'sensors': [
            {'parameter': 'fuel', 'value': 10},
          ],
          'payload': [
            {'parameter': 'raw', 'value': 1},
          ],
          'receivedAt': 1700000000,
        },
        'mappitLaborHours': [
          {'id': 'l1', 'weekday': 'MON', 'administrative': 1, 'f2f': 2, 'other': 3},
        ],
        'mappitLaborStartTime': '09:00',
        'linkedStorageTerminals': [
          {'id': 's1', 'name': 'Terminal', 'dynamicIcon': null},
        ],
        'widgets': [],
      });

      expect(asset.kind?.id, '24');
      expect(asset.commands?.single.name, 'Stop');
      expect(asset.devices?.single.protocol?.name, 'Teltonika');
      expect(asset.children?.single.name, 'Child');
      expect(asset.telemetry?.position?.latitude, 1.0);
      expect(asset.mappitLaborHours?.single.f2f, const Duration(seconds: 2));
      expect(asset.linkedStorageTerminals?.single.name, 'Terminal');
    });
  });
}
