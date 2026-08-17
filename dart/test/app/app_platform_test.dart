import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('AppPlatform Enum Tests', () {
    test('AppPlatform.web toJson', () {
      expect(AppPlatform.web.toJson(), equals('WEB'));
    });

    test('AppPlatform.ios toJson', () {
      expect(AppPlatform.ios.toJson(), equals('IOS'));
    });

    test('AppPlatform.android toJson', () {
      expect(AppPlatform.android.toJson(), equals('ANDROID'));
    });

    test('AppPlatform.windows toJson', () {
      expect(AppPlatform.windows.toJson(), equals('WINDOWS'));
    });

    test('AppPlatform.macos toJson', () {
      expect(AppPlatform.macos.toJson(), equals('MACOS'));
    });

    test('AppPlatform fromJson all platforms', () {
      const values = [
        ('WEB', AppPlatform.web),
        ('IOS', AppPlatform.ios),
        ('ANDROID', AppPlatform.android),
        ('WINDOWS', AppPlatform.windows),
        ('MACOS', AppPlatform.macos),
        ('LINUX', AppPlatform.linux),
        ('LAYRZ_OS', AppPlatform.layrzOS),
      ];

      for (final (json, expected) in values) {
        final restored = AppPlatform.fromJson(json);
        expect(restored, equals(expected));
      }
    });

    test('AppPlatform fromJson with unknown defaults to web', () {
      final restored = AppPlatform.fromJson('UNKNOWN_PLATFORM');
      expect(restored, equals(AppPlatform.web));
    });
  });
}
