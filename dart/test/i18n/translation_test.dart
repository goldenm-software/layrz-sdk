import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('I18nTranslation Tests', () {
    test('I18nTranslation.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'trans_001',
        'languageId': 'lang_en',
        'message': 'Welcome to Layrz',
      };

      final translation = I18nTranslation.fromJson(json);

      expect(translation, isA<I18nTranslation>());
      expect(translation.id, 'trans_001');
      expect(translation.languageId, 'lang_en');
      expect(translation.message, 'Welcome to Layrz');
    });

    test('I18nTranslation.fromJson() with simple message', () {
      final json = <String, dynamic>{
        'id': 'trans_002',
        'languageId': 'lang_es',
        'message': 'Bienvenido a Layrz',
      };

      final translation = I18nTranslation.fromJson(json);

      expect(translation.id, 'trans_002');
      expect(translation.languageId, 'lang_es');
      expect(translation.message, 'Bienvenido a Layrz');
    });

    test('I18nTranslation.fromJson() with empty message', () {
      final json = <String, dynamic>{
        'id': 'trans_003',
        'languageId': 'lang_fr',
        'message': '',
      };

      final translation = I18nTranslation.fromJson(json);

      expect(translation.id, 'trans_003');
      expect(translation.languageId, 'lang_fr');
      expect(translation.message, '');
    });

    test('I18nTranslation.fromJson() with multiline message', () {
      final json = <String, dynamic>{
        'id': 'trans_004',
        'languageId': 'lang_de',
        'message': 'Willkommen zu Layrz\nBitte melden Sie sich an',
      };

      final translation = I18nTranslation.fromJson(json);

      expect(translation.message, contains('Willkommen zu Layrz'));
      expect(translation.message, contains('\n'));
    });

    test('I18nTranslation.fromJson() with special characters', () {
      final json = <String, dynamic>{
        'id': 'trans_005',
        'languageId': 'lang_ja',
        'message': 'ようこそ',
      };

      final translation = I18nTranslation.fromJson(json);

      expect(translation.message, 'ようこそ');
    });

    test('I18nTranslation() constructor', () {
      final translation = I18nTranslation(
        id: 'trans_006',
        languageId: 'lang_pt',
        message: 'Bem-vindo ao Layrz',
      );

      expect(translation.id, 'trans_006');
      expect(translation.languageId, 'lang_pt');
      expect(translation.message, 'Bem-vindo ao Layrz');
    });

    test('I18nTranslation.toJson() preserves all fields', () {
      final translation = I18nTranslation(
        id: 'trans_007',
        languageId: 'lang_it',
        message: 'Benvenuto in Layrz',
      );

      final json = translation.toJson();

      expect(json['id'], 'trans_007');
      expect(json['languageId'], 'lang_it');
      expect(json['message'], 'Benvenuto in Layrz');
    });

    test('I18nTranslation roundtrip: fromJson -> toJson -> fromJson', () {
      final original = I18nTranslation(
        id: 'trans_008',
        languageId: 'lang_ru',
        message: 'Добро пожаловать в Layrz',
      );

      final json = original.toJson();
      final restored = I18nTranslation.fromJson(json);

      expect(restored.id, original.id);
      expect(restored.languageId, original.languageId);
      expect(restored.message, original.message);
      expect(restored, original);
    });

    test('I18nTranslation roundtrip with empty message', () {
      final original = I18nTranslation(
        id: 'trans_009',
        languageId: 'lang_ar',
        message: '',
      );

      final json = original.toJson();
      final restored = I18nTranslation.fromJson(json);

      expect(restored, original);
    });

    test('I18nTranslation equality', () {
      final trans1 = I18nTranslation(
        id: 'trans_010',
        languageId: 'lang_zh',
        message: '欢迎来到 Layrz',
      );
      final trans2 = I18nTranslation(
        id: 'trans_010',
        languageId: 'lang_zh',
        message: '欢迎来到 Layrz',
      );

      expect(trans1, trans2);
    });

    test('I18nTranslation inequality with different message', () {
      final trans1 = I18nTranslation(
        id: 'trans_011',
        languageId: 'lang_ko',
        message: 'Welcome',
      );
      final trans2 = I18nTranslation(
        id: 'trans_011',
        languageId: 'lang_ko',
        message: 'Goodbye',
      );

      expect(trans1, isNot(trans2));
    });

    test('I18nTranslation immutability', () {
      final trans1 = I18nTranslation(
        id: 'trans_012',
        languageId: 'lang_nl',
        message: 'Welkom bij Layrz',
      );
      final trans2 = I18nTranslation(
        id: 'trans_012',
        languageId: 'lang_nl',
        message: 'Welkom bij Layrz',
      );

      expect(trans1, trans2);
      expect(identical(trans1, trans2), false);
    });
  });

  group('I18nTranslationInput Tests', () {
    test('I18nTranslationInput.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'trans_input_001',
        'languageId': 'lang_en',
        'message': 'Hello World',
      };

      final input = I18nTranslationInput.fromJson(json);

      expect(input, isA<I18nTranslationInput>());
      expect(input.id, 'trans_input_001');
      expect(input.languageId, 'lang_en');
      expect(input.message, 'Hello World');
    });

    test('I18nTranslationInput.fromJson() with null id and languageId', () {
      final json = <String, dynamic>{
        'id': null,
        'languageId': null,
        'message': 'Hola Mundo',
      };

      final input = I18nTranslationInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.languageId, isNull);
      expect(input.message, 'Hola Mundo');
    });

    test('I18nTranslationInput.fromJson() with missing fields defaults to empty message', () {
      final json = <String, dynamic>{
        'id': 'trans_input_002',
      };

      final input = I18nTranslationInput.fromJson(json);

      expect(input.id, 'trans_input_002');
      expect(input.languageId, isNull);
      expect(input.message, '');
    });

    test('I18nTranslationInput() constructor with all fields', () {
      final input = I18nTranslationInput(
        id: 'trans_input_003',
        languageId: 'lang_fr',
        message: 'Bonjour le monde',
      );

      expect(input.id, 'trans_input_003');
      expect(input.languageId, 'lang_fr');
      expect(input.message, 'Bonjour le monde');
    });

    test('I18nTranslationInput() constructor for new translation', () {
      final input = I18nTranslationInput(
        languageId: 'lang_de',
        message: 'Hallo Welt',
      );

      expect(input.id, isNull);
      expect(input.languageId, 'lang_de');
      expect(input.message, 'Hallo Welt');
    });

    test('I18nTranslationInput() constructor with defaults', () {
      final input = I18nTranslationInput(
        id: 'trans_input_004',
      );

      expect(input.id, 'trans_input_004');
      expect(input.languageId, isNull);
      expect(input.message, '');
    });

    test('I18nTranslationInput.toJson() preserves all fields', () {
      final input = I18nTranslationInput(
        id: 'trans_input_005',
        languageId: 'lang_it',
        message: 'Ciao mondo',
      );

      final json = input.toJson();

      expect(json['id'], 'trans_input_005');
      expect(json['languageId'], 'lang_it');
      expect(json['message'], 'Ciao mondo');
    });

    test('I18nTranslationInput.toJson() with null fields', () {
      final input = I18nTranslationInput(
        id: null,
        languageId: null,
        message: 'Hi',
      );

      final json = input.toJson();

      expect(json['id'], isNull);
      expect(json['languageId'], isNull);
      expect(json['message'], 'Hi');
    });

    test('I18nTranslationInput roundtrip: fromJson -> toJson -> fromJson', () {
      final json = <String, dynamic>{
        'id': 'trans_input_006',
        'languageId': 'lang_pt',
        'message': 'Olá mundo',
      };

      final input1 = I18nTranslationInput.fromJson(json);
      final json2 = input1.toJson();
      final input2 = I18nTranslationInput.fromJson(json2);

      expect(input2.id, input1.id);
      expect(input2.languageId, input1.languageId);
      expect(input2.message, input1.message);
    });

    test('I18nTranslationInput copyWith() modifies message', () {
      final original = I18nTranslationInput(
        id: 'trans_input_007',
        languageId: 'lang_ru',
        message: 'Привет мир',
      );

      final modified = original.copyWith(
        message: 'Добро пожаловать',
      );

      expect(modified.id, 'trans_input_007');
      expect(modified.languageId, 'lang_ru');
      expect(modified.message, 'Добро пожаловать');
      expect(original.message, 'Привет мир');
    });

    test('I18nTranslationInput copyWith() changes all fields', () {
      final original = I18nTranslationInput(
        id: 'trans_input_008',
        languageId: 'lang_ja',
        message: 'こんにちは',
      );

      final modified = original.copyWith(
        id: 'trans_input_008_new',
        languageId: 'lang_zh',
        message: '你好',
      );

      expect(modified.id, 'trans_input_008_new');
      expect(modified.languageId, 'lang_zh');
      expect(modified.message, '你好');
    });

    test('I18nTranslationInput copyWith() with null id', () {
      final original = I18nTranslationInput(
        id: 'trans_input_009',
        languageId: 'lang_ko',
        message: 'Annyeonghaseyo',
      );

      final modified = original.copyWith(
        id: null,
      );

      expect(modified.id, isNull);
      expect(modified.languageId, 'lang_ko');
      expect(modified.message, 'Annyeonghaseyo');
    });

    test('I18nTranslationInput with empty JSON creates defaults', () {
      final json = <String, dynamic>{};

      final input = I18nTranslationInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.languageId, isNull);
      expect(input.message, '');
    });
  });
}
