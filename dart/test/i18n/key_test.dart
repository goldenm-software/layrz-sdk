import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('I18nKey Tests', () {
    // Helper function to create minimal Employee JSON
    Map<String, dynamic> createEmployeeJson({
      String id = 'emp_001',
      String name = 'John Doe',
    }) {
      return <String, dynamic>{
        'id': id,
        'name': name,
      };
    }

    test('I18nKey.fromJson() with all required fields', () {
      final now = DateTime.now();
      final timestamp = now.millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_001',
        'code': 'WELCOME_MESSAGE',
        'progress': 0.95,
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key = I18nKey.fromJson(json);

      expect(key, isA<I18nKey>());
      expect(key.id, 'key_001');
      expect(key.code, 'WELCOME_MESSAGE');
      expect(key.progress, 0.95);
      expect(key.translations, isEmpty);
      expect(key.createdBy.id, 'emp_001');
      expect(key.updatedBy.id, 'emp_001');
    });

    test('I18nKey.fromJson() with no progress', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_002',
        'code': 'GOODBYE_MESSAGE',
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key = I18nKey.fromJson(json);

      expect(key.id, 'key_002');
      expect(key.code, 'GOODBYE_MESSAGE');
      expect(key.progress, isNull);
      expect(key.translations, isEmpty);
    });

    test('I18nKey.fromJson() with translations', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_003',
        'code': 'HELLO_WORLD',
        'progress': 0.50,
        'translations': [
          {
            'id': 'trans_001',
            'languageId': 'lang_en',
            'message': 'Hello World',
          },
          {
            'id': 'trans_002',
            'languageId': 'lang_es',
            'message': 'Hola Mundo',
          },
        ],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(id: 'emp_002', name: 'Jane Smith'),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(id: 'emp_003', name: 'Bob Johnson'),
      };

      final key = I18nKey.fromJson(json);

      expect(key.id, 'key_003');
      expect(key.code, 'HELLO_WORLD');
      expect(key.translations, hasLength(2));
      expect(key.translations[0].message, 'Hello World');
      expect(key.translations[1].message, 'Hola Mundo');
      expect(key.createdBy.name, 'Jane Smith');
      expect(key.updatedBy.name, 'Bob Johnson');
    });

    test('I18nKey.fromJson() with progress 0.0', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_004',
        'code': 'INCOMPLETE_KEY',
        'progress': 0.0,
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key = I18nKey.fromJson(json);

      expect(key.progress, 0.0);
    });

    test('I18nKey.fromJson() with progress 1.0', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_005',
        'code': 'COMPLETE_KEY',
        'progress': 1.0,
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key = I18nKey.fromJson(json);

      expect(key.progress, 1.0);
    });

    test('I18nKey() constructor', () {
      final now = DateTime.now();
      final createdBy = Employee(id: 'emp_004', name: 'Alice Brown');
      final updatedBy = Employee(id: 'emp_005', name: 'Charlie Davis');

      final key = I18nKey(
        id: 'key_006',
        code: 'TEST_KEY',
        progress: 0.75,
        translations: const [],
        createdAt: now,
        createdBy: createdBy,
        updatedAt: now,
        updatedBy: updatedBy,
      );

      expect(key.id, 'key_006');
      expect(key.code, 'TEST_KEY');
      expect(key.progress, 0.75);
      expect(key.createdBy.id, 'emp_004');
      expect(key.updatedBy.id, 'emp_005');
    });

    test('I18nKey.toJson() preserves all fields', () {
      final now = DateTime.now();
      final createdBy = Employee(id: 'emp_006', name: 'Diana Evans');
      final updatedBy = Employee(id: 'emp_007', name: 'Emma Foster');

      final key = I18nKey(
        id: 'key_007',
        code: 'JSON_TEST',
        progress: 0.60,
        translations: const [],
        createdAt: now,
        createdBy: createdBy,
        updatedAt: now,
        updatedBy: updatedBy,
      );

      final json = key.toJson();

      expect(json['id'], 'key_007');
      expect(json['code'], 'JSON_TEST');
      expect(json['progress'], 0.60);
      expect(json['translations'], isA<List>());
      expect(json['createdBy'], isA<Map>());
      expect(json['updatedBy'], isA<Map>());
    });

    test('I18nKey.toJson() with translations', () {
      final now = DateTime.now();
      final createdBy = Employee(id: 'emp_008', name: 'Frank Green');
      final updatedBy = Employee(id: 'emp_009', name: 'Grace Harris');

      final translation = I18nTranslation(
        id: 'trans_003',
        languageId: 'lang_en',
        message: 'Test message',
      );

      final key = I18nKey(
        id: 'key_008',
        code: 'WITH_TRANSLATIONS',
        progress: 0.50,
        translations: [translation],
        createdAt: now,
        createdBy: createdBy,
        updatedAt: now,
        updatedBy: updatedBy,
      );

      final json = key.toJson();

      expect(json['translations'], hasLength(1));
      expect(json['translations'][0]['message'], 'Test message');
    });

    test('I18nKey roundtrip: fromJson -> toJson -> fromJson', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final originalJson = <String, dynamic>{
        'id': 'key_009',
        'code': 'ROUNDTRIP_TEST',
        'progress': 0.70,
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(id: 'emp_010', name: 'Hank Irving'),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(id: 'emp_011', name: 'Iris Jackson'),
      };

      final key1 = I18nKey.fromJson(originalJson);
      final json = key1.toJson();
      final key2 = I18nKey.fromJson(json);

      expect(key2.id, key1.id);
      expect(key2.code, key1.code);
      expect(key2.progress, key1.progress);
      expect(key2.translations.length, key1.translations.length);
      expect(key2.createdBy.id, key1.createdBy.id);
      expect(key2.updatedBy.id, key1.updatedBy.id);
    });

    test('I18nKey roundtrip with translations', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final originalJson = <String, dynamic>{
        'id': 'key_010',
        'code': 'TRANS_ROUNDTRIP',
        'progress': 0.30,
        'translations': [
          {
            'id': 'trans_004',
            'languageId': 'lang_en',
            'message': 'English message',
          },
          {
            'id': 'trans_005',
            'languageId': 'lang_fr',
            'message': 'Message français',
          },
        ],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key1 = I18nKey.fromJson(originalJson);
      final json = key1.toJson();
      final key2 = I18nKey.fromJson(json);

      expect(key2, key1);
    });

    test('I18nKey equality', () {
      final now = DateTime.now();
      final emp = Employee(id: 'emp_012', name: 'Jack Kelly');

      final key1 = I18nKey(
        id: 'key_011',
        code: 'EQUALITY_TEST',
        progress: 0.80,
        translations: const [],
        createdAt: now,
        createdBy: emp,
        updatedAt: now,
        updatedBy: emp,
      );

      final key2 = I18nKey(
        id: 'key_011',
        code: 'EQUALITY_TEST',
        progress: 0.80,
        translations: const [],
        createdAt: now,
        createdBy: emp,
        updatedAt: now,
        updatedBy: emp,
      );

      expect(key1, key2);
    });

    test('I18nKey immutability', () {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      final json = <String, dynamic>{
        'id': 'key_012',
        'code': 'IMMUTABLE_TEST',
        'progress': 0.40,
        'translations': [],
        'createdAt': timestamp,
        'createdBy': createEmployeeJson(),
        'updatedAt': timestamp,
        'updatedBy': createEmployeeJson(),
      };

      final key1 = I18nKey.fromJson(json);
      final key2 = I18nKey.fromJson(json);

      expect(key1, key2);
      expect(identical(key1, key2), false);
    });
  });

  group('I18nKeyInput Tests', () {
    test('I18nKeyInput.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'key_input_001',
        'code': 'INPUT_KEY',
        'translations': [],
      };

      final input = I18nKeyInput.fromJson(json);

      expect(input, isA<I18nKeyInput>());
      expect(input.id, 'key_input_001');
      expect(input.code, 'INPUT_KEY');
      expect(input.translations, isEmpty);
    });

    test('I18nKeyInput.fromJson() with null id', () {
      final json = <String, dynamic>{
        'id': null,
        'code': 'NEW_KEY',
        'translations': [],
      };

      final input = I18nKeyInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.code, 'NEW_KEY');
      expect(input.translations, isEmpty);
    });

    test('I18nKeyInput.fromJson() with missing fields defaults to empty', () {
      final json = <String, dynamic>{
        'id': 'key_input_002',
      };

      final input = I18nKeyInput.fromJson(json);

      expect(input.id, 'key_input_002');
      expect(input.code, '');
      expect(input.translations, isEmpty);
    });

    test('I18nKeyInput.fromJson() with translations', () {
      final json = <String, dynamic>{
        'id': 'key_input_003',
        'code': 'KEY_WITH_TRANS',
        'translations': [
          {
            'id': 'trans_input_001',
            'languageId': 'lang_en',
            'message': 'Hello',
          },
          {
            'id': 'trans_input_002',
            'languageId': 'lang_es',
            'message': 'Hola',
          },
        ],
      };

      final input = I18nKeyInput.fromJson(json);

      expect(input.id, 'key_input_003');
      expect(input.code, 'KEY_WITH_TRANS');
      expect(input.translations, hasLength(2));
      expect(input.translations[0].message, 'Hello');
      expect(input.translations[1].message, 'Hola');
    });

    test('I18nKeyInput() constructor for new key', () {
      final input = I18nKeyInput(
        code: 'NEW_INPUT_KEY',
      );

      expect(input.id, isNull);
      expect(input.code, 'NEW_INPUT_KEY');
      expect(input.translations, isEmpty);
    });

    test('I18nKeyInput() constructor with all fields', () {
      final translation = I18nTranslationInput(
        languageId: 'lang_en',
        message: 'Test',
      );

      final input = I18nKeyInput(
        id: 'key_input_004',
        code: 'FULL_INPUT',
        translations: [translation],
      );

      expect(input.id, 'key_input_004');
      expect(input.code, 'FULL_INPUT');
      expect(input.translations, hasLength(1));
    });

    test('I18nKeyInput.toJson() preserves all fields', () {
      final input = I18nKeyInput(
        id: 'key_input_005',
        code: 'JSON_PRESERVE',
        translations: const [],
      );

      final json = input.toJson();

      expect(json['id'], 'key_input_005');
      expect(json['code'], 'JSON_PRESERVE');
      expect(json['translations'], isA<List>());
    });

    test('I18nKeyInput.toJson() with translations', () {
      final translation = I18nTranslationInput(
        languageId: 'lang_en',
        message: 'JSON message',
      );

      final input = I18nKeyInput(
        id: 'key_input_006',
        code: 'JSON_WITH_TRANS',
        translations: [translation],
      );

      final json = input.toJson();

      expect(json['translations'], hasLength(1));
      expect(json['translations'][0]['message'], 'JSON message');
    });

    test('I18nKeyInput roundtrip: fromJson -> toJson -> fromJson', () {
      final json = <String, dynamic>{
        'id': 'key_input_007',
        'code': 'ROUNDTRIP_INPUT',
        'translations': [],
      };

      final input1 = I18nKeyInput.fromJson(json);
      final json2 = input1.toJson();
      final input2 = I18nKeyInput.fromJson(json2);

      expect(input2.id, input1.id);
      expect(input2.code, input1.code);
      expect(input2.translations.length, input1.translations.length);
    });

    test('I18nKeyInput copyWith() modifies code', () {
      final original = I18nKeyInput(
        id: 'key_input_008',
        code: 'ORIGINAL_CODE',
      );

      final modified = original.copyWith(
        code: 'MODIFIED_CODE',
      );

      expect(modified.id, 'key_input_008');
      expect(modified.code, 'MODIFIED_CODE');
      expect(original.code, 'ORIGINAL_CODE');
    });

    test('I18nKeyInput copyWith() changes id', () {
      final original = I18nKeyInput(
        id: 'key_input_009',
        code: 'TEST_CODE',
      );

      final modified = original.copyWith(
        id: null,
      );

      expect(modified.id, isNull);
      expect(modified.code, 'TEST_CODE');
    });

    test('I18nKeyInput copyWith() with translations', () {
      final original = I18nKeyInput(
        id: 'key_input_010',
        code: 'CODE_1',
        translations: const [],
      );

      final translation = I18nTranslationInput(
        languageId: 'lang_en',
        message: 'New message',
      );

      final modified = original.copyWith(
        translations: [translation],
      );

      expect(modified.translations, hasLength(1));
      expect(modified.translations[0].message, 'New message');
      expect(original.translations, isEmpty);
    });

    test('I18nKeyInput with empty JSON creates defaults', () {
      final json = <String, dynamic>{};

      final input = I18nKeyInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.code, '');
      expect(input.translations, isEmpty);
    });
  });
}
