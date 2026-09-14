part of '../device.dart';

/// The transport channel a [DeviceCommand] is sent through.
@JsonEnum(alwaysCreate: true)
enum CommandSource {
  /// [protocolNative] refers to the command is a native command.
  /// This command is sent from the server through the protocol channel and uses a native protocol.
  ///
  /// Layrz API Reference: `NATIVE`
  @JsonValue('NATIVE')
  protocolNative,

  /// [sms] refers to the command is a SMS command.
  /// Uses an `ExternalAccount` with a supported SMS provider to send the command.
  ///
  /// Layrz API Reference: `SMS`
  @JsonValue('SMS')
  sms,

  /// [psg] refers to the command is a PSG command.
  /// Uses the Portal MT API to send the command.
  ///
  /// Layrz API Reference: `PSG`
  @JsonValue('PSG')
  psg,

  /// [modbus] refers to the command is a modbus command.
  /// This command is sent from the server through the protocol channel and uses a modbus protocol.
  ///
  /// Layrz API Reference: `MODBUS`
  @JsonValue('MODBUS')
  modbus,

  /// [ble] refers to the command is a Bluetooth Low Energy command.
  /// This command is sent from the server through the protocol channel and uses a Bluetooth Low Energy
  /// protocol. When this command is selected, the interface should handle the payload using the
  /// protocol standard.
  ///
  /// Layrz API Reference: `BLE`
  @JsonValue('BLE')
  ble,

  /// [serial] refers to the command is a Serial command.
  /// This command is sent from the server through the protocol channel and uses a Serial protocol.
  /// When this command is selected, the interface should handle the payload using the protocol
  /// standard.
  ///
  /// Layrz API Reference: `SERIAL`
  @JsonValue('SERIAL')
  serial,
  ;

  /// Returns the JSON representation of this source value.
  @override
  String toString() => toJson();

  /// Converts this [CommandSource] to its wire JSON string.
  String toJson() => _$CommandSourceEnumMap[this] ?? 'NATIVE';

  /// Converts a JSON string to a [CommandSource]. Defaults to [protocolNative] for unknown values.
  static CommandSource fromJson(String json) {
    return _$CommandSourceEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        CommandSource.protocolNative;
  }
}
