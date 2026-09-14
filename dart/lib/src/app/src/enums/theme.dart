part of '../../app.dart';

/// The predefined color theme of a Layrz application.
///
/// [AppTheme] enumerates the palette presets available for an app's
/// [AppDesign], plus [custom] for a bespoke [AppDesign.mainColor]. Each value
/// is serialized to JSON as an uppercase string (e.g., `CUSTOM`, `BLUE`).
///
/// If deserialization encounters an unknown theme value, it defaults to
/// [blue].
@JsonEnum(alwaysCreate: true)
enum AppTheme {
  /// [custom] - A bespoke theme defined by [AppDesign.mainColor].
  @JsonValue('CUSTOM')
  custom,

  /// [pink] - The pink preset palette.
  @JsonValue('PINK')
  pink,

  /// [red] - The red preset palette.
  @JsonValue('RED')
  red,

  /// [deepOrange] - The deep orange preset palette.
  @JsonValue('DEEPORANGE')
  deepOrange,

  /// [orange] - The orange preset palette.
  @JsonValue('ORANGE')
  orange,

  /// [amber] - The amber preset palette.
  @JsonValue('AMBER')
  amber,

  /// [yellow] - The yellow preset palette.
  @JsonValue('YELLOW')
  yellow,

  /// [lime] - The lime preset palette.
  @JsonValue('LIME')
  lime,

  /// [lightGreen] - The light green preset palette.
  @JsonValue('LIGHTGREEN')
  lightGreen,

  /// [green] - The green preset palette.
  @JsonValue('GREEN')
  green,

  /// [teal] - The teal preset palette.
  @JsonValue('TEAL')
  teal,

  /// [cyan] - The cyan preset palette.
  @JsonValue('CYAN')
  cyan,

  /// [lightBlue] - The light blue preset palette.
  @JsonValue('LIGHTBLUE')
  lightBlue,

  /// [indigo] - The indigo preset palette.
  @JsonValue('INDIGO')
  indigo,

  /// [purple] - The purple preset palette.
  @JsonValue('PURPLE')
  purple,

  /// [blueGrey] - The blue grey preset palette.
  @JsonValue('BLUEGREY')
  blueGrey,

  /// [brown] - The brown preset palette.
  @JsonValue('BROWN')
  brown,

  /// [grey] - The grey preset palette.
  @JsonValue('GREY')
  grey,

  /// [blue] - The blue preset palette. This is the fallback value used when
  /// an unknown theme value is received.
  @JsonValue('BLUE')
  blue;

  /// Returns the JSON representation of this theme value (e.g., `CUSTOM`,
  /// `BLUE`).
  @override
  String toString() => toJson();

  /// Converts this [AppTheme] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'BLUE'`.
  String toJson() => _$AppThemeEnumMap[this] ?? 'BLUE';

  /// Converts a JSON string to an [AppTheme].
  ///
  /// Accepts the uppercase JSON values (e.g., `'CUSTOM'`, `'BLUE'`) from the
  /// server wire format. If the input does not match any known value,
  /// returns [blue] as the fallback default.
  static AppTheme fromJson(String json) {
    final found = _$AppThemeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? AppTheme.blue;
  }
}
