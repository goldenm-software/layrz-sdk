part of '../modbus.dart';

/// The wire format of a [ModbusParameter] read/write operation.
///
/// [ModbusParameterSchema] indicates whether the modbus command targets a
/// single register/coil, or reads/writes multiple contiguous ones.
@JsonEnum(alwaysCreate: true)
enum ModbusParameterSchema {
  /// [single] indicates the parameter reads/writes a single register or coil.
  @JsonValue('SINGLE')
  single,

  /// [multiple] indicates the parameter reads/writes multiple contiguous
  /// registers or coils.
  @JsonValue('MULTIPLE')
  multiple,
  ;

  /// Returns the JSON representation of this schema value.
  @override
  String toString() => toJson();

  /// Converts this [ModbusParameterSchema] to its wire JSON string.
  String toJson() => _$ModbusParameterSchemaEnumMap[this] ?? 'SINGLE';

  /// Converts a JSON string to a [ModbusParameterSchema].
  ///
  /// Defaults to [single] when the value is unrecognized.
  static ModbusParameterSchema fromJson(String json) {
    return _$ModbusParameterSchemaEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        ModbusParameterSchema.single;
  }
}
