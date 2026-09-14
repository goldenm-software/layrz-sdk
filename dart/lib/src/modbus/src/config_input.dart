part of '../modbus.dart';

/// [ModbusConfigInput] is the input variant of [ModbusConfig].
@unfreezed
abstract class ModbusConfigInput with _$ModbusConfigInput {
  const ModbusConfigInput._();

  /// Constructs a mutable [ModbusConfigInput].
  factory ModbusConfigInput({
    /// [isEnabled] is a boolean value that determines if the modbus device is enabled.
    @Default(false) bool isEnabled,

    /// [parameters] is a list of modbus parameters.
    @Default([]) List<ModbusParameterInput> parameters,

    /// [portId] is the port ID of the modbus device.
    /// This value is refered from the `InboundProtocol.modbusPorts` list.
    String? portId,
  }) = _ModbusConfigInput;

  /// Deserializes a [ModbusConfigInput] from a JSON map.
  factory ModbusConfigInput.fromJson(Map<String, dynamic> json) => _$ModbusConfigInputFromJson(json);
}
