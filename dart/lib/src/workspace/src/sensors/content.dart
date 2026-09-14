part of '../../workspace.dart';

/// One sensor value slot inside a [SensorGridItem] card.
@freezed
abstract class SensorGridContent with _$SensorGridContent {
  /// Constructs an immutable [SensorGridContent].
  const factory SensorGridContent({
    /// Represents the sensor ID
    String? sensorId,

    /// [dimensions] Represents the dimension of the sensor
    required GridDimension dimensions,

    /// Indicates if the sensor content has enabled the mask
    @Default(true) bool maskEnabled,

    /// [type] represents the type of sensor content
    @JsonKey(unknownEnumValue: SensorGridItemType.plain) @Default(SensorGridItemType.plain) SensorGridItemType type,

    /// [minimum] represents the minimum value of the sensor.
    double? minimum,

    /// [maximum] represents the maximum value of the sensor.
    double? maximum,
  }) = _SensorGridContent;

  /// Deserializes a [SensorGridContent] from a JSON map.
  factory SensorGridContent.fromJson(Map<String, dynamic> json) => _$SensorGridContentFromJson(json);
}

/// [SensorGridContentInput] is the input variant of [SensorGridContent].
@unfreezed
abstract class SensorGridContentInput with _$SensorGridContentInput {
  /// Constructs a mutable [SensorGridContentInput].
  factory SensorGridContentInput({
    /// Represents the sensor ID
    String? sensorId,

    /// Indicates if the sensor content has enabled the mask
    @Default(true) bool maskEnabled,

    /// [dimensions] represents the dimensions of the sensor content
    required GridDimensionInput dimensions,

    /// [type] represents the type of sensor content
    @JsonKey(unknownEnumValue: SensorGridItemType.plain) @Default(SensorGridItemType.plain) SensorGridItemType type,

    /// [minimum] represents the minimum value of the sensor.
    double? minimum,

    /// [maximum] represents the maximum value of the sensor.
    double? maximum,
  }) = _SensorGridContentInput;

  /// Deserializes a [SensorGridContentInput] from a JSON map.
  factory SensorGridContentInput.fromJson(Map<String, dynamic> json) => _$SensorGridContentInputFromJson(json);
}
