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

  /// [save] saves the [MapLayerInput] to the server
  /// It returns an [ApiResponse] with the saved [MapLayer] on success, or errors on failure.
  /// Returns `null` on a network/server error.
  Future<ApiResponse<MapLayer, Map<String, dynamic>>?> save({
    /// [apiToken] is the API token to use for authentication. You can get one using the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final opName = id == null ? 'addMapLayer' : 'editMapLayer';
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
          name: opName,
        )..add(
          GqlField(name: opName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: MapLayer.fragment)),
        ),
        _mapLayerDecoder,
      );

      if (response.status == ApiStatus.internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_sdk/MapLayerInput/save(): No response from server");
        return null;
      }

      if (response.status != ApiStatus.ok) {
        onResponse?.call(response.status.toJson());
        return ApiResponse(
          status: response.status,
          errors: response.errors,
        );
      }

      return ApiResponse(status: ApiStatus.ok, result: response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/MapLayerInput/save(): General exception => $e\n$stack");
      return null;
    }
  }
}
