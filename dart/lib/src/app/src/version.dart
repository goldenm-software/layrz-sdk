part of '../app.dart';

/// Immutable published build of an app.
@freezed
abstract class AppVersion with _$AppVersion {
  /// Constructs an immutable [AppVersion].
  const factory AppVersion({
    /// [id] is the unique identifier of the version.
    required String id,

    /// [app] is the internal identifier of the app this version belongs to.
    @JsonKey(unknownEnumValue: AppInternalIdentifier.unknown)
    AppInternalIdentifier? app,

    /// [platform] is the platform this version was built for.
    @JsonKey(unknownEnumValue: AppPlatform.web) AppPlatform? platform,

    /// [fileUri] is the URI where the version's build artifact is stored.
    String? fileUri,

    /// [buildNumber] is the numeric build identifier of this version.
    required int buildNumber,

    /// [buildName] is the human-readable build name (semantic version) of this version.
    required String buildName,

    /// [releasedAt] is the timestamp when this version was released.
    @TimestampConverter() required DateTime releasedAt,
  }) = _AppVersion;

  /// Deserializes an [AppVersion] from a JSON map.
  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);
}
