part of '../../workspace.dart';

/// The alert-count segment configuration of a map card.
@freezed
abstract class MapCardAlertConfiguration with _$MapCardAlertConfiguration {
  /// Constructs an immutable [MapCardAlertConfiguration].
  const factory MapCardAlertConfiguration({
    /// Represents the range of search results to be displayed on the map.
    @Default(MapCardMode.lastDay) @JsonKey(unknownEnumValue: MapCardMode.lastDay) MapCardMode range,

    /// Display the count of alerts in the map card.
    @Default(false) bool count,

    /// Indicates if the alert segment is enabled.
    @Default(true) bool enabled,
  }) = _MapCardAlertConfiguration;

  /// Deserializes a [MapCardAlertConfiguration] from a JSON map.
  factory MapCardAlertConfiguration.fromJson(Map<String, dynamic> json) => _$MapCardAlertConfigurationFromJson(json);
}

/// [MapCardAlertConfigurationInput] is the input variant of [MapCardAlertConfiguration].
@unfreezed
abstract class MapCardAlertConfigurationInput with _$MapCardAlertConfigurationInput {
  /// Constructs a mutable [MapCardAlertConfigurationInput].
  factory MapCardAlertConfigurationInput({
    /// Represents the range of search results to be displayed on the map.
    @Default(MapCardMode.lastDay) @JsonKey(unknownEnumValue: MapCardMode.lastDay) MapCardMode range,

    /// Display the count of alerts in the map card.
    @Default(false) bool count,

    /// Indicates if the alert segment is enabled.
    @Default(true) bool enabled,
  }) = _MapCardAlertConfigurationInput;

  /// Deserializes a [MapCardAlertConfigurationInput] from a JSON map.
  factory MapCardAlertConfigurationInput.fromJson(Map<String, dynamic> json) =>
      _$MapCardAlertConfigurationInputFromJson(json);
}
