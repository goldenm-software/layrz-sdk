part of '../outbound.dart';

/// [OutboundService] is an assigned outbound integration between an asset ecosystem and an
/// [OutboundProtocol], carrying its own credentials, structure and access rules.
@freezed
abstract class OutboundService with _$OutboundService {
  const factory OutboundService({
    /// [id] is the ID of the entity. This ID is unique.
    required String id,

    /// [name] is the assigned service name, cannot be translated for other languages.
    required String name,

    /// [credentials] is the credential object, check the documentation for more information.
    Map<String, dynamic>? credentials,

    /// [protocol] is the protocol entity.
    OutboundProtocol? protocol,

    /// [protocolId] is the protocol ID.
    String? protocolId,

    /// [isEnabled] is the current transmission status.
    bool? isEnabled,

    /// [structure] is the structure of the outbound protocol, only used for Omega REST outbound protocol.
    List<OutboundStructure>? structure,

    /// [token] is the token to authenticate the request, only used for Alpha REST inbound protocol.
    String? token,

    /// [assetsIds] is the assets IDs linked to the service.
    List<String>? assetsIds,

    /// [assets] is the assets linked to the service.
    List<Asset>? assets,

    /// [groupsIds] is the groups (tags) IDs linked to the service.
    List<String>? groupsIds,

    /// [groups] is the groups (tags) linked to the service.
    List<Tag>? groups,

    /// [access] is a list of custom access permissions.
    List<Access>? access,

    /// [metrics] is the metrics object.
    OutboundMetrics? metrics,

    /// [atsModel] is the ATS Stream Model, only used for ATS Stream Outbound protocol.
    @JsonKey(unknownEnumValue: AtsStreamModel.exit) AtsStreamModel? atsModel,
  }) = _OutboundService;

  /// [fromJson] builds an [OutboundService] from a decoded JSON [json] map.
  factory OutboundService.fromJson(Map<String, dynamic> json) => _$OutboundServiceFromJson(json);
}

/// [OutboundStructure] describes a single mapped field of an [OutboundService]'s outbound
/// payload, only used for Omega REST outbound protocol.
@freezed
abstract class OutboundStructure with _$OutboundStructure {
  const factory OutboundStructure({
    /// [field] is the name of the destination field.
    required String field,

    /// [type] is the [OutboundStructureType] of the field, as its wire string value.
    required String type,

    /// [value] is the value or source expression mapped to [field].
    required String value,

    /// [source] is the source collection to iterate, only used when [type] is `json.array`.
    /// ATAK protocol only.
    String? source,

    /// [nested] is the nested structure entries, only used when [type] is `json` or `json.array`.
    /// ATAK protocol only.
    @Default([]) List<OutboundStructure> nested,
  }) = _OutboundStructure;

  /// [fromJson] builds an [OutboundStructure] from a decoded JSON [json] map.
  factory OutboundStructure.fromJson(Map<String, dynamic> json) => _$OutboundStructureFromJson(json);
}

/// [OutboundStructureType] enumerates the outbound structure default types. If a field is not
/// found here, it is considered a custom field; use [OutboundStructureType.isCustom] to check.
@JsonEnum(alwaysCreate: true)
enum OutboundStructureType {
  /// Layrz API equivalence: `asset.name`. Means the Asset Name
  @JsonValue('asset.name')
  assetName,

  /// Layrz API equivalence: `receivedAt`. Means the reception date
  @JsonValue('receivedAt')
  receivedAt,

  /// Layrz API equivalence: `constant`. Means a constant value
  @JsonValue('constant')
  constant,

  /// Layrz API equivalence: `position.full`. Means the full position object
  @JsonValue('position.full')
  position,

  /// Layrz API equivalence: `position.latitude`. Means the latitude position
  @JsonValue('position.latitude')
  latitude,

  /// Layrz API equivalence: `position.longitude`. Means the longitude position
  @JsonValue('position.longitude')
  longitude,

  /// Layrz API equivalence: `position.altitude`. Means the altitude position
  @JsonValue('position.altitude')
  altitude,

  /// Layrz API equivalence: `position.speed`. Means the speed position
  @JsonValue('position.speed')
  speed,

