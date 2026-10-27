part of '../../ats.dart';

@freezed
abstract class AtsMonitor with _$AtsMonitor {
  const AtsMonitor._();

  const factory AtsMonitor({
    /// ID of the entity. This ID is unique.
    required String id,

    /// Name assigned to the monitor.
    required String name,

    /// Indicates the color of the monitor.
    @ColorOrNullConverter() Color? color,

    /// Is the icon URI of the monitor
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// Is favorite indicator.
    @Default(false) bool isFavorite,

    /// List of assets assigned to the monitor.
    @Default([]) List<Asset> assets,

    /// List of asset IDs assigned to the monitor.
    @Default([]) List<String> assetsIds,

    /// List of grid structure.
    @Default([]) List<AtsGridItem> gridStructure,

    /// List of charts assigned to the workspace.
    @Default([]) List<LayrzChart> charts,

    /// List of charts assigned to the workspace.
    @Default([]) List<String> chartsIds,

    /// List of custom access permissions.
    @Default([]) List<Access> access,

    /// User linked to monitor.
    User? owner,

    /// List of grid structure.
    List<AnalyticsGridItem>? analyticsGridStructure,
  }) = _AtsMonitor;

  factory AtsMonitor.fromJson(Map<String, dynamic> json) => _$AtsMonitorFromJson(json);

  // coverage:ignore-start
  /// The fields of an [AtsMonitor] selected by [fetchAll] and [AtsMonitorInput.save]: its assets, grid structure,
  /// access and owner.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'name'),
    GqlField(name: 'icon'),
    GqlField(name: 'color'),
    GqlField(name: 'isFavorite'),
    GqlField(
      name: 'assets',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(name: 'assetsIds'),
    GqlField(
      name: 'gridStructure',
      fields: [
        GqlField(name: 'objectsIds'),
        GqlField(name: 'kind'),
        GqlField(
          name: 'dimensions',
          fields: [
            GqlField(name: 'width'),
            GqlField(name: 'height'),
          ],
        ),
      ],
    ),
    GqlField(
      name: 'access',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'read'),
        GqlField(name: 'write'),
        GqlField(name: 'manage'),
        GqlField(name: 'objectId'),
        GqlField(name: 'userId'),
        GqlField(name: 'module'),
      ],
    ),
    GqlField(
      name: 'owner',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
      ],
    ),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the monitors visible to the authenticated user (`monitors`).
  ///
  /// [appId] keeps only the monitors of that registered app; [id] fetches a single monitor. Selects [fields] plus
  /// [extraFields]. A monitor that does not decode is logged and skipped. Returns an empty list on any error.
  static Future<List<AtsMonitor>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [appId] is the registered app whose monitors are returned, if any.
    String? appId,

    /// [id] filters the result to that monitor, if any.
    String? id,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'monitors',
          variables: [
            GqlVariable(name: 'id', value: id, type: .id),
            GqlVariable(name: 'appId', value: appId, type: .id),
          ],
        )..add(
          GqlField(name: 'monitors', args: {'id': 'id', 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: [...fields, ...?extraFields])),
        ),
        (json) => _atsDecodeList(json, AtsMonitor.fromJson, 'AtsMonitor/fetchAll'),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsMonitor/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsMonitor/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the monitors [ids] (`deleteMonitors`). This cannot be reverted.
  ///
  /// Returns `true` when the API answers ok.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [ids] are the IDs of the monitors to delete.
    required List<String> ids,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteMonitors',
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'deleteMonitors', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsMonitor/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsMonitor/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
}

@unfreezed
abstract class AtsMonitorInput with _$AtsMonitorInput {
  AtsMonitorInput._();

  factory AtsMonitorInput({
    /// ID of the entity. This ID is unique.
    String? id,

    /// Name assigned to the monitor.
    String? name,

    /// App ID linked to the monitor.
    String? appId,

    /// Icon of the monitor.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// Color of the monitor.
    @ColorOrNullConverter() Color? color,

    /// Is favorite indicator.
    @Default(false) bool isFavorite,

    /// List of assets assigned to the monitor.
    @Default([]) List<String> assetsIds,

    /// List of grid structure.
    @Default([]) List<AtsGridItemInput> gridStructure,

    /// List of charts assigned to the monitor for ATS Web.
    @Default([]) List<String> chartsIds,

    /// List of grid structure for Ats Web.
    List<AnalyticsGridItemInput>? analyticsGridStructure,
  }) = _AtsMonitorInput;

  factory AtsMonitorInput.fromJson(Map<String, dynamic> json) => _$AtsMonitorInputFromJson(json);

  // coverage:ignore-start
  /// Creates (`addMonitor`) or updates (`editMonitor`) this monitor, picking the operation from [id].
  ///
  /// Returns `(status, errors, monitor)`; the monitor is `null` when the API does not answer ok.
  Future<StandardResponse<AtsMonitor>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final operation = id == null ? 'addMonitor' : 'editMonitor';
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: operation,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'MonitorInput'),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: AtsMonitor.fields)),
        ),
        (json) => json is Map ? AtsMonitor.fromJson(Map<String, dynamic>.from(json)) : null,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsMonitorInput/save(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsMonitorInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}

@unfreezed
abstract class RequestChartInput with _$RequestChartInput {
  factory RequestChartInput({
    /// [index] is the index of the chart in the monitor
    int? index,

    /// [chartId] is the Chart ID
    String? chartId,

    /// [assetsIds] is the list of asset IDs linked to the chart
    List<String>? assetsIds,
  }) = _RequestChartInput;

  factory RequestChartInput.fromJson(Map<String, dynamic> json) => _$RequestChartInputFromJson(json);
}
