import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('AtsReceptionType', () {
    const wire = {
      AtsReceptionType.pa: 'PA',
      AtsReceptionType.terminal: 'TERMINAL',
      AtsReceptionType.thirdParty: 'THIRD_PARTY',
      AtsReceptionType.transfer: 'TRANSFER',
      AtsReceptionType.unknown: 'UNKNOWN',
    };

    test('fromJson falls back to unknown for unrecognized values', () {
      expect(AtsReceptionType.fromJson('SOMETHING_ELSE'), AtsReceptionType.unknown);
    });

    test('toJson/fromJson round-trip for all values', () {
      for (final entry in wire.entries) {
        expect(entry.key.toJson(), entry.value);
        expect(AtsReceptionType.fromJson(entry.value), entry.key);
      }
    });

    test('OrNull converter handles null', () {
      const converter = AtsReceptionTypeOrNullConverter();
      expect(converter.fromJson(null), isNull);
      expect(converter.toJson(null), isNull);
      expect(converter.toJson(AtsReceptionType.pa), 'PA');
    });
  });

  group('AtsFromApp', () {
    test('toJson/fromJson round-trip', () {
      expect(AtsFromApp.atsWeb.toJson(), 'ATSWEB');
      expect(AtsFromApp.atsMobile.toJson(), 'ATSMOBILE');
      expect(AtsFromApp.nfc.toJson(), 'NFC');
      for (final value in AtsFromApp.values) {
        expect(AtsFromApp.fromJson(value.toJson()), value);
      }
    });
  });

  group('AtsReceptionInput', () {
    test('toJson serializes receptionType and app', () {
      final json = AtsReceptionInput(
        receptionType: AtsReceptionType.thirdParty,
        app: AtsFromApp.atsMobile,
        purchaseOrderIds: ['1'],
        products: [AtsReceptionProductInput(fuelAnp: 'x', tanksImages: ['a'])],
      ).toJson();
      expect(json['receptionType'], 'THIRD_PARTY');
      expect(json['app'], 'ATSMOBILE');
      expect(json['purchaseOrderIds'], ['1']);
    });

    test('fromJson round-trip', () {
      final input = AtsReceptionInput(
        receptionType: AtsReceptionType.transfer,
        app: AtsFromApp.nfc,
        purchaseOrderIds: ['1'],
      );
      final parsed = AtsReceptionInput.fromJson(input.toJson());
      expect(parsed.receptionType, AtsReceptionType.transfer);
      expect(parsed.app, AtsFromApp.nfc);
      expect(parsed.purchaseOrderIds, ['1']);
    });

    test('null receptionType stays null', () {
      expect(AtsReceptionInput().toJson()['receptionType'], isNull);
    });
  });
}
