part of '../../app.dart';

/// The footer format of a Layrz application.
///
/// [FooterFormat] indicates whether an app's footer shows a [custom] text,
/// a [simple] format, or the default "made with Layrz" ([madeWith]) format.
/// Each value is serialized to JSON as an uppercase string (e.g., `CUSTOM`,
/// `MADEWITH`).
///
/// If deserialization encounters an unknown format value, it defaults to
/// [madeWith].
@JsonEnum(alwaysCreate: true)
enum FooterFormat {
  /// [custom] - Render a custom footer text.
  @JsonValue('CUSTOM')
  custom,

  /// [simple] - Render a simple footer.
  @JsonValue('SIMPLE')
  simple,

  /// [madeWith] - Render the default "made with Layrz" footer. This is the
  /// fallback value used when an unknown format is received.
  @JsonValue('MADEWITH')
  madeWith;

  /// Returns the JSON representation of this format value (e.g., `CUSTOM`,
  /// `MADEWITH`).
  @override
  String toString() => toJson();

  /// Converts this [FooterFormat] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'MADEWITH'`.
  String toJson() => _$FooterFormatEnumMap[this] ?? 'MADEWITH';

  /// Converts a JSON string to a [FooterFormat].
  ///
  /// Accepts the uppercase JSON values (e.g., `'CUSTOM'`, `'MADEWITH'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [madeWith] as the fallback default.
  static FooterFormat fromJson(String json) {
    final found = _$FooterFormatEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? FooterFormat.madeWith;
  }
}
