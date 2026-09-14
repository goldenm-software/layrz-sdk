part of '../../app.dart';

/// Where a Layrz application's font is stored.
///
/// [FontSource] indicates the origin of an [AppFont], distinguishing between
/// a font hosted on Google Fonts, bundled as a local asset, or fetched from
/// a remote URI. Each value is serialized to JSON as an uppercase string
/// (e.g., `GOOGLE`, `LOCAL`, `URI`).
///
/// If deserialization encounters an unknown source value, it defaults to
/// [google].
@JsonEnum(alwaysCreate: true)
enum FontSource {
  /// [google] - The font is hosted on Google Fonts. Check out the
  /// [`google_fonts` package](https://pub.dev/packages/google_fonts). This is
  /// the fallback value used when an unknown source is received.
  @JsonValue('GOOGLE')
  google,

  /// [local] - The font is bundled as a local asset.
  @JsonValue('LOCAL')
  local,

  /// [uri] - The font is fetched from a remote server.
  @JsonValue('URI')
  uri;

  /// Returns the JSON representation of this source value (e.g., `GOOGLE`,
  /// `LOCAL`, `URI`).
  @override
  String toString() => toJson();

  /// Converts this [FontSource] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'GOOGLE'`.
  String toJson() => _$FontSourceEnumMap[this] ?? 'GOOGLE';

  /// Converts a JSON string to a [FontSource].
  ///
  /// Accepts the uppercase JSON values (e.g., `'GOOGLE'`, `'LOCAL'`,
  /// `'URI'`) from the server wire format. If the input does not match any
  /// known value, returns [google] as the fallback default.
  static FontSource fromJson(String json) {
    final found = _$FontSourceEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? FontSource.google;
  }
}
