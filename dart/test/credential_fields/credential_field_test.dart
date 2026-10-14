import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('CredentialField Tests', () {
    test('seq and extensions default to null', () {
      final field = CredentialField(field: 'name', type: CredentialFieldType.string);

      expect(field.seq, isNull);
      expect(field.extensions, isNull);
    });

    test('fromJson/toJson roundtrip with seq and extensions', () {
      final json = {
        'field': 'certificate',
        'type': 'BASE64',
        'seq': 3,
        'extensions': ['pem', 'crt'],
      };

      final field = CredentialField.fromJson(json);
      expect(field.field, 'certificate');
      expect(field.type, CredentialFieldType.base64);
      expect(field.seq, 3);
      expect(field.extensions, ['pem', 'crt']);

      final restored = field.toJson();
      expect(restored['seq'], 3);
      expect(restored['extensions'], ['pem', 'crt']);
    });

    test('fromJson decodes nested requiredFields carrying seq', () {
      final field = CredentialField.fromJson({
        'field': 'group',
        'type': 'NESTED',
        'seq': 1,
        'requiredFields': [
          {'field': 'host', 'type': 'STRING', 'seq': 1},
          {
            'field': 'file',
            'type': 'BASE64',
            'seq': 2,
            'extensions': ['key'],
          },
        ],
      });

      expect(field.type, CredentialFieldType.nestedField);
      expect(field.requiredFields, hasLength(2));
      expect(field.requiredFields![0].seq, 1);
      expect(field.requiredFields![0].extensions, isNull);
      expect(field.requiredFields![1].seq, 2);
      expect(field.requiredFields![1].extensions, ['key']);
    });

    test('fragment selects seq and extensions at both levels', () {
      final fragment = CredentialField.fragment;
      final names = fragment.fields.map((f) => f.name).toList();

      expect(names, containsAll(['seq', 'extensions', 'requiredFields']));
      final nested = fragment.fields.firstWhere((f) => f.name == 'requiredFields');
      final nestedNames = nested.fields.map((f) => f.name).toList();
      expect(nestedNames, containsAll(['seq', 'extensions']));
    });
  });
}
