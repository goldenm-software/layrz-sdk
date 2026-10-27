part of '../asset.dart';

// coverage:ignore-start
GqlField _assetIconField(String name) => GqlField(name: name)
  ..add(GqlField(name: 'type'))
  ..add(GqlField(name: 'url'))
  ..add(GqlField(name: 'emoji'))
  ..add(GqlField(name: 'icon'));

List<GqlField> get _assetLabourHourFields => [
  GqlField(name: 'id'),
  GqlField(name: 'weekday'),
  GqlField(name: 'administrative'),
  GqlField(name: 'f2f'),
  GqlField(name: 'other'),
];

List<GqlField> get _assetWidgetFields => [
  GqlField(name: 'device'),
  GqlField(name: 'widget'),
  GqlField(name: 'expose'),
  GqlField(name: 'config')
    ..add(GqlField(name: 'title'))
    ..add(GqlField(name: 'minValue'))
    ..add(GqlField(name: 'maxValue'))
    ..add(
      GqlField(name: 'ranges')
        ..add(GqlField(name: 'value'))
        ..add(GqlField(name: 'color')),
    ),
];

/// Base asset selection shared by every operation.
List<GqlField> _assetBaseFields(AssetVariant variant) => [
  GqlField(name: 'id'),
  GqlField(name: 'name'),
  GqlField(name: 'plate'),
  GqlField(name: 'vin'),
  GqlField(name: 'kindId'),
  GqlField(name: 'childrenIds'),
  GqlField(name: 'qrCode'),
  GqlField(name: 'mode'),
  GqlField(name: 'staticPosition')
    ..add(GqlField(name: 'latitude'))
    ..add(GqlField(name: 'longitude'))
    ..add(GqlField(name: 'altitude')),
  GqlField(name: 'points')
    ..add(GqlField(name: 'latitude'))
    ..add(GqlField(name: 'longitude')),
  if (variant == .ats) ...[
    GqlField(name: 'authenticationCard')
      ..add(GqlField(name: 'id'))
      ..add(GqlField(name: 'number'))
      ..add(GqlField(name: 'externalIdentifier'))
      ..add(GqlField(name: 'externalIdentifierHex'))
      ..add(GqlField(name: 'typeId')),
    GqlField(name: 'linkedSupplyPointAssets')
      ..add(GqlField(name: 'id'))
      ..add(GqlField(name: 'name'))
      ..add(_assetIconField('dynamicIcon')),
    GqlField(name: 'linkedStorageTerminals')
      ..add(GqlField(name: 'id'))
      ..add(GqlField(name: 'name'))
      ..add(_assetIconField('dynamicIcon')),
  ],
  GqlField(name: 'sensors', fragment: Sensor.fragment),
  GqlField(name: 'contacts')
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'email'))
    ..add(GqlField(name: 'phone')),
  GqlField(name: 'authenticatedUsersIds'),
  GqlField(name: 'authenticatedAssetsIds'),
  GqlField(name: 'connection')
    ..add(GqlField(name: 'online'))
    ..add(GqlField(name: 'hibernation')),
  GqlField(name: 'customFields')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'value'))
    ..add(GqlField(name: 'isFixed')),
  GqlField(name: 'access', fragment: Access.idFragment),
  GqlField(name: 'primaryId'),
  GqlField(name: 'devices')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'ident'))
    ..add(GqlField(name: 'zigbeeZoneId'))
    ..add(
      GqlField(name: 'exposes')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'type'))
        ..add(GqlField(name: 'access'))
        ..add(GqlField(name: 'params')),
    ),
  GqlField(name: 'widgets', fields: _assetWidgetFields),
  GqlField(name: 'devicesIds'),
  GqlField(name: 'referencesIds'),
  _assetIconField('dynamicIcon'),
  GqlField(name: 'externalIdentifiers'),
  GqlField(name: 'loginInfo')
    ..add(GqlField(name: 'enabled'))
    ..add(GqlField(name: 'email'))
    ..add(GqlField(name: 'username')),
];

/// Variant-only fields added to listing and detail selections.
List<GqlField> _assetVariantFields(AssetVariant variant) => switch (variant) {
  .mappit => [
    GqlField(name: 'mappitLaborHours', fields: _assetLabourHourFields),
    GqlField(name: 'mappitLaborStartTime'),
    GqlField(name: 'mappitLaborEndTime'),
    GqlField(name: 'mappitSecondaryRoutesIds'),
  ],
  .ats => [
    GqlField(name: 'authenticationCardId'),
    GqlField(name: 'linkedSupplyPointAssetsIds'),
    GqlField(name: 'linkedStorageTerminalsIds'),
    GqlField(name: 'nfcIdentifier'),
    GqlField(name: 'geofences')
      ..add(GqlField(name: 'id'))
      ..add(GqlField(name: 'name'))
      ..add(GqlField(name: 'mode'))
      ..add(GqlField(name: 'color')),
    GqlField(name: 'authenticationCardTagId'),
    GqlField(name: 'authenticationCardCardboardId'),
    GqlField(name: 'authenticationCardNfcId'),
  ],
  _ => [],
};

