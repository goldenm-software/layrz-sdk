part of '../map.dart';

/// Mutable input data for creating or updating a [MapLayer].
///
/// [MapLayerInput] mirrors the fields of [MapLayer] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new layer;
/// otherwise it updates the existing one.
@unfreezed
abstract class MapLayerInput with _$MapLayerInput {
  /// Private constructor used by the code generator.
  const MapLayerInput._();

  /// Constructs a mutable [MapLayerInput].
  factory MapLayerInput({
    /// Unique identifier for this layer, or null when creating a new one.
    String? id,

    /// The name of the layer. Defaults to an empty string.
    @Default('') String name,

    /// The tile provider this layer draws its background from. Defaults to
    /// [MapSource.custom].
    @JsonKey(unknownEnumValue: MapSource.custom) @Default(MapSource.custom) MapSource source,

    /// The raster server URL for light mode and default rendering.
    ///
    /// Only used when [source] is [MapSource.custom].
    String? rasterServerLight,

    /// The raster server URL for dark mode.
    ///
    /// Only used when [source] is [MapSource.custom].
    String? rasterServerDark,

    /// The Google Maps token with Map Tiles API capabilities.
    ///
    /// Only used when [source] is [MapSource.google].
    String? googleToken,

    /// The list of enabled Google Maps layers.
    ///
    /// Only used when [source] is [MapSource.google].
    @JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) List<GoogleMapLayer>? googleLayers,

    /// The Mapbox token with Static Tiles API capabilities.
    ///
    /// Only used when [source] is [MapSource.mapbox].
    String? mapboxToken,

    /// The list of enabled Mapbox styles for the layer.
    ///
    /// Only used when [source] is [MapSource.mapbox].
    @JsonKey(unknownEnumValue: MapboxStyle.navigation) List<MapboxStyle>? mapboxLayers,

    /// The Mapbox custom username.
    ///
    /// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
    /// contains [MapboxStyle.custom].
    String? mapboxCustomUsername,

    /// The Mapbox custom style id.
    ///
    /// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
    /// contains [MapboxStyle.custom].
    String? mapboxCustomStyleId,

    /// The HERE token with Map Tiles API capabilities.
    ///
    /// Only used when [source] is [MapSource.here].
    String? hereToken,

    /// The list of enabled HERE Maps styles.
    ///
    /// Only used when [source] is [MapSource.here].
    @JsonKey(unknownEnumValue: HereStyle.lite) List<HereStyle>? hereLayers,

    /// The URI for the attribution logo shown over the layer.
    @Default('https://cdn.layrz.com/resources/layrz/logo/normal.png') String attributionUrl,

    /// The URI for the attribution logo shown over the layer in dark mode.
    String? attributionUrlDark,

    /// The width of the attribution logo, in logical pixels.
    @Default(100) double attributionWidth,

    /// The height of the attribution logo, in logical pixels.
    @Default(30) double attributionHeight,

    /// The list of app ids this layer is associated with.
    @Default([]) List<String> appsIds,
  }) = _MapLayerInput;

  /// Deserializes a [MapLayerInput] from a JSON map.
  factory MapLayerInput.fromJson(Map<String, dynamic> json) => _$MapLayerInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this map layer on the server.
  ///
  /// Sends `addMapLayer` when [id] is null, or `editMapLayer` when [id] is
  /// set, both with this input serialized as the `MapLayerInput` GraphQL
  /// input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, MapLayer?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedMapLayer)`.
  Future<StandardResponse<MapLayer>> save({
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
    final operation = id == null ? 'addMapLayer' : 'editMapLayer';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'MapLayerInput'),
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
            ..add(GqlField(name: 'result', fragment: MapLayer.fragment)),
        ),
        _mapLayerDecoder,
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
        "layrz_sdk/MapLayerInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
