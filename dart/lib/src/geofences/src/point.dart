part of '../geofences.dart';

/// A single geographic coordinate on a [Geofence]'s boundary.
///
/// [GeofencePoint] represents one vertex of a geofence's path, used when the
/// geofence [GeofenceMode] is [GeofenceMode.linear] or [GeofenceMode.polygon],
/// or as the center point when [GeofenceMode.radial]. Use [GeofencePointInput]
/// when submitting points to the server.
@freezed
abstract class GeofencePoint with _$GeofencePoint {
  /// Private constructor used by the code generator.
  const GeofencePoint._();

  /// Constructs an immutable [GeofencePoint].
  const factory GeofencePoint({
    /// The latitude of this point, in decimal degrees.
    required double latitude,

    /// The longitude of this point, in decimal degrees.
    required double longitude,
  }) = _GeofencePoint;

  /// Deserializes a [GeofencePoint] from a JSON map.
  factory GeofencePoint.fromJson(Map<String, dynamic> json) => _$GeofencePointFromJson(json);

  /// Converts this point to a [LatLng], for use with map-rendering widgets.
  LatLng get toLatLng => LatLng(latitude, longitude);
}

/// Mutable input data for submitting a single point of a [Geofence]'s path.
///
/// [GeofencePointInput] mirrors the fields of [GeofencePoint] but is mutable,
/// making it suitable for form binding before submission via
/// [GeofenceInput.save].
@unfreezed
abstract class GeofencePointInput with _$GeofencePointInput {
  /// Private constructor used by the code generator.
  GeofencePointInput._();

  /// Constructs a mutable [GeofencePointInput].
  factory GeofencePointInput({
    /// The latitude of this point, in decimal degrees.
    required double latitude,

    /// The longitude of this point, in decimal degrees.
    required double longitude,
  }) = _GeofencePointInput;

  /// Deserializes a [GeofencePointInput] from a JSON map.
  factory GeofencePointInput.fromJson(Map<String, dynamic> json) => _$GeofencePointInputFromJson(json);

  /// Converts this point to a [LatLng], for use with map-rendering widgets.
  LatLng get toLatLng => LatLng(latitude, longitude);
}

/// An optional geographic coordinate.
///
/// [GeoPoint] is similar to [GeofencePoint], but both [latitude] and
/// [longitude] are nullable, used in contexts where a coordinate may be
/// absent (e.g., an entity that has not yet been located).
@freezed
abstract class GeoPoint with _$GeoPoint {
  /// Private constructor used by the code generator.
  const GeoPoint._();

  /// Constructs an immutable [GeoPoint].
  const factory GeoPoint({
    /// The latitude of this point, in decimal degrees, or null if unknown.
    double? latitude,

    /// The longitude of this point, in decimal degrees, or null if unknown.
    double? longitude,
  }) = _GeoPoint;

  /// Deserializes a [GeoPoint] from a JSON map.
  factory GeoPoint.fromJson(Map<String, dynamic> json) => _$GeoPointFromJson(json);

  /// Converts this point to a [LatLng], for use with map-rendering widgets, or
  /// `null` if [latitude] or [longitude] is unknown.
  LatLng? get toLatLng => latitude != null && longitude != null ? LatLng(latitude!, longitude!) : null;
}
