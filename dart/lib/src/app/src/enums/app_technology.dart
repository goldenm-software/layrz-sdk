part of '../../app.dart';

/// The technology used to build a Layrz application.
///
/// [AppTechnology] identifies which frontend technology stack a
/// [RegisteredApp] was built with. Each value is serialized to JSON as an
/// uppercase string (e.g., `VUEJS`, `FLUTTER`).
///
/// If deserialization encounters an unknown technology value, it defaults to
/// [flutter].
@JsonEnum(alwaysCreate: true)
enum AppTechnology {
  /// [vuejs] - The app is built with Vue.js.
  @JsonValue('VUEJS')
  vuejs,

  /// [flutter] - The app is built with Flutter. This is the fallback value
  /// used when an unknown technology value is received.
  @JsonValue('FLUTTER')
  flutter,
  ;

  /// Returns the JSON representation of this technology value (e.g.,
  /// `VUEJS`, `FLUTTER`).
  @override
  String toString() => toJson();

  /// Converts this [AppTechnology] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'FLUTTER'`.
  String toJson() => _$AppTechnologyEnumMap[this] ?? 'FLUTTER';

  /// Converts a JSON string to an [AppTechnology].
  ///
  /// Accepts the uppercase JSON values (e.g., `'VUEJS'`, `'FLUTTER'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [flutter] as the fallback default.
  static AppTechnology fromJson(String json) {
    final found = _$AppTechnologyEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? AppTechnology.flutter;
  }
}
