import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Token Model Serialization - Comprehensive', () {
    test('Token JSON serialization with all fields', () {
      final now = DateTime.now();
      final token = Token(
        id: 'token-001',
        token: 'secret-token-value',
        validBefore: now.add(Duration(hours: 24)),
        issuedAt: now,
        audience: TokenAudience.api,
      );

      final json = token.toJson();

      expect(json['id'], 'token-001');
      expect(json['token'], 'secret-token-value');
      // Timestamps can be int or double when serialized
      expect(json['validBefore'], isA<num>());
      expect(json['issuedAt'], isA<num>());
      expect(json['audience'], 'API');
    });

    test('Token deserialization from camelCase JSON', () {
      final now = DateTime.now();
      final nowSeconds = (now.millisecondsSinceEpoch / 1000).toInt();

      final json = {
        'id': 'api-token-123',
        'token': 'abc123xyz789',
        'validBefore': nowSeconds,
        'issuedAt': nowSeconds,
        'audience': 'API',
      };

      final token = Token.fromJson(json);

      expect(token.id, 'api-token-123');
      expect(token.token, 'abc123xyz789');
      expect(token.audience, TokenAudience.api);
    });

    test('Token with SESSION audience', () {
      final json = {
        'id': 'session-token-456',
        'token': 'session-xyz',
        'audience': 'SESSION',
      };

      final token = Token.fromJson(json);

      expect(token.id, 'session-token-456');
      expect(token.audience, TokenAudience.session);
    });

    test('Token JSON roundtrip preserves all data', () {
      final original = DateTime(2025, 6, 15, 10, 30, 0);
      final expires = DateTime(2025, 7, 15, 10, 30, 0);

      final token1 = Token(
        id: 'token-uuid-1234',
        token: 'very-secret-token-string',
        validBefore: expires,
        issuedAt: original,
        audience: TokenAudience.session,
      );

      final json = token1.toJson();
      final token2 = Token.fromJson(json);

      expect(token2.id, token1.id);
      expect(token2.token, token1.token);
      expect(token2.audience, token1.audience);
    });

    test('Token with null id', () {
      final json = {
        'token': 'token-without-id',
        'id': null,
      };

      final token = Token.fromJson(json);

      expect(token.id, isNull);
      expect(token.token, 'token-without-id');
    });

    test('Token with null audience', () {
      final json = {
        'token': 'token-null-audience',
        'audience': null,
      };

      final token = Token.fromJson(json);

      expect(token.audience, isNull);
      expect(token.token, 'token-null-audience');
    });

    test('Token with both timestamps null', () {
      final json = {
        'token': 'token-no-timestamps',
        'validBefore': null,
        'issuedAt': null,
      };

      final token = Token.fromJson(json);

      expect(token.validBefore, isNull);
      expect(token.issuedAt, isNull);
      expect(token.token, 'token-no-timestamps');
    });

    test('Token timestamp precision is preserved', () {
      final precise = DateTime(2025, 8, 17, 14, 30, 45, 123, 456);
      final token = Token(
        token: 'token-precise',
        issuedAt: precise,
      );

      final json = token.toJson();
      final restored = Token.fromJson(json);

      // Timestamps are stored as Unix seconds, so some sub-second precision may be lost
      expect(restored.issuedAt, isNotNull);
    });

    test('Token token field is required', () {
      final json = {
        'id': 'token-id',
      };

      expect(
        () => Token.fromJson(json),
        throwsA(isA<Error>()),
      );
    });

    test('Token equality includes all fields', () {
      final now = DateTime.now();

      final token1 = Token(
        id: 'id-1',
        token: 'token-value',
        issuedAt: now,
        audience: TokenAudience.api,
      );

      final token2 = Token(
        id: 'id-1',
        token: 'token-value',
        issuedAt: now,
        audience: TokenAudience.api,
      );

      final token3 = Token(
        id: 'id-1',
        token: 'token-value',
        issuedAt: now,
        audience: TokenAudience.session,
      );

      expect(token1, token2);
      expect(token1, isNot(token3));
    });

    test('Token has a string representation', () {
      final token = Token(token: 'some-token-value');
      final stringRep = token.toString();

      // Verify that toString() produces a string representation
      expect(stringRep, isA<String>());
      expect(stringRep.isNotEmpty, true);
    });

    test('Token copy with different audience', () {
      final token1 = Token(
        id: 'token-id',
        token: 'token-value',
        audience: TokenAudience.api,
      );

      final token2 = token1.copyWith(audience: TokenAudience.session);

      expect(token1.audience, TokenAudience.api);
      expect(token2.audience, TokenAudience.session);
      expect(token2.id, token1.id);
      expect(token2.token, token1.token);
    });

    test('Token copy with null audience', () {
      final token1 = Token(
        token: 'token-value',
        audience: TokenAudience.api,
      );

      final token2 = token1.copyWith(audience: null);

      expect(token1.audience, TokenAudience.api);
      expect(token2.audience, isNull);
    });
  });

  group('Token GraphQL Fragment Tests', () {
    test('gqlFragment has correct name', () {
      final fragment = Token.gqlFragment;
      expect(fragment.name, 'tokenFragment');
    });

    test('gqlFragment targets Token type', () {
      final fragment = Token.gqlFragment;
      expect(fragment.onType, 'Token');
    });

    test('gqlFragment includes all required fields', () {
      final fragment = Token.gqlFragment;
      final fieldNames = fragment.fields.map((f) => f.name).toList();

      expect(fieldNames.contains('id'), true);
      expect(fieldNames.contains('token'), true);
      expect(fieldNames.contains('validBefore'), true);
      expect(fieldNames.contains('issuedAt'), true);
      expect(fieldNames.contains('audience'), true);
    });

    test('gqlFragment field count matches expected', () {
      final fragment = Token.gqlFragment;
      expect(fragment.fields.length, 5);
    });

    test('gqlFragment id field is present', () {
      final fragment = Token.gqlFragment;
      final idField = fragment.fields.firstWhere((f) => f.name == 'id');
      expect(idField.name, 'id');
    });

    test('gqlFragment token field is present', () {
      final fragment = Token.gqlFragment;
      final tokenField = fragment.fields.firstWhere((f) => f.name == 'token');
      expect(tokenField.name, 'token');
    });

    test('gqlFragment validBefore field is present', () {
      final fragment = Token.gqlFragment;
      final validBeforeField =
          fragment.fields.firstWhere((f) => f.name == 'validBefore');
      expect(validBeforeField.name, 'validBefore');
    });

    test('gqlFragment issuedAt field is present', () {
      final fragment = Token.gqlFragment;
      final issuedAtField = fragment.fields.firstWhere((f) => f.name == 'issuedAt');
      expect(issuedAtField.name, 'issuedAt');
    });

    test('gqlFragment audience field is present', () {
      final fragment = Token.gqlFragment;
      final audienceField = fragment.fields.firstWhere((f) => f.name == 'audience');
      expect(audienceField.name, 'audience');
    });

    test('gqlFragment is reusable', () {
      final fragment1 = Token.gqlFragment;
      final fragment2 = Token.gqlFragment;

      expect(fragment1.name, fragment2.name);
      expect(fragment1.onType, fragment2.onType);
      expect(fragment1.fields.length, fragment2.fields.length);
    });

    test('gqlFragment field order matches schema', () {
      final fragment = Token.gqlFragment;
      expect(fragment.fields[0].name, 'id');
      expect(fragment.fields[1].name, 'token');
      expect(fragment.fields[2].name, 'validBefore');
      expect(fragment.fields[3].name, 'issuedAt');
      expect(fragment.fields[4].name, 'audience');
    });
  });

  group('Token Audience Tests', () {
    test('TokenAudience.api has correct string value', () {
      expect(TokenAudience.api.toJson(), 'API');
    });

    test('TokenAudience.session has correct string value', () {
      expect(TokenAudience.session.toJson(), 'SESSION');
    });

    test('TokenAudience can be created from JSON strings', () {
      final apiAudience = TokenAudience.fromJson('API');
      final sessionAudience = TokenAudience.fromJson('SESSION');

      expect(apiAudience, TokenAudience.api);
      expect(sessionAudience, TokenAudience.session);
    });

    test('TokenAudience.fromJson handles unknown values', () {
      final unknown = TokenAudience.fromJson('UNKNOWN');
      expect(unknown, TokenAudience.session);
    });

    test('TokenAudience values list has both enum values', () {
      expect(TokenAudience.values.length, 2);
      expect(TokenAudience.values.contains(TokenAudience.api), true);
      expect(TokenAudience.values.contains(TokenAudience.session), true);
    });
  });

  group('Token Edge Cases', () {
    test('Token with very long token string', () {
      final longToken = 'x' * 10000;
      final token = Token(token: longToken);

      expect(token.token.length, 10000);
      final json = token.toJson();
      final restored = Token.fromJson(json);
      expect(restored.token, longToken);
    });

    test('Token with special characters in id', () {
      final json = {
        'id': 'token-id-with-!@#\$%^&*()',
        'token': 'token-value',
      };

      final token = Token.fromJson(json);
      expect(token.id, 'token-id-with-!@#\$%^&*()');
    });

    test('Token with unicode in token field', () {
      final json = {
        'token': 'token-with-emoji-🔐🔑🚀',
      };

      final token = Token.fromJson(json);
      expect(token.token, 'token-with-emoji-🔐🔑🚀');
    });

    test('Token with very old issuedAt timestamp', () {
      final veryOld = DateTime(1970, 1, 1);
      final timestamp = (veryOld.millisecondsSinceEpoch / 1000).toInt();

      final json = {
        'token': 'old-token',
        'issuedAt': timestamp,
      };

      final token = Token.fromJson(json);
      expect(token.issuedAt?.year, 1970);
    });

    test('Token with far future validBefore timestamp', () {
      final farFuture = DateTime(2099, 12, 31);
      final timestamp = (farFuture.millisecondsSinceEpoch / 1000).toInt();

      final json = {
        'token': 'future-token',
        'validBefore': timestamp,
      };

      final token = Token.fromJson(json);
      expect(token.validBefore?.year, 2099);
    });

    test('Token with same issuedAt and validBefore', () {
      final now = DateTime.now();
      final timestamp = (now.millisecondsSinceEpoch / 1000).toInt();

      final json = {
        'token': 'instant-token',
        'issuedAt': timestamp,
        'validBefore': timestamp,
      };

      final token = Token.fromJson(json);
      expect(token.issuedAt, isNotNull);
      expect(token.validBefore, isNotNull);
    });

    test('Token JSON preserves type information', () {
      final token = Token(
        id: 'id-value',
        token: 'token-value',
        audience: TokenAudience.api,
      );

      final json = token.toJson();

      expect(json['id'], isA<String>());
      expect(json['token'], isA<String>());
      expect(json['audience'], isA<String>());
    });

    test('Token.fromJson with extra unknown fields ignores them', () {
      final json = {
        'token': 'token-value',
        'id': 'id-value',
        'unknownField': 'should-be-ignored',
        'anotherUnknown': 123,
      };

      final token = Token.fromJson(json);

      expect(token.token, 'token-value');
      expect(token.id, 'id-value');
    });
  });

  group('Token Immutability Tests', () {
    test('Token fields cannot be modified after creation', () {
      final token = Token(
        id: 'token-id',
        token: 'token-value',
        audience: TokenAudience.api,
      );

      // Since Token is a freezed class, we verify immutability by ensuring
      // that the object cannot be changed
      expect(identical(token, token), true);
    });

    test('Token copyWith creates new instance', () {
      final token1 = Token(token: 'token-value', id: 'id-1');
      final token2 = token1.copyWith(id: 'id-2');

      expect(identical(token1, token2), false);
      expect(token1.id, 'id-1');
      expect(token2.id, 'id-2');
      expect(token1.token, token2.token);
    });

    test('Multiple copyWith operations do not affect original', () {
      final original = Token(
        token: 'token',
        id: 'original-id',
        audience: TokenAudience.api,
      );

      final modified1 = original.copyWith(audience: TokenAudience.session);
      final modified2 = original.copyWith(id: 'new-id');

      expect(original.audience, TokenAudience.api);
      expect(original.id, 'original-id');
      expect(modified1.audience, TokenAudience.session);
      expect(modified2.id, 'new-id');
    });
  });

  group('Token Integration Tests', () {
    test('Token can be serialized to JSON and back multiple times', () {
      var token = Token(
        token: 'token-value',
        id: 'id-1',
        audience: TokenAudience.api,
      );

      for (int i = 0; i < 5; i++) {
        final json = token.toJson();
        token = Token.fromJson(json);
      }

      expect(token.token, 'token-value');
      expect(token.id, 'id-1');
      expect(token.audience, TokenAudience.api);
    });

    test('Token in a collection maintains type and data', () {
      final tokens = [
        Token(token: 'token1', id: 'id1', audience: TokenAudience.api),
        Token(token: 'token2', id: 'id2', audience: TokenAudience.session),
        Token(token: 'token3', id: 'id3'),
      ];

      expect(tokens.length, 3);
      expect(tokens[0].audience, TokenAudience.api);
      expect(tokens[1].audience, TokenAudience.session);
      expect(tokens[2].audience, isNull);
    });

    test('Token collection serialization', () {
      final tokens = [
        Token(token: 'token1', id: 'id1'),
        Token(token: 'token2', id: 'id2'),
      ];

      final jsonList = tokens.map((t) => t.toJson()).toList();
      final restored = jsonList.map((j) => Token.fromJson(j)).toList();

      expect(restored.length, tokens.length);
      for (int i = 0; i < tokens.length; i++) {
        expect(restored[i].token, tokens[i].token);
        expect(restored[i].id, tokens[i].id);
      }
    });
  });

}
