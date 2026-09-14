part of '../../workspace.dart';

/// The full per-asset card configuration for a workspace's map monitor.
@freezed
abstract class MapCardSensors with _$MapCardSensors {
  /// Constructs an immutable [MapCardSensors].
  const factory MapCardSensors({
    /// Represents the ID of the asset
    required String assetId,

    /// Represents the alerts configuration
    required MapCardAlertConfiguration alerts,

    /// Represents the connection configuration
    required MapCardConnectionConfiguration connection,

    /// Represetns the sensors configuration
    required MapCardSensorsConfiguration sensors,
  }) = _MapCardSensors;

  /// Deserializes a [MapCardSensors] from a JSON map.
  factory MapCardSensors.fromJson(Map<String, dynamic> json) => _$MapCardSensorsFromJson(json);
}

/// [MapCardSensorsInput] is the input variant of [MapCardSensors].
@unfreezed
abstract class MapCardSensorsInput with _$MapCardSensorsInput {
  /// Constructs a mutable [MapCardSensorsInput].
  factory MapCardSensorsInput({
    /// Represents the ID of the asset
    String? assetId,

    /// Represents the alerts configuration
    MapCardAlertConfigurationInput? alerts,

    /// Represents the connection configuration
    MapCardConnectionConfigurationInput? connection,

    /// Represetns the sensors configuration
    MapCardSensorsConfigurationInput? sensors,
  }) = _MapCardSensorsInput;

  /// Deserializes a [MapCardSensorsInput] from a JSON map.
  factory MapCardSensorsInput.fromJson(Map<String, dynamic> json) => _$MapCardSensorsInputFromJson(json);
}
