import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('CredentialFieldType Tests', () {
    test('fromJson() all values', () {
      expect(CredentialFieldType.fromJson('CHOICES'), CredentialFieldType.choices);
      expect(CredentialFieldType.fromJson('SOAPURL'), CredentialFieldType.soapUrl);
      expect(CredentialFieldType.fromJson('RESTURL'), CredentialFieldType.restUrl);
      expect(CredentialFieldType.fromJson('STRING'), CredentialFieldType.string);
      expect(CredentialFieldType.fromJson('STRING_LIST'), CredentialFieldType.stringList);
      expect(CredentialFieldType.fromJson('INTEGER'), CredentialFieldType.integer);
      expect(CredentialFieldType.fromJson('FLOAT'), CredentialFieldType.float);
      expect(CredentialFieldType.fromJson('FTP'), CredentialFieldType.ftp);
      expect(CredentialFieldType.fromJson('DIRECTORY'), CredentialFieldType.dir);
      expect(CredentialFieldType.fromJson('LAYRZAPITOKEN'), CredentialFieldType.layrzApiToken);
      expect(CredentialFieldType.fromJson('LAYRZFTPHOST'), CredentialFieldType.layrzFtpHost);
      expect(CredentialFieldType.fromJson('LAYRZFTPPORT'), CredentialFieldType.layrzFtpPort);
      expect(CredentialFieldType.fromJson('LAYRZFTPUSER'), CredentialFieldType.layrzFtpUser);
      expect(CredentialFieldType.fromJson('LAYRZFTPPASSWORD'), CredentialFieldType.layrzFtpPassword);
      expect(CredentialFieldType.fromJson('NESTED'), CredentialFieldType.nestedField);
      expect(CredentialFieldType.fromJson('WIALONTOKEN'), CredentialFieldType.wialonToken);
      expect(CredentialFieldType.fromJson('BASE64'), CredentialFieldType.base64);
      expect(CredentialFieldType.fromJson('LAYRZ_ITEM_ID'), CredentialFieldType.layrzItemId);
      expect(CredentialFieldType.fromJson('LAYRZ_WEBHOOK_ENDPOINT'), CredentialFieldType.layrzWebhookEndpoint);
    });

    test('fromJson() falls back to string on unknown value', () {
      expect(CredentialFieldType.fromJson('BOGUS'), CredentialFieldType.string);
    });

    test('toString() matches toJson()', () {
      for (final value in CredentialFieldType.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in CredentialFieldType.values) {
        expect(CredentialFieldType.fromJson(value.toJson()), value);
      }
    });

    test('deprecated CredentialFieldTypeConverter roundtrip', () {
      // ignore: deprecated_member_use_from_same_package
      const converter = CredentialFieldTypeConverter();
      for (final value in CredentialFieldType.values) {
        expect(converter.fromJson(converter.toJson(value)), value);
      }
    });

    test('deprecated CredentialFieldTypeOrNullConverter handles null', () {
      // ignore: deprecated_member_use_from_same_package
      const converter = CredentialFieldTypeOrNullConverter();
      expect(converter.fromJson(null), isNull);
      expect(converter.toJson(null), isNull);
      expect(converter.fromJson('STRING'), CredentialFieldType.string);
      expect(converter.toJson(CredentialFieldType.integer), 'INTEGER');
    });
  });

  group('CredentialFieldAction Tests', () {
    test('fromJson() all values', () {
      expect(CredentialFieldAction.fromJson('NONE'), CredentialFieldAction.none);
      expect(CredentialFieldAction.fromJson('WIALON_OAUTH'), CredentialFieldAction.wialonOAuth);
    });

    test('fromJson() falls back to none on unknown value', () {
      expect(CredentialFieldAction.fromJson('BOGUS'), CredentialFieldAction.none);
    });

    test('toJson() all values', () {
      expect(CredentialFieldAction.none.toJson(), 'NONE');
      expect(CredentialFieldAction.wialonOAuth.toJson(), 'WIALON_OAUTH');
    });

    test('toString() matches toJson()', () {
      for (final value in CredentialFieldAction.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('deprecated CredentialFieldActionConverter roundtrip', () {
      // ignore: deprecated_member_use_from_same_package
      const converter = CredentialFieldActionConverter();
      for (final value in CredentialFieldAction.values) {
        expect(converter.fromJson(converter.toJson(value)), value);
      }
    });

    test('deprecated CredentialFieldActionOrNullConverter handles null', () {
      // ignore: deprecated_member_use_from_same_package
      const converter = CredentialFieldActionOrNullConverter();
      expect(converter.fromJson(null), isNull);
      expect(converter.toJson(null), isNull);
      expect(converter.fromJson('NONE'), CredentialFieldAction.none);
      expect(converter.toJson(CredentialFieldAction.wialonOAuth), 'WIALON_OAUTH');
    });
  });

  group('CredentialField Tests', () {
    test('constructs with required fields', () {
      final field = CredentialField(field: 'host', type: CredentialFieldType.string);

      expect(field.field, 'host');
      expect(field.type, CredentialFieldType.string);
      expect(field.maxLength, isNull);
      expect(field.minLength, isNull);
      expect(field.choices, isNull);
      expect(field.requiredFields, isNull);
    });

    test('fromJson/toJson roundtrip with nested fields', () {
      final json = {
        'field': 'auth',
        'type': 'NESTED',
        'requiredFields': [
          {'field': 'username', 'type': 'STRING'},
          {'field': 'password', 'type': 'STRING'},
        ],
      };

      final field = CredentialField.fromJson(json);
      expect(field.field, 'auth');
      expect(field.type, CredentialFieldType.nestedField);
      expect(field.requiredFields, hasLength(2));
      expect(field.requiredFields!.first.field, 'username');

      final restored = field.toJson();
      expect(restored['field'], 'auth');
      expect(restored['type'], 'NESTED');
    });

    test('fromJson with choices type', () {
      final json = {
        'field': 'protocol',
        'type': 'CHOICES',
        'choices': ['tcp', 'udp'],
        'onlyField': 'kind',
        'onlyChoices': ['a', 'b'],
        'action': 'WIALON_OAUTH',
      };

      final field = CredentialField.fromJson(json);
      expect(field.choices, ['tcp', 'udp']);
      expect(field.onlyField, 'kind');
      expect(field.action, CredentialFieldAction.wialonOAuth);
    });

    test('copyWith updates fields', () {
      final field = CredentialField(field: 'a', type: CredentialFieldType.string);
      final updated = field.copyWith(type: CredentialFieldType.integer, maxValue: 100);

      expect(updated.type, CredentialFieldType.integer);
      expect(updated.maxValue, 100);
    });

    test('equality', () {
      final a = CredentialField(field: 'x', type: CredentialFieldType.string);
      final b = CredentialField(field: 'x', type: CredentialFieldType.string);
      final c = CredentialField(field: 'y', type: CredentialFieldType.integer);

      expect(a, b);
      expect(a, isNot(c));
    });

    test('fragment is well-formed', () {
      final fragment = CredentialField.fragment;
      expect(fragment.name, 'CredentialFieldFragment');
      expect(fragment.onType, 'ProtocolField');
    });
  });
}
