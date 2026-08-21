import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('iconMapping is non-empty', () {
    expect(iconMapping, isNotEmpty);
  });

  test('iconMapping has approximately 7447 entries', () {
    // Allow a small tolerance in case of future MDI updates
    expect(iconMapping.length, greaterThan(7400));
  });

  test('every map key equals its value name', () {
    for (final entry in iconMapping.entries) {
      expect(entry.key, equals(entry.value.name));
    }
  });

  test('every icon name starts with mdi-', () {
    for (final icon in iconMapping.values) {
      expect(icon.name, startsWith('mdi-'));
    }
  });

  test('every icon has correct font package and family', () {
    for (final icon in iconMapping.values) {
      expect(icon.data.fontPackage, equals('flutter_material_design_icons'));
      expect(icon.data.fontFamily, equals('Material Design Icons'));
    }
  });

  test('mdi-account has correct codepoint and tags', () {
    final account = iconMapping['mdi-account'];
    expect(account, isNotNull);
    expect(account!.data.codePoint, equals(983044));
    expect(account.tags, contains('Account / User'));
  });

  test('at least one icon has multiple tags', () {
    final hasMultipleTags = iconMapping.values.any(
      (icon) => icon.tags.length > 1,
    );
    expect(hasMultipleTags, isTrue);
  });

  test('MdiRemapIconsClasses has mdiHelpCircleOutline', () {
    expect(MdiRemapIconsClasses.helpCircleOutline, isNotNull);
    expect(MdiRemapIconsClasses.helpCircleOutline.name, startsWith('mdi-'));
  });

  test('reserved word identifiers resolve correctly', () {
    // Test that icons with reserved Dart words (using $ suffix) resolve
    final nullIcon = MdiRemapIconsClasses.null$;
    final switchIcon = MdiRemapIconsClasses.switch$;

    expect(nullIcon.name, startsWith('mdi-'));
    expect(switchIcon.name, startsWith('mdi-'));
  });

  test('MdiRemapIcon equality is based on name only', () {
    final icon1 = MdiRemapIconsClasses.account;
    final icon2 = MdiRemapIconsClasses.account;

    // Same name should be equal even if retrieved separately
    expect(icon1, equals(icon2));
  });

  test('MdiRemapIcon hashCode is consistent', () {
    final icon1 = MdiRemapIconsClasses.account;
    final icon2 = MdiRemapIconsClasses.account;

    // Equal objects must have equal hash codes
    expect(icon1.hashCode, equals(icon2.hashCode));
  });

  test('MdiRemapIcon toString is readable', () {
    final icon = MdiRemapIconsClasses.account;
    expect(icon.toString(), contains('MdiRemapIcon'));
    expect(icon.toString(), contains('mdi-account'));
  });
}
