part of '../app.dart';

/// A deployed instance of an [InternalRegisteredApp], as returned by the
/// goldenm/admin `internalAvailableApps` query.
///
/// [InternalAppInstance] mirrors the subset of [AppInstance] fields exposed
/// through the internal (goldenm) implementations listing.
@freezed
abstract class InternalAppInstance with _$InternalAppInstance {
  /// Constructs an immutable [InternalAppInstance].
  const factory InternalAppInstance({
    /// The unique identifier of the instance.
    required String id,

    /// The unique identifier of the app this instance belongs to.
    required String appId,

    /// The host of the instance. Only used when [platform] is
    /// [AppPlatform.web].
    String? host,

    /// The identifier of the app in the store. Only used when [platform]
    /// is not [AppPlatform.web].
    String? appIdentifier,

    /// The platform of the instance.
    @JsonKey(unknownEnumValue: AppPlatform.web) AppPlatform? platform,
  }) = _InternalAppInstance;

  /// Deserializes an [InternalAppInstance] from a JSON map.
  factory InternalAppInstance.fromJson(Map<String, dynamic> json) => _$InternalAppInstanceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying internal app instance fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'internalAppInstanceFragment', onType: 'InternalAppInstance')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'appId'))
        ..add(GqlField(name: 'host'))
        ..add(GqlField(name: 'appIdentifier'))
        ..add(GqlField(name: 'platform'));
  // coverage:ignore-end
}
