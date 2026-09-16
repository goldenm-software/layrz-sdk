part of '../app.dart';

/// An app implementation as returned by the goldenm/admin
/// `internalAvailableApps` query.
///
/// [InternalRegisteredApp] is the goldenm-context counterpart of
/// [RegisteredApp], used to populate [AvailableApp.implementations] when
/// fetched via [AvailableApp.fetchAll]/[AvailableApp.fetch] with
/// `isGoldenm: true`.
@freezed
abstract class InternalRegisteredApp with _$InternalRegisteredApp {
  /// Constructs an immutable [InternalRegisteredApp].
  const factory InternalRegisteredApp({
    /// The unique identifier of the app.
    required String id,

    /// The name of the app. It is a fixed name, not a translation key.
    required String name,

    /// The technology of the app.
    @JsonKey(unknownEnumValue: AppTechnology.flutter) @Default(AppTechnology.flutter) AppTechnology technology,

    /// The legal information of the app.
    AppLegal? legalInformation,

    /// The design information of the app.
    AppDesign? designInformation,

    /// The user-facing nickname of the app.
    String? nickname,

    /// The identifier of the source this app was created from.
    String? sourceId,

    /// Whether the app has been customized, or null when not applicable.
    bool? isCustomized,

    /// The owner of the app.
    User? owner,

    /// The list of deployed instances of the app, or null when not
    /// requested.
    List<InternalAppInstance>? instances,
  }) = _InternalRegisteredApp;

  /// Deserializes an [InternalRegisteredApp] from a JSON map.
  factory InternalRegisteredApp.fromJson(Map<String, dynamic> json) => _$InternalRegisteredAppFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying internal registered app
  /// fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'internalRegisteredAppFragment', onType: 'InternalRegisteredApp')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'technology'))
        ..add(GqlField(name: 'nickname'))
        ..add(GqlField(name: 'sourceId'))
        ..add(GqlField(name: 'isCustomized'))
        ..add(GqlField(name: 'legalInformation', fragment: AppLegal.fragment))
        ..add(GqlField(name: 'designInformation', fragment: AppDesign.fragment))
        ..add(GqlField(name: 'owner', fragment: User.fragment(variant: UserVariant.standard)))
        ..add(GqlField(name: 'instances', fragment: InternalAppInstance.fragment));
  // coverage:ignore-end
}