/// Detail-only fields used by [Asset.fetch].
List<GqlField> _assetDetailFields(AssetVariant variant) => [
  GqlField(name: 'commands', fragment: DeviceCommand.fragment),
  GqlField(name: 'globalSensors', fragment: Sensor.fragment),
  GqlField(name: 'parameters'),
  GqlField(name: 'kind')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'kind'))
    ..add(GqlField(name: 'assetKind')),
  GqlField(name: 'authenticatedAssets')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'icon')),
  GqlField(name: 'authenticatedUsers')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'avatar')),
  GqlField(name: 'devices')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'ident'))
    ..add(GqlField(name: 'zigbeeZoneId'))
    ..add(
      GqlField(name: 'exposes')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'type'))
        ..add(GqlField(name: 'access'))
        ..add(GqlField(name: 'params')),
    )
    ..add(
      GqlField(name: 'protocol')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'operationMode'))
        ..add(GqlField(name: 'isEnabled'))
        ..add(GqlField(name: 'color')),
    ),
  GqlField(name: 'children')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name')),
  GqlField(name: 'telemetry')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'assetId'))
    ..add(
      GqlField(name: 'position')
        ..add(GqlField(name: 'latitude'))
        ..add(GqlField(name: 'longitude'))
        ..add(GqlField(name: 'speed'))
        ..add(GqlField(name: 'direction'))
        ..add(GqlField(name: 'satellites'))
        ..add(GqlField(name: 'hdop')),
    )
    ..add(
      GqlField(name: 'sensors')
        ..add(GqlField(name: 'parameter'))
        ..add(GqlField(name: 'value')),
    )
    ..add(
      GqlField(name: 'payload')
        ..add(GqlField(name: 'parameter'))
        ..add(GqlField(name: 'value')),
    )
    ..add(GqlField(name: 'receivedAt')),
];

/// Inverse storage terminal relation, opt-in through `withStorageTerminalRelations`.
List<GqlField> get _assetStorageTerminalRelationFields => [
  GqlField(name: 'assetsInStorageTerminal')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'kindId'))
    ..add(
      GqlField(name: 'kind')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'kind')),
    )
    ..add(_assetIconField('dynamicIcon')),
];

List<Asset> _assetListDecoder(Object? json) {
  if (json is List) return json.map((e) => Asset.fromJson(Map<String, dynamic>.from(e as Map))).toList();
  return [];
}

Asset _assetDecoder(Object? json) {
  if (json is Map) return Asset.fromJson(Map<String, dynamic>.from(json));
  throw const FormatException('Invalid JSON format for Asset');
}

List<AssetWidget> _assetWidgetsDecoder(Object? json) {
  final widgets = json is Map ? json['widgets'] : null;
  if (widgets is! List) return [];
  return widgets.map((e) => AssetWidget.fromJson(Map<String, dynamic>.from(e as Map))).toList();
}
// coverage:ignore-end

Map<String, ParamData> _assetParametersDecoder(Object? json) {
  final first = json is List && json.isNotEmpty ? json.first : null;
  final parameters = first is Map ? first['parameters'] : null;
  return {
    if (parameters is List)
      for (final item in parameters.whereType<Map>())
        item['parameter'].toString(): ParamData(
          value: item['value'],
          updatedAt: item['updatedAt'] is num
              ? DateTime.fromMillisecondsSinceEpoch(((item['updatedAt'] as num) * 1000).toInt())
              : null,
        ),
  };
}

Map<String, Map<String, DateTime>> _assetSensorsLastUpdateDecoder(Object? json) => {
  if (json is List)
    for (final item in json.whereType<Map>())
      item['assetId'].toString(): {
        for (final sensor in (item['sensors'] as List? ?? []).whereType<Map>())
          if (sensor['lastUpdate'] is num)
            sensor['slug'].toString(): DateTime.fromMillisecondsSinceEpoch(
              ((sensor['lastUpdate'] as num) * 1000).toInt(),
            ),
      },
};

// coverage:ignore-start
Future<bool> _runAssetStatusMutation({
  required String apiToken,
  required Uri uri,
  required String name,
  required List<GqlVariable> variables,
  ValueChanged<ApiStatus>? onResponse,
}) async {
  final connector = LayrzConnector(uri: uri, apiToken: apiToken);
  try {
    final response = await connector.mutate(
      GqlMutation(name: name, variables: variables)..add(
        GqlField(name: name, args: {for (final variable in variables) variable.name: variable.name})
          ..add(GqlField(name: 'status')),
      ),
    );

    if (response.status != .ok) {
      Log.warning("layrz_sdk/Asset/$name: API returned status ${response.status}");
      onResponse?.call(response.status);
      return false;
    }

    return true;
  } catch (err, stack) {
    Log.critical("layrz_sdk/Asset/$name: General exception => $err\n$stack");
    onResponse?.call(.internalError);
    return false;
  }
}

Future<StandardResponse<void>> _runAssetUpload({
  required String apiToken,
  required Uri uri,
  required String name,
  required GqlVariable variable,
  ValueChanged<ApiStatus>? onResponse,
}) async {
  final connector = LayrzConnector(uri: uri, apiToken: apiToken);
  try {
    // Decoded by hand: `errors` may be plain text.
    final response = await connector.perform(
      GqlMutation(name: name, variables: [variable])..add(
        GqlField(name: name, args: {variable.name: variable.name})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors')),
      ),
    );

    final result = Asset.parseUploadResponse(response.data, name);
    if (result.$1 != .ok) {
      Log.warning("layrz_sdk/Asset/$name: API returned status ${result.$1}");
      onResponse?.call(result.$1);
    }
    return result;
  } catch (err, stack) {
    Log.critical("layrz_sdk/Asset/$name: General exception => $err\n$stack");
    onResponse?.call(.internalError);
    return (ApiStatus.internalError, null, null);
  }
}
// coverage:ignore-end
