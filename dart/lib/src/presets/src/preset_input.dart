part of '../presets.dart';

/// Mutable input data for creating or updating a [Preset].
///
/// [PresetInput] is mutable and provides sensible defaults, making it suitable for form binding
/// before submission via [save]. When [id] is null, [save] creates a new preset; otherwise it
/// updates the existing one.
@unfreezed
abstract class PresetInput with _$PresetInput {
  /// Private constructor used by the code generator.
  const PresetInput._();

  /// Constructs a mutable [PresetInput].
  factory PresetInput({
    /// Unique identifier for this preset, or null when creating a new one.
    String? id,

    /// Human-readable name of the preset. Defaults to an empty string.
    @Default('') String name,

    /// Is the maximum valid time of the preset. After this time the preset is no longer available.
    @TimestampConverter() required DateTime validBefore,

    /// Is the comment to place on the case when the preset is applied. Defaults to an empty string.
    @Default('') String comment,

    /// Is the list of IDs of the triggers linked to the preset. Defaults to an empty list.
    @Default([]) List<String> triggersIds,
  }) = _PresetInput;

  /// Deserializes a [PresetInput] from a JSON map.
  factory PresetInput.fromJson(Map<String, dynamic> json) => _$PresetInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this preset on the server.
  ///
  /// Sends `addPreset` when [id] is null, or `editPreset` when [id] is set, both with this input
  /// serialized as the `PresetInput` GraphQL input type. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Preset?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors,
  /// null)`; on success, `(status, errors, savedPreset)`.
  Future<StandardResponse<Preset>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addPreset' : 'editPreset';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'PresetInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Preset.fragment)),
        ),
        _presetDecoder,
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
        "layrz_sdk/PresetInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
