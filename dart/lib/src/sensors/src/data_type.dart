part of '../sensors.dart';

/// The primitive JSON data type a [Sensor]'s computed value is decoded as.
@JsonEnum(alwaysCreate: true)
enum SensorDataType {
  /// API reference: INT
  /// Defines the data type as an integer.
  @JsonValue('INT')
  integer,

  /// API reference: FLOAT
  /// Defines the data type as a float.
  @JsonValue('FLOAT')
  float,

  /// API reference: STR
  /// Defines the data type as a string.
  @JsonValue('STR')
  string,

  /// API reference: BOOL
  /// Defines the data type as a boolean.
  @JsonValue('BOOL')
  boolean,
  ;

  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$SensorDataTypeEnumMap[this] ?? 'STR';

  /// [fromJson] returns the enum value from a string representation.
  static SensorDataType fromJson(String json) {
    final value = _$SensorDataTypeEnumMap.entries.firstWhereOrNull(
      (element) => element.value == json,
    );
    return value?.key ?? SensorDataType.string;
  }
}
