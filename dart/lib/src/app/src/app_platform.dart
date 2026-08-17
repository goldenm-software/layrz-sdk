part of '../app.dart';

/// Application platform enumeration for Layrz.
///
/// [AppPlatform] represents the platform on which the Layrz application is
/// running. Each value corresponds to a specific operating system or
/// environment. Values are serialized to JSON as uppercase strings
/// (e.g., `WEB`, `WINDOWS`, `LAYRZ_OS`).
@JsonEnum(alwaysCreate: true)
enum AppPlatform {
  /// [web] - Web-based platform.
  @JsonValue('WEB')
  web,

  /// [windows] - Windows desktop platform.
  @JsonValue('WINDOWS')
  windows,

  /// [macos] - macOS desktop platform.
  @JsonValue('MACOS')
  macos,

  /// [ios] - iOS mobile platform.
  @JsonValue('IOS')
  ios,

  /// [android] - Android mobile platform.
  @JsonValue('ANDROID')
  android,

  /// [linux] - Linux desktop platform.
  @JsonValue('LINUX')
  linux,

  /// [layrzOS] - Proprietary Layrz OS platform.
  @JsonValue('LAYRZ_OS')
  layrzOS,
  ;

  /// Returns the JSON string representation of this [AppPlatform] value.
  @override
  String toString() => toJson();

  /// Converts this [AppPlatform] to its JSON string representation
  /// (e.g., `WEB`, `WINDOWS`, `LAYRZ_OS`). Defaults to `WEB` if the enum
  /// value is not found.
  String toJson() => _$AppPlatformEnumMap[this] ?? 'WEB';

  /// Converts a JSON string to an [AppPlatform] enum value. Searches for a
  /// matching enum value by comparing the input string against the @JsonValue
  /// annotations. Returns [AppPlatform.web] as the default fallback if no
  /// match is found.
  static AppPlatform fromJson(String json) {
    final found = _$AppPlatformEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? AppPlatform.web;
  }
}
