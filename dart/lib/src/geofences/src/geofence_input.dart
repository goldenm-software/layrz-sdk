part of '../geofences.dart';

/// Mutable input data for creating or updating a [Geofence].
///
/// [GeofenceInput] mirrors the fields of [Geofence] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new geofence;
/// otherwise it updates the existing one.
@unfreezed
abstract class GeofenceInput with _$GeofenceInput {
  /// Private constructor used by the code generator.
  const GeofenceInput._();

  /// Constructs a mutable [GeofenceInput].
  factory GeofenceInput({
    /// ID of the geofence entity, or null when creating a new one. This ID is unique.
    String? id,

    /// Name of the geofence. Defaults to an empty string.
    @Default("") String name,

    /// Description of the geofence. Defaults to an empty string.
    @Default("") String description,

    /// Color of the geofence in hexadecimal code. Defaults to blue.
    @ColorConverter() @Default(Color(0xFF2196F3)) Color color,

    /// Mode of geofence, check the documentation of [GeofenceMode] for more information.
    /// Defaults to [GeofenceMode.radial].
    @JsonKey(unknownEnumValue: GeofenceMode.radial) @Default(GeofenceMode.radial) GeofenceMode mode,

    /// Radius of the geofence in meters. If mode is [GeofenceMode.linear], this field will be the
    /// weight of the geofence. For [GeofenceMode.polygon], this field will be ignored. Defaults to
    /// 100.
    @Default(100) double radius,

    /// The points that define the geofence's boundary. Defaults to an empty list.
    @Default([]) List<GeofencePointInput> path,

    /// [category] refers to the type of geofence. Defaults to [GeofenceCategory.none].
    @JsonKey(unknownEnumValue: GeofenceCategory.none) @Default(GeofenceCategory.none) GeofenceCategory category,

    /// List of children geofence IDs. Defaults to an empty list.
    @Default([]) List<String> childrenIds,

    /// List of custom fields. Defaults to an empty list.
    @Default([]) List<CustomFieldInput> customFields,

    /// Asset to which the geofence is linked, or null if not linked.
    String? assetId,
  }) = _GeofenceInput;

  /// Deserializes a [GeofenceInput] from a JSON map.
  factory GeofenceInput.fromJson(Map<String, dynamic> json) => _$GeofenceInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this geofence on the server.
  ///
  /// Sends the mutation named by [GeofenceVariant.addMutationName] when [id]
  /// is null, or by [GeofenceVariant.editMutationName] when [id] is set,
  /// both with this input serialized as the `GeofenceInput` GraphQL input
  /// type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Geofence?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedGeofence)`.
  Future<StandardResponse<Geofence>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,

    /// The ecosystem variant to save the geofence for.
    GeofenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? variant.addMutationName : variant.editMutationName;
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'GeofenceInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Geofence.fragment(variant))),
        ),
        _geofenceDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/GeofenceInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
