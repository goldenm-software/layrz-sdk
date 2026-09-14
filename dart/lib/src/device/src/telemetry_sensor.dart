part of '../device.dart';

/// Immutable single sensor value reported inside a telemetry message.
@freezed
abstract class TelemetrySensor with _$TelemetrySensor {
  const TelemetrySensor._();

  /// Constructs an immutable [TelemetrySensor].
  const factory TelemetrySensor({
    /// Dynamic value registered.
    required dynamic value,

    /// Parameter registered.
    required String parameter,
  }) = _TelemetrySensor;

  /// Deserializes a [TelemetrySensor] from a JSON map.
  factory TelemetrySensor.fromJson(Map<String, dynamic> json) => _$TelemetrySensorFromJson(json);
}
