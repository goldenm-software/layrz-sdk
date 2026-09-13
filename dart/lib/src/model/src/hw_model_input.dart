part of '../model.dart';

/// Mutable input data for creating or updating an [HwModel].
///
/// [HwModelInput] mirrors the identifying fields of [HwModel] but is mutable
/// and provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new hardware
/// model; otherwise it updates the existing one.
@unfreezed
abstract class HwModelInput with _$HwModelInput {
  /// Private constructor used by the code generator.
  const HwModelInput._();

  /// Constructs a mutable [HwModelInput].
  factory HwModelInput({
    /// Unique identifier for this hardware model, or null when creating a new
    /// one.
    String? id,

    /// Human-readable name of the hardware model. Defaults to an empty string.
    @Default('') String name,

    /// Identifiers of the device models that belong to this hardware model.
    @Default([]) List<String> modelsIds,
  }) = _HwModelInput;

  /// Deserializes an [HwModelInput] from a JSON map.
  factory HwModelInput.fromJson(Map<String, dynamic> json) => _$HwModelInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this hardware model on the server.
  ///
  /// Sends `addHardwareModel` when [id] is null, or `editHardwareModel` when
  /// [id] is set, both with this input serialized as the `HwModelInput`
  /// GraphQL input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, HwModel?)`: on
  /// an internal error, `(ApiStatus.internalError, null, null)`; on any other
  /// non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedHwModel)`.
  Future<StandardResponse<HwModel>> save({
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
    final operation = id == null ? 'addHardwareModel' : 'editHardwareModel';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'HwModelInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: HwModel.fragment)),
        ),
        _hwModelDecoder,
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
        "layrz_sdk/HwModelInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
