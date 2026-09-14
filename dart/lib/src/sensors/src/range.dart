part of '../sensors.dart';

/// Immutable linear conversion point for a [Sensor]'s [Sensor.ranges].
///
/// A [SensorRange] maps an input value ([x]) to an output value ([y]), used by
/// [SensorType.interval] linear conversions. Use [SensorRangeInput] for creating or updating a
/// sensor's ranges.
@freezed
abstract class SensorRange with _$SensorRange {
  const factory SensorRange({
    /// [x] means the input value of the sensor.
    required double x,

    /// [y] means the output value of the sensor.
    required double y,
  }) = _SensorRange;

  /// Deserializes a [SensorRange] from a JSON map.
  factory SensorRange.fromJson(Map<String, dynamic> json) => _$SensorRangeFromJson(json);
}

/// Mutable input data for creating or updating a [SensorRange].
///
/// [SensorRangeInput] mirrors the fields of [SensorRange] but is mutable and provides sensible
/// defaults, making it suitable for form binding before submission.
@unfreezed
abstract class SensorRangeInput with _$SensorRangeInput {
  factory SensorRangeInput({
    /// [x] means the input value of the sensor. Defaults to `0.0`.
    @Default(0.0) double x,

    /// [y] means the output value of the sensor. Defaults to `0.0`.
    @Default(0.0) double y,
  }) = _SensorRangeInput;

  /// Deserializes a [SensorRangeInput] from a JSON map.
  factory SensorRangeInput.fromJson(Map<String, dynamic> json) => _$SensorRangeInputFromJson(json);
}
