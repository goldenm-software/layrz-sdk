part of '../locator.dart';

/// Immutable MQTT configuration of a [Locator].
@freezed
abstract class LocatorMqttConfig with _$LocatorMqttConfig {
  /// Private constructor used by the code generator.
  const LocatorMqttConfig._();

  /// Constructs an immutable [LocatorMqttConfig].
  const factory LocatorMqttConfig({
    /// Is the MQTT broker host.
    String? host,

    /// Is the MQTT broker port.
    int? port,

    /// Is the MQTT broker username.
    String? username,

    /// Is the MQTT broker password.
    String? password,

    /// Is the MQTT topic to subscribe to.
    String? topic,
  }) = _LocatorMqttConfig;

  /// Deserializes a [LocatorMqttConfig] from a JSON map.
  factory LocatorMqttConfig.fromJson(Map<String, dynamic> json) => _$LocatorMqttConfigFromJson(json);
}
