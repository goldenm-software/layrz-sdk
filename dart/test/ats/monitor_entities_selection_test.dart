import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _jsonRoundTrip(Map<String, dynamic> json) => jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

String _generated(List<GqlField> fields) =>
    (GqlQuery(name: 'probe')..add(GqlField(name: 'result', fields: fields))).generated;

/// `entries` item of a linked entry, shaped like the API answers the [AtsEntry.fields] selection.
const _linkedEntryJson = {
  'id': '501',
  'assetId': '7',
  'asset': {'id': '7', 'name': 'Tank 1', 'plate': null, 'kindId': '9'},
  'oldTankLevel': 1200.5,
  'newTankLevel': 6200.5,
  'startAt': 1729700000,
  'endAt': 1729703600.25,
  'fuelAnp': '820101034',
  'isLinked': true,
  'temperature': 24.5,
  'initialTemperature': 23.1,
  'density': 0.84,
  'initialDensity': 0.83,
  'waterLevel': 0.0,
  'initialWaterLevel': 0.0,
  'height': 1.82,
  'initialHeight': 0.44,
  'reception': {
    'id': '88',
    'orderId': 1203,
    'ordersIds': [1203, 1204],
    'order': {
      'id': '1203',
      'operation': {'id': '45'},
      'productsInformation': [
        {'quantity': 5000.0},
      ],
      'transportInformation': {'name': 'Transportes SA', 'driver': 'Joao', 'vehiclePlate': 'ABC1D23'},
    },
    'orders': [
      {'id': '1203', 'receivedAt': 1729690000},
      {'id': '1204', 'receivedAt': null},
    ],
    'errorRate': -0.35,
    'products': [
      {
        'id': '9',
        'assetId': '7',
        'fuelType': 'DIESEL',
        'volumeBought': 5000.0,
        'realVolume': 4982.4,
        'receivedAt': 1729703600,
        'fuelSubtype': 'DIESEL_S10',
        'density': 0.84,
        'temperature': 24.5,
        'provider': 'Petro',
        'tanksImages': ['https://cdn.example.com/tank.jpg'],
      },
    ],
    'loadingParamsForm': [
      {
        'id': '3',
        'receptionId': '88',
        'driver': 'Joao',
        'sampleDensity': 0.84,
        'sampleTemperature': 22.0,
        'assetTemperature': 24.0,
        'analyzedAt': 1729701000,
        'sampleType': 'ANY_UNKNOWN_SAMPLE',
        'formNumber': 'F-12',
      },
    ],
  },
};

void main() {
  group('AtsEntry reception', () {
    test('fields select the linked reception', () {
      final generated = _generated(AtsEntry.fields);
      expect(generated, contains('reception'));
      for (final field in ['errorRate', 'ordersIds', 'loadingParamsForm', 'tanksImages', 'vehiclePlate']) {
        expect(generated, contains(field));
      }
    });

    test('decodes the reception of a linked entry', () {
      final entry = AtsEntry.fromJson(_jsonRoundTrip(_linkedEntryJson));

      expect(entry.isLinked, isTrue);
      final reception = entry.reception!;
      expect(reception.id, '88');
      expect(reception.errorRate, -0.35);
      expect(reception.orderId, 1203);
      expect(reception.ordersIds, [1203, 1204]);
      expect(reception.order?.transportInformation?.vehiclePlate, 'ABC1D23');
      expect(reception.order?.productsInformation?.single.quantity, 5000);
      expect(reception.orders.map((order) => order.id), ['1203', '1204']);
      expect(reception.products.single.fuelType, AtsFuelType.diesel);
      expect(reception.products.single.tanksImages, ['https://cdn.example.com/tank.jpg']);
      expect(reception.loadingParamsForm.single.formNumber, 'F-12');
    });

    test('decodes an entry without reception', () {
      final entry = AtsEntry.fromJson(_jsonRoundTrip({..._linkedEntryJson, 'isLinked': false, 'reception': null}));
      expect(entry.reception, isNull);
    });
  });

  group('AtsExit attendant', () {
    test('fields select the attendant and vehicle ids', () {
      final generated = _generated(AtsExit.fields);
      expect(generated, contains('attendantId'));
      expect(generated, contains('toAssetId'));
    });

    test('decodes the attendant and vehicle ids', () {
      final exit = AtsExit.fromJson(
        _jsonRoundTrip({
          'id': '2',
          'identifier': 4,
          'fromAssetId': '11',
          'attendantName': 'Maria',
          'attendantId': '61',
          'toAssetId': '12',
          'toAsset': {'id': '12', 'name': 'Truck'},
          'totalLiters': 50.0,
        }),
      );
      expect(exit.attendantId, '61');
      expect(exit.toAssetId, '12');
    });
  });
}
