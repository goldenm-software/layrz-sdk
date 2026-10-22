part of '../outbound.dart';

/// [OutboundService] is an assigned outbound integration between an asset ecosystem and an
/// [OutboundProtocol], carrying its own credentials, structure and access rules.
@freezed
abstract class OutboundService with _$OutboundService {
  const OutboundService._();

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

  /// Maximum nesting of [OutboundStructure.nested] accepted by the backend (`STRUCTURE_MAX_DEPTH`).
  static const int structureMaxDepth = 5;

  // coverage:ignore-start
  /// GraphQL fragment definition for querying outbound service fields.
  ///
  /// Selects the editable fields, a lightweight [protocol], [access] and the [structure] spelled out to
  /// [structureMaxDepth] nested levels (GraphQL has no recursive fragments). The resolved [assets] and
  /// [groups] are only selected by [fetch].
  static GqlFragment get fragment => GqlFragment(
    name: 'outboundServiceFragment',
    onType: 'OutboundService',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'credentials'),
      GqlField(name: 'protocolId'),
      GqlField(name: 'protocol', fragment: _protocolFragment),
      GqlField(name: 'structure', fields: _structureFields(structureMaxDepth + 1)),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'token'),
      GqlField(name: 'assetsIds'),
      GqlField(name: 'groupsIds'),
      GqlField(name: 'access', fragment: Access.idFragment),
      GqlField(name: 'atsModel'),
    ],
  );

  /// The [protocol] fields needed to label a service without fetching the protocols.
  static GqlFragment get _protocolFragment => GqlFragment(
    name: 'outboundServiceProtocolFragment',
    onType: 'OutboundProtocol',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'isEnabled'),
    ],
  );

  static List<GqlField> _structureFields(int depth) => [
    GqlField(name: 'field'),
    GqlField(name: 'type'),
    GqlField(name: 'value'),
    GqlField(name: 'source'),
    if (depth > 1) GqlField(name: 'nested', fields: _structureFields(depth - 1)),
  ];

  /// The resolved [assets] and [groups] (with their assets) selected by [fetch].
  static List<GqlField> get _relationFields {
    List<GqlField> assetFields() => [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
    ];

    return [
      GqlField(name: 'assets', fields: assetFields()),
      GqlField(
        name: 'groups',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
          GqlField(name: 'color'),
          GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
          GqlField(name: 'assets', fields: assetFields()),
        ],
      ),
    ];
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all outbound services available to the authenticated user, scoped to [appId] when set.
  ///
  /// Selects the [fragment]; add any other field with [extraFields]. Use [fetch] for the full record.
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<OutboundService>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [appId] is the ID of the app used to filter the services, if any.
    String? appId,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const queryName = 'outboundServices';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [GqlVariable(name: 'appId', value: appId, type: .id)],
        )..add(
          GqlField(name: queryName, args: {'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment, fields: [...?extraFields])),
        ),
        _outboundServiceListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this service: the [fragment] plus the resolved [assets] and [groups]
  /// (with their assets). Not scoped to an app.
  ///
  /// Returns `null` when the service is not found or on any error; a missing service reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<OutboundService?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const queryName = 'outboundServices';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [GqlVariable(name: 'id', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: queryName, args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment, fields: _relationFields)),
        ),
        _outboundServiceListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result ?? [];
      if (result.isEmpty) {
        onResponse?.call(.notfound);
        return null;
      }

      return result.first;
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the outbound services with the given [ids]. Not scoped to an app.
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ids] are the IDs of the services to delete.
    required List<String> ids,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'deleteOutboundServices';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'ids': 'ids'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Enables or disables the transmission of this service.
  ///
  /// Returns the [ApiStatus] of the request.
  Future<ApiStatus> toggle({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'toggleOutboundService';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [GqlVariable(name: 'id', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: mutationName, args: {'id': 'id'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/toggle(): API returned status ${response.status}");
        onResponse?.call(response.status);
      }

      return response.status;
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/toggle(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return .internalError;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Imports the services [ids] into the app [appId].
  ///
  /// Returns the [ApiStatus] of the request.
  static Future<ApiStatus> importIntoApp({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [appId] is the ID of the app that receives the services.
    required String appId,

    /// [ids] are the IDs of the services to import.
    required List<String> ids,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'importServicesIntoApp';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'appId', value: appId, type: .id, isRequired: true),
            GqlVariable(
              name: 'servicesIds',
              value: ids,
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'appId': 'appId', 'servicesIds': 'servicesIds'})
            ..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/importIntoApp(): API returned status ${response.status}");
        onResponse?.call(response.status);
      }

      return response.status;
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/importIntoApp(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return .internalError;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Generates the integration manual of the service [serviceId] in the app [appId].
  ///
  /// Returns the [ApiStatus] and the URI of the generated PDF; an empty result reports
  /// [ApiStatus.notfound].
  static Future<(ApiStatus, String?)> generateManual({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [serviceId] is the ID of the service.
    required String serviceId,

    /// [appId] is the ID of the app the manual is generated for.
    required String appId,

    /// [languageId] overrides the language of the user, if set.
    String? languageId,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'generateManualForOutboundService';
    try {
      final response = await connector.mutate<String?>(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'serviceId', value: serviceId, type: .id, isRequired: true),
            GqlVariable(name: 'appId', value: appId, type: .id, isRequired: true),
            GqlVariable(name: 'languageId', value: languageId, type: .id),
          ],
        )..add(
          GqlField(
              name: mutationName,
              args: {'serviceId': 'serviceId', 'appId': 'appId', 'languageId': 'languageId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json as String?,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/OutboundService/generateManual(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, null);
      }

      final result = response.result;
      if (result == null || result.isEmpty) {
        onResponse?.call(.notfound);
        return (ApiStatus.notfound, null);
      }

      return (ApiStatus.ok, result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/OutboundService/generateManual(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null);
    }
  }
  // coverage:ignore-end
}

/// [_outboundServiceListDecoder] decodes a raw listing `result` payload into a list of [OutboundService].
List<OutboundService> _outboundServiceListDecoder(Object? json) {
  return [for (final e in json as List? ?? []) OutboundService.fromJson(Map<String, dynamic>.from(e as Map))];
}

/// [_outboundServiceDecoder] decodes a single raw `result` payload into an [OutboundService].
OutboundService _outboundServiceDecoder(Object? json) =>
    OutboundService.fromJson(Map<String, dynamic>.from(json as Map));

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
