import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('I18nKeyHistory Tests', () {
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

    test('I18nKeyHistory.fromJson() with all fields', () {
      final iso8601String = DateTime(2024, 8, 17, 10, 30, 45).toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_001',
        'languageId': 'lang_en',
        'before': 'Old message',
        'after': 'New message',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history, isA<I18nKeyHistory>());
      expect(history.id, 'hist_001');
      expect(history.languageId, 'lang_en');
      expect(history.before, 'Old message');
      expect(history.after, 'New message');
      expect(history.performedBy.id, 'emp_001');
      expect(history.performedBy.name, 'John Doe');
    });

    test('I18nKeyHistory.fromJson() with empty strings', () {
      final iso8601String = DateTime(2024, 8, 17, 10, 30, 45).toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_002',
        'languageId': 'lang_es',
        'before': '',
        'after': 'Mensaje inicial',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(id: 'emp_002', name: 'Jane Smith'),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history.before, '');
      expect(history.after, 'Mensaje inicial');
    });

    test('I18nKeyHistory.fromJson() with different employee', () {
      final iso8601String = DateTime(2024, 8, 16, 14, 15, 30).toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_003',
        'languageId': 'lang_fr',
        'before': 'Ancien message',
        'after': 'Nouveau message',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(
          id: 'emp_003',
          name: 'Bob Johnson',
        ),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history.performedBy.id, 'emp_003');
      expect(history.performedBy.name, 'Bob Johnson');
    });

    test('I18nKeyHistory.fromJson() with multiline message', () {
      final iso8601String = DateTime(2024, 8, 15, 12, 0, 0).toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_004',
        'languageId': 'lang_de',
        'before': 'Line 1\nLine 2',
        'after': 'New line 1\nNew line 2\nNew line 3',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history.before, contains('Line 1'));
      expect(history.before, contains('\n'));
      expect(history.after, contains('New line 1'));
      expect(history.after, contains('New line 3'));
    });

    test('I18nKeyHistory.fromJson() with special characters', () {
      final iso8601String = DateTime(2024, 8, 14, 9, 45, 30).toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_005',
        'languageId': 'lang_ja',
        'before': 'こんにちは',
        'after': 'さようなら',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history.before, 'こんにちは');
      expect(history.after, 'さようなら');
    });

    test('I18nKeyHistory() constructor', () {
      final performedAt = DateTime(2024, 8, 13, 11, 30, 0);
      final performedBy = Employee(id: 'emp_004', name: 'Alice Brown');

      final history = I18nKeyHistory(
        id: 'hist_006',
        languageId: 'lang_it',
        before: 'Vecchio messaggio',
        after: 'Nuovo messaggio',
        performedAt: performedAt,
        performedBy: performedBy,
      );

      expect(history.id, 'hist_006');
      expect(history.languageId, 'lang_it');
      expect(history.before, 'Vecchio messaggio');
      expect(history.after, 'Nuovo messaggio');
      expect(history.performedAt, performedAt);
      expect(history.performedBy.id, 'emp_004');
    });

    test('I18nKeyHistory.toJson() preserves all fields', () {
      final performedAt = DateTime(2024, 8, 12, 15, 20, 45);
      final performedBy = Employee(id: 'emp_005', name: 'Charlie Davis');

      final history = I18nKeyHistory(
        id: 'hist_007',
        languageId: 'lang_pt',
        before: 'Mensagem anterior',
        after: 'Mensagem atual',
        performedAt: performedAt,
        performedBy: performedBy,
      );

      final json = history.toJson();

      expect(json['id'], 'hist_007');
      expect(json['languageId'], 'lang_pt');
      expect(json['before'], 'Mensagem anterior');
      expect(json['after'], 'Mensagem atual');
      expect(json['performedAt'], isA<String>());
      expect(json['performedBy'], isA<Map>());
    });

    test('I18nKeyHistory.toJson() performedAt is ISO8601 string', () {
      final performedAt = DateTime(2024, 8, 11, 10, 0, 0);
      final performedBy = Employee(id: 'emp_006', name: 'Diana Evans');

      final history = I18nKeyHistory(
        id: 'hist_008',
        languageId: 'lang_ru',
        before: 'Старое сообщение',
        after: 'Новое сообщение',
        performedAt: performedAt,
        performedBy: performedBy,
      );

      final json = history.toJson();
      final performedAtStr = json['performedAt'] as String;

      expect(performedAtStr, performedAt.toIso8601String());
      expect(performedAtStr, contains('T'));
    });

    test('I18nKeyHistory roundtrip: fromJson -> toJson -> fromJson', () {
      final iso8601String = DateTime(2024, 8, 10, 14, 30, 15).toIso8601String();

      final originalJson = <String, dynamic>{
        'id': 'hist_009',
        'languageId': 'lang_zh',
        'before': '旧消息',
        'after': '新消息',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(id: 'emp_007', name: 'Emma Foster'),
      };

      final history1 = I18nKeyHistory.fromJson(originalJson);
      final json = history1.toJson();
      final history2 = I18nKeyHistory.fromJson(json);

      expect(history2.id, history1.id);
      expect(history2.languageId, history1.languageId);
      expect(history2.before, history1.before);
      expect(history2.after, history1.after);
      expect(history2.performedBy.id, history1.performedBy.id);
      // DateTime comparison with tolerance for precision
      expect(history2.performedAt.difference(history1.performedAt).inSeconds, 0);
    });

    test('I18nKeyHistory roundtrip preserves multiline content', () {
      final iso8601String = DateTime(2024, 8, 9, 9, 0, 0).toIso8601String();

      final originalJson = <String, dynamic>{
        'id': 'hist_010',
        'languageId': 'lang_ko',
        'before': 'First line\nSecond line',
        'after': 'Updated first\nUpdated second\nUpdated third',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(id: 'emp_008', name: 'Frank Green'),
      };

      final history1 = I18nKeyHistory.fromJson(originalJson);
      final json = history1.toJson();
      final history2 = I18nKeyHistory.fromJson(json);

      expect(history2.before, history1.before);
      expect(history2.after, history1.after);
      expect(history2, history1);
    });

    test('I18nKeyHistory equality', () {
      final performedAt = DateTime(2024, 8, 8, 12, 0, 0);
      final emp = Employee(id: 'emp_009', name: 'Grace Harris');

      final hist1 = I18nKeyHistory(
        id: 'hist_011',
        languageId: 'lang_nl',
        before: 'Oud bericht',
        after: 'Nieuw bericht',
        performedAt: performedAt,
        performedBy: emp,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_011',
        languageId: 'lang_nl',
        before: 'Oud bericht',
        after: 'Nieuw bericht',
        performedAt: performedAt,
        performedBy: emp,
      );

      expect(hist1, hist2);
    });

    test('I18nKeyHistory inequality with different before value', () {
      final performedAt = DateTime(2024, 8, 7, 11, 0, 0);
      final emp = Employee(id: 'emp_010', name: 'Hank Irving');

      final hist1 = I18nKeyHistory(
        id: 'hist_012',
        languageId: 'lang_sv',
        before: 'Gammalt meddelande',
        after: 'Nytt meddelande',
        performedAt: performedAt,
        performedBy: emp,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_012',
        languageId: 'lang_sv',
        before: 'Annat gammalt meddelande',
        after: 'Nytt meddelande',
        performedAt: performedAt,
        performedBy: emp,
      );

      expect(hist1, isNot(hist2));
    });

    test('I18nKeyHistory inequality with different after value', () {
      final performedAt = DateTime(2024, 8, 6, 10, 0, 0);
      final emp = Employee(id: 'emp_011', name: 'Iris Jackson');

      final hist1 = I18nKeyHistory(
        id: 'hist_013',
        languageId: 'lang_no',
        before: 'Gammel melding',
        after: 'Ny melding',
        performedAt: performedAt,
        performedBy: emp,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_013',
        languageId: 'lang_no',
        before: 'Gammel melding',
        after: 'Annen ny melding',
        performedAt: performedAt,
        performedBy: emp,
      );

      expect(hist1, isNot(hist2));
    });

    test('I18nKeyHistory immutability', () {
      final performedAt = DateTime(2024, 8, 5, 9, 0, 0);
      final emp = Employee(id: 'emp_012', name: 'Jack Kelly');

      final hist1 = I18nKeyHistory(
        id: 'hist_014',
        languageId: 'lang_da',
        before: 'Gamle besked',
        after: 'Ny besked',
        performedAt: performedAt,
        performedBy: emp,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_014',
        languageId: 'lang_da',
        before: 'Gamle besked',
        after: 'Ny besked',
        performedAt: performedAt,
        performedBy: emp,
      );

      expect(hist1, hist2);
      expect(identical(hist1, hist2), false);
    });

    test('I18nKeyHistory with different timestamps', () {
      final performedAt1 = DateTime(2024, 8, 4, 8, 0, 0);
      final performedAt2 = DateTime(2024, 8, 3, 8, 0, 0);
      final emp = Employee(id: 'emp_013', name: 'Laura Martinez');

      final hist1 = I18nKeyHistory(
        id: 'hist_015',
        languageId: 'lang_fi',
        before: 'Vanha viesti',
        after: 'Uusi viesti',
        performedAt: performedAt1,
        performedBy: emp,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_015',
        languageId: 'lang_fi',
        before: 'Vanha viesti',
        after: 'Uusi viesti',
        performedAt: performedAt2,
        performedBy: emp,
      );

      expect(hist1, isNot(hist2));
    });

    test('I18nKeyHistory with different employee who performed it', () {
      final performedAt = DateTime(2024, 8, 2, 7, 0, 0);
      final emp1 = Employee(id: 'emp_014', name: 'Mike Nelson');
      final emp2 = Employee(id: 'emp_015', name: 'Nancy Oliver');

      final hist1 = I18nKeyHistory(
        id: 'hist_016',
        languageId: 'lang_pl',
        before: 'Stara wiadomość',
        after: 'Nowa wiadomość',
        performedAt: performedAt,
        performedBy: emp1,
      );

      final hist2 = I18nKeyHistory(
        id: 'hist_016',
        languageId: 'lang_pl',
        before: 'Stara wiadomość',
        after: 'Nowa wiadomość',
        performedAt: performedAt,
        performedBy: emp2,
      );

      expect(hist1, isNot(hist2));
    });

    test('I18nKeyHistory.fromJson() parses ISO8601 datetime correctly', () {
      final now = DateTime.now().toUtc();
      final iso8601String = now.toIso8601String();

      final json = <String, dynamic>{
        'id': 'hist_017',
        'languageId': 'lang_tr',
        'before': 'Eski ileti',
        'after': 'Yeni ileti',
        'performedAt': iso8601String,
        'performedBy': createEmployeeJson(),
      };

      final history = I18nKeyHistory.fromJson(json);

      expect(history.performedAt, isA<DateTime>());
      expect(history.performedAt.difference(now).inSeconds, lessThan(2));
    });
  });
}
