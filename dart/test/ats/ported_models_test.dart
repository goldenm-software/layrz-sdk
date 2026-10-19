import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Encodes through JSON and drops null values, so the output can be compared with a sparse input.
dynamic _normalize(dynamic value) {
  final decoded = jsonDecode(jsonEncode(value));
  return _dropNulls(decoded);
}

dynamic _dropNulls(dynamic value) {
  if (value is Map) {
    return {
      for (final entry in value.entries)
        if (entry.value != null) entry.key: _dropNulls(entry.value),
    };
  }
  if (value is List) return value.map(_dropNulls).toList();
  return value;
}

void _expectRoundTrip(Map<String, dynamic> json, Map<String, dynamic> Function(Map<String, dynamic>) roundTrip) {
  expect(_normalize(roundTrip(json)), _normalize(json));
}

const _companyJson = {
  'name': 'Golden M',
  'cnpj': '12345678000199',
  'address': 'Rua A, 100',
  'email': 'contact@goldenm.com',
  'stateRegistration': '123456',
};

const _transportJson = {
  'cnpj': '98765432000111',
  'name': 'Transportes XYZ',
  'address': 'Av. B, 200',
  'mun': 'Manaus',
  'freightMod': '0',
  'federalUnit': 'AM',
  'businessNumber': '42',
  'vehiclePlate': 'ABC1D23',
  'vehicleUf': 'AM',
  'vehicleName': 'Scania R450',
  'destination': 'Porto Velho',
  'driver': 'João Silva',
  'origin': 'Manaus',
  'stateRegistration': '654321',
};

const _productJson = {
  'ncm': '27101921',
  'name': 'OLEO DIESEL B S10',
  'measureUnit': 'L',
  'quantity': 15000.5,
  'unitValue': 5.43,
  'productValue': 81452.72,
  'cfop': '5656',
  'subcategory': {'code': 'S10', 'anp': '820101034'},
};

Map<String, dynamic> _purchaseOrderJson() => {
  'id': '101',
  'ownerId': 'ext-1',
  'orderId': '000123456',
  'assetId': '10',
  'sellerAssetId': '11',
  'transportAssetId': '12',
  'purchasedAt': 1700000000,
  'receivedAt': 1700003600,
  'sellerInformation': _companyJson,
  'receiverInformation': _companyJson,
  'productsInformation': [_productJson],
  'total': {
    'subtotal': 81452.72,
    'discountValue': 0.0,
    'total': 81452.72,
    'totalLoad': 81452.72,
    'predominantProduct': 'DIESEL',
    'totalFreight': 1200.0,
    'totalReceived': 80252.72,
    'loadQuantity': 15000.5,
    'loadQuantityMeasure': 'L',
    'freightWeight': 12750.0,
  },
  'isReceived': false,
  'hasReception': true,
  'transportInformation': _transportJson,
  'hasRawXml': true,
  'invoiceType': 'NFe',
  'invoiceId': '13231012345678000199550010001234561000123456',
  'parentInvoice': {'id': '100', 'invoiceType': 'CTe', 'operations': <dynamic>[]},
  'ideInformation': {
    'ideType': '1',
    'serie': '1',
    'model': '55',
    'cfop': '5656',
    'operationType': '1',
    'modal': '01',
  },
  'receptionAt': 1700007200,
  'action': 'PURCHASE',
  'orderStatus': 'IN_TRANSIT',
  'inTransitAt': 1700000500,
  'waitingToDispatchAt': 1700000100,
  'deliveredAt': 1700009000,
  'deliverCategory': 'NOT_DEFINED',
  'category': 'DELIVERY_TO_RESELLER',
  'operations': [
    {
      'id': '7',
      'ordersIds': ['101'],
      'orderStatus': 'DELIVERED',
    },
  ],
  'eta': 1700008000,
  'etaUpdatedAt': 1700004000,
  'receptionAssetId': '13',
};

Map<String, dynamic> _receptionJson() => {
  'id': '55',
  'orderId': 101,
  'errorRate': 0.25,
  'receptionStatus': 'FINISHED_SUCCESSFULLY',
  'order': _purchaseOrderJson(),
  'orders': [_purchaseOrderJson()],
  'ordersIds': [101],
  'loadingParamsForm': [_loadingParamsFormJson()],
  'products': [
    {
      'id': '900',
      'assetId': '10',
      'fuelType': 'DIESEL',
      'fuelSubtype': 'DIESELS10COMUN_B',
      'density': 0.845,
      'temperature': 27.5,
      'volumeBought': 15000.0,
      'realVolume': 14980.2,
      'receivedAt': 1700003600,
      'provider': 'Distribuidora X',
      'tanksImages': ['https://example.com/a.jpg'],
      'price': 5.43,
    },
  ],
};

