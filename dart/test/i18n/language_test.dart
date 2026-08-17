import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Language Tests', () {
    test('Language.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'lang_001',
        'name': 'English',
        'code': 'en',
        'progress': 0.95,
      };

      final language = Language.fromJson(json);

      expect(language, isA<Language>());
      expect(language.id, 'lang_001');
      expect(language.name, 'English');
      expect(language.code, 'en');
      expect(language.progress, 0.95);
    });

    test('Language.fromJson() with required fields only', () {
      final json = <String, dynamic>{
        'id': 'lang_002',
        'name': 'Spanish',
        'code': 'es',
      };

      final language = Language.fromJson(json);

      expect(language.id, 'lang_002');
      expect(language.name, 'Spanish');
      expect(language.code, 'es');
      expect(language.progress, isNull);
    });

    test('Language.fromJson() with null progress', () {
      final json = <String, dynamic>{
        'id': 'lang_003',
        'name': 'French',
        'code': 'fr',
        'progress': null,
      };

      final language = Language.fromJson(json);

      expect(language.id, 'lang_003');
      expect(language.name, 'French');
      expect(language.code, 'fr');
      expect(language.progress, isNull);
    });

    test('Language.fromJson() with progress 0.0', () {
      final json = <String, dynamic>{
        'id': 'lang_004',
        'name': 'German',
        'code': 'de',
        'progress': 0.0,
      };

      final language = Language.fromJson(json);

      expect(language.progress, 0.0);
    });

    test('Language.fromJson() with progress 1.0', () {
      final json = <String, dynamic>{
        'id': 'lang_005',
        'name': 'Portuguese',
        'code': 'pt',
        'progress': 1.0,
      };

      final language = Language.fromJson(json);

      expect(language.progress, 1.0);
    });

    test('Language() constructor with all fields', () {
      final language = Language(
        id: 'lang_006',
        name: 'Italian',
        code: 'it',
        progress: 0.75,
      );

      expect(language.id, 'lang_006');
      expect(language.name, 'Italian');
      expect(language.code, 'it');
      expect(language.progress, 0.75);
    });

    test('Language() constructor without progress', () {
      final language = Language(
        id: 'lang_007',
        name: 'Japanese',
        code: 'ja',
      );

      expect(language.id, 'lang_007');
      expect(language.name, 'Japanese');
      expect(language.code, 'ja');
      expect(language.progress, isNull);
    });

    test('Language.toJson() preserves all fields', () {
      final language = Language(
        id: 'lang_008',
        name: 'Chinese',
        code: 'zh',
        progress: 0.50,
      );

      final json = language.toJson();

      expect(json['id'], 'lang_008');
      expect(json['name'], 'Chinese');
      expect(json['code'], 'zh');
      expect(json['progress'], 0.50);
    });

    test('Language.toJson() with null progress', () {
      final language = Language(
        id: 'lang_009',
        name: 'Korean',
        code: 'ko',
        progress: null,
      );

      final json = language.toJson();

      expect(json['id'], 'lang_009');
      expect(json['name'], 'Korean');
      expect(json['code'], 'ko');
      expect(json['progress'], isNull);
    });

    test('Language roundtrip: fromJson -> toJson -> fromJson', () {
      final original = Language(
        id: 'lang_010',
        name: 'Russian',
        code: 'ru',
        progress: 0.85,
      );

      final json = original.toJson();
      final restored = Language.fromJson(json);

      expect(restored.id, original.id);
      expect(restored.name, original.name);
      expect(restored.code, original.code);
      expect(restored.progress, original.progress);
      expect(restored, original);
    });

    test('Language roundtrip with null progress', () {
      final original = Language(
        id: 'lang_011',
        name: 'Arabic',
        code: 'ar',
      );

      final json = original.toJson();
      final restored = Language.fromJson(json);

      expect(restored, original);
    });

    test('Language equality', () {
      final lang1 = Language(
        id: 'lang_012',
        name: 'Turkish',
        code: 'tr',
        progress: 0.60,
      );
      final lang2 = Language(
        id: 'lang_012',
        name: 'Turkish',
        code: 'tr',
        progress: 0.60,
      );

      expect(lang1, lang2);
    });

    test('Language inequality with different id', () {
      final lang1 = Language(
        id: 'lang_013',
        name: 'Greek',
        code: 'el',
        progress: 0.40,
      );
      final lang2 = Language(
        id: 'lang_014',
        name: 'Greek',
        code: 'el',
        progress: 0.40,
      );

      expect(lang1, isNot(lang2));
    });

    test('Language immutability', () {
      final lang1 = Language(
        id: 'lang_015',
        name: 'Swedish',
        code: 'sv',
      );
      final lang2 = Language(
        id: 'lang_015',
        name: 'Swedish',
        code: 'sv',
      );

      expect(lang1, lang2);
      expect(identical(lang1, lang2), false);
    });
  });

  group('LanguageInput Tests', () {
    test('LanguageInput.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'lang_input_001',
        'name': 'English',
        'code': 'en',
      };

      final input = LanguageInput.fromJson(json);

      expect(input, isA<LanguageInput>());
      expect(input.id, 'lang_input_001');
      expect(input.name, 'English');
      expect(input.code, 'en');
    });

    test('LanguageInput.fromJson() with null id', () {
      final json = <String, dynamic>{
        'id': null,
        'name': 'Spanish',
        'code': 'es',
      };

      final input = LanguageInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.name, 'Spanish');
      expect(input.code, 'es');
    });

    test('LanguageInput.fromJson() with missing fields defaults to empty string', () {
      final json = <String, dynamic>{
        'id': 'lang_input_002',
      };

      final input = LanguageInput.fromJson(json);

      expect(input.id, 'lang_input_002');
      expect(input.name, '');
      expect(input.code, '');
    });

    test('LanguageInput() constructor with defaults', () {
      final input = LanguageInput(
        id: 'lang_input_003',
      );

      expect(input.id, 'lang_input_003');
      expect(input.name, '');
      expect(input.code, '');
    });

    test('LanguageInput() constructor with all fields', () {
      final input = LanguageInput(
        id: 'lang_input_004',
        name: 'French',
        code: 'fr',
      );

      expect(input.id, 'lang_input_004');
      expect(input.name, 'French');
      expect(input.code, 'fr');
    });

    test('LanguageInput() constructor creates new instance without id', () {
      final input = LanguageInput(
        name: 'German',
        code: 'de',
      );

      expect(input.id, isNull);
      expect(input.name, 'German');
      expect(input.code, 'de');
    });

    test('LanguageInput.toJson() preserves all fields', () {
      final input = LanguageInput(
        id: 'lang_input_005',
        name: 'Italian',
        code: 'it',
      );

      final json = input.toJson();

      expect(json['id'], 'lang_input_005');
      expect(json['name'], 'Italian');
      expect(json['code'], 'it');
    });

    test('LanguageInput.toJson() with null id', () {
      final input = LanguageInput(
        id: null,
        name: 'Portuguese',
        code: 'pt',
      );

      final json = input.toJson();

      expect(json['id'], isNull);
      expect(json['name'], 'Portuguese');
      expect(json['code'], 'pt');
    });

    test('LanguageInput roundtrip: fromJson -> toJson -> fromJson', () {
      final json = <String, dynamic>{
        'id': 'lang_input_006',
        'name': 'Japanese',
        'code': 'ja',
      };

      final input1 = LanguageInput.fromJson(json);
      final json2 = input1.toJson();
      final input2 = LanguageInput.fromJson(json2);

      expect(input2.id, input1.id);
      expect(input2.name, input1.name);
      expect(input2.code, input1.code);
    });

    test('LanguageInput copyWith() modifies fields', () {
      final original = LanguageInput(
        id: 'lang_input_007',
        name: 'Chinese',
        code: 'zh',
      );

      final modified = original.copyWith(
        name: 'Simplified Chinese',
        code: 'zh-CN',
      );

      expect(modified.id, 'lang_input_007');
      expect(modified.name, 'Simplified Chinese');
      expect(modified.code, 'zh-CN');
      expect(original.name, 'Chinese');
      expect(original.code, 'zh');
    });

    test('LanguageInput copyWith() with null id', () {
      final original = LanguageInput(
        id: 'lang_input_008',
        name: 'Korean',
        code: 'ko',
      );

      final modified = original.copyWith(
        id: null,
      );

      expect(modified.id, isNull);
      expect(modified.name, 'Korean');
      expect(modified.code, 'ko');
    });

    test('LanguageInput with empty JSON creates defaults', () {
      final json = <String, dynamic>{};

      final input = LanguageInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.code, '');
    });
  });
}
