part of '../actions.dart';

/// A single Zigbee expose key/value pair applied by an [ActionZigbeeSettings].
@freezed
abstract class ActionZigbeeSetting with _$ActionZigbeeSetting {
  /// Private constructor used by the code generator.
  const ActionZigbeeSetting._();

  /// Constructs an immutable [ActionZigbeeSetting].
  const factory ActionZigbeeSetting({
    /// The name of the expose from the Zigbee device.
    required String key,

    /// The value to set for the expose. Can be any type (String, num, bool, ...)
    /// depending on the expose definition.
    dynamic value,
  }) = _ActionZigbeeSetting;

  /// Deserializes an [ActionZigbeeSetting] from a JSON map.
  factory ActionZigbeeSetting.fromJson(Map<String, dynamic> json) => _$ActionZigbeeSettingFromJson(json);
}

/// Immutable Zigbee settings applied by an [Action] whose [ActionType] is
/// [ActionType.zigbeeChange].
@freezed
abstract class ActionZigbeeSettings with _$ActionZigbeeSettings {
  /// Private constructor used by the code generator.
  const ActionZigbeeSettings._();

  /// Constructs an immutable [ActionZigbeeSettings].
  const factory ActionZigbeeSettings({
    /// The ID of the [Device] bound to the Zigbee device to change.
    String? deviceId,

    /// The [Device] bound to the Zigbee device to change.
    Device? device,

    /// The list of Zigbee settings to apply.
    @Default([]) List<ActionZigbeeSetting> settings,
  }) = _ActionZigbeeSettings;

  /// Deserializes an [ActionZigbeeSettings] from a JSON map.
  factory ActionZigbeeSettings.fromJson(Map<String, dynamic> json) => _$ActionZigbeeSettingsFromJson(json);
}

/// Mutable input data for the Zigbee settings applied by an [ActionInput] whose
/// [ActionInput.kind] is [ActionType.zigbeeChange].
@unfreezed
abstract class ActionZigbeeSettingsInput with _$ActionZigbeeSettingsInput {
  /// Private constructor used by the code generator.
  const ActionZigbeeSettingsInput._();

  /// Constructs a mutable [ActionZigbeeSettingsInput].
  factory ActionZigbeeSettingsInput({
    /// The ID of the [Device] bound to the Zigbee device to change.
    String? deviceId,

    /// The list of Zigbee settings to apply. Defaults to an empty list.
    @Default([]) List<ActionZigbeeSetting> settings,
  }) = _ActionZigbeeSettingsInput;

  /// Deserializes an [ActionZigbeeSettingsInput] from a JSON map.
  factory ActionZigbeeSettingsInput.fromJson(Map<String, dynamic> json) =>
      _$ActionZigbeeSettingsInputFromJson(json);
}
