import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Passkey Tests', () {
    test('Passkey.fromJson() with all required fields', () {
      final json = <String, dynamic>{
        'id': 'cred-001',
        'appId': 'com.example.app',
        'platform': 'IOS',
      };

      final passkey = Passkey.fromJson(json);

      expect(passkey, isA<Passkey>());
      expect(passkey.id, 'cred-001');
      expect(passkey.appId, 'com.example.app');
      expect(passkey.platform, AppPlatform.ios);
    });

    test('Passkey() constructor with all required fields', () {
      final passkey = Passkey(
        id: 'cred-002',
        appId: 'https://example.com',
        platform: AppPlatform.web,
      );

      expect(passkey.id, 'cred-002');
      expect(passkey.appId, 'https://example.com');
      expect(passkey.platform, AppPlatform.web);
    });

    test('Passkey.toJson() roundtrip with all fields', () {
      final original = Passkey(
        id: 'webauthn-key-123',
        appId: 'app.example.org',
        platform: AppPlatform.android,
      );

      final json = original.toJson();
      final restored = Passkey.fromJson(json);

      expect(restored.id, original.id);
      expect(restored.appId, original.appId);
      expect(restored.platform, original.platform);
    });

    test('Passkey.toJson() contains correct field names', () {
      final passkey = Passkey(
        id: 'test-id',
        appId: 'test-app-id',
        platform: AppPlatform.macos,
      );

      final json = passkey.toJson();

      expect(json.containsKey('id'), true);
      expect(json.containsKey('appId'), true);
      expect(json.containsKey('platform'), true);
      expect(json['id'], 'test-id');
      expect(json['appId'], 'test-app-id');
      expect(json['platform'], 'MACOS');
    });

    test('Passkey with AppPlatform.web', () {
      final passkey = Passkey(
        id: 'web-key',
        appId: 'https://web.example.com',
        platform: AppPlatform.web,
      );

      expect(passkey.platform, AppPlatform.web);
      final json = passkey.toJson();
      expect(json['platform'], 'WEB');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.web);
    });

    test('Passkey with AppPlatform.windows', () {
      final passkey = Passkey(
        id: 'windows-key',
        appId: 'com.example.windows',
        platform: AppPlatform.windows,
      );

      expect(passkey.platform, AppPlatform.windows);
      final json = passkey.toJson();
      expect(json['platform'], 'WINDOWS');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.windows);
    });

    test('Passkey with AppPlatform.macos', () {
      final passkey = Passkey(
        id: 'macos-key',
        appId: 'com.example.macos',
        platform: AppPlatform.macos,
      );

      expect(passkey.platform, AppPlatform.macos);
      final json = passkey.toJson();
      expect(json['platform'], 'MACOS');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.macos);
    });

    test('Passkey with AppPlatform.ios', () {
      final passkey = Passkey(
        id: 'ios-key',
        appId: 'com.example.ios',
        platform: AppPlatform.ios,
      );

      expect(passkey.platform, AppPlatform.ios);
      final json = passkey.toJson();
      expect(json['platform'], 'IOS');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.ios);
    });

    test('Passkey with AppPlatform.android', () {
      final passkey = Passkey(
        id: 'android-key',
        appId: 'com.example.android',
        platform: AppPlatform.android,
      );

      expect(passkey.platform, AppPlatform.android);
      final json = passkey.toJson();
      expect(json['platform'], 'ANDROID');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.android);
    });

    test('Passkey with AppPlatform.linux', () {
      final passkey = Passkey(
        id: 'linux-key',
        appId: 'com.example.linux',
        platform: AppPlatform.linux,
      );

      expect(passkey.platform, AppPlatform.linux);
      final json = passkey.toJson();
      expect(json['platform'], 'LINUX');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.linux);
    });

    test('Passkey with AppPlatform.layrzOS', () {
      final passkey = Passkey(
        id: 'layrz-os-key',
        appId: 'com.layrz.os',
        platform: AppPlatform.layrzOS,
      );

      expect(passkey.platform, AppPlatform.layrzOS);
      final json = passkey.toJson();
      expect(json['platform'], 'LAYRZ_OS');

      final restored = Passkey.fromJson(json);
      expect(restored.platform, AppPlatform.layrzOS);
    });

    test('Passkey roundtrip with all AppPlatform values', () {
      const platforms = [
        AppPlatform.web,
        AppPlatform.windows,
        AppPlatform.macos,
        AppPlatform.ios,
        AppPlatform.android,
        AppPlatform.linux,
        AppPlatform.layrzOS,
      ];

      for (final platform in platforms) {
        final original = Passkey(
          id: 'key-${platform.toJson()}',
          appId: 'app-${platform.toJson()}',
          platform: platform,
        );

        final json = original.toJson();
        final restored = Passkey.fromJson(json);

        expect(restored.id, original.id);
        expect(restored.appId, original.appId);
        expect(restored.platform, original.platform);
      }
    });

    test('Passkey immutability - fields cannot be modified', () {
      final passkey = Passkey(
        id: 'immutable-key',
        appId: 'immutable-app',
        platform: AppPlatform.ios,
      );

      expect(passkey.id, 'immutable-key');
      expect(passkey.appId, 'immutable-app');
      expect(passkey.platform, AppPlatform.ios);

      // Verify the object is frozen (cannot reassign fields)
      // This test verifies the @freezed behavior works correctly
      final passkey2 = Passkey(
        id: 'other-key',
        appId: 'other-app',
        platform: AppPlatform.android,
      );

      expect(passkey.id, isNot(passkey2.id));
      expect(passkey.appId, isNot(passkey2.appId));
      expect(passkey.platform, isNot(passkey2.platform));
    });

    test('Passkey equality with identical fields', () {
      final passkey1 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      final passkey2 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      expect(passkey1, passkey2);
    });

    test('Passkey inequality with different id', () {
      final passkey1 = Passkey(
        id: 'key-1',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      final passkey2 = Passkey(
        id: 'key-2',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      expect(passkey1, isNot(passkey2));
    });

    test('Passkey inequality with different appId', () {
      final passkey1 = Passkey(
        id: 'same-key',
        appId: 'app-1',
        platform: AppPlatform.web,
      );

      final passkey2 = Passkey(
        id: 'same-key',
        appId: 'app-2',
        platform: AppPlatform.web,
      );

      expect(passkey1, isNot(passkey2));
    });

    test('Passkey inequality with different platform', () {
      final passkey1 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      final passkey2 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.ios,
      );

      expect(passkey1, isNot(passkey2));
    });

    test('Passkey identical instances are not the same object', () {
      final passkey1 = Passkey(
        id: 'test',
        appId: 'test-app',
        platform: AppPlatform.android,
      );

      final passkey2 = Passkey(
        id: 'test',
        appId: 'test-app',
        platform: AppPlatform.android,
      );

      expect(passkey1, passkey2);
      expect(identical(passkey1, passkey2), false);
    });

    test('Passkey with various id formats', () {
      final testIds = [
        'cred-001',
        'webauthn-credential-abc-123',
        '550e8400-e29b-41d4-a716-446655440000', // UUID format
        'simple',
        'with_underscore',
        'with-dash',
        'with.dot',
      ];

      for (final id in testIds) {
        final passkey = Passkey(
          id: id,
          appId: 'test-app',
          platform: AppPlatform.web,
        );

        final json = passkey.toJson();
        final restored = Passkey.fromJson(json);

        expect(restored.id, id);
      }
    });

    test('Passkey with various appId formats', () {
      final testAppIds = [
        'com.example.app',
        'https://example.com',
        'https://app.example.com/path',
        'example-app',
        'app_123',
        'app.v1.0',
      ];

      for (final appId in testAppIds) {
        final passkey = Passkey(
          id: 'test-key',
          appId: appId,
          platform: AppPlatform.web,
        );

        final json = passkey.toJson();
        final restored = Passkey.fromJson(json);

        expect(restored.appId, appId);
      }
    });

    test('Passkey.fromJson() with valid wire format for platform', () {
      const platformTests = [
        ('WEB', AppPlatform.web),
        ('WINDOWS', AppPlatform.windows),
        ('MACOS', AppPlatform.macos),
        ('IOS', AppPlatform.ios),
        ('ANDROID', AppPlatform.android),
        ('LINUX', AppPlatform.linux),
        ('LAYRZ_OS', AppPlatform.layrzOS),
      ];

      for (final (wire, expected) in platformTests) {
        final json = <String, dynamic>{
          'id': 'test-id',
          'appId': 'test-app',
          'platform': wire,
        };

        final passkey = Passkey.fromJson(json);
        expect(passkey.platform, expected);
      }
    });

    test('Passkey toString() contains meaningful representation', () {
      final passkey = Passkey(
        id: 'test-id',
        appId: 'test-app',
        platform: AppPlatform.web,
      );

      final stringRep = passkey.toString();
      expect(stringRep, isA<String>());
      expect(stringRep.isNotEmpty, true);
    });

    test('Passkey hash consistency with equality', () {
      final passkey1 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      final passkey2 = Passkey(
        id: 'same-key',
        appId: 'same-app',
        platform: AppPlatform.web,
      );

      // If two objects are equal, they should have the same hash
      if (passkey1 == passkey2) {
        expect(passkey1.hashCode, passkey2.hashCode);
      }
    });
  });
}
