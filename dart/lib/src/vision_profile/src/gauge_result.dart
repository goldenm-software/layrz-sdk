part of '../vision_profile.dart';

/// Immutable result of a single Layrz Vision gauge measurement.
@freezed
abstract class VisionGaugeResult with _$VisionGaugeResult {
  /// Constructs an immutable [VisionGaugeResult].
  const factory VisionGaugeResult({
    /// [id] is the unique identifier of the measurement.
    required String id,

    /// [result] is the result of the measurement.
    required double result,

    /// [performedAt] is the date and time when the measurement was performed.
    @TimestampConverter() required DateTime performedAt,
  }) = _VisionGaugeResult;

  /// Deserializes a [VisionGaugeResult] from a JSON map.
  factory VisionGaugeResult.fromJson(Map<String, dynamic> json) => _$VisionGaugeResultFromJson(json);
}
