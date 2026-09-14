part of '../app.dart';

/// A distributable build of a Layrz application instance.
///
/// [AppBuild] represents a single versioned build for an [AppInstance],
/// tracking its semantic name/number and, for non-web platforms, the URI of
/// the distributable file.
@freezed
abstract class AppBuild with _$AppBuild {
  /// Constructs an immutable [AppBuild].
  const factory AppBuild({
    /// The unique identifier of the build.
    required String id,

    /// The semantic name of the build.
    required String buildName,

    /// The semantic number of the build.
    required int buildNumber,

    /// The URI of the distributable file, only used when the platform is
    /// distinct to [AppPlatform.web].
    String? fileUri,

    /// Whether the build is deployed to the in-development environment.
    bool? isNext,
  }) = _AppBuild;

  /// Deserializes an [AppBuild] from a JSON map.
  factory AppBuild.fromJson(Map<String, dynamic> json) => _$AppBuildFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying app build fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'appBuildFragment', onType: 'AppBuild')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'buildName'))
        ..add(GqlField(name: 'buildNumber'))
        ..add(GqlField(name: 'fileUri'))
        ..add(GqlField(name: 'isNext'));
  // coverage:ignore-end
}
