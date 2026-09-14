part of '../charts.dart';

/// Immutable chart configuration for the Layrz platform.
@freezed
abstract class LayrzChart with _$LayrzChart {
  /// Private constructor used by the code generator.
  const LayrzChart._();

  /// Constructs an immutable [LayrzChart].
  const factory LayrzChart({
    /// [id] is a unique identifier for this entity.
    required String id,

    /// [name] is the name of the chart.
    required String name,

    /// [description] is a description of the chart. Useful for identification or brief explanation.
    String? description,

    /// [formula] is the formula used to calculate the chart. This property is a LCL formula.
    String? formula,

    /// [script] is the script used to calculate the chart. This property is a Python script.
    String? script,

    /// [sensors] is a list of sensors used to calculate the chart.
    List<String>? sensors,

    /// [assets] is the list of assets associated with the chart.
    List<Asset>? assets,

    /// [assetsIds] is the list of asset IDs associated with the chart.
    List<String>? assetsIds,

    /// [type] is the type of the chart.
    @JsonKey(unknownEnumValue: ChartType.area) ChartType? type,

    /// [algorithm] is the algorithm used to calculate the chart.
    @JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm? algorithm,

    /// [dataSource] is the data source used to calculate the chart.
    @JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource? dataSource,

    /// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
    bool? enableLttb,

    /// [access] is a list of granted access to this entity.
    List<Access>? access,
  }) = _LayrzChart;

  /// Deserializes a [LayrzChart] from a JSON map.
  factory LayrzChart.fromJson(Map<String, dynamic> json) => _$LayrzChartFromJson(json);

  /// [gqlFragment] is the GqlFragment for a chart, including nested access permissions.
  static GqlFragment get gqlFragment => GqlFragment(name: 'chartFragment', onType: 'Chart')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'description'))
    ..add(GqlField(name: 'type'))
    ..add(GqlField(name: 'algorithm'))
    ..add(GqlField(name: 'dataSource'))
    ..add(GqlField(name: 'formula'))
    ..add(GqlField(name: 'script'))
    ..add(GqlField(name: 'sensors'))
    ..add(
      GqlField(name: 'assets')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment))
        ..add(GqlField(name: 'mode')),
    )
    ..add(GqlField(name: 'assetsIds'))
    ..add(GqlField(name: 'enableLttb'))
    ..add(GqlField(name: 'access', fragment: Access.graphqlIdFragment));

  // coverage:ignore-start
  /// [fetch] fetches the full chart data from the API using this instance's id.
  Future<LayrzChart?> fetch({
    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'charts',
        )..add(
          GqlField(name: 'charts', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: gqlFragment)),
        ),
        _chartListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      final result = response.result ?? [];
      if (result.isEmpty) {
        onResponse?.call(ApiStatus.notfound.toJson());
        return null;
      }

      return result.first;
    } catch (e, stack) {
      Log.critical("layrz_sdk/LayrzChart/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetchAll] fetches all charts from the API with a lightweight payload, suitable for listings and pickers.
  static Future<List<LayrzChart>> fetchAll({
    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'charts')..add(
          GqlField(name: 'charts')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'id'))
                ..add(GqlField(name: 'name'))
                ..add(GqlField(name: 'type')),
            ),
        ),
        _chartListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/LayrzChart/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [delete] deletes this chart via the API.
  Future<bool> delete({
    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: [id],
            ),
          ],
          name: 'deleteChart',
        )..add(
          GqlField(name: 'deleteChart', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/LayrzChart/delete(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [deleteMultiple] deletes a batch of charts by their IDs.
  static Future<bool> deleteMultiple({
    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [ids] is the list of chart IDs to delete.
    required List<String> ids,

    /// [onResponse] is the callback to call when the response is received.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'deleteCharts',
        )..add(
          GqlField(name: 'deleteCharts', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/LayrzChart/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_chartListDecoder] decodes a raw listing `result` payload into a list of [LayrzChart].
/// Used by listing queries (fetch/fetchAll, which both return `result` as a list).
List<LayrzChart> _chartListDecoder(Object? json) {
  return List<LayrzChart>.from(
    (json as List? ?? []).map((e) => LayrzChart.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
