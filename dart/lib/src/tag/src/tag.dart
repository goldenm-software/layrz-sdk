part of '../tag.dart';

/// Immutable named, colored label for grouping and cross-referencing
/// entities across the Layrz platform.
///
/// A [Tag] can be simultaneously associated with many kinds of platform
/// entities (users, assets, devices, references, and so on); each
/// association is exposed both as a resolved list (e.g. [users]) and as a
/// list of bare IDs (e.g. [usersIds]).
@freezed
abstract class Tag with _$Tag {
  /// Constructs an immutable [Tag].
  const factory Tag({
    /// The ID of the tag.
    required String id,

    /// The name of the tag.
    required String name,

    /// The color of the tag.
    @ColorConverter() required Color color,

    /// The dynamic icon of the tag.
    Avatar? dynamicIcon,

    /// The list of associated users for this tag.
    List<User>? users,

    /// The list of IDs of associated users for this tag.
    List<String>? usersIds,

    /// The list of associated outbound services for this tag.
    List<OutboundService>? outboundServices,

    /// The list of IDs of associated outbound services for this tag.
    List<String>? outboundServicesIds,

    /// The list of associated triggers for this tag.
    List<Trigger>? triggers,

    /// The list of IDs of associated triggers for this tag.
    List<String>? triggersIds,

    /// The list of associated actions for this tag.
    List<Action>? actions,

    /// The list of IDs of associated actions for this tag.
    List<String>? actionsIds,

    /// The list of associated operations for this tag.
    List<Operation>? operations,

    /// The list of IDs of associated operations for this tag.
    List<String>? operationsIds,

    /// The list of associated assets for this tag.
    List<Asset>? assets,

    /// The list of IDs of associated assets for this tag.
    List<String>? assetsIds,

    /// The list of associated devices for this tag.
    List<Device>? devices,

    /// The list of IDs of associated devices for this tag.
    List<String>? devicesIds,

    /// The list of associated geofences for this tag.
    List<Geofence>? geofences,

    /// The list of IDs of associated geofences for this tag.
    List<String>? geofencesIds,

    /// The list of associated external accounts for this tag.
    List<ExternalAccount>? externalAccounts,

    /// The list of IDs of associated external accounts for this tag.
    List<String>? externalAccountsIds,

    /// The list of associated presets for this tag.
    List<Preset>? presets,

    /// The list of IDs of associated presets for this tag.
    List<String>? presetsIds,

    /// The list of associated references for this tag.
    List<Reference>? references,

    /// The list of IDs of associated references for this tag.
    List<String>? referencesIds,

    /// The list of associated checkpoints for this tag.
    List<Checkpoint>? checkpoints,

    /// The list of IDs of associated checkpoints for this tag.
    List<String>? checkpointsIds,

    /// The list of associated care protocols for this tag.
    List<CareProtocol>? careProtocols,

    /// The list of IDs of associated care protocols for this tag.
    List<String>? careProtocolsIds,

    /// The list of associated inbound services for this tag.
    List<InboundService>? inboundServices,

    /// The list of IDs of associated inbound services for this tag.
    List<String>? inboundServicesIds,

    /// The list of associated functions for this tag.
    List<LayrzFunction>? functions,

    /// The list of IDs of associated functions for this tag.
    List<String>? functionsIds,

    /// The list of associated concierge forms for this tag.
    List<ConciergeForm>? conciergeForms,

    /// The list of IDs of associated concierge forms for this tag.
    List<String>? conciergeFormsIds,

    /// The list of associated report templates for this tag.
    List<ReportTemplate>? reportTemplates,

    /// The list of IDs of associated report templates for this tag.
    List<String>? reportTemplatesIds,

    /// The list of associated charts for this tag.
    List<LayrzChart>? charts,

    /// The list of IDs of associated charts for this tag.
    List<String>? chartsIds,

    /// The list of associated workspaces for this tag.
    List<Workspace>? workspaces,

    /// The list of IDs of associated workspaces for this tag.
    List<String>? workspacesIds,

    /// The list of associated vision profiles for this tag.
    List<VisionProfile>? visionProfiles,

    /// The list of IDs of associated vision profiles for this tag.
    List<String>? visionProfilesIds,

    /// The list of associated Mappit routes for this tag.
    List<MappitRoute>? mappitRoutes,

    /// The list of IDs of associated Mappit routes for this tag.
    List<String>? mappitRoutesIds,

    /// The list of associated exchange services for this tag.
    List<ExchangeService>? exchangeServices,

    /// The list of IDs of associated exchange services for this tag.
    List<String>? exchangeServicesIds,

    /// The list of granted access entries for this tag.
    List<Access>? access,

    /// The owner of this tag.
    User? owner,

    /// The ID of the owner of this tag.
    String? ownerId,

    /// The list of IDs of associated sensors for this tag.
    List<String>? sensorsIds,

    /// The list of associated sensors for this tag.
    List<Sensor>? sensors,
  }) = _Tag;

  /// Deserializes a [Tag] from a JSON map.
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
