part of '../vision_profile.dart';

/// Mutable input data for creating or updating a [VisionProfile].
///
/// [VisionProfileInput] mirrors the editable fields of [VisionProfile] but is mutable and provides
/// sensible defaults, making it suitable for form binding before submission via [save]. When [id]
/// is null, [save] creates a new profile; otherwise it updates the existing one.
@unfreezed
abstract class VisionProfileInput with _$VisionProfileInput {
  /// Private constructor used by the code generator.
  const VisionProfileInput._();

  /// Constructs a mutable [VisionProfileInput].
  factory VisionProfileInput({
    /// [id] ID of the profile entity. This ID is unique. Null when creating a new profile.
    String? id,

    /// [name] Name of the profile. The backend types this field as `ID`, it is handled as a String.
    @Default('') String name,

    /// [protocolId] ID of the [VisionProtocol] used by this profile.
    String? protocolId,

    /// [config] Protocol-specific configuration of the profile.
    @Default({}) Map<String, dynamic> config,
  }) = _VisionProfileInput;

  /// [fromJson] builds a [VisionProfileInput] from a decoded JSON [json] map.
  factory VisionProfileInput.fromJson(Map<String, dynamic> json) => _$VisionProfileInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this vision profile on the server.
  ///
  /// Sends `addVisionProfile` when [id] is null, or `editVisionProfile` when [id] is set, both with
  /// this input serialized as the `VisionProfileInput` GraphQL input type. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, VisionProfile?)`: on an internal
  /// error, `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors,
  /// null)`; on success, `(status, errors, savedProfile)`.
  Future<StandardResponse<VisionProfile>> save({
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
    final operation = id == null ? 'addVisionProfile' : 'editVisionProfile';

    try {
      final response = await connector.mutate(
        GqlMutation(
          name: operation,
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'VisionProfileInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: VisionProfile.fullFragment)),
        ),
        _visionProfileDecoder,
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
      Log.critical('layrz_sdk/VisionProfileInput/save(): General exception => $e\n$stack');
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
