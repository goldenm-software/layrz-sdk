part of '../map.dart';

/// A configurable map background layer.
///
/// [MapLayer] describes a single tile source (raster, Google Maps, Mapbox,
/// or HERE) that can be attached to an app, along with the branding
/// attribution shown over the map. Only the fields relevant to
/// [MapLayer.source] are meaningful; the rest are ignored by map-rendering
/// widgets. This model is typically obtained through a [RegisteredApp].
@freezed
abstract class MapLayer with _$MapLayer {
  /// Private constructor used by the code generator.
  const MapLayer._();

  /// Constructs an immutable [MapLayer].
  const factory MapLayer({
    /// The unique identifier of the layer.
    required String id,

    /// The name of the layer.
    required String name,

    /// The tile provider this layer draws its background from.
    @JsonKey(unknownEnumValue: MapSource.custom) required MapSource source,

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
  }) = _MapLayer;

  /// Deserializes a [MapLayer] from a JSON map.
  factory MapLayer.fromJson(Map<String, dynamic> json) => _$MapLayerFromJson(json);

  // coverage:ignore-start
  /// The GraphQL fragment definition for querying [MapLayer] fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'mapLayerFragment',
    onType: 'MapLayer',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'source'),
      GqlField(name: 'rasterServerLight'),
      GqlField(name: 'rasterServerDark'),
      GqlField(name: 'googleToken'),
      GqlField(name: 'googleLayers'),
      GqlField(name: 'mapboxToken'),
      GqlField(name: 'mapboxLayers'),
      GqlField(name: 'mapboxCustomUsername'),
      GqlField(name: 'mapboxCustomStyleId'),
      GqlField(name: 'hereToken'),
      GqlField(name: 'hereLayers'),
      GqlField(name: 'attributionUrl'),
      GqlField(name: 'attributionUrlDark'),
      GqlField(name: 'attributionWidth'),
      GqlField(name: 'attributionHeight'),
      GqlField(name: 'appsIds'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single [MapLayer] by its [id].
  ///
  /// Makes an authenticated GraphQL query (`mapLayers`) filtered by [id].
  /// The backend always returns `result` as a list, even when filtered down
  /// to a single entity, so the first element (if any) is returned.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching layer). Errors are logged internally.
  Future<MapLayer?> fetch({
    /// The API token for authentication. Obtain via the `login` mutation on
    /// the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Optional callback invoked with the response's status code, as a
    /// string (see [ApiStatus.toJson]).
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'mapLayers',
          variables: [
            GqlVariable(name: 'id', type: .id, value: id),
          ],
        )..add(
          GqlField(name: 'mapLayers', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/MapLayer/fetch(): No result in list");
            return null;
          }
          return MapLayer.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/MapLayer/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all [MapLayer]s available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`mapLayers`) to retrieve every
  /// [MapLayer] visible to the user. Authentication is carried solely via
  /// the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<MapLayer>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on
    /// the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Optional callback invoked with the response's status code, as a
    /// string (see [ApiStatus.toJson]).
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'mapLayers')..add(
          GqlField(name: 'mapLayers')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _mapLayerListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/MapLayer/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple [MapLayer]s by their [ids].
  ///
  /// Makes an authenticated GraphQL mutation (`deleteMapLayers`).
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `true` on success, or `false` on any error (network failure,
  /// authentication failure, or server error). Errors are logged internally.
  static Future<bool> delete({
    /// The API token for authentication. Obtain via the `login` mutation on
    /// the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// The list of [MapLayer] ids to delete.
    required List<String> ids,

    /// Optional callback invoked with the response's status code, as a
    /// string (see [ApiStatus.toJson]).
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteMapLayers',
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: ids,
            ),
          ],
        )..add(
          GqlField(name: 'deleteMapLayers', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
        (json) => true,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/MapLayer/delete(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a raw listing `result` payload into a list of [MapLayer].
/// Used by listing queries ([MapLayer.fetchAll]).
List<MapLayer> _mapLayerListDecoder(Object? json) {
  return List<MapLayer>.from(
    (json as List? ?? []).map((e) => MapLayer.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// Decodes a single-object `result` payload into a [MapLayer].
/// Used by [MapLayerInput.save].
MapLayer _mapLayerDecoder(Object? json) {
  return MapLayer.fromJson(Map<String, dynamic>.from(json as Map));
}
