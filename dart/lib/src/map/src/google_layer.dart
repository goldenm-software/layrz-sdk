part of '../map.dart';

/// The Google Maps layer types available through the Google Maps Map Tiles
/// API.
///
/// A [MapLayer] whose [MapLayer.source] is [MapSource.google] selects one or
/// more of these via [MapLayer.googleLayers].
@JsonEnum(alwaysCreate: true)
enum GoogleMapLayer {
  /// The standard road map layer.
  ///
  /// Layrz API definition: `ROADMAP`
  @JsonValue('ROADMAP')
  roadmap,

  /// The satellite imagery layer.
  ///
  /// Layrz API definition: `SATELLITE`
  @JsonValue('SATELLITE')
  satellite,

  /// The terrain (physical relief) layer.
  ///
  /// Layrz API definition: `TERRAIN`
  @JsonValue('TERRAIN')
  terrain,

  /// The hybrid layer, combining satellite imagery with road labels.
  ///
  /// Layrz API definition: `HYBRID`
  @JsonValue('HYBRID')
  hybrid,
  ;

  /// Returns the JSON representation of this layer value (e.g., `ROADMAP`,
  /// `HYBRID`).
  @override
  String toString() => toJson();

  /// Converts this [GoogleMapLayer] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'ROADMAP'`.
  String toJson() => _$GoogleMapLayerEnumMap[this] ?? 'ROADMAP';

  /// Converts a JSON string to a [GoogleMapLayer].
  ///
  /// Accepts the uppercase JSON values (e.g., `'ROADMAP'`, `'SATELLITE'`)
  /// from the server wire format. If the input does not match any known
  /// value, returns [roadmap] as the fallback default.
  static GoogleMapLayer fromJson(String json) =>
      _$GoogleMapLayerEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? GoogleMapLayer.roadmap;

  /// A human-readable label for this layer, suitable for display in a
  /// selection UI (e.g., `'Google Roadmap'`).
  String get description {
    switch (this) {
      case GoogleMapLayer.roadmap:
        return 'Google Roadmap';
      case GoogleMapLayer.satellite:
        return 'Google Satellite';
      case GoogleMapLayer.terrain:
        return 'Google Terrain';
      case GoogleMapLayer.hybrid:
        return 'Google Hybrid';
    }
  }
}
