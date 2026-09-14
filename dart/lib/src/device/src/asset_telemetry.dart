part of '../device.dart';

/// Immutable last-known telemetry message reported by an asset.
///
/// [AssetTelemetry] mirrors [DeviceTelemetry] but is scoped to an asset (identified by [assetId])
/// rather than a single device, and additionally carries the asset's current [geofenceIds] and
/// calculated sensor values ([sensors]) alongside the raw received [payload].
@freezed
abstract class AssetTelemetry with _$AssetTelemetry {
  const AssetTelemetry._();

  /// Constructs an immutable [AssetTelemetry].
  const factory AssetTelemetry({
    /// ID of the message entity.
    required String id,

    /// ID of the unit.
    String? assetId,

    /// Unix of last reception date.
    @TimestampConverter() required DateTime receivedAt,

    /// Current geofences ID's where the unit is.
    List<String>? geofenceIds,

    /// Current position of the message.
    TelemetryPosition? position,

    /// Raw received payload values list of the message.
    List<TelemetrySensor>? payload,

    /// Current sensor values list of the message.
    List<TelemetrySensor>? sensors,
  }) = _AssetTelemetry;

  /// Deserializes an [AssetTelemetry] from a JSON map.
  factory AssetTelemetry.fromJson(Map<String, dynamic> json) => _$AssetTelemetryFromJson(json);
}
