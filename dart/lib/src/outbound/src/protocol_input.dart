part of '../outbound.dart';

/// [OutboundProtocolInput] is the mutable input variant of [OutboundProtocol], used to create or
/// update an outbound protocol definition through [save].
@unfreezed
abstract class OutboundProtocolInput with _$OutboundProtocolInput {
  /// Private constructor used by the code generator.
  const OutboundProtocolInput._();

  /// Constructs a mutable [OutboundProtocolInput].
  factory OutboundProtocolInput({
    /// [id] is the protocol ID, ignore it if you are creating a new protocol.
    String? id,

    /// [name] is the name of the protocol.
    String? name,

    /// [color] is the color assigned to the protocol.
    @ColorOrNullConverter() Color? color,

    /// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
    bool? isEnabled,

    /// [categoriesIds] is the list of categories IDs that the protocol belongs to.
    List<String>? categoriesIds,

    /// [hasFtp] indicates if the protocol has support for FTP. Defaults to `false`.
    @Default(false) bool hasFtp,

    /// [isConsumpted] indicates if the protocol is consumpted. Defaults to `false`.
    @Default(false) bool isConsumpted,

    /// [requiredFields] is the list of required fields for the protocol.
    List<CredentialField>? requiredFields,

    /// [dynamicIcon] is the icon of the outbound protocol. This is the new schema of the icon.
    AvatarInput? dynamicIcon,
  }) = _OutboundProtocolInput;

  /// [fromJson] builds an [OutboundProtocolInput] from a decoded JSON [json] map.
  factory OutboundProtocolInput.fromJson(Map<String, dynamic> json) => _$OutboundProtocolInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this outbound protocol on the server.
  ///
  /// Sends `addOutboundProtocol` when [id] is null, or `editOutboundProtocol` when [id] is set, both
  /// with this input serialized as the `OutboundProtocolInput` GraphQL input type. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, OutboundProtocol?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`;
  /// on success, `(status, errors, savedProtocol)`.
  Future<StandardResponse<OutboundProtocol>> save({
    /// [apiToken] is the API token for authentication. Obtain via the `login` mutation on the
    /// GraphQL API.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint (e.g. `https://api.example.com/graphql`).
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addOutboundProtocol' : 'editOutboundProtocol';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'OutboundProtocolInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: OutboundProtocol.fragment)),
        ),
        _outboundProtocolDecoder,
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
      Log.critical("layrz_sdk/OutboundProtocolInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
