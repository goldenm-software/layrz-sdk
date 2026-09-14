part of '../../workspace.dart';

/// The connectivity-indicator segment configuration of a map card.
@freezed
abstract class MapCardConnectionConfiguration with _$MapCardConnectionConfiguration {
  /// Constructs an immutable [MapCardConnectionConfiguration].
  const factory MapCardConnectionConfiguration({
    /// Indicates if the connection indicatpr segment is enabled.
    @Default(true) bool indicator,

    /// Indicates if the address segment is enabled.
    @Default(false) bool address,

    /// Indicates if the time segment is enabled.
    @Default(false) bool time,
  }) = _MapCardConnectionConfiguration;

  /// Deserializes a [MapCardConnectionConfiguration] from a JSON map.
  factory MapCardConnectionConfiguration.fromJson(Map<String, dynamic> json) =>
      _$MapCardConnectionConfigurationFromJson(json);
}

/// [MapCardConnectionConfigurationInput] is the input variant of [MapCardConnectionConfiguration].
@unfreezed
abstract class MapCardConnectionConfigurationInput with _$MapCardConnectionConfigurationInput {
  /// Constructs a mutable [MapCardConnectionConfigurationInput].
  factory MapCardConnectionConfigurationInput({
    /// Indicates if the connection indicatpr segment is enabled.
    @Default(true) bool indicator,

    /// Indicates if the address segment is enabled.
    @Default(false) bool address,

    /// Indicates if the time segment is enabled.
    @Default(false) bool time,
  }) = _MapCardConnectionConfigurationInput;

  /// Deserializes a [MapCardConnectionConfigurationInput] from a JSON map.
  factory MapCardConnectionConfigurationInput.fromJson(Map<String, dynamic> json) =>
      _$MapCardConnectionConfigurationInputFromJson(json);
}
