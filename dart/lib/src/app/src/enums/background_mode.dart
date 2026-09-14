part of '../../app.dart';

/// The background rendering mode of an app's login screen.
///
/// [BackgroundMode] indicates whether [AppLoginDesign.backgroundColor] (a
/// [solid] color) or [AppLoginDesign.backgroundImage] (a [wallpaper] image)
/// should be used to render the login background. Each value is serialized
/// to JSON as an uppercase string (e.g., `SOLID`, `WALLPAPER`).
///
/// If deserialization encounters an unknown mode value, it defaults to
/// [solid].
@JsonEnum(alwaysCreate: true)
enum BackgroundMode {
  /// [solid] - Render the login background as a solid color. This is the
  /// fallback value used when an unknown mode is received.
  @JsonValue('SOLID')
  solid,

  /// [wallpaper] - Render the login background as an image.
  @JsonValue('WALLPAPER')
  wallpaper;

  /// Returns the JSON representation of this mode value (e.g., `SOLID`,
  /// `WALLPAPER`).
  @override
  String toString() => toJson();

  /// Converts this [BackgroundMode] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'SOLID'`.
  String toJson() => _$BackgroundModeEnumMap[this] ?? 'SOLID';

  /// Converts a JSON string to a [BackgroundMode].
  ///
  /// Accepts the uppercase JSON values (e.g., `'SOLID'`, `'WALLPAPER'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [solid] as the fallback default.
  static BackgroundMode fromJson(String json) {
    final found = _$BackgroundModeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? BackgroundMode.solid;
  }
}
