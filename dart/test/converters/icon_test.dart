import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_icons/layrz_icons.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('IconConverter()', () {
    const icon = "mdi-help";

    const converter = IconConverter();
    final iconConverted = converter.fromJson(icon);
    expect(iconConverted.name, "mdi-help");
    expect(iconConverted.codePoint, LayrzIcons.mdiHelp.codePoint);
    expect(iconConverted.iconData, LayrzIcons.mdiHelp);
    expect(converter.toJson(iconConverted), icon);

    const icon2 = "mdi-wifi-strength4";
    final iconConverted2 = converter.fromJson(icon2);
    expect(iconConverted2.name, "mdi-wifi-strength4");
    expect(iconConverted2.codePoint, LayrzIcons.mdiWifiStrength4.codePoint);
    expect(iconConverted2.iconData, LayrzIcons.mdiWifiStrength4);
    expect(converter.toJson(iconConverted2), icon2);

    const icon3 = "fa-brands-amazon";
    final iconConverted3 = converter.fromJson(icon3);
    expect(iconConverted3.name, "fa-brands-amazon");
    expect(iconConverted3.codePoint, LayrzIcons.faBrandsAmazon.codePoint);
    expect(iconConverted3.iconData, LayrzIcons.faBrandsAmazon);
    expect(converter.toJson(iconConverted3), icon3);

    const icon4 = 'solar-bold-filters';
    final iconConverted4 = converter.fromJson(icon4);
    expect(iconConverted4.name, 'solar-bold-filters');
    expect(iconConverted4.codePoint, LayrzIcons.solarBoldFilters.codePoint);
    expect(iconConverted4.iconData, LayrzIcons.solarBoldFilters);
  });

  group('IconConverter edge cases', () {
    test('fromJson with unknown icon name returns fallback question square', () {
      const converter = IconConverter();
      final result = converter.fromJson('unknown-icon-name');
      expect(result.name, 'solar-outline-question-square');
      expect(result.codePoint, LayrzIconsClasses.solarOutlineQuestionSquare.codePoint);
    });

    test('fromJson with empty string returns fallback', () {
      const converter = IconConverter();
      final result = converter.fromJson('');
      expect(result.name, 'solar-outline-question-square');
      expect(result.codePoint, LayrzIconsClasses.solarOutlineQuestionSquare.codePoint);
    });

    test('toJson with known icon returns icon name', () {
      const converter = IconConverter();
      final icon = converter.fromJson('mdi-help');
      final result = converter.toJson(icon);
      expect(result, 'mdi-help');
    });

    test('toJson with fallback icon returns its name', () {
      const converter = IconConverter();
      final result = converter.toJson(LayrzIconsClasses.solarOutlineQuestionSquare);
      expect(result, 'solar-outline-question-square');
    });

    test('round-trip with known icon', () {
      const converter = IconConverter();
      const json = 'mdi-help';
      final icon = converter.fromJson(json);
      final restored = converter.toJson(icon);
      expect(restored, json);
    });

    test('round-trip with unknown icon falls back to question square', () {
      const converter = IconConverter();
      final json = converter.toJson(LayrzIconsClasses.solarOutlineQuestionSquare);
      expect(json, 'solar-outline-question-square');
      final icon = converter.fromJson(json);
      expect(icon.name, 'solar-outline-question-square');
      expect(icon.codePoint, LayrzIconsClasses.solarOutlineQuestionSquare.codePoint);
    });
  });

  group('IconOrNullConverter', () {
    test('fromJson with known icon name returns LayrzIcon', () {
      const converter = IconOrNullConverter();
      final result = converter.fromJson('mdi-help');
      expect(result?.name, 'mdi-help');
      expect(result?.codePoint, LayrzIcons.mdiHelp.codePoint);
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

    test('toJson with LayrzIcon returns icon name', () {
      const converter = IconOrNullConverter();
      final icon = converter.fromJson('mdi-help');
      final result = converter.toJson(icon);
      expect(result, 'mdi-help');
    });

    test('toJson with null returns null', () {
      const converter = IconOrNullConverter();
      final result = converter.toJson(null);
      expect(result, isNull);
    });

    test('round-trip with valid icon', () {
      const converter = IconOrNullConverter();
      const json = 'mdi-help';
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
      final icons = ['mdi-help', 'mdi-wifi-strength4', 'fa-brands-amazon'];

      for (final iconName in icons) {
        final icon = converter.fromJson(iconName);
        expect(icon, isNotNull);
        expect(icon!.name, iconName);
      }
    });
  });
}
