part of '../exchange.dart';

/// Immutable definition of a configured data-exchange integration.
@freezed
abstract class ExchangeService with _$ExchangeService {
  /// Constructs an immutable [ExchangeService].
  const factory ExchangeService({
    /// Is the ID of the entity. This ID is unique.
    required String id,

    /// Is the assigned service name, cannot be translated for other languages.
    required String name,

    /// Is the credentials object; check the documentation for more information.
    Map<String, dynamic>? credentials,

    /// Is the protocol entity.
    ExchangeProtocol? protocol,

    /// Is the protocol ID.
    String? protocolId,

    /// Is the current transmission status.
    bool? isEnabled,

    /// Is the asset IDs linked to the service.
    List<String>? assetsIds,

    /// Is the assets linked to the service.
    List<Asset>? assets,

    /// Is the groups (tags) IDs linked to the service.
    List<String>? tagsIds,

    /// Is the groups (tags) linked to the service.
    List<Tag>? tags,

    /// Is the list of custom access permissions.
    List<Access>? access,

    /// Is the list of geofence IDs linked to the service.
    List<String>? geofencesIds,

    /// Is the list of geofences linked to the service.
    List<Geofence>? geofences,

    /// Is the list of tag IDs, as geofence groups, linked to the service.
    List<String>? geofencesGroupsIds,

    /// Is the list of tags, as geofence groups, linked to the service.
    List<Tag>? geofencesGroups,
  }) = _ExchangeService;

  /// Deserializes an [ExchangeService] from a JSON map.
  factory ExchangeService.fromJson(Map<String, dynamic> json) => _$ExchangeServiceFromJson(json);
}
