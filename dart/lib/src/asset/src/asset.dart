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

  // coverage:ignore-start
  /// [fetchAll] fetches every asset visible to the user with the listing selection of the [variant]
  /// (base fields plus the ATS or Mappit fields), plus [extraFields].
  static Future<List<Asset>> fetchAll({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] is the variant of the asset to fetch, default is [AssetVariant.standard].
    AssetVariant variant = .standard,

    /// [appId] is the ID of the app to fetch the assets for, if any.
    String? appId,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final queryName = _getAssetQueryNameFromVariant(variant);
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: queryName, args: {if (appId != null) 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [..._assetBaseFields(variant), ..._assetVariantFields(variant), ...?extraFields],
              ),
            ),
        ),
        _assetListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetch] fetches the full record of this asset: listing fields plus commands, global sensors,
  /// parameters, kind, authenticated entities, devices with protocol, children and telemetry.
  Future<Asset?> fetch({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] is the variant of the asset to fetch, default is [AssetVariant.standard].
    AssetVariant variant = .standard,

    /// [appId] is the ID of the app to fetch the asset for, if any.
    String? appId,

    /// [withStorageTerminalRelations] adds `assetsInStorageTerminal`. Only for [AssetVariant.ats].
    bool withStorageTerminalRelations = false,
  }) async {
    final queryName = _getAssetQueryNameFromVariant(variant);
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: queryName, args: {'id': 'id', if (appId != null) 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  ..._assetBaseFields(variant),
                  ..._assetDetailFields(variant),
                  ..._assetVariantFields(variant),
                  if (variant == .ats && withStorageTerminalRelations) ..._assetStorageTerminalRelationFields,
                ],
              ),
            ),
        ),
        _assetListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result?.firstOrNull;
      if (result == null) onResponse?.call(.notfound);
      return result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [deleteMany] deletes the assets with the given [ids].
  static Future<bool> deleteMany({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [ids] is the list of asset IDs to delete.
    required List<String> ids,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] is the variant of the asset, default is [AssetVariant.standard].
    AssetVariant variant = .standard,

    /// [appId] is the ID of the app, if any.
    String? appId,
  }) async {
    final mutationName = _getAssetDeleteMutationNameFromVariant(variant);
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
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
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: mutationName, args: {'ids': 'ids', if (appId != null) 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [clone] duplicates this asset and returns the new one.
  Future<StandardResponse<Asset>> clone({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] is the variant of the asset, default is [AssetVariant.standard].
    AssetVariant variant = .standard,

    /// [appId] is the ID of the app, if any.
    String? appId,
  }) async {
    final mutationName = _getAssetCloneMutationNameFromVariant(variant);
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: mutationName, args: {'assetId': 'assetId', if (appId != null) 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  ..._assetBaseFields(variant),
                  if (variant == .mappit) GqlField(name: 'mappitLaborHours', fields: _assetLabourHourFields),
                ],
              ),
            ),
        ),
        _assetDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/clone(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/clone(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [updateWidgets] replaces the live-data [widgets] of this asset and returns the saved list.
  Future<StandardResponse<List<AssetWidget>>> updateWidgets({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [widgets] is the full, ordered list of widgets to store.
    required List<AssetWidgetInput> widgets,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [appId] is the ID of the app, if any.
    String? appId,
  }) async {
    const mutationName = 'updateAssetWidgets';
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
            GqlVariable(
              name: 'widgets',
              value: widgets.map((e) => e.toJson()).toList(),
              type: .list(of: .input(of: 'AssetWidgetInput'), isRequired: true),
              isRequired: true,
            ),
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(
              name: mutationName,
              args: {'assetId': 'assetId', 'widgets': 'widgets', if (appId != null) 'appId': 'appId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'id'))
                ..add(GqlField(name: 'widgets', fields: _assetWidgetFields)),
            ),
        ),
        _assetWidgetsDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/updateWidgets(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/updateWidgets(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetchParameters] fetches the last value of every parameter of this asset, keyed by parameter.
  /// Returns null on failure.
  Future<Map<String, ParamData>?> fetchParameters({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'assetParameters',
          variables: [
            GqlVariable(
              name: 'assetsIds',
              value: [id],
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'assetParameters', args: {'assetsIds': 'assetsIds'})
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'assetId'))
                ..add(
                  GqlField(name: 'parameters')
                    ..add(GqlField(name: 'parameter'))
                    ..add(GqlField(name: 'value'))
                    ..add(GqlField(name: 'updatedAt')),
                ),
            ),
        ),
        _assetParametersDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/fetchParameters(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/fetchParameters(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetchSensorsLastUpdate] fetches when each sensor of the [assetsIds] was last updated, as
  /// `assetId -> slug -> lastUpdate`. [variant] `mappit` uses `mappitSensorsLastUpdate`. Returns null on failure.
  static Future<Map<String, Map<String, DateTime>>?> fetchSensorsLastUpdate({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [assetsIds] is the list of asset IDs to query.
    required List<String> assetsIds,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit query.
    AssetVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final queryName = variant == .mappit ? 'mappitSensorsLastUpdate' : 'sensorsLastUpdate';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(
              name: 'assetsIds',
              value: assetsIds,
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: queryName, args: {'assetsIds': 'assetsIds'})
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'assetId'))
                ..add(
                  GqlField(name: 'sensors')
                    ..add(GqlField(name: 'slug'))
                    ..add(GqlField(name: 'lastUpdate')),
                ),
            ),
        ),
        _assetSensorsLastUpdateDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/fetchSensorsLastUpdate(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/fetchSensorsLastUpdate(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetchSensorImages] fetches the Layrz Drive images produced by the image sensors [sensorsIds] of
  /// this asset. Returns null on failure.
  Future<List<AssetSensorImage>?> fetchSensorImages({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [sensorsIds] is the list of image sensor IDs.
    required List<String> sensorsIds,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'driveImagesFromSensors',
          variables: [
            GqlVariable(
              name: 'sensorsIds',
              value: sensorsIds,
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
            GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'driveImagesFromSensors', args: {'sensorsIds': 'sensorsIds', 'assetId': 'assetId'})
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'fileId'))
                ..add(GqlField(name: 'sensorId'))
                ..add(GqlField(name: 'serial'))
                ..add(GqlField(name: 'lastModified')),
            ),
        ),
        (json) => [
          if (json is List)
            for (final item in json) AssetSensorImage.fromJson(Map<String, dynamic>.from(item as Map)),
        ],
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/fetchSensorImages(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/fetchSensorImages(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [setSensorValue] overrides the value of the sensor [slug] on the last message of this asset.
  /// [value] is coerced server-side to [dataType].
  Future<bool> setSensorValue({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [slug] is the slug of the sensor.
    required String slug,

    /// [dataType] is the data type of [value].
    required SensorDataType dataType,

    /// [value] is the raw value.
    required String value,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetStatusMutation(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'setAssetSensorValue',
    variables: [
      GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
      GqlVariable(name: 'slug', value: slug, type: .string, isRequired: true),
      GqlVariable(
        name: 'newValue',
        value: {'type': dataType.toJson(), 'value': value},
        type: .input(of: 'NewValueInput'),
        isRequired: true,
      ),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [convertSensorToGlobal] converts the asset sensor [sensorId] into a global sensor.
  Future<bool> convertSensorToGlobal({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [sensorId] is the ID of the sensor to convert.
    required String sensorId,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetStatusMutation(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'convertSensorToGlobalSensor',
    variables: [
      GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
      GqlVariable(name: 'sensorId', value: sensorId, type: .id, isRequired: true),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [linkGlobalSensor] links the global sensor [sensorId] to this asset.
  Future<bool> linkGlobalSensor({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [sensorId] is the ID of the global sensor.
    required String sensorId,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetStatusMutation(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'linkAssetToGlobalSensor',
    variables: [
      GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true),
      GqlVariable(name: 'sensorId', value: sensorId, type: .id, isRequired: true),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [loginAsSeller] issues a token to sign in as this seller asset. Only for [AssetVariant.mappit].
  Future<Token?> loginAsSeller({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'loginAsSeller',
          variables: [GqlVariable(name: 'assetId', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: 'loginAsSeller', args: {'assetId': 'assetId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'token'))
                ..add(GqlField(name: 'validBefore')),
            ),
        ),
        (json) => Token.fromJson(Map<String, dynamic>.from(json as Map)),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/loginAsSeller(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/loginAsSeller(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [recalculateEntities] queues the recalculation of the ATS entities of [assetsIds] between
  /// [startAt] and [endAt]. Only for the ATS GraphQL API.
  static Future<bool> recalculateEntities({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the ATS API, must include the path.
    required Uri uri,

    /// [assetsIds] is the list of asset IDs to recalculate.
    required List<String> assetsIds,

    /// [startAt] is the start of the range.
    required DateTime startAt,

    /// [endAt] is the end of the range.
    required DateTime endAt,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetStatusMutation(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'recalculateEntities',
    variables: [
      GqlVariable(
        name: 'assetsIds',
        value: assetsIds,
        type: .list(of: .id),
      ),
      GqlVariable(name: 'startAt', value: startAt.millisecondsSinceEpoch / 1000, type: .unix),
      GqlVariable(name: 'endAt', value: endAt.millisecondsSinceEpoch / 1000, type: .unix),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [downloadAtsUploadFormat] returns the URL of the spreadsheet template used by
  /// [uploadAtsFromFile]. Only for the ATS GraphQL API. Returns null on failure.
  static Future<String?> downloadAtsUploadFormat({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the ATS API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(name: 'downloadAssetsFormat')..add(
          GqlField(name: 'downloadAssetsFormat')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json?.toString(),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/downloadAtsUploadFormat(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/downloadAtsUploadFormat(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [uploadAtsFromFile] creates or updates assets from the spreadsheet [dataUri] (base64 `data:` URI).
  /// Only for the ATS GraphQL API. See [parseUploadResponse] for the errors.
  static Future<StandardResponse<void>> uploadAtsFromFile({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the ATS API, must include the path.
    required Uri uri,

    /// [dataUri] is the spreadsheet as a base64 `data:` URI.
    required String dataUri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetUpload(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'uploadAssetsFromFile',
    variable: GqlVariable(name: 'assetsFile', value: dataUri, type: .string),
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [uploadAtsExitsFromFile] uploads exits from the spreadsheet [dataUri] (base64 `data:` URI).
  /// Only for the ATS GraphQL API. See [parseUploadResponse] for the errors.
  static Future<StandardResponse<void>> uploadAtsExitsFromFile({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the ATS API, must include the path.
    required Uri uri,

    /// [dataUri] is the spreadsheet as a base64 `data:` URI.
    required String dataUri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,
  }) => _runAssetUpload(
    apiToken: apiToken,
    uri: uri,
    onResponse: onResponse,
    name: 'uploadExitsFile',
    variable: GqlVariable(name: 'exitsFile', value: dataUri, type: .string, isRequired: true),
  );
  // coverage:ignore-end

  /// The key under which [parseUploadResponse] keeps a plain-text error message.
  static const uploadMessageErrorKey = 'message';

  /// Decodes the raw [name] upload response [body]. Map `errors` are kept as they are, a text error
  /// goes under [uploadMessageErrorKey] and a list under `rows`.
  static StandardResponse<void> parseUploadResponse(Object? body, String name) {
    final data = body is Map ? body['data'] : null;
    final envelope = data is Map ? data[name] : null;
    if (envelope is! Map) return (ApiStatus.internalError, null, null);

    final status = ApiStatus.fromJson(envelope['status']?.toString() ?? '');
    final rawErrors = envelope['errors'];
    final errors = switch (rawErrors) {
      Map() => Map<String, dynamic>.from(rawErrors),
      String() => <String, dynamic>{uploadMessageErrorKey: rawErrors},
      List() => <String, dynamic>{'rows': rawErrors},
      _ => null,
    };
    return (status, errors, null);
  }

  // coverage:ignore-start
  /// Gives the user [userId] access to the assets [assetsIds] (`mappitAssignAssetsToUser`, Mappit and public APIs).
  ///
  /// Returns `true` when the API answers ok.
  static Future<bool> assignToMappitUser({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [assetsIds] are the IDs of the assets to assign.
    required List<String> assetsIds,

    /// [userId] is the ID of the user that receives the assets.
    required String userId,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'mappitAssignAssetsToUser',
          variables: [
            GqlVariable(
              name: 'assetsIds',
              value: assetsIds,
              type: .list(of: .id),
              isRequired: true,
            ),
            GqlVariable(name: 'userId', value: userId, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'mappitAssignAssetsToUser', args: {'assetsIds': 'assetsIds', 'userId': 'userId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Asset/assignToMappitUser(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/Asset/assignToMappitUser(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
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

  /// Serializes the input for the [variant], dropping the ATS and Mappit keys its input type rejects.
  Map<String, dynamic> toVariantJson(AssetVariant variant) {
    final json = toJson();
    if (variant != .mappit) json.removeWhere((key, _) => _kAssetMappitInputKeys.contains(key));
    if (variant != .ats) json.removeWhere((key, _) => _kAssetAtsInputKeys.contains(key));
    return json;
  }

  // coverage:ignore-start
  /// [save] adds the asset when [id] is null, otherwise edits it. Returns the saved asset with the
  /// listing selection of the [variant].
  Future<StandardResponse<Asset>> save({
    /// [apiToken] is the API token to authenticate the request
    required String apiToken,

    /// [uri] is the URI of the API, must include the path.
    required Uri uri,

    /// [onResponse] is the callback to handle the response status
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] is the variant of the asset, default is [AssetVariant.standard].
    AssetVariant variant = .standard,

    /// [appId] is the ID of the app, if any.
    String? appId,
  }) async {
    final (mutationName, inputType) = _getAssetSaveMutationFromVariant(variant, isAdd: id == null);
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: toVariantJson(variant),
              type: .input(of: inputType),
              isRequired: true,
            ),
            if (appId != null) GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: mutationName, args: {'data': 'data', if (appId != null) 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [..._assetBaseFields(variant), ..._assetVariantFields(variant)],
              ),
            ),
        ),
        _assetDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AssetInput/save(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/AssetInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
