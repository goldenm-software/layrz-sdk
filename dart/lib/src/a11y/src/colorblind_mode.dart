part of '../a11y.dart';

/// Color vision deficiency (colorblindness) simulation modes for accessibility.
///
/// [ColorblindMode] enumerates types of color vision deficiency that can be
/// simulated in the UI to help users with color blindness. Each mode represents
/// a specific type of color vision deficiency. The modes are serialized to
/// JSON as uppercase strings (e.g., `PROTANOPIA`, `NORMAL`).
@JsonEnum(alwaysCreate: true)
enum ColorblindMode {
  /// [protanopia] is the red-blind colorblindness.
  @JsonValue('PROTANOPIA')
  protanopia,

  /// [protanomaly] is the red-weak colorblindness.
  @JsonValue('PROTANOMALY')
  protanomaly,

  /// [deuteranopia] is the green-blind colorblindness.
  @JsonValue('DEUTERANOPIA')
  deuteranopia,

  /// [deuteranomaly] is the green-weak colorblindness.
  @JsonValue('DEUTERANOMALY')
  deuteranomaly,

  /// [tritanopia] is the blue-blind colorblindness.
  @JsonValue('TRITANOPIA')
  tritanopia,

  /// [tritanomaly] is the blue-weak colorblindness.
  @JsonValue('TRITANOMALY')
  tritanomaly,

  /// [normal] is the normal vision. No colorblindness.
  @JsonValue('NORMAL')
  normal;

  /// Converts this [ColorblindMode] to its JSON string representation
  /// (e.g., `PROTANOPIA`, `DEUTERANOPIA`). Defaults to `NORMAL` if the enum
  /// value is not found.
  String toJson() => _$ColorblindModeEnumMap[this] ?? 'NORMAL';

  /// Converts a JSON string to a [ColorblindMode] enum value. Searches for a
  /// matching enum value by comparing the input string against the @JsonValue
  /// annotations. Returns [ColorblindMode.normal] if no match is found.
  static ColorblindMode fromJson(String json) {
    return _$ColorblindModeEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? ColorblindMode.normal;
  }
}