Map<String, dynamic> _loadingParamsFormJson() => {
  'id': '300',
  'assetId': '12',
  'receptionId': '55',
  'driver': 'João Silva',
  'sampleDensity': 0.845,
  'sampleTemperature': 25.0,
  'assetTemperature': 27.5,
  'analyzedAt': 1700002000,
  'sampleType': 'TRANSSHIPMENT',
  'fuelType': 'DIESEL',
  'formNumber': 'F-001',
  'fuelSubtype': '820101034',
  'modality': 'SETA',
  'inpm': 99.3,
  'destinyInformation': [
    {'capacity': 20000.0, 'replesnishOrWithdraw': 150.0, 'destinyInformationSetaVerification': 'UP'},
  ],
  'balanceParams': {
    'initialWeight': 15000.0,
    'finalWeight': 28000.0,
    'liquidWeight': 13000.0,
    'sampleDensity': 0.845,
    'sampleTemperature': 25.0,
    'density20': 0.842,
    'inpm': 99.3,
    'volume20': 15400.0,
    'spareVolume': 10.0,
    'ambientVolume': 15450.0,
  },
  'skidSetaParams': {
    'modality': 'SKID',
    'sampleDensity': 0.845,
    'sampleTemperature': 25.0,
    'density20': 0.842,
    'assetTemperature': 27.5,
    'correctionFactor': 0.9965,
    'retiraVolume': 20.0,
    'volume20': 15400.0,
    'inpm': 99.3,
    'ambientVolume': 15450.0,
    'spareVolume': 10.0,
  },
};

