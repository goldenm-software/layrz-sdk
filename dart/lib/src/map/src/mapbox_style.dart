part of '../map.dart';

/// The Mapbox styles available through the Mapbox Static Tiles API.
///
/// A [MapLayer] whose [MapLayer.source] is [MapSource.mapbox] selects one or
/// more of these via [MapLayer.mapboxLayers].
@JsonEnum(alwaysCreate: true)
enum MapboxStyle {
  /// The Mapbox Streets style.
  ///
  /// Uses the username `mapbox` and the style `streets-v11`. The URL is
  /// `https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}`.
  ///
  /// Layrz API definition: `STREETS`
  @JsonValue('STREETS')
  streets,

  /// The Mapbox Navigation style.
  ///
  /// Uses the username `mapbox` and the style `navigation-day-v1` or
  /// `navigation-night-v1`. The URL is
  /// `https://api.mapbox.com/styles/v1/mapbox/navigation-day-v1/tiles/{z}/{x}/{y}?access_token={accessToken}`.
  ///
  /// Layrz API definition: `NAVIGATION`
  @JsonValue('NAVIGATION')
  navigation,

  /// The Mapbox Satellite Hybrid style.
  ///
  /// Uses the username `mapbox` and the style `satellite-streets-v12`. The
  /// URL is
  /// `https://api.mapbox.com/styles/v1/mapbox/satellite-streets-v12/tiles/{z}/{x}/{y}?access_token={accessToken}`.
  ///
  /// Layrz API definition: `SATELLITE_HYBRID`
  @JsonValue('SATELLITE_HYBRID')
  satelliteHybrid,

  /// The Mapbox Satellite style.
  ///
  /// Uses the username `mapbox` and the style `satellite-v9`. The URL is
  /// `https://api.mapbox.com/styles/v1/mapbox/satellite-v9/tiles/{z}/{x}/{y}?access_token={accessToken}`.
  ///
  /// Layrz API definition: `SATELLITE`
  @JsonValue('SATELLITE')
  satellite,

  /// The Mapbox Monochrome style.
  ///
  /// Uses the username `mapbox` and the style `light-v11` or `dark-v11`. The
  /// URL is
  /// `https://api.mapbox.com/styles/v1/mapbox/light-v11/tiles/{z}/{x}/{y}?access_token={accessToken}`.
  ///
  /// Layrz API definition: `MONOCHROME`
  @JsonValue('MONOCHROME')
  monochrome,

  /// A custom Mapbox style created using Mapbox Studio.
  ///
  /// The username and style id should be defined in [MapLayer.mapboxCustomUsername]
  /// and [MapLayer.mapboxCustomStyleId].
  ///
  /// Layrz API definition: `CUSTOM`
  @JsonValue('CUSTOM')
  custom,
  ;

  /// Returns the JSON representation of this style value (e.g., `STREETS`,
  /// `CUSTOM`).
  @override
  String toString() => toJson();

  /// Converts this [MapboxStyle] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'STREETS'`.
  String toJson() => _$MapboxStyleEnumMap[this] ?? 'STREETS';

  /// Converts a JSON string to a [MapboxStyle].
  ///
  /// Accepts the uppercase JSON values (e.g., `'STREETS'`, `'CUSTOM'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [streets] as the fallback default.
  static MapboxStyle fromJson(String json) =>
      _$MapboxStyleEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? MapboxStyle.streets;

  /// A human-readable label for this style, suitable for display in a
  /// selection UI (e.g., `'Mapbox Streets'`).
  String get description {
    switch (this) {
      case MapboxStyle.streets:
        return 'Mapbox Streets';
      case MapboxStyle.navigation:
        return 'Mapbox Navigation';
      case MapboxStyle.satelliteHybrid:
        return 'Mapbox Satellite Hybrid';
      case MapboxStyle.satellite:
        return 'Mapbox Satellite';
      case MapboxStyle.monochrome:
        return 'Mapbox Monochrome';
      case MapboxStyle.custom:
        return 'Mapbox Custom';
    }
  }
}
