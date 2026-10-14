part of '../function.dart';

/// Mutable input data for creating or updating a [LayrzFunction].
///
/// [LayrzFunctionInput] is mutable and provides sensible defaults, making it suitable for form
/// binding before submission via [save]. When [id] is null, [save] creates a new function;
/// otherwise it updates the existing one.
@unfreezed
abstract class LayrzFunctionInput with _$LayrzFunctionInput {
  /// Private constructor used by the code generator.
  const LayrzFunctionInput._();

  /// Constructs a mutable [LayrzFunctionInput].
  factory LayrzFunctionInput({
    /// Unique identifier for this function, or null when creating a new one.
    String? id,

    /// Human-readable name of the function. Defaults to an empty string.
    @Default('') String name,

    /// Is the unique identifier of the algorithm driving the function.
    String? algorithmId,

    /// Is the maximum time of the function, defined in minutes. Defaults to `0`.
    @Default(0) double maximumTime,

    /// Is the minutes delta of the function, defined in minutes. Defaults to `0`.
    @Default(0) double minutesDelta,

    /// Is the external identifiers of the function. Defaults to an empty list.
    @Default([]) List<String> externalIdentifiers,

    /// Is the credentials of the function. Defaults to an empty map.
    @Default({}) Map<String, dynamic> credentials,

    /// Is the group (tag) IDs of the function. Defaults to an empty list.
    @Default([]) List<String> groupsIds,

    /// Is the asset IDs of the function. Defaults to an empty list.
    @Default([]) List<String> assetsIds,
  }) = _LayrzFunctionInput;

  /// Deserializes a [LayrzFunctionInput] from a JSON map.
  factory LayrzFunctionInput.fromJson(Map<String, dynamic> json) => _$LayrzFunctionInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this function on the server.
  ///
  /// Sends `addFunction` when [id] is null (optionally scoped to [appId]), or `editFunction` when
  /// [id] is set (without app scope), both with this input serialized as the `FunctionInput`
  /// GraphQL input type. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, LayrzFunction?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors,
  /// null)`; on success, `(status, errors, savedFunction)`.
  Future<StandardResponse<LayrzFunction>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional app ID scope, only used when creating a new function.
    String? appId,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final isNew = id == null;
    final operation = isNew ? 'addFunction' : 'editFunction';
    final useAppId = isNew && appId != null;
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'FunctionInput'),
              isRequired: true,
              value: toJson(),
            ),
            if (useAppId)
              GqlVariable(
                name: 'appId',
                type: .id,
                isRequired: false,
                value: appId,
              ),
          ],
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: {'data': 'data', if (useAppId) 'appId': 'appId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: LayrzFunction.fragment)),
        ),
        _layrzFunctionDecoder,
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
      Log.critical(
        "layrz_sdk/LayrzFunctionInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