  /// Layrz API equivalence: `position.direction`. Means the direction position
  @JsonValue('position.direction')
  direction,

  /// Layrz API equivalence: `position.satellites`. Means the satellites' quantity
  @JsonValue('position.satellites')
  satellites,

  /// Layrz API equivalence: `position.hdop`. Means the horizontal dilusion of precision (HDOP) position
  @JsonValue('position.hdop')
  hdop,

  /// Layrz API equivalence: `payload.full`. Means the full payload object
  @JsonValue('payload.full')
  payload,

  /// Layrz API equivalence: `asset.vin`. Means the Asset VIN
  @JsonValue('asset.vin')
  assetVin,

  /// Layrz API equivalence: `asset.plate`. Means the Asset Plate
  @JsonValue('asset.plate')
  assetPlate,

  /// Layrz API equivalence: `devices.list`. Means a list of devices associated to the asset
  @JsonValue('devices.list')
  devices,

  /// Layrz API equivalence: `primary.device.full`. Means the primary device object
  @JsonValue('primary.device.full')
  primaryDevice,

  /// Layrz API equivalence: `primary.device.name`. Means the primary device name
  @JsonValue('primary.device.name')
  primaryDeviceName,

  /// Layrz API equivalence: `primary.device.ident`. Means the primary device ident
  @JsonValue('primary.device.ident')
  primaryDeviceIdent,

  /// Layrz API equivalence: `trigger.name`. Means the trigger name
  @JsonValue('trigger.name')
  triggerName,

  /// Layrz API equivalence: `trigger.code`. Means the trigger code
  @JsonValue('trigger.code')
  triggerCode,

  /// Layrz API equivalence: `trigger.geofence.name`. Means the trigger geofence name
  @JsonValue('trigger.geofence.name')
  triggerGeofenceName,

  /// Layrz API equivalence: `trigger.geofence.type`. Means the trigger geofence type, aka, if is entrance or exit
  @JsonValue('trigger.geofence.type')
  triggerGeofenceType,

  /// Layrz API equivalence: `trigger.locator.link`. Means the trigger locator link
  @JsonValue('trigger.locator.link')
  triggerLocatorLink,
  ;

  /// [isCustom] validates if the [search] wire value is a custom value or not.
  static bool isCustom(String search) {
    List<String> defaultValues = OutboundStructureType.values.map((e) => e.toJson()).toList();
    return !defaultValues.contains(search);
  }

  @override
  String toString() => toJson();

  /// [toJson] returns the wire representation of this enum value.
  String toJson() => _$OutboundStructureTypeEnumMap[this] ?? 'constant';

  /// [fromJson] returns the enum value matching the given wire [json] string, defaulting to
  /// [OutboundStructureType.constant] when no match is found.
  static OutboundStructureType fromJson(String json) {
    return _$OutboundStructureTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        OutboundStructureType.constant;
  }
}

/// [OutboundStructureTypeConverter] converts between the wire string representation and
/// [OutboundStructureType].
@Deprecated('Use native JsonConverter instead')
class OutboundStructureTypeConverter implements JsonConverter<OutboundStructureType, String> {
  /// Creates a new [OutboundStructureTypeConverter].
  @Deprecated('Use native JsonConverter instead')
  const OutboundStructureTypeConverter();

  @override
  OutboundStructureType fromJson(String json) => OutboundStructureType.fromJson(json);

  @override
  String toJson(OutboundStructureType object) => object.toJson();
}

/// [OutboundStructureTypeOrNullConverter] converts between the wire string representation and
/// a nullable [OutboundStructureType].
@Deprecated('Use native JsonConverter instead')
class OutboundStructureTypeOrNullConverter implements JsonConverter<OutboundStructureType?, String?> {
  /// Creates a new [OutboundStructureTypeOrNullConverter].
  @Deprecated('Use native JsonConverter instead')
  const OutboundStructureTypeOrNullConverter();

  @override
  OutboundStructureType? fromJson(String? json) {
    if (json == null) return null;
    return OutboundStructureType.fromJson(json);
  }

  @override
  String? toJson(OutboundStructureType? object) => object?.toJson();
}
