import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('IconConverter() round-trip with mdi-account', () {
    const icon = 'mdi-account';

    const converter = IconConverter();
    final iconConverted = converter.fromJson(icon);
    expect(iconConverted.name, 'mdi-account');
    expect(
      iconConverted.data.codePoint,
      MdiRemapIconsClasses.account.data.codePoint,
    );
    expect(iconConverted.data, MdiRemapIconsClasses.account.data);
    expect(converter.toJson(iconConverted), icon);
  });

  test('IconConverter() round-trip with mdi-wifi-strength-4', () {
    const icon = 'mdi-wifi-strength-4';

    const converter = IconConverter();
    final iconConverted = converter.fromJson(icon);
    expect(iconConverted.name, 'mdi-wifi-strength-4');
    expect(
      iconConverted.data.codePoint,
      MdiRemapIconsClasses.wifiStrength4.data.codePoint,
    );
    expect(iconConverted.data, MdiRemapIconsClasses.wifiStrength4.data);
    expect(converter.toJson(iconConverted), icon);
  });

  group('IconConverter edge cases', () {
    test(
      'fromJson with unknown icon name returns fallback help-circle-outline',
      () {
        const converter = IconConverter();
        final result = converter.fromJson('unknown-icon-name');
        expect(result.name, 'mdi-help-circle-outline');
        expect(
          result.data.codePoint,
          MdiRemapIconsClasses.helpCircleOutline.data.codePoint,
        );
      },
    );

    test('fromJson with empty string returns fallback', () {
      const converter = IconConverter();
      final result = converter.fromJson('');
      expect(result.name, 'mdi-help-circle-outline');
      expect(
        result.data.codePoint,
        MdiRemapIconsClasses.helpCircleOutline.data.codePoint,
      );
    });

    test('toJson with known icon returns icon name', () {
      const converter = IconConverter();
      final icon = converter.fromJson('mdi-account');
      final result = converter.toJson(icon);
      expect(result, 'mdi-account');
    });

    test('toJson with fallback icon returns its name', () {
      const converter = IconConverter();
      final result = converter.toJson(
        MdiRemapIconsClasses.helpCircleOutline,
      );
      expect(result, 'mdi-help-circle-outline');
    });

    test('round-trip with known icon', () {
      const converter = IconConverter();
      const json = 'mdi-account';
      final icon = converter.fromJson(json);
      final restored = converter.toJson(icon);
      expect(restored, json);
    });

    test('round-trip with unknown icon falls back to help-circle-outline', () {
      const converter = IconConverter();
      final json = converter.toJson(MdiRemapIconsClasses.helpCircleOutline);
      expect(json, 'mdi-help-circle-outline');
      final icon = converter.fromJson(json);
      expect(icon.name, 'mdi-help-circle-outline');
      expect(
        icon.data.codePoint,
        MdiRemapIconsClasses.helpCircleOutline.data.codePoint,
      );
    });
  });

  group('IconOrNullConverter', () {
    test('fromJson with known icon name returns MdiRemapIcon', () {
      const converter = IconOrNullConverter();
      final result = converter.fromJson('mdi-account');
      expect(result?.name, 'mdi-account');
      expect(
        result?.data.codePoint,
        MdiRemapIconsClasses.account.data.codePoint,
      );
    });

    test('fromJson with unknown icon name returns null', () {
      const converter = IconOrNullConverter();
      final result = converter.fromJson('unknown-icon-name');
      expect(result, isNull);
    });

    test('fromJson with null returns null', () {
      const converter = IconOrNullConverter();
      final result = converter.fromJson(null);
      expect(result, isNull);
    });

    test('fromJson with empty string returns null', () {
      const converter = IconOrNullConverter();
      final result = converter.fromJson('');
      expect(result, isNull);
    });

    test('toJson with MdiRemapIcon returns icon name', () {
      const converter = IconOrNullConverter();
      final icon = converter.fromJson('mdi-account');
      final result = converter.toJson(icon);
      expect(result, 'mdi-account');
    });

    test('toJson with null returns null', () {
      const converter = IconOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('round-trip with valid icon', () {
      const converter = IconOrNullConverter();
      const json = 'mdi-account';
      final icon = converter.fromJson(json);
      final restored = converter.toJson(icon);
      expect(restored, json);
    });

    test('round-trip with null', () {
      const converter = IconOrNullConverter();
      final json = converter.toJson(null);
      final restored = converter.fromJson(json);
      expect(restored, isNull);
    });

    test('fromJson with multiple valid icons', () {
      const converter = IconOrNullConverter();
      final icons = ['mdi-account', 'mdi-wifi-strength-4'];

      for (final iconName in icons) {
        final icon = converter.fromJson(iconName);
        expect(icon, isNotNull);
        expect(icon!.name, iconName);
      }
    });
  });
}
