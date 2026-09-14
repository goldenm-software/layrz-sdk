part of '../simulation.dart';

/// [_simulationCycleDecoder] decodes a single-object `result` payload into a
/// [SimulationCycle]. Used by result-bearing mutations (add/edit-style).
SimulationCycle _simulationCycleDecoder(Object? json) {
  return SimulationCycle.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Mutable input data for creating or updating a [SimulationCycle].
///
/// [SimulationCycleInput] mirrors the fields of [SimulationCycle] that are
/// writable by the client. It is suitable for form binding before submission
/// via [save]. When [id] is null, [save] creates a new simulation cycle;
/// otherwise it updates the existing one.
@unfreezed
abstract class SimulationCycleInput with _$SimulationCycleInput {
  /// Private constructor used by the code generator.
  const SimulationCycleInput._();

  /// Constructs a mutable [SimulationCycleInput].
  factory SimulationCycleInput({
    /// Unique identifier for this cycle, or null when creating a new one.
    String? id,

    /// Human-readable name of the cycle. Defaults to an empty string.
    @Default('') String name,

    /// The URI of the file that contains the cycle, or a Base64 payload to
    /// upload a new file.
    String? fileUri,
  }) = _SimulationCycleInput;

  /// Deserializes a [SimulationCycleInput] from a JSON map.
  factory SimulationCycleInput.fromJson(Map<String, dynamic> json) => _$SimulationCycleInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this simulation cycle on the server.
  ///
  /// Sends `addSimulationCycle` when [id] is null, or `editSimulationCycle`
  /// when [id] is set, both with this input serialized as the
  /// `SimulationCycleInput` GraphQL input type. Authentication is carried
  /// solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors,
  /// SimulationCycle?)`: on an internal error, `(ApiStatus.internalError,
  /// null, null)`; on any other non-ok status, `(status, errors, null)`; on
  /// success, `(status, errors, savedSimulationCycle)`.
  Future<StandardResponse<SimulationCycle>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addSimulationCycle' : 'editSimulationCycle';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'SimulationCycleInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: SimulationCycle.fragment)),
        ),
        _simulationCycleDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/SimulationCycleInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
