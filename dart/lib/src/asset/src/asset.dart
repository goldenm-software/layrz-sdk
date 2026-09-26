part of '../asset.dart';

/// Immutable asset data for the Layrz platform.
///
/// An [Asset] represents a trackable entity — a single device, a cluster of devices or assets, a
/// disconnected device, a static position, or a zone — depending on its [mode]. Use [AssetInput]
/// for creating or updating assets.
@freezed
abstract class Asset with _$Asset {
  const Asset._();

  /// Constructs an immutable [Asset].
  const factory Asset({
    /// [id] of the asset entity. This ID is unique.
    required String id,

    /// [name] of the asset.
    required String name,

    /// [plate] of the asset (If apply).
    String? plate,

    /// [vin] or Vehicle serial number of the asset (If apply).
    String? vin,

    /// [dynamicIcon] is the icon of the asset.
    /// This is the new schema of the icon
    Avatar? dynamicIcon,

    /// Operation [mode] of the asset
    @AssetModeOrNullConverter() AssetMode? mode,

    /// Children [assets] ids, only for clusters, limited to 1 level.
    List<String>? childrenIds,

    /// Children [assets], only for clusters, limited to 1 level.
    List<Asset>? children,

    /// Is the list of device [commands] available for this asset.
    List<DeviceCommand>? commands,

    /// Is the list of [references] ids associated to the asset.
    List<String>? referencesIds,

    /// Is the list of [references] associated to the asset.
    List<Reference>? references,

    /// Is the list of [authenticatedAssetsIds] to the asset.
    List<String>? authenticatedAssetsIds,

    /// Is the list of [authenticatedAssets] to the asset.
    List<Asset>? authenticatedAssets,

    /// Is the list of [authenticatedUsersIds] to the asset.
    List<String>? authenticatedUsersIds,

    /// Is the list of [authenticatedUsers] to the asset.
    List<User>? authenticatedUsers,

    /// [kindId] is the id of the asset kind.
    String? kindId,

    /// [kind] is the asset kind.
    Category? kind,

    /// List of [customFields] linked to the asset. Please read the documentation for [CustomField]
    /// for more details about the fields.
    List<CustomField>? customFields,

    /// List of [sensors] linked to the asset. Please read the documentation for Sensor for more
    /// details about the fields.
    List<Sensor>? sensors,

    /// [primaryId] is the primary device id.
    String? primaryId,

    /// [primary] is the primary device.
    Device? primary,

    /// [devicesIds] is the list of devices ids associated to the asset.
    List<String>? devicesIds,

    /// [devices] is the list of devices associated to the asset.
    List<Device>? devices,

    /// [qrCode] is the QR code of the asset.
    String? qrCode,

    /// [externalIdentifiers] is the list of external identifiers of the asset.
    List<String>? externalIdentifiers,

    /// [connection] is the connection status of the asset.
    Connection? connection,

    /// [telemetry] is the telemetry of the asset.
    AssetTelemetry? telemetry,

    /// List of [tags] assigned to the asset.
    List<Tag>? tags,

    /// List of custom [access] permissions.
    List<Access>? access,

    /// List of [lastExits] of the asset.
    /// Only used for AllTank Systems project.
    List<AtsExit>? lastExits,

    /// [activeTime] is the active time of the asset.
    /// Only used for AllTank Systems project.
    String? activeTime,

    /// [contacts] is the list of contacts associated to the asset.
    List<ContactInfo>? contacts,

    /// [laborHours] represents the list of labor hours configured to this asset.
    /// This field is only for `Mappit` use.
    List<MappitLaborHour>? mappitLaborHours,

    /// [ownerId] is the ID of the user owner of this asset.
    String? ownerId,

    /// [loginInfo] refers to the login information of the asset.
    AssetLoginInfo? loginInfo,

    /// [authenticationCard] refers to the authentication card of the asset.
    /// Only used in ATS apps.
    @Deprecated('Use authenticationCardCardboardId, authenticationCardTag and authenticationCardNfc instead')
    AtsAuthenticationCard? authenticationCard,

    /// [authenticationCardId] refers to the authentication card ID of the asset.
    /// Only used in ATS apps.
    @Deprecated('Use authenticationCardCardboardId, authenticationCardTag and authenticationCardNfc instead')
    String? authenticationCardId,

    /// [nfcIdentifier] refers to the NFC identifier of the asset.
    /// Only used in ATS apps.
    String? nfcIdentifier,

    /// [linkedSupplyPointAssets] refers to the list of supply points assets linked to this asset.
    /// Only used in ATS apps.
    List<Asset>? linkedSupplyPointAssets,

    /// [linkedSupplyPointAssetsIds] refers to the list of supply points assets IDs linked to this asset.
    /// Only used in ATS apps.
    List<String>? linkedSupplyPointAssetsIds,

    /// [linkedStorageTerminals] refers to the list of storage terminals assets linked to this asset.
    /// Only used in ATS apps.
    List<Asset>? linkedStorageTerminals,

    /// [linkedStorageTerminalsIds] refers to the list of storage terminals assets IDs linked to this asset.
    /// Only used in ATS apps.
    List<String>? linkedStorageTerminalsIds,

    /// [assetsInStorageTerminal] refers to the list of assets that link to this asset as a storage terminal.
    /// Inverse of [linkedStorageTerminals]. Only used in ATS apps.
    List<Asset>? assetsInStorageTerminal,

    /// [assetsInStorageTerminalIds] refers to the list of assets IDs that link to this asset as a storage terminal.
    /// Inverse of [linkedStorageTerminalsIds]. Only used in ATS apps.
    List<String>? assetsInStorageTerminalIds,

    /// [staticPosition] refers to the static position of the asset.
    /// Only used when mode is [AssetMode.fixed].
    StaticPosition? staticPosition,

    /// [points] refers to the list of points of the zone.
    /// Only used when mode is [AssetMode.zone].
    List<ZonePoint>? points,

    /// [parameters] refers to the list of parameters of the asset.
    /// Is only a list of strings.
    @Default([]) List<String> parameters,

    /// [globalSensors] is the list of global sensors of the asset.
    List<Sensor>? globalSensors,

    /// [mappitLaborStartTime] is the time of the labor start time.
    @TimeOfDayOrNullConverter() TimeOfDay? mappitLaborStartTime,

    /// [mappitLaborEndTime] is the time of the labor end time.
    @TimeOfDayOrNullConverter() TimeOfDay? mappitLaborEndTime,

    /// `geofences` is the list of geofences associated to the asset, Its implement just in [ATS].
    List<Geofence>? geofences,

    /// `mappitSecondaryRoutesIds` represents the list of secondary routes ids linked to the asset.
    List<String>? mappitSecondaryRoutesIds,

    /// [isSuspended] if the asset is suspended.
    bool? isSuspended,

    /// [authenticationCardCardboardId] is the cardboard ID of the authentication card id.
    String? authenticationCardCardboardId,

    /// [authenticationCardTag] is the tag of the authentication card id.
    String? authenticationCardTagId,

    /// [authenticationCardNfc] is the NFC of the authentication card id.
    String? authenticationCardNfcId,

    /// [authenticationCardboard] is the cardboard ID of the authentication card id.
    AtsAuthenticationCard? authenticationCardCardboard,

    /// [authenticationCardTag] is the tag of the authentication card id.
    AtsAuthenticationCard? authenticationCardTag,

    /// [authenticationCardNfc] is the NFC of the authentication card id.
    AtsAuthenticationCard? authenticationCardNfc,

    /// [widgets] is the curated, ordered list of live-data visualization widgets configured for this
    /// asset. Read-only on this model — writes go through the dedicated `updateAssetWidgets` mutation.
    @Default([]) List<AssetWidget> widgets,
  }) = _Asset;

