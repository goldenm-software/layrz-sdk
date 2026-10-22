import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Encodes through JSON and drops null values, so the output can be compared with a sparse input.
dynamic _normalize(dynamic value) => _dropNulls(jsonDecode(jsonEncode(value)));

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

void _expectRoundTrip(
  Map<String, dynamic> json,
  Map<String, dynamic> Function(Map<String, dynamic>) roundTrip,
) {
  expect(_normalize(roundTrip(json)), _normalize(json));
}

void main() {
  group('Remaining ATS models moved from layrz_models', () {
    test('enums keep their wire values', () {
      expect(AtsBookingStatus.values.map((e) => e.toJson()), [
        'PENDING',
        'SCHEDULED',
        'FINISHED',
        'CANCELLED',
        'UNKNOWN',
      ]);
      expect(
        AtsBookingStatus.fromJson('SCHEDULED'),
        AtsBookingStatus.scheduled,
      );
      expect(AtsBookingType.values.map((e) => e.toJson()), [
        'LOADING',
        'UNLOADING',
        'unknownN',
      ]);
      expect(AtsBookingType.fromJson('nope'), AtsBookingType.unknown);
      expect(FeedbackSource.values.map((e) => e.toJson()), [
        'APP',
        'LAUNCHPAD',
        'TELEGRAM',
      ]);
      expect(FeedbackSource.fromJson('TELEGRAM'), FeedbackSource.telegram);
      expect(AtsExitExecuteStatus.values.map((e) => e.toJson()), [
        'PENDING',
        'FAILED',
        'SUCCESS',
      ]);
      expect(
        AtsAuthenticationCategory.fromJson(
          AtsAuthenticationCategory.nfc.toJson(),
        ),
        AtsAuthenticationCategory.nfc,
      );
      expect(
        const AtsAuthenticationCategoryOrNullConverter().fromJson(null),
        isNull,
      );
      expect(
        const AtsBookingStatusOrNullConverter().toJson(
          AtsBookingStatus.finished,
        ),
        'FINISHED',
      );
      expect(
        const AtsBookingTypeOrNullConverter().toJson(AtsBookingType.loading),
        'LOADING',
      );
      expect(
        const AtsExitExecuteStatusOrNullConverter().fromJson('SUCCESS'),
        AtsExitExecuteStatus.success,
      );
      expect(
        const FeedbackSourceOrNullConverter().fromJson('APP'),
        FeedbackSource.app,
      );
    });

    test('JSON enums keep their wire values', () {
      expect(
        AtsGridItem.fromJson({'kind': 'EXIT_EXECUTIONS'}).kind,
        MonitorCardType.exitExecutions,
      );
      expect(
        AtsGridItem.fromJson({'kind': 'NOPE'}).kind,
        MonitorCardType.unknown,
      );
      expect(
        AtsSilUnloadingOrder.fromJson({
          'status': 'SEND_FAILED',
        }).toJson()['status'],
        'SEND_FAILED',
      );
    });

    test('AtsBooking and AtsBookingInput round trip', () {
      final booking = {
        'id': '1',
        'terminalAssetId': '2',
        'bayAssetId': '3',
        'operationId': '4',
        'bookingStatus': 'SCHEDULED',
        'bookingForDate': 1700000000,
        'transportAssetId': '5',
        'bookingType': 'LOADING',
        'createdById': '6',
      };
      _expectRoundTrip(booking, (json) => AtsBooking.fromJson(json).toJson());
      _expectRoundTrip(
        Map.of(booking)
          ..removeWhere((key, _) => key == 'id' || key == 'createdById'),
        (json) => AtsBookingInput.fromJson(json).toJson(),
      );
    });

    test('AtsExitInput and AtsAuthenticationIdentifier round trip', () {
      _expectRoundTrip(
        {
          'id': '1',
          'assetId': '2',
          'attendantId': '3',
          'startAt': 1700000000,
          'endAt': 1700000100,
        },
        (json) => AtsExitInput.fromJson(json).toJson(),
      );
      _expectRoundTrip(
        {'id': '1', 'category': 'NFC', 'cardId': '2', 'nfcIdentifier': 'AA:BB'},
        (json) => AtsAuthenticationIdentifier.fromJson(json).toJson(),
      );
    });

    test('AtsSilTrailer round trips its nested compartments', () {
      _expectRoundTrip(
        {
          'id': '1',
          'orderId': '2',
          'trailerPlate': 'ABC1D23',
          'compartments': [
            {
              'id': '3',
              'trailerId': '1',
              'result': {
                'id': '4',
                'compartmentId': '3',
                'startedAt': 1700000000,
                'operator': 'Ana',
              },
            },
          ],
          'createdAt': 1700000000,
        },
        (json) => AtsSilTrailer.fromJson(json).toJson(),
      );
    });

    test('CaclInput round trips through JSON', () {
      final input = CaclInput(
        id: '1',
        assetId: '2',
        caclNumber: '3',
        category: CaclCategory.pumping,
        startedAt: DateTime(2024),
      );
      final json =
          jsonDecode(jsonEncode(input.toJson())) as Map<String, dynamic>;
      expect(json['category'], 'PUMPING');
      expect(json['startedAt'], DateTime(2024).millisecondsSinceEpoch / 1000);
      _expectRoundTrip(json, (json) => CaclInput.fromJson(json).toJson());
    });

    test('AtsGridItemInput and StockClosingTankInput keep their defaults', () {
      expect(AtsGridItemInput().toJson(), {
        'objectsIds': <String>[],
        'color': null,
        'kind': 'UNKNOWN',
        'dimensions': null,
      });
      _expectRoundTrip(
        {'id': '1', 'tankId': '2', 'tankMessageId': '3'},
        (json) => StockClosingTankInput.fromJson(json).toJson(),
      );
    });
  });

  group('Reconciled duplicates', () {
    test('AtsNsStatusOrNullConverter', () {
      expect(const AtsNsStatusOrNullConverter().fromJson(null), isNull);
      expect(
        const AtsNsStatusOrNullConverter().fromJson('2'),
        AtsNsStatus.blocked,
      );
      expect(
        const AtsNsStatusOrNullConverter().toJson(AtsNsStatus.production),
        '1',
      );
    });
  });
}
