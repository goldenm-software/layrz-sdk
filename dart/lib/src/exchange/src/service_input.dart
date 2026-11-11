part of '../exchange.dart';

/// Mutable input data for creating or updating an [ExchangeService].
///
/// [ExchangeServiceInput] is mutable and provides sensible defaults, making it suitable for form
/// binding before submission via [save]. When [id] is null, [save] creates a new service; otherwise
/// it updates the existing one.
@unfreezed
abstract class ExchangeServiceInput with _$ExchangeServiceInput {
  /// Private constructor used by the code generator.
  const ExchangeServiceInput._();

  /// Constructs a mutable [ExchangeServiceInput].
  factory ExchangeServiceInput({
    /// Unique identifier of the service, or null when creating a new one.
    String? id,

    /// Name of the service. Defaults to an empty string.
    @Default('') String name,

    /// Credentials object, driven by the required fields of the selected protocol. Defaults to an
    /// empty map.
    @Default({}) Map<String, dynamic> credentials,

    /// ID of the [ExchangeProtocol] driving the service.
    String? protocolId,

    /// Indicates if the service is enabled. Defaults to true.
    @Default(true) bool isEnabled,

    /// IDs of the assets linked to the service. Defaults to an empty list.
    @Default([]) List<String> assetsIds,

    /// IDs of the tags (groups) linked to the service. Defaults to an empty list.
    @Default([]) List<String> tagsIds,

    /// IDs of the geofences linked to the service. Defaults to an empty list.
    @Default([]) List<String> geofencesIds,

    /// IDs of the tags, as geofence groups, linked to the service. Defaults to an empty list.
    @Default([]) List<String> geofencesGroupsIds,
  }) = _ExchangeServiceInput;

  /// Deserializes an [ExchangeServiceInput] from a JSON map.
  factory ExchangeServiceInput.fromJson(Map<String, dynamic> json) => _$ExchangeServiceInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this service on the server.
  ///
  /// Sends `addExchangeService` when [id] is null, or `editExchangeService` when [id] is set, both
  /// with this input serialized as the `ExchangeServiceInput` GraphQL input type. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, ExchangeService?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status,
  /// `(status, errors, null)`; on success, `(status, errors, savedService)`.
  Future<StandardResponse<ExchangeService>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addExchangeService' : 'editExchangeService';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'ExchangeServiceInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: ExchangeService.fragment)),
        ),
        _exchangeServiceDecoder,
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
      Log.critical("layrz_sdk/ExchangeServiceInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
