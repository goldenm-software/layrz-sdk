import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _jsonRoundTrip(Map<String, dynamic> json) => jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

String _generated(List<GqlField> fields) =>
    (GqlQuery(name: 'probe')..add(GqlField(name: 'result', fields: fields))).generated;

const _avatar = {'type': 'ICON', 'url': null, 'icon': 'mdi-account', 'emoji': null, 'base64': null};

const _monitorJson = {
  'id': '1',
  'name': 'Main',
  'icon': 'mdi-monitor',
  'color': '#004e87',
  'isFavorite': false,
  'assets': [
    {'id': '7', 'name': 'Tank 1'},
  ],
  'assetsIds': ['7'],
  'gridStructure': [
    {
      'objectsIds': ['7'],
      'kind': 'ENTRIES',
      'dimensions': {'width': 2, 'height': 1},
    },
  ],
  'access': [
    {
      'id': '3',
      'read': true,
      'write': false,
      'manage': false,
      'objectId': '1',
      'userId': '5',
      'module': 'ATS_MONITORS',
    },
  ],
  'owner': {'id': '5', 'name': 'Owner', 'dynamicAvatar': _avatar},
};

const _card = {'id': '9', 'number': 1, 'externalIdentifier': 10, 'externalIdentifierHex': 'A', 'typeId': 'NFC'};

void main() {
  group('AtsMonitor', () {
    test('fields select what the monitor home reads', () {
      final generated = _generated(AtsMonitor.fields);
      for (final field in ['gridStructure', 'objectsIds', 'dimensions', 'access', 'module', 'owner', 'dynamicAvatar']) {
        expect(generated, contains(field), reason: field);
      }
    });

    test('decodes the fetchAll payload', () {
      final monitor = AtsMonitor.fromJson(_jsonRoundTrip(_monitorJson));
      expect(monitor.name, 'Main');
      expect(monitor.icon?.name, 'mdi-monitor');
      expect(monitor.gridStructure.single.kind, MonitorCardType.entries);
      expect(monitor.gridStructure.single.dimensions?.width, 2);
      expect(monitor.access.single.module, AccessModule.atsMonitors);
      expect(monitor.owner?.name, 'Owner');
    });

    test('input built from a monitor keeps the grid and sends the app', () {
      final monitor = AtsMonitor.fromJson(_jsonRoundTrip(_monitorJson));
      final input = AtsMonitorInput.fromJson(_jsonRoundTrip(monitor.toJson()))..appId = '27';
      final json = _jsonRoundTrip(input.toJson());
      expect(json['id'], '1');
      expect(json['appId'], '27');
      expect(json['assetsIds'], ['7']);
      expect((json['gridStructure'] as List).single['kind'], 'ENTRIES');
      expect(json['icon'], 'mdi-monitor');
    });
  });

  group('Monitor card entities', () {
    test('entries decode the card payload', () {
      final entry = AtsEntry.fromJson(
        _jsonRoundTrip({
          'id': '1',
          'assetId': '7',
          'asset': {'id': '7', 'name': 'Tank', 'plate': null, 'kindId': '9'},
          'oldTankLevel': 10.0,
          'newTankLevel': 30.0,
          'startAt': 1700000000,
          'endAt': 1700000600,
          'fuelAnp': '820101034',
        }),
      );
      expect(entry.asset?.name, 'Tank');
      expect(entry.newTankLevel! - entry.oldTankLevel!, 20);
      expect(_generated(AtsEntry.fields), contains('fuelAnp'));
    });

    test('exits decode the vehicle authentication cards', () {
      final exit = AtsExit.fromJson(
        _jsonRoundTrip({
          'id': '2',
          'identifier': 4,
          'fromAssetId': '11',
          'fromAsset': {'id': '11', 'name': 'Pump'},
          'toAsset': {
            'id': '12',
            'name': 'Truck',
            'authenticationCardCardboard': null,
            'authenticationCardNfc': _card,
            'authenticationCardTag': null,
          },
          'totalLiters': 50.0,
          'totalTimeDuration': 120,
          'initialTankVolume': 100.0,
          'finalTankVolume': 50.0,
        }),
      );
      expect(exit.toAsset?.authenticationCardNfc?.typeId, AtsSelectCard.nfc);
      expect(exit.finalTankVolume, 50);
      expect(_generated(AtsExit.fields), contains('authenticationCardTag'));
    });

    test('purchase orders decode the card payload', () {
      final order = AtsPurchaseOrder.fromJson(
        _jsonRoundTrip({
          'id': '3',
          'orderId': 'NFE-1',
          'purchasedAt': 1700000000,
          'assetId': '7',
          'total': {'total': 1000.0},
          'productsInformation': [
            {
              'quantity': 500.0,
              'subcategory': {'cProdANP': '820101034'},
            },
          ],
          'sellerInformation': {'cnpj': '1', 'name': 'Seller'},
          'transportInformation': {'cnpj': '2', 'name': 'Carrier'},
          'transportAsset': {'id': '8', 'name': 'Boat'},
        }),
      );
      expect(order.total?.total, 1000);
      expect(order.transportAsset?.name, 'Boat');
      expect(_generated(AtsPurchaseOrder.fields), contains('transportInformation'));
    });

    test('exit executions decode the card payload', () {
      final execution = AtsExecuteExitHistory.fromJson(
        _jsonRoundTrip({
          'id': '4',
          'generatedBy': 'Admin',
          'fromAsset': 'Pump',
          'toAsset': 'Truck',
          'createdAt': 1700000000,
          'errorResponse': null,
          'status': 'SUCCESS',
        }),
      );
      expect(execution.status, AtsExitExecuteStatus.success);
      expect(_generated(AtsExecuteExitHistory.fields), contains('errorResponse'));
    });

    test('recalculations decode with defaults', () {
      final recalculation = AtsRecalculation.fromJson(
        _jsonRoundTrip({
          'id': '5',
          'user': {'id': '1', 'name': 'Admin'},
          'at': 1700000000,
          'isFinished': true,
          'assets': [
            {'id': '7', 'name': 'Tank'},
          ],
          'operation': null,
        }),
      );
      expect(recalculation.isFinished, isTrue);
      expect(recalculation.assets.single.name, 'Tank');
      expect(AtsRecalculation.fromJson(const {'id': '6'}).assets, isEmpty);
      expect(_generated(AtsRecalculation.fields), contains('transportAsset'));
    });
  });
}
