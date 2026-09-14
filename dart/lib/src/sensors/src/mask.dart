part of '../sensors.dart';

/// Immutable value-to-presentation override for a [Sensor]'s [Sensor.mask].
///
/// A [MaskPoint] replaces the raw [value] of a sensor with a friendlier [text], [color], or [icon]
/// when the sensor's calculated value matches [value]. Use [MaskPointInput] for creating or
/// updating a sensor's mask.
@freezed
abstract class MaskPoint with _$MaskPoint {
  const factory MaskPoint({
    /// [color] of the mask point, will convert the color ignoring the dark/light theme setting.
    @ColorOrNullConverter() Color? color,

    /// [text] of the mask point, will replace the value of the mask point when is not null.
    String? text,

    /// [value] of the mask point.
    required String value,

    /// [icon] of the mask point. To send it to API, will convert to javascript codename, but from Flutter execution
    /// will convert to MdiRemapIcon entity.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [duration] of the mask point, will be used to determine how long since report to show the mask point. If
    /// null, will use the default value of the sensor.
    @DurationConverter() Duration? duration,
  }) = _MaskPoint;

  /// Deserializes a [MaskPoint] from a JSON map.
  factory MaskPoint.fromJson(Map<String, dynamic> json) => _$MaskPointFromJson(json);
}

/// Mutable input data for creating or updating a [MaskPoint].
///
/// [MaskPointInput] mirrors the fields of [MaskPoint] but is mutable, making it suitable for form
/// binding before submission.
@unfreezed
abstract class MaskPointInput with _$MaskPointInput {
  factory MaskPointInput({
    /// [color] of the mask point, will convert the color ignoring the dark/light theme setting.
    @ColorOrNullConverter() Color? color,

    /// [text] of the mask point, will replace the value of the mask point when is not null.
    String? text,

    /// [value] of the mask point.
    String? value,

    /// [icon] of the mask point.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [duration] of the mask point, will be used to determine how long since report to show the mask point. If
    /// null, will use the default value of the sensor.
    @DurationConverter() Duration? duration,
  }) = _MaskPointInput;

  /// Deserializes a [MaskPointInput] from a JSON map.
  factory MaskPointInput.fromJson(Map<String, dynamic> json) => _$MaskPointInputFromJson(json);
}
