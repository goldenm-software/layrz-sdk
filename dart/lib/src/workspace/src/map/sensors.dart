part of '../../workspace.dart';

/// The sensor-list segment configuration of a map card.
@freezed
abstract class MapCardSensorsConfiguration with _$MapCardSensorsConfiguration {
  /// Constructs an immutable [MapCardSensorsConfiguration].
  const factory MapCardSensorsConfiguration({
    /// Indicates if the sensor segment is enabled.
    @Default(true) bool enabled,

    /// Represents the format of the sensor list.
    @JsonKey(unknownEnumValue: MapSensorMode.grid) @Default(MapSensorMode.grid) MapSensorMode mode,

    /// Indicates the sensors assigned
    @Default([]) List<String> values,
  }) = _MapCardSensorsConfiguration;

  /// Deserializes a [MapCardSensorsConfiguration] from a JSON map.
  factory MapCardSensorsConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MapCardSensorsConfigurationFromJson(json);
}

/// [MapCardSensorsConfigurationInput] is the input variant of [MapCardSensorsConfiguration].
@unfreezed
abstract class MapCardSensorsConfigurationInput with _$MapCardSensorsConfigurationInput {
  /// Constructs a mutable [MapCardSensorsConfigurationInput].
  factory MapCardSensorsConfigurationInput({
    /// Indicates if the sensor segment is enabled.
    @Default(true) bool enabled,

    /// Represents the format of the sensor list.
    @JsonKey(unknownEnumValue: MapSensorMode.grid) @Default(MapSensorMode.grid) MapSensorMode mode,

    /// Indicates the sensors assigned
    @Default([]) List<String> values,
  }) = _MapCardSensorsConfigurationInput;

  /// Deserializes a [MapCardSensorsConfigurationInput] from a JSON map.
  factory MapCardSensorsConfigurationInput.fromJson(Map<String, dynamic> json) =>
      _$MapCardSensorsConfigurationInputFromJson(json);
}
