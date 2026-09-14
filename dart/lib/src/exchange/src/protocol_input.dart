part of '../exchange.dart';

/// Mutable input data for creating or updating an [ExchangeProtocol].
///
/// [ExchangeProtocolInput] mirrors the fields of [ExchangeProtocol] but is
/// mutable and provides sensible defaults, making it suitable for form
/// binding before submission via [save]. When [id] is null, [save] creates a
/// new protocol; otherwise it updates the existing one.
///
/// Unlike [ExchangeProtocol], [color] is a plain [String] here: the backend
/// input schema accepts either a hex color or a named color token (e.g.
/// `"primary"`), so it is not narrowed through [ColorConverter].
@unfreezed
abstract class ExchangeProtocolInput with _$ExchangeProtocolInput {
  /// Private constructor used by the code generator.
  const ExchangeProtocolInput._();

  /// Constructs a mutable [ExchangeProtocolInput].
  factory ExchangeProtocolInput({
    /// Unique identifier for this protocol, or null when creating a new one.
    String? id,

    /// Name of the protocol. This name is a translation key, so check the
    /// translation messages to get the display name. Defaults to an empty
    /// string.
    @Default('') String name,

    /// Color assigned to the protocol, either a hex color or a named color
    /// token. Defaults to `'primary'`.
    @Default('primary') String color,

    /// Dynamic icon of the protocol, in its new schema.
    AvatarInput? dynamicIcon,

    /// List of required configuration fields for the protocol. Defaults to
    /// an empty list.
    @Default([]) List<CredentialField> requiredFields,

    /// Indicates if the protocol is enabled and available for use, or
    /// disabled and not available for use.
    bool? isEnabled,

    /// Indicates if the protocol requires a Flespi token to work.
    bool? requiresFlespiToken,

    /// Flespi ACLs for the protocol.
    List<FlespiAcl>? flespiAcl,

    /// Indicates if the protocol requires assets to work. Defaults to false.
    @Default(false) bool requiresAssets,

    /// Indicates if the protocol requires geofences to work. Defaults to
    /// false.
    @Default(false) bool requiresGeofences,
  }) = _ExchangeProtocolInput;

  /// Deserializes an [ExchangeProtocolInput] from a JSON map.
  factory ExchangeProtocolInput.fromJson(Map<String, dynamic> json) =>
      _$ExchangeProtocolInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this protocol on the server.
  ///
  /// Sends `addExchangeProtocol` when [id] is null, or `editExchangeProtocol`
  /// when [id] is set, both with this input serialized as the
  /// `ExchangeProtocolInput` GraphQL input type. Authentication is carried
  /// solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors,
  /// ExchangeProtocol?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status,
  /// `(status, errors, null)`; on success, `(status, errors, savedProtocol)`.
  Future<StandardResponse<ExchangeProtocol>> save({
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
    final operation = id == null ? 'addExchangeProtocol' : 'editExchangeProtocol';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'ExchangeProtocolInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: {'data': 'data'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: ExchangeProtocol.fragment)),
        ),
        _exchangeProtocolDecoder,
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
        "layrz_sdk/ExchangeProtocolInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
