part of '../poi.dart';

/// Mutable input data for creating or updating a [Poi].
///
/// [PoiInput] mirrors the editable fields of [Poi] and is suitable for form binding before submission via
/// [save]. When [id] is `null`, [save] creates a new point of interest; otherwise it updates the existing one.
@unfreezed
abstract class PoiInput with _$PoiInput {
  /// Private constructor used by the code generator.
  const PoiInput._();

  /// Constructs a mutable [PoiInput].
  factory PoiInput({
    /// [id] is the identifier of the point of interest, or `null` when creating a new one.
    String? id,

    /// [name] of the point of interest. Defaults to an empty string.
    @Default('') String name,

    /// [description] of the point of interest. Defaults to an empty string; the server requires it, so [save]
    /// always sends a string (`''` when this is `null`).
    @Default('') String? description,

    /// [icon] of the point of interest. Defaults to [MdiRemapIconsClasses.mapMarker].
    @IconConverter() @Default(MdiRemapIconsClasses.mapMarker) MdiRemapIcon icon,

    /// [latitude] of the point of interest. Required by the server on create and update.
    double? latitude,

    /// [longitude] of the point of interest. Required by the server on create and update.
    double? longitude,
  }) = _PoiInput;

  /// Deserializes a [PoiInput] from a JSON map.
  factory PoiInput.fromJson(Map<String, dynamic> json) => _$PoiInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this point of interest on the server.
  ///
  /// Sends `addPoi` when [id] is `null` and `editPoi` otherwise, serializing this input as the `PoiInput`
  /// GraphQL input type. The server requires [latitude] and [longitude] on both operations: they are never
  /// sent as `null`, so a missing coordinate is answered with a bad request status and field errors instead.
  /// The description is always sent as a string. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Poi?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedPoi)`.
  Future<StandardResponse<Poi>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addPoi' : 'editPoi';
    try {
      final payload = toJson()
        ..['description'] = description ?? ''
        ..removeWhere((key, value) => value == null);

      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'PoiInput'),
              isRequired: true,
              value: payload,
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Poi.fragment)),
        ),
        _poiDecoder,
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
      Log.critical("layrz_sdk/PoiInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
