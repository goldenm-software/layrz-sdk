part of '../device.dart';

/// Immutable geographic position reported inside a telemetry message.
@freezed
abstract class TelemetryPosition with _$TelemetryPosition {
  const TelemetryPosition._();

  /// Constructs an immutable [TelemetryPosition].
  const factory TelemetryPosition({
    /// Latitude in decimal degrees format.
    double? latitude,

    /// Longitude in decimal degrees format.
    double? longitude,

    /// Registered altitude, defined in meters.
    double? altitude,

    /// Registered speed, defined in kilometers per hour.
    double? speed,

    /// Registered direction, defined in degrees.
    double? direction,

    /// Number of satellites connected to.
    int? satellites,

    /// Horizontal dilution of precision registered for.
    double? hdop,

    /// Unix of last reception date.
    @TimestampOrNullConverter() DateTime? timestamp,
  }) = _TelemetryPosition;

  /// Deserializes a [TelemetryPosition] from a JSON map.
  factory TelemetryPosition.fromJson(Map<String, dynamic> json) => _$TelemetryPositionFromJson(json);
}
