part of '../function.dart';

/// Mutable input data for creating or updating an [Algorithm].
///
/// [AlgorithmInput] mirrors the fields of [Algorithm] but is mutable and provides sensible
/// defaults, making it suitable for form binding before submission via [save]. When [id] is null,
/// [save] creates a new algorithm; otherwise it updates the existing one.
@unfreezed
abstract class AlgorithmInput with _$AlgorithmInput {
  /// Private constructor used by the code generator.
  const AlgorithmInput._();

  /// Constructs a mutable [AlgorithmInput].
  factory AlgorithmInput({
    /// Unique identifier for this algorithm, or null when creating a new one.
    String? id,

    /// Human-readable name of the algorithm. Defaults to an empty string.
    @Default('') String name,

    /// Is the color assigned to the algorithm. Defaults to opaque black.
    @ColorConverter() @Default(Color(0xFF000000)) Color color,

    /// Is the icon assigned to the algorithm.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// Indicates if the algorithm is enabled and available for use, or disabled and not available
    /// for use. Defaults to `false`.
    @Default(false) bool isEnabled,

    /// Is the list of category IDs the algorithm belongs to. Defaults to an empty list.
    @Default([]) List<String> categoriesIds,

    /// Indicates if the algorithm can be used in sensors. Defaults to `false`.
    @Default(false) bool canBeInSensors,

    /// Indicates if the algorithm supports HTTP. Defaults to `false`.
    @Default(false) bool hasHttp,

    /// Indicates if the algorithm supports FTP. Defaults to `false`.
    @Default(false) bool hasFtp,

    /// Is the list of required fields for the algorithm. Defaults to an empty list.
    @Default([]) List<CredentialField> requiredFields,
  }) = _AlgorithmInput;

  /// Deserializes an [AlgorithmInput] from a JSON map.
  factory AlgorithmInput.fromJson(Map<String, dynamic> json) => _$AlgorithmInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this algorithm on the server.
  ///
  /// Sends `addAlgorithm` when [id] is null, or `editAlgorithm` when [id] is set, both with this
  /// input serialized as the `AlgorithmInput` GraphQL input type. Authentication is carried
  /// solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Algorithm?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors,
  /// null)`; on success, `(status, errors, savedAlgorithm)`.
  Future<StandardResponse<Algorithm>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addAlgorithm' : 'editAlgorithm';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'AlgorithmInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Algorithm.fragment)),
        ),
        _algorithmDecoder,
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
      Log.critical("layrz_sdk/AlgorithmInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
