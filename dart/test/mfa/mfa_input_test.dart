import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MfaInput Tests', () {
    test('MfaInput.fromJson() with all fields populated', () {
      final json = <String, dynamic>{
        'method': 'TOTP',
        'token': '123456',
        'isRequesting': true,
      };

      final input = MfaInput.fromJson(json);

      expect(input, isA<MfaInput>());
      expect(input.method, MfaMethod.totp);
      expect(input.token, '123456');
      expect(input.isRequesting, true);
    });

    test('MfaInput.fromJson() with only method', () {
      final json = <String, dynamic>{
        'method': 'PASSKEY',
      };

      final input = MfaInput.fromJson(json);

      expect(input.method, MfaMethod.passkey);
      expect(input.token, isNull);
      expect(input.isRequesting, false);
    });

    test('MfaInput.fromJson() with only token', () {
      final json = <String, dynamic>{
        'token': '654321',
      };

      final input = MfaInput.fromJson(json);

      expect(input.method, isNull);
      expect(input.token, '654321');
      expect(input.isRequesting, false);
    });

    test('MfaInput.fromJson() with only isRequesting true', () {
      final json = <String, dynamic>{
        'isRequesting': true,
      };

      final input = MfaInput.fromJson(json);

      expect(input.method, isNull);
      expect(input.token, isNull);
      expect(input.isRequesting, true);
    });

    test('MfaInput.fromJson() with empty JSON defaults correctly', () {
      final json = <String, dynamic>{};

      final input = MfaInput.fromJson(json);

      expect(input.method, isNull);
      expect(input.token, isNull);
      expect(input.isRequesting, false);
    });

    test('MfaInput() constructor defaults correctly', () {
      final input = MfaInput();

      expect(input.method, isNull);
      expect(input.token, isNull);
      expect(input.isRequesting, false);
    });

    test('MfaInput() constructor with all fields', () {
      final input = MfaInput(
        method: MfaMethod.hotp,
        token: 'backup-code-123',
        isRequesting: true,
      );

      expect(input.method, MfaMethod.hotp);
      expect(input.token, 'backup-code-123');
      expect(input.isRequesting, true);
    });

    test('MfaInput.toJson() roundtrip with all fields', () {
      final original = MfaInput(
        method: MfaMethod.backupCode,
        token: 'ABC-DEF-GHI',
        isRequesting: false,
      );

      final json = original.toJson();
      final restored = MfaInput.fromJson(json);

      expect(restored.method, original.method);
      expect(restored.token, original.token);
      expect(restored.isRequesting, original.isRequesting);
    });

    test('MfaInput.toJson() with null method and token', () {
      final input = MfaInput(
        method: null,
        token: null,
        isRequesting: true,
      );

      final json = input.toJson();

      expect(json.containsKey('method'), true);
      expect(json['method'], isNull);
      expect(json.containsKey('token'), true);
      expect(json['token'], isNull);
      expect(json['isRequesting'], true);
    });

    test('MfaInput.toJson() with all fields populated', () {
      final input = MfaInput(
        method: MfaMethod.passkey,
        token: 'webauthn-token',
        isRequesting: true,
      );

      final json = input.toJson();

      expect(json['method'], 'PASSKEY');
      expect(json['token'], 'webauthn-token');
      expect(json['isRequesting'], true);
    });

    test('MfaInput copyWith() updates method', () {
      final original = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: false,
      );

      final updated = original.copyWith(method: MfaMethod.hotp);

      expect(updated.method, MfaMethod.hotp);
      expect(updated.token, original.token);
      expect(updated.isRequesting, original.isRequesting);
    });

    test('MfaInput copyWith() updates token', () {
      final original = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: false,
      );

      final updated = original.copyWith(token: '654321');

      expect(updated.method, original.method);
      expect(updated.token, '654321');
      expect(updated.isRequesting, original.isRequesting);
    });

    test('MfaInput copyWith() updates isRequesting', () {
      final original = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: false,
      );

      final updated = original.copyWith(isRequesting: true);

      expect(updated.method, original.method);
      expect(updated.token, original.token);
      expect(updated.isRequesting, true);
    });

    test('MfaInput copyWith() updates multiple fields', () {
      final original = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: false,
      );

      final updated = original.copyWith(
        method: MfaMethod.passkey,
        token: 'new-token',
        isRequesting: true,
      );

      expect(updated.method, MfaMethod.passkey);
      expect(updated.token, 'new-token');
      expect(updated.isRequesting, true);
    });

    test('MfaInput copyWith() clears fields by setting to null', () {
      final original = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: true,
      );

      final updated = original.copyWith(method: null, token: null);

      expect(updated.method, isNull);
      expect(updated.token, isNull);
      expect(updated.isRequesting, true);
    });

    test('MfaInput from all MfaMethod values', () {
      final methods = [
        MfaMethod.totp,
        MfaMethod.hotp,
        MfaMethod.passkey,
        MfaMethod.backupCode,
      ];

      for (final method in methods) {
        final input = MfaInput(method: method, token: 'test-token');
        final json = input.toJson();
        final restored = MfaInput.fromJson(json);

        expect(restored.method, method);
        expect(restored.token, 'test-token');
      }
    });

    test('MfaInput isRequesting has correct default value', () {
      final input1 = MfaInput();
      expect(input1.isRequesting, false);

      final input2 = MfaInput(method: MfaMethod.totp);
      expect(input2.isRequesting, false);

      final input3 = MfaInput(token: '123456');
      expect(input3.isRequesting, false);
    });

    test('MfaInput allows mutable access to fields', () {
      final input = MfaInput(
        method: MfaMethod.totp,
        token: '123456',
        isRequesting: false,
      );

      // Modify the instance
      input.method = MfaMethod.hotp;
      input.token = 'new-token';
      input.isRequesting = true;

      expect(input.method, MfaMethod.hotp);
      expect(input.token, 'new-token');
      expect(input.isRequesting, true);
    });

    test('MfaInput multiple instances are not identical', () {
      final input1 = MfaInput(method: MfaMethod.totp);
      final input2 = MfaInput(method: MfaMethod.totp);

      expect(identical(input1, input2), false);
    });

    test('MfaInput with various token values', () {
      const testTokens = [
        '123456',
        'BACKUP-CODE-ABC-123',
        'very-long-token-string-with-many-characters',
        '0',
        'a',
      ];

      for (final token in testTokens) {
        final input = MfaInput(token: token);
        final json = input.toJson();
        final restored = MfaInput.fromJson(json);

        expect(restored.token, token);
      }
    });
  });
}
