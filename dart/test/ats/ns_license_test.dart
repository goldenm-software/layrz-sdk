import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _jsonRoundTrip(Map<String, dynamic> json) => jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

const _addressJson = {
  'address': 'Rua A',
  'number': '100',
  'district': 'Centro',
  'zipCode': '01000-000',
  'cityCode': '3550308',
  'cityName': 'Sao Paulo',
};

const _licenseJson = {
  'id': '7',
  'status': '1',
  'projectId': '22',
  'certificate': 'data:application/x-pkcs12;base64,AAA=',
  'certificatePassword': 'secret',
  'cnpj': '12345678000199',
  'inscriptionId': '123',
  'businessName': 'Golden M LTDA',
  'companyName': 'Golden M',
  'icmsType': '9',
  'emails': ['a@b.com'],
  'addresses': [_addressJson],
  'phoneNumbers': ['+5511999999999'],
  'expirationDateUnix': 1800000000,
  'receive90Days': true,
};

void main() {
  group('NS enums wire values', () {
    test('AtsNsProjectId', () {
      const wires = {
        AtsNsProjectId.nsNFe: '1',
        AtsNsProjectId.nsCTe: '6',
        AtsNsProjectId.nsNFCe: '20',
        AtsNsProjectId.nsMDFe: '21',
        AtsNsProjectId.nsDDFe: '22',
        AtsNsProjectId.nsPortal: '23',
        AtsNsProjectId.nsSAT: '24',
        AtsNsProjectId.cteOS: '26',
      };
      for (final MapEntry(key: value, value: wire) in wires.entries) {
        expect(value.toJson(), wire);
        expect(value.toString(), wire);
        expect(AtsNsProjectId.fromJson(wire), value);
      }
      expect(() => AtsNsProjectId.fromJson('99'), throwsArgumentError);
    });

    test('AtsNsStatus', () {
      const wires = {AtsNsStatus.testing: '0', AtsNsStatus.production: '1', AtsNsStatus.blocked: '2'};
      for (final MapEntry(key: value, value: wire) in wires.entries) {
        expect(value.toJson(), wire);
        expect(AtsNsStatus.fromJson(wire), value);
      }
      expect(() => AtsNsStatus.fromJson('9'), throwsArgumentError);
    });

    test('AtsIcmsType', () {
      const wires = {AtsIcmsType.taxpayer: '1', AtsIcmsType.exempt: '2', AtsIcmsType.nonContributor: '9'};
      for (final MapEntry(key: value, value: wire) in wires.entries) {
        expect(value.toJson(), wire);
        expect(AtsIcmsType.fromJson(wire), value);
      }
      expect(() => AtsIcmsType.fromJson('3'), throwsArgumentError);
    });
  });

  group('AtsNsLicense', () {
    test('decodes the full fragment payload, including expirationDateUnix', () {
      final license = AtsNsLicense.fromJson(_jsonRoundTrip(_licenseJson));
      expect(license.status, AtsNsStatus.production);
      expect(license.projectId, AtsNsProjectId.nsDDFe);
      expect(license.icmsType, AtsIcmsType.nonContributor);
      expect(license.receive90Days, isTrue);
      expect(license.addresses!.single.cityName, 'Sao Paulo');
      expect(license.expirationDate, DateTime.fromMillisecondsSinceEpoch(1800000000 * 1000));
    });

    test('round trip', () {
      final license = AtsNsLicense.fromJson(_jsonRoundTrip(_licenseJson));
      expect(_jsonRoundTrip(license.toJson()), _licenseJson);
    });

    test('decodes the light list payload', () {
      final license = AtsNsLicense.fromJson({
        'id': '7',
        'status': '0',
        'projectId': '1',
        'cnpj': '1',
        'businessName': 'B',
        'companyName': null,
      });
      expect(license.status, AtsNsStatus.testing);
      expect(license.projectId, AtsNsProjectId.nsNFe);
      expect(license.addresses, isNull);
      expect(license.expirationDate, isNull);
    });

    test('fragment is declared on License and selects every field the model reads', () {
      final generated = (GqlQuery(
        name: 'probe',
      )..add(GqlField(name: 'result', fragment: AtsNsLicense.fragment))).generated;
      expect(generated, contains('fragment licenseFragment on License'));
      for (final field in [..._licenseJson.keys, ..._addressJson.keys]) {
        expect(generated, contains(field), reason: field);
      }
    });

    test('listFields stays light', () {
      final generated = (GqlQuery(
        name: 'probe',
      )..add(GqlField(name: 'result', fields: AtsNsLicense.listFields))).generated;
      for (final field in ['id', 'status', 'projectId', 'cnpj', 'businessName', 'companyName']) {
        expect(generated, contains(field), reason: field);
      }
      for (final field in ['certificate', 'addresses', 'emails']) {
        expect(generated, isNot(contains(field)), reason: field);
      }
    });
  });

  group('AtsNsLicenseInput', () {
    test('defaults', () {
      final json = _jsonRoundTrip(AtsNsLicenseInput().toJson());
      expect(json, {
        'id': null,
        'status': '0',
        'receive90Days': false,
        'projectId': '1',
        'certificate': '',
        'certificatePassword': '',
        'cnpj': '',
        'inscriptionId': '',
        'businessName': '',
        'companyName': '',
        'icmsType': '1',
        'emails': <String>[],
        'phoneNumbers': <String>[],
        'addresses': <Map<String, dynamic>>[],
      });
    });

    test('accepts an AtsNsLicense JSON', () {
      final input = AtsNsLicenseInput.fromJson(_jsonRoundTrip(_licenseJson));
      expect(input.id, '7');
      expect(input.projectId, AtsNsProjectId.nsDDFe);
      expect(input.addresses.single.zipCode, '01000-000');

      final json = _jsonRoundTrip(input.toJson());
      expect(json['addresses'], [_addressJson]);
      expect(json.containsKey('expirationDateUnix'), isFalse);
      expect(json['icmsType'], '9');
    });

    test('AtsNsAddressInput round trip', () {
      final input = AtsNsAddressInput.fromJson(_addressJson);
      expect(input.toJson(), _addressJson);
      expect(AtsNsAddressInput().toJson().values, everyElement(''));
    });
  });

  group('Catalogs', () {
    test('AtsNsCountryState decodes nativeName as name', () {
      final state = AtsNsCountryState.fromJson({'id': '1', 'nativeName': 'Sao Paulo', 'code': 'SP'});
      expect(state.name, 'Sao Paulo');
      expect(state.code, 'SP');
      expect(state.toJson(), {'id': '1', 'nativeName': 'Sao Paulo', 'code': 'SP'});
    });

    test('AtsNsCity decodes nativeName and countryStateId', () {
      final city = AtsNsCity.fromJson({'id': '2', 'nativeName': 'Campinas', 'code': '3509502', 'countryStateId': '1'});
      expect(city.name, 'Campinas');
      expect(city.countryStateId, '1');
      expect(city.toJson(), {'id': '2', 'nativeName': 'Campinas', 'code': '3509502', 'countryStateId': '1'});
    });
  });
}