  /// Deserializes an [Asset] from a JSON map.
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  /// Converts [points] to a list of [LatLng], for use with map-rendering widgets.
  List<LatLng>? get pointsLatLng => points?.map((e) => e.toLatLng).toList();
}

/// Mutable input data for creating or updating an [Asset].
@unfreezed
abstract class AssetInput with _$AssetInput {
  AssetInput._();

  /// Constructs a mutable [AssetInput].
  factory AssetInput({
    /// Unique identifier for this asset, or null when creating a new one.
    String? id,

    /// Human-readable name of the asset. Defaults to an empty string.
    @Default('') String name,

    /// [kindId] is the id of the asset kind.
    String? kindId,

    /// [plate] of the asset (If apply). Defaults to an empty string.
    @Default('') String plate,

    /// [vin] or Vehicle serial number of the asset (If apply). Defaults to an empty string.
    @Default('') String vin,

    /// [contacts] is the list of contacts associated to the asset. Defaults to an empty list.
    @Default([]) List<ContactInfoInput> contacts,

    /// [connection] is the connection status of the asset.
    required ConnectionInput connection,

    /// Operation [mode] of the asset. Defaults to [AssetMode.single].
    @AssetModeConverter() @Default(AssetMode.single) AssetMode mode,

    /// [primaryId] is the primary device id.
    String? primaryId,

    /// Is the list of [authenticatedUsersIds] to the asset. Defaults to an empty list.
    @Default([]) List<String> authenticatedUsersIds,

    /// Is the list of [authenticatedAssetsIds] to the asset. Defaults to an empty list.
    @Default([]) List<String> authenticatedAssetsIds,

    /// [externalIdentifiers] is the list of external identifiers of the asset. Defaults to an empty list.
    @Default([]) List<String> externalIdentifiers,

    /// [devicesIds] is the list of devices ids associated to the asset. Defaults to an empty list.
    @Default([]) List<String> devicesIds,

    /// Children [assets] ids, only for clusters, limited to 1 level. Defaults to an empty list.
    @Default([]) List<String> childrenIds,

    /// Is the list of [references] ids associated to the asset. Defaults to an empty list.
    @Default([]) List<String> referencesIds,

    /// List of [customFields] linked to the asset. Defaults to an empty list.
    @Default([]) List<CustomFieldInput> customFields,

    /// List of [sensors] linked to the asset. Defaults to an empty list.
    @Default([]) List<SensorInput> sensors,

    /// [dynamicIcon] is the icon of the asset.
    AvatarInput? dynamicIcon,

    /// [staticPosition] refers to the static position of the asset.
    /// Only used when mode is [AssetMode.fixed].
    StaticPositionInput? staticPosition,

    /// [loginInfo] refers to the login information of the asset.
    AssetLoginInfoInput? loginInfo,

    /// [points] refers to the list of points of the zone.
    /// Only used when mode is [AssetMode.zone].
    List<ZonePointInput>? points,

    // ATS Specific fields
    /// [nfcIdentifier] refers to the NFC identifier of the asset.
    /// Only used in ATS apps. Defaults to an empty string.
    @Default('') String nfcIdentifier,

    /// [authenticationCardId] refers to the authentication card ID of the asset.
    /// Only used in ATS apps.
    String? authenticationCardId,

    /// [linkedSupplyPointAssetsIds] refers to the list of supply points assets IDs linked to this asset.
    /// Only used in ATS apps. Defaults to an empty list.
    @Default([]) List<String> linkedSupplyPointAssetsIds,

    /// [linkedStorageTerminalsIds] refers to the list of storage terminals assets IDs linked to this asset.
    /// Only used in ATS apps. Defaults to an empty list.
    @Default([]) List<String> linkedStorageTerminalsIds,

    /// `geofencesIds` represents the list of geofences ids linked to the asset.
    /// Only used in ATS apps. Defaults to an empty list.
    @Default([]) List<String> geofencesIds,

    /// [authenticationCardCardboardId] is the cardboard ID of the authentication card id.
    String? authenticationCardCardboardId,

    /// [authenticationCardTagId] is the tag of the authentication card id.
    String? authenticationCardTagId,

    /// [authenticationCardNfcId] is the NFC of the authentication card id.
    String? authenticationCardNfcId,

    // Mapppit specific fields
    /// [mappitLaborHours] represents the list of labor hours configured to this asset.
    /// This field is only for `Mappit` use. Defaults to an empty list.
    @Default([]) List<MappitLaborHourInput> mappitLaborHours,

    /// [mappitLaborStartTime] is the time of the labor start time. Defaults to `09:00`.
    @Default(TimeOfDay(hour: 9, minute: 0)) @TimeOfDayConverter() TimeOfDay mappitLaborStartTime,

    /// [mappitLaborEndTime] is the time of the labor end time. Defaults to `18:00`.
    @Default(TimeOfDay(hour: 18, minute: 0)) @TimeOfDayConverter() TimeOfDay mappitLaborEndTime,

    /// `mappitSecondaryRoutesIds` represents the list of secondary routes ids linked to the asset.
    /// Defaults to an empty list.
    @Default([]) List<String> mappitSecondaryRoutesIds,
  }) = _AssetInput;

  /// Deserializes an [AssetInput] from a JSON map.
  factory AssetInput.fromJson(Map<String, dynamic> json) => _$AssetInputFromJson(json);

  /// Converts [points] to a list of [LatLng], for use with map-rendering widgets.
  List<LatLng>? get pointsLatLng => points?.map((e) => e.toLatLng).toList();
}
