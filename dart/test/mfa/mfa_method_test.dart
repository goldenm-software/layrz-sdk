import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MfaMethod Tests', () {
    test('MfaMethod enum to wire format', () {
      expect(MfaMethod.totp.toJson(), 'TOTP');
      expect(MfaMethod.hotp.toJson(), 'HOTP');
      expect(MfaMethod.passkey.toJson(), 'PASSKEY');
      expect(MfaMethod.backupCode.toJson(), 'BACKUP_CODE');
    });

    test('MfaMethod wire format to enum', () {
      expect(MfaMethod.fromJson('TOTP'), MfaMethod.totp);
      expect(MfaMethod.fromJson('HOTP'), MfaMethod.hotp);
      expect(MfaMethod.fromJson('PASSKEY'), MfaMethod.passkey);
      expect(MfaMethod.fromJson('BACKUP_CODE'), MfaMethod.backupCode);
    });

    test('MfaMethod roundtrip serialization', () {
      const methods = [
        MfaMethod.totp,
        MfaMethod.hotp,
        MfaMethod.passkey,
        MfaMethod.backupCode,
      ];

      for (final method in methods) {
        final wire = method.toJson();
        final restored = MfaMethod.fromJson(wire);
        expect(restored, method);
      }
    });

    test('MfaMethod totp is fallback for invalid wire values', () {
      expect(MfaMethod.fromJson('INVALID_METHOD'), MfaMethod.totp);
      expect(MfaMethod.fromJson('NONEXISTENT'), MfaMethod.totp);
      expect(MfaMethod.fromJson(''), MfaMethod.totp);
      expect(MfaMethod.fromJson('webauthn'), MfaMethod.totp);
    });

    test('MfaMethod toString() matches wire format', () {
      expect(MfaMethod.totp.toString(), 'TOTP');
      expect(MfaMethod.hotp.toString(), 'HOTP');
      expect(MfaMethod.passkey.toString(), 'PASSKEY');
      expect(MfaMethod.backupCode.toString(), 'BACKUP_CODE');
    });

    test('MfaMethod case sensitivity', () {
      // Wire format should be case-sensitive, lowercase/mixed case should default to totp
      expect(MfaMethod.fromJson('totp'), MfaMethod.totp);
      expect(MfaMethod.fromJson('TOTP'), MfaMethod.totp);
      expect(MfaMethod.fromJson('Totp'), MfaMethod.totp);
      expect(MfaMethod.fromJson('hotp'), MfaMethod.totp);
      expect(MfaMethod.fromJson('HOTP'), MfaMethod.hotp);
      expect(MfaMethod.fromJson('passkey'), MfaMethod.totp);
      expect(MfaMethod.fromJson('PASSKEY'), MfaMethod.passkey);
    });

    test('MfaMethod all values have unique wire representations', () {
      final wireValues = [
        MfaMethod.totp.toJson(),
        MfaMethod.hotp.toJson(),
        MfaMethod.passkey.toJson(),
        MfaMethod.backupCode.toJson(),
      ];

      final uniqueWires = wireValues.toSet();
      expect(wireValues.length, uniqueWires.length);
    });

    test('MfaMethod.totp is default fallback', () {
      // When invalid value is passed, it defaults to totp
      expect(MfaMethod.fromJson('INVALID'), MfaMethod.totp);
      expect(MfaMethod.fromJson('unknown'), MfaMethod.totp);
    });

    test('MfaMethod fromJson handles various invalid inputs', () {
      expect(MfaMethod.fromJson(''), MfaMethod.totp);
      expect(MfaMethod.fromJson('hotp'), MfaMethod.totp); // lowercase
      expect(MfaMethod.fromJson('HOTP '), MfaMethod.totp); // with space
      expect(MfaMethod.fromJson(' HOTP'), MfaMethod.totp); // with leading space
      expect(MfaMethod.fromJson('BACKUP_CODE_V2'), MfaMethod.totp); // similar but different
    });

    test('MfaMethod consistency between toJson and toString', () {
      for (final method in [
        MfaMethod.totp,
        MfaMethod.hotp,
        MfaMethod.passkey,
        MfaMethod.backupCode,
      ]) {
        expect(method.toString(), method.toJson());
      }
    });

    test('MfaMethod specific values have correct JSON values', () {
      // Ensure no false positives in wire mapping
      expect(MfaMethod.totp.toJson(), 'TOTP');
      expect(MfaMethod.totp.toJson(), isNotEmpty);

      expect(MfaMethod.hotp.toJson(), 'HOTP');
      expect(MfaMethod.hotp.toJson(), isNotEmpty);

      expect(MfaMethod.passkey.toJson(), 'PASSKEY');
      expect(MfaMethod.passkey.toJson(), isNotEmpty);

      expect(MfaMethod.backupCode.toJson(), 'BACKUP_CODE');
      expect(MfaMethod.backupCode.toJson(), isNotEmpty);
    });
  });
}
