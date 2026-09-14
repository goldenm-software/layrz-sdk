part of '../modbus.dart';

/// A single Modbus register/coil read operation configured for a device.
@freezed
abstract class ModbusParameter with _$ModbusParameter {
  const ModbusParameter._();

  /// Constructs an immutable [ModbusParameter].
  const factory ModbusParameter({
    /// [schema] represents the format of the command, it can be either single or multiple.
    @Default(ModbusParameterSchema.single) ModbusParameterSchema schema,

    /// [splitEach] represents when the data is split into multiple parts, how many parts should be split.
    /// This value is a hexadecimal value
    String? splitEach,

    /// [controllerAddress] is the controller or slave ID of the modbus device.
    /// This value is a Hexadecimal number from 0x01 to 0xFF inclusive, the stored value shouldn't be prefixed with 0x.
    required String controllerAddress,

    /// [functionCode] is the function code of the modbus device.
    /// This value is a Hexadecimal number from 0x01 to 0xFF inclusive, the stored value shouldn't be prefixed with 0x.
    required String functionCode,

    /// [dataAddress] is the data address of the modbus device.
    /// This value is a Hexadecimal number from 0x0000 to 0xFFFF inclusive, the stored value shouldn't be
    /// prefixed with 0x.
    required String dataAddress,

    /// [dataLength] is the data length of the modbus device.
    /// This value is a Hexadecimal number from 0x0001 to 0xFFFF inclusive, the stored value shouldn't be
    /// prefixed with 0x.
    required String dataLength,
  }) = _ModbusParameter;

  /// Deserializes a [ModbusParameter] from a JSON map.
  factory ModbusParameter.fromJson(Map<String, dynamic> json) => _$ModbusParameterFromJson(json);

  // coverage:ignore-start
  /// [fragment] is a GraphQL fragment that contains the fields
  static GqlFragment get fragment => GqlFragment(
    name: 'modbusParameterFragment',
    onType: 'ModbusParameter',
    fields: [
      GqlField(name: 'schema'),
      GqlField(name: 'splitEach'),
      GqlField(name: 'controllerAddress'),
      GqlField(name: 'functionCode'),
      GqlField(name: 'dataAddress'),
      GqlField(name: 'dataLength'),
    ],
  );
  // coverage:ignore-end
}
