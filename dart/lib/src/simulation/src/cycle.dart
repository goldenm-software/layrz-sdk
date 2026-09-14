part of '../simulation.dart';

List<SimulationCycle> _cycleListDecoder(Object? json) {
  return List<SimulationCycle>.from(
    (json as List).map((e) {
      return SimulationCycle.fromJson(e as Map<String, dynamic>);
    }),
  );
}

@freezed
abstract class SimulationCycle with _$SimulationCycle {
  const SimulationCycle._();

  const factory SimulationCycle({
    /// [id] is the unique identifier of the cycle
    required String id,

    /// [name] is the name of the cycle
    required String name,

    /// [steps] is the number of steps of the cycle
    required int steps,

    /// [fileUri] is the URI of the file that contains the cycle
    String? fileUri,
  }) = _SimulationCycle;

  factory SimulationCycle.fromJson(Map<String, dynamic> json) => _$SimulationCycleFromJson(json);

  // coverage:ignore-start
  /// [fragment] is the fragment of the cycle
  static GqlFragment get fragment => GqlFragment(
    name: 'SimulationCycleFragment',
    onType: 'SimulationCycle',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'steps'),
      GqlField(name: 'fileUri'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetchAll] is the method that fetches all the cycles from the API
  static Future<List<SimulationCycle>> fetchAll({
    required String apiToken,
    required Uri uri,
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);

    try {
      final response = await connector.query(
        GqlQuery(
          name: 'simulationCycles',
          fields: [
            GqlField(
              name: 'simulationCycles',
              fields: [
                GqlField(name: 'status'),
                GqlField(name: 'result', fragment: fragment),
              ],
            ),
          ],
        ),
        _cycleListDecoder,
      );

      if (response.status != .ok) {
        Log.warning('layrz_sdk/SimulationCycle/fetchAll(): API returned status ${response.status}');
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical('layrz_sdk/SimulationCycle/fetchAll(): Error fetching cycles: $err\n$stack');
      onResponse?.call(.internalError);
      return [];
    }
  }

  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetch] fetches a single [SimulationCycle] from the server by its [id].
  ///
  /// Makes an authenticated GraphQL query (`simulationCycles`) filtered by
  /// [id]. The backend always returns `result` as a list, even when filtered
  /// down to a single entity, so the first element (if any) is returned.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching cycle). Errors are logged internally.
  static Future<SimulationCycle?> fetch({
    /// [id] is the unique identifier of the cycle to fetch.
    required String id,

    /// [apiToken] is the API token to use for authentication. You can get one
    /// using the `login` mutation on the GraphQL API.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);

    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'simulationCycles',
        )..add(
          GqlField(name: 'simulationCycles', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning('layrz_sdk/SimulationCycle/fetch(): No result in list');
            return null;
          }
          return SimulationCycle.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical('layrz_sdk/SimulationCycle/fetch(): General exception => $err\n$stack');
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [delete] deletes one or more [SimulationCycle] entries identified by
  /// [ids] from the server.
  ///
  /// Makes an authenticated GraphQL mutation (`deleteSimulationCycles`).
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken]. The mutation returns only `status` and
  /// `errors` on the wire (no per-item result payload), so the
  /// [StandardResponse] result slot is a plain `bool`: `true` on success,
  /// `false` otherwise.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, bool)`: on an
  /// internal error, `(ApiStatus.internalError, null, false)`; on any other
  /// non-ok status, `(status, errors, false)`; on success, `(status, errors,
  /// true)`.
  static Future<StandardResponse<bool>> delete({
    /// [ids] are the unique identifiers of the [SimulationCycle] entries to
    /// delete.
    required List<String> ids,

    /// [appId] is the app ID the deletion is performed from, or null to use
    /// the default scope.
    String? appId,

    /// [apiToken] is the API token to use for authentication. You can get one
    /// using the `login` mutation on the GraphQL API.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);

    try {
      final variables = <GqlVariable>[
        GqlVariable(name: 'ids', type: .list(of: .id), isRequired: true, value: ids),
      ];
      if (appId != null) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
      }

      final response = await connector.mutate(
        GqlMutation(
          variables: variables,
          name: 'deleteSimulationCycles',
        )..add(
          GqlField(
              name: 'deleteSimulationCycles',
              args: {
                'ids': 'ids',
                if (appId != null) 'appId': 'appId',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, false);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, false);
      }

      return (response.status, response.errors, true);
    } catch (err, stack) {
      Log.critical('layrz_sdk/SimulationCycle/delete(): General exception => $err\n$stack');
      return (ApiStatus.internalError, null, false);
    }
  }
  // coverage:ignore-end
}