void main() {
  group('Ported ATS models JSON round-trip', () {
    test('AtsPurchaseOrder', () {
      _expectRoundTrip(_purchaseOrderJson(), (json) => AtsPurchaseOrder.fromJson(json).toJson());
    });

    test('AtsReception', () {
      _expectRoundTrip(_receptionJson(), (json) => AtsReception.fromJson(json).toJson());
    });

    test('AtsOperation', () {
      _expectRoundTrip({
        'id': '7',
        'sellerAssetId': '11',
        'transportAssetId': '12',
        'transportCompanyAssetId': '14',
        'purchasedAt': 1700000000,
        'createdAt': 1700000001,
        'finishedAt': 1700090000,
        'pendingToReview': false,
        'ordersIds': ['101', '102'],
        'sellerInformation': _companyJson,
        'transportInformation': _transportJson,
        'orderStatus': 'UNLOADING_FUEL',
        'category': 'TRANSFER',
        'deliverCategory': 'NOT_DEFINED',
        'purchaseOrders': [_purchaseOrderJson()],
        'statuses': [
          {
            'inTransitAt': 1700000500,
            'waitingToDispatchAt': 1700000100,
            'deliveredAt': 1700009000,
            'unloadingOperationAt': 1700009500,
            'readyToOperateAt': 1700009200,
            'eta': 1700008000,
          },
        ],
        'totalQuantity': 30000.0,
        'productsInformation': [
          {'category': 'DELIVERY_TO_RESELLER', 'quantity': 15000.0, 'subcategory': 'S10', 'fuelType': 'DIESEL'},
        ],
        'ctes': ['cte-1'],
        'caclFormsIds': ['cacl-1'],
        'history': [
          {'status': 'DELIVERED', 'createdAt': 1700009000, 'assetId': '12', 'bookedFor': 1700008000},
        ],
        'minEta': 1700008000,
        'etaStatus': 'HIGH_ACCURACY',
        'terminalEntryAt': 1700001000,
        'terminalExitAt': 1700002000,
        'mdfeId': '77',
        'mdfe': {'id': '77', 'manifestId': 'M-77', 'createdAt': 1700000000, 'updatedAt': 1700000100},
        'mdfes': [
          {'id': '77', 'manifestId': 'M-77'},
        ],
        'checkInAt': 1700000900,
        'merges': [
          {
            'mergeId': 'mg-1',
            'mergedAt': 1700005000,
            'sourceOperationsIds': ['5', '6'],
          },
        ],
      }, (json) => AtsOperation.fromJson(json).toJson());
    });

    test('AtsEntry', () {
      _expectRoundTrip({
        'id': '400',
        'assetId': '10',
        'oldTankLevel': 1000.0,
        'newTankLevel': 15980.2,
        'startAt': 1700003000,
        'endAt': 1700003600,
        'errorPercent': 0.12,
        'reception': _receptionJson(),
        'receptions': [_receptionJson()],
        'isLinked': true,
        'fuelType': 'DIESEL',
        'fuelSubtype': 'DIESELS10COMUN_B',
        'temperature': 27.5,
        'initialTemperature': 26.0,
        'density': 0.845,
        'initialDensity': 0.846,
        'waterLevel': 0.0,
        'initialWaterLevel': 0.0,
        'volumeHistory': [
          {'assetId': '10', 'procedureResult': 1500.0, 'at': 1700003100},
        ],
        'fuelAnp': '820101034',
        'height': 2100.0,
        'initialHeight': 300.0,
        'operationId': '7',
        'initialDensity20': 0.842,
        'finalDensity20': 0.843,
        'initialVolume20': 995.0,
        'finalVolume20': 15900.0,
        'initialCorrectionFactor': 0.995,
        'finalCorrectionFactor': 0.9965,
        'totalExits': 0.0,
        'totalExits20': 0.0,
      }, (json) => AtsEntry.fromJson(json).toJson());
    });

    test('AtsLoadingParamsForm', () {
      _expectRoundTrip(_loadingParamsFormJson(), (json) => AtsLoadingParamsForm.fromJson(json).toJson());
    });

    test('AtsLoadingParamsFormInput', () {
      _expectRoundTrip({
        'id': '300',
        'formNumber': 'F-001',
        'assetId': '12',
        'receptionId': '55',
        'driver': 'João Silva',
        'sampleDensity': 0.845,
        'sampleTemperature': 25.0,
        'assetTemperature': 27.5,
        'analyzedAt': 1700002000.0,
        'sampleType': 'THIRD_PARTY_STORAGE',
        'fuelSubtype': '820101034',
        'ambientVolume': 15450.0,
        'modality': 'BALANCE',
        'inpm': 99.3,
        'initialWeight': 15000.0,
        'finalWeight': 28000.0,
        'volume20': 15400.0,
        'density20': 0.842,
        'correctionFactor': 0.9965,
        'liquidWeight': 13000.0,
        'destinyInformation': [
          {'capacity': 20000.0, 'replesnishOrWithdraw': 150.0, 'destinyInformationSetaVerification': 'DOWN'},
        ],
      }, (json) => AtsLoadingParamsFormInput.fromJson(json).toJson());
    });

    test('AtsExecuteExitInput', () {
      _expectRoundTrip({
        'fromAssetId': '20',
        'sensorId': '21',
        'presetValue': 500,
        'toAssetId': '22',
        'toAssetMileage': 120345.6,
        'fromApp': 'ATSMOBILE',
      }, (json) => AtsExecuteExitInput.fromJson(json).toJson());
    });

    test('AtsExecuteLoadInput', () {
      _expectRoundTrip({'fromAssetId': '30', 'toAssetId': '31'}, (json) => AtsExecuteLoadInput.fromJson(json).toJson());
    });

    test('AtsEntryUnloadInput', () {
      _expectRoundTrip({
        'id': '400',
        'fromAssetId': '10',
        'receptionId': '55',
        'isBluetooth': true,
      }, (json) => AtsEntryUnloadInput.fromJson(json).toJson());
    });

    test('AtsCommandExecuteHistoryInput', () {
      _expectRoundTrip({
        'commandId': '0b9f6b0e-0c4f-4d8e-9a43-0f1b2c3d4e5f',
        'fromAssetId': '20',
        'toAssetId': '22',
        'status': 'SUCCESS',
        'fromApp': 'ATSMOBILE',
        'fatherAssetId': '19',
        'errorResponse': 'none',
        'generatedById': '3',
        'queueId': 'q-1',
        'toAssetMileage': 120345.6,
        'payload': 'PRESET:500',
        'commandType': 'EXECUTE_EXIT',
        'createdAt': 1700000000,
        'communicationMethod': 'BLUETOOTH',
      }, (json) => AtsCommandExecuteHistoryInput.fromJson(json).toJson());
    });

    test('AtsSilUnloadingOrderInput', () {
      _expectRoundTrip({
        'operationId': 7,
        'driverName': 'João Silva',
        'driverRg': '1234567',
        'driverCpf': '12345678901',
        'truckPlate': 'ABC1D23',
        'trailers': [
          {
            'trailerPlate': 'XYZ9K87',
            'compartments': [
              {'compartmentNumber': 1, 'dischargeVolume': 5000, 'productCode': 6},
              {'compartmentNumber': 2, 'dischargeVolume': 10000, 'productCode': 4},
            ],
          },
        ],
        'vehicleColor': 'white',
        'hasDnit': true,
        'seals': '001;002',
      }, (json) => AtsSilUnloadingOrderInput.fromJson(json).toJson());
    });

    test('AtsProductInformation', () {
      _expectRoundTrip(
        Map<String, dynamic>.from(_productJson),
        (json) => AtsProductInformation.fromJson(json).toJson(),
      );
    });
  });

  group('Ported ATS enums', () {
    test('AtsFuelSubType toJson/fromJson for every value', () {
      for (final value in AtsFuelSubType.values) {
        expect(AtsFuelSubType.fromJson(value.toJson()), value);
      }
      expect(AtsFuelSubType.dieselS10A.toJson(), 'DIESELS10_A');
      expect(AtsFuelSubType.unknown.toJson(), 'UNKNOWN');
      expect(AtsFuelSubType.fromJson('SOMETHING_ELSE'), AtsFuelSubType.unknown);
    });

    test('AtsLoadingParamsSample toJson/fromJson for every value', () {
      const wire = {
        AtsLoadingParamsSample.sealedSample: 'SEALED_SAMPLE',
        AtsLoadingParamsSample.inSiteSample: 'IN_SITE_SAMPLE',
        AtsLoadingParamsSample.thirdPartyStorage: 'THIRD_PARTY_STORAGE',
        AtsLoadingParamsSample.transshipment: 'TRANSSHIPMENT',
        AtsLoadingParamsSample.unknown: 'UNKNOWN',
      };
      expect(wire.keys.toSet(), AtsLoadingParamsSample.values.toSet());
      for (final entry in wire.entries) {
        expect(entry.key.toJson(), entry.value);
        expect(AtsLoadingParamsSample.fromJson(entry.value), entry.key);
      }
    });

    AtsCommandExecuteHistoryInput parse(Map<String, dynamic> json) => AtsCommandExecuteHistoryInput.fromJson(json);

    test('AtsCommandExecutionType toJson/fromJson for every value', () {
      const wire = {
        AtsCommandExecutionType.reception: 'RECEPTION',
        AtsCommandExecutionType.executeExit: 'EXECUTE_EXIT',
        AtsCommandExecutionType.executeCargo: 'EXECUTE_CARGO',
        AtsCommandExecutionType.unknown: 'UNKNOWN',
      };
      expect(wire.keys.toSet(), AtsCommandExecutionType.values.toSet());
      for (final entry in wire.entries) {
        expect(entry.key.toString(), entry.value);
        final parsed = parse({'commandType': entry.value});
        expect(parsed.commandType, entry.key);
        expect(parsed.toJson()['commandType'], entry.value);
      }
      expect(parse({'commandType': 'OTHER'}).commandType, AtsCommandExecutionType.unknown);
    });

    test('AtsCommandExecutionStatus toJson/fromJson for every value', () {
      const wire = {
        AtsCommandExecutionStatus.pending: 'PENDING',
        AtsCommandExecutionStatus.failed: 'FAILED',
        AtsCommandExecutionStatus.success: 'SUCCESS',
        AtsCommandExecutionStatus.unknown: 'UNKNOWN',
      };
      expect(wire.keys.toSet(), AtsCommandExecutionStatus.values.toSet());
      for (final entry in wire.entries) {
        expect(entry.key.toString(), entry.value);
        final parsed = parse({'status': entry.value});
        expect(parsed.status, entry.key);
        expect(parsed.toJson()['status'], entry.value);
      }
      expect(parse({'status': 'OTHER'}).status, AtsCommandExecutionStatus.unknown);
    });

    test('AtsCommunicationMethod toJson/fromJson for every value', () {
      const wire = {
        AtsCommunicationMethod.private: 'PRIVATE',
        AtsCommunicationMethod.public: 'PUBLIC',
        AtsCommunicationMethod.bluetooth: 'BLUETOOTH',
        AtsCommunicationMethod.unknown: 'UNKNOWN',
      };
      expect(wire.keys.toSet(), AtsCommunicationMethod.values.toSet());
      for (final entry in wire.entries) {
        expect(entry.key.toString(), entry.value);
        final parsed = parse({'communicationMethod': entry.value});
        expect(parsed.communicationMethod, entry.key);
        expect(parsed.toJson()['communicationMethod'], entry.value);
      }
      expect(parse({'communicationMethod': 'OTHER'}).communicationMethod, AtsCommunicationMethod.unknown);
    });
  });
}
