part of '../../app.dart';

/// The layout position of the login form within an app's login screen.
///
/// [LayoutDesign] indicates where the login form is placed relative to the
/// background/logo area of [AppLoginDesign]. Each value is serialized to
/// JSON as an uppercase string (e.g., `RIGHT`, `LEFT`).
///
/// If deserialization encounters an unknown design value, it defaults to
/// [right].
@JsonEnum(alwaysCreate: true)
enum LayoutDesign {
  /// [right] - The login form is placed on the right. This value is used as
  /// default and is the fallback value used when an unknown design is
  /// received.
  @JsonValue('RIGHT')
  right,

  /// [left] - The login form is placed on the left.
  @JsonValue('LEFT')
  left,

  /// [top] - The login form is placed on the top.
  @JsonValue('TOP')
  top,

  /// [bottom] - The login form is placed on the bottom.
  @JsonValue('BOTTOM')
  bottom,

  /// [center] - The login form is centered.
  @JsonValue('CENTER')
  center,
  ;

  /// Returns the JSON representation of this design value (e.g., `RIGHT`,
  /// `LEFT`).
  @override
  String toString() => toJson();

  /// Converts this [LayoutDesign] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'RIGHT'`.
  String toJson() => _$LayoutDesignEnumMap[this] ?? 'RIGHT';

  /// Converts a JSON string to a [LayoutDesign].
  ///
  /// Accepts the uppercase JSON values (e.g., `'RIGHT'`, `'LEFT'`) from the
  /// server wire format. If the input does not match any known value,
  /// returns [right] as the fallback default.
  static LayoutDesign fromJson(String json) {
    final found = _$LayoutDesignEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? LayoutDesign.right;
  }
}
