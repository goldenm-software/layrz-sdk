part of '../vision_profile.dart';

/// Mutable input data for creating or updating a [VisionProtocol].
///
/// [VisionProtocolInput] mirrors the fields of [VisionProtocol] but is mutable and provides
/// sensible defaults, making it suitable for form binding before submission via [save]. When [id]
/// is null, [save] creates a new protocol; otherwise it updates the existing one.
@unfreezed
abstract class VisionProtocolInput with _$VisionProtocolInput {
  /// Private constructor used by the code generator.
  const VisionProtocolInput._();

  /// Constructs a mutable [VisionProtocolInput].
  factory VisionProtocolInput({
    /// [id] ID of the protocol entity. This ID is unique.
    String? id,

    /// [name] Name of the protocol.
    @Default('') String name,

    /// [color] Indicates the color assigned to the protocol.
    @ColorConverter() @Default(Color(0xFF2196F3)) Color color,

    /// [dynamicIcon] is the icon of the protocol.
    AvatarInput? dynamicIcon,

    /// [requiredFields] is the list of required fields for the protocol.
    @Default([]) List<CredentialField> requiredFields,

    /// [isEnabled] is the current status of the protocol.
    @Default(true) bool isEnabled,
  }) = _VisionProtocolInput;

  /// [fromJson] builds a [VisionProtocolInput] from a decoded JSON [json] map.
  factory VisionProtocolInput.fromJson(Map<String, dynamic> json) => _$VisionProtocolInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this vision protocol on the server.
  ///
  /// Sends `addVisionProtocol` when [id] is null, or `editVisionProtocol` when [id] is set, both
  /// with this input serialized as the `VisionProtocolInput` GraphQL input type. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, VisionProtocol?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors,
  /// null)`; on success, `(status, errors, savedProtocol)`.
  Future<StandardResponse<VisionProtocol>> save({
    /// [apiToken] is the API token for authentication. Obtain via the `login` mutation on the
    /// GraphQL API.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint (e.g. `https://api.example.com/graphql`).
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    final operation = id == null ? 'addVisionProtocol' : 'editVisionProtocol';

    try {
      final response = await connector.mutate(
        GqlMutation(
          name: operation,
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'VisionProtocolInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: VisionProtocol.fragment)),
        ),
        _visionProtocolDecoder,
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
      Log.critical('layrz_sdk/VisionProtocolInput/save(): General exception => $e\n$stack');
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
