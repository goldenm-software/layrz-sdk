part of '../map.dart';

/// The tile provider a [MapLayer] draws its background from.
///
/// [MapSource] is used by map-rendering widgets to decide which tile
/// provider's credentials and style fields on [MapLayer] are relevant.
@JsonEnum(alwaysCreate: true)
enum MapSource {
  /// Mapbox tiles, served through the Mapbox Static Tiles API.
  ///
  /// More information about the service can be found here:
  /// https://docs.mapbox.com/api/maps/#static-tiles
  ///
  /// Layrz API definition: `MAPBOX`
  @JsonValue('MAPBOX')
  mapbox,

  /// Google Maps tiles, served through the Google Maps Map Tiles API.
  ///
  /// More information about the service can be found here:
  /// https://developers.google.com/maps/documentation/tile/overview
  ///
  /// Layrz API definition: `GOOGLE_MAPS`
  @JsonValue('GOOGLE_MAPS')
  google,

  /// OpenStreetMap tiles.
  ///
  /// Uses the OpenStreetMap tile server at
  /// `https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png`.
  ///
  /// Layrz API definition: `OSM`
  @JsonValue('OSM')
  osm,

  /// HERE Maps tiles, served through the HERE Map Raster Tiles API v3.
  ///
  /// More information about the service can be found here:
  /// https://www.here.com/docs/bundle/raster-tile-api-v3-api-reference/page/index.html
  ///
  /// Layrz API definition: `HERE`
  @JsonValue('HERE')
  here,

  /// A custom raster tile server.
  ///
  /// Should define a valid URL with `{x}`, `{y}`, and `{z}` placeholders
  /// using the slippy map format.
  ///
  /// Layrz API definition: `CUSTOM_RASTER`
  @JsonValue('CUSTOM_RASTER')
  custom,
  ;

  /// Returns the JSON representation of this source value (e.g., `MAPBOX`,
  /// `CUSTOM_RASTER`).
  @override
  String toString() => toJson();

  /// Converts this [MapSource] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'CUSTOM_RASTER'`.
  String toJson() => _$MapSourceEnumMap[this] ?? 'CUSTOM_RASTER';

  /// Converts a JSON string to a [MapSource].
  ///
  /// Accepts the uppercase JSON values (e.g., `'MAPBOX'`, `'OSM'`) from the
  /// server wire format. If the input does not match any known value,
  /// returns [custom] as the fallback default.
  static MapSource fromJson(String json) =>
      _$MapSourceEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? MapSource.custom;
}
