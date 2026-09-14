part of '../map.dart';

/// The HERE Maps styles available through the HERE Map Raster Tiles API v3.
///
/// A [MapLayer] whose [MapLayer.source] is [MapSource.here] selects one or
/// more of these via [MapLayer.hereLayers].
@JsonEnum(alwaysCreate: true)
enum HereStyle {
  /// The `explore.day` / `explore.night` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=explore.night&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `EXPLORE`
  @JsonValue('EXPLORE')
  explore,

  /// The `lite.day` / `lite.night` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=lite.night&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `LITE`
  @JsonValue('LITE')
  lite,

  /// The `topo.day` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=topo.day&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `TOPO`
  @JsonValue('TOPO')
  topo,

  /// The `satellite.day` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=satellite.day&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `SATELLITE`
  @JsonValue('SATELLITE')
  satellite,

  /// The `lite.satellite.day` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=lite.satellite.day&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `HYBRID`
  @JsonValue('HYBRID')
  hybrid,

  /// The `logistics.day` style.
  ///
  /// Uses the URL
  /// `https://maps.hereapi.com/v3/base/mc/{z}/{x}/{y}/png8?style=logistics.day&apiKey={apiKey}`.
  ///
  /// Layrz API definition: `LOGISTICS`
  @JsonValue('LOGISTICS')
  logistics,
  ;

  /// Returns the JSON representation of this style value (e.g., `LITE`,
  /// `TOPO`).
  @override
  String toString() => toJson();

  /// Converts this [HereStyle] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'LITE'`.
  String toJson() => _$HereStyleEnumMap[this] ?? 'LITE';

  /// Converts a JSON string to a [HereStyle].
  ///
  /// Accepts the uppercase JSON values (e.g., `'LITE'`, `'TOPO'`) from the
  /// server wire format. If the input does not match any known value,
  /// returns [lite] as the fallback default.
  static HereStyle fromJson(String json) =>
      _$HereStyleEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? HereStyle.lite;

  /// A human-readable label for this style, suitable for display in a
  /// selection UI (e.g., `'HERE Lite'`).
  String get description {
    switch (this) {
      case HereStyle.explore:
        return 'HERE Explore';
      case HereStyle.lite:
        return 'HERE Lite';
      case HereStyle.topo:
        return 'HERE Topo';
      case HereStyle.satellite:
        return 'HERE Satellite';
      case HereStyle.hybrid:
        return 'HERE Hybrid';
      case HereStyle.logistics:
        return 'HERE Logistics';
    }
  }
}
