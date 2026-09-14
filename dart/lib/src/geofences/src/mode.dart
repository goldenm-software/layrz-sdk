part of '../geofences.dart';

/// The shape used to define a [Geofence]'s boundary.
///
/// [GeofenceMode] indicates how the [Geofence.path] points are interpreted:
/// as a single center point with a radius, as a line with a weight, or as a
/// closed polygon.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `RADIAL`,
/// `POLYGON`). Use [toJson] and [fromJson] to convert between enum and wire
/// format.
///
/// If deserialization encounters an unknown mode value, it defaults to
/// [radial].
@JsonEnum(alwaysCreate: true)
enum GeofenceMode {
  /// [radial] - The geofence is a circle defined by a center point and a
  /// radius (in meters). This is the fallback value used when an unknown
  /// mode is received.
  @JsonValue('RADIAL')
  radial,

  /// [linear] - The geofence is a line between two or more points. The
  /// `radius` field is reinterpreted as the line's weight in meters.
  @JsonValue('LINEAR')
  linear,

  /// [polygon] - The geofence is a closed polygon defined by three or more
  /// points. The `radius` field is ignored.
  @JsonValue('POLYGON')
  polygon,
  ;

  /// Returns the JSON representation of this mode value (e.g., `RADIAL`,
  /// `POLYGON`).
  @override
  String toString() => toJson();

  /// Converts this [GeofenceMode] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member (e.g.,
  /// `'RADIAL'` for [radial]). If the enum value is not found in the
  /// generated map (should never occur), defaults to `'RADIAL'`.
  String toJson() => _$GeofenceModeEnumMap[this] ?? 'RADIAL';

  /// Converts a JSON string to a [GeofenceMode].
  ///
  /// Accepts the uppercase JSON values (e.g., `'RADIAL'`, `'LINEAR'`) from
  /// the server wire format. If the input does not match any known mode,
  /// returns [radial] as the fallback default.
  static GeofenceMode fromJson(String json) =>
      _$GeofenceModeEnumMap.entries
          .firstWhereOrNull((e) => e.value == json)
          ?.key ??
      GeofenceMode.radial;
}

/// Legacy [JsonConverter] for [GeofenceMode].
@Deprecated('Use the native enum methods instead')
class GeofenceModeConverter implements JsonConverter<GeofenceMode, String> {
  /// Constructs a [GeofenceModeConverter].
  @Deprecated('Use the native enum methods instead')
  const GeofenceModeConverter();

  /// Converts the wire JSON string to a [GeofenceMode].
  @override
  GeofenceMode fromJson(String json) {
    return GeofenceMode.fromJson(json);
  }

  /// Converts a [GeofenceMode] to its wire JSON string.
  @override
  String toJson(GeofenceMode object) {
    return object.toJson();
  }
}

/// Legacy [JsonConverter] for a nullable [GeofenceMode].
@Deprecated('Use the native enum methods instead')
class GeofenceModeOrNullConverter
    implements JsonConverter<GeofenceMode?, String?> {
  /// Constructs a [GeofenceModeOrNullConverter].
  @Deprecated('Use the native enum methods instead')
  const GeofenceModeOrNullConverter();

  /// Converts the wire JSON string to a [GeofenceMode], or null.
  @override
  GeofenceMode? fromJson(String? json) {
    if (json == null) return null;
    return GeofenceMode.fromJson(json);
  }

  /// Converts a [GeofenceMode] to its wire JSON string, or null.
  @override
  String? toJson(GeofenceMode? object) {
    if (object == null) return null;
    return object.toJson();
  }
}
