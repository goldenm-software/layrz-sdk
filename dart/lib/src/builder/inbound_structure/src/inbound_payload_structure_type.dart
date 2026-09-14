part of '../inbound_structure.dart';

/// [InboundPayloadStructureType] indicates the data type of a single
/// [InboundPayloadStructure] field.
enum InboundPayloadStructureType {
  /// [string] indicates the field value should be parsed as a [String].
  string,

  /// [integer] indicates the field value should be parsed as an [int].
  integer,

  /// [boolean] indicates the field value should be parsed as a [bool].
  boolean,

  /// [float] indicates the field value should be parsed as a [double].
  float;

  @override
  String toString() => toJson();

  /// [toJson] returns the wire representation of this enum value.
  String toJson() {
    switch (this) {
      case InboundPayloadStructureType.string:
        return 'STR';
      case InboundPayloadStructureType.integer:
        return 'INT';
      case InboundPayloadStructureType.boolean:
        return 'BOOL';
      case InboundPayloadStructureType.float:
        return 'FLOAT';
    }
  }

  /// [fromJson] returns the enum value matching the given wire [json] string.
  static InboundPayloadStructureType fromJson(String json) {
    switch (json) {
      case 'STR':
        return InboundPayloadStructureType.string;
      case 'INT':
        return InboundPayloadStructureType.integer;
      case 'BOOL':
        return InboundPayloadStructureType.boolean;
      case 'FLOAT':
        return InboundPayloadStructureType.float;
      default:
        throw Exception('Invalid InboundPayloadStructureType');
    }
  }
}

/// [InboundPayloadStructureTypeConverter] converts between the wire string
/// representation and [InboundPayloadStructureType].
class InboundPayloadStructureTypeConverter implements JsonConverter<InboundPayloadStructureType, String> {
  /// Creates a new [InboundPayloadStructureTypeConverter].
  const InboundPayloadStructureTypeConverter();

  @override
  InboundPayloadStructureType fromJson(String json) {
    return InboundPayloadStructureType.fromJson(json);
  }

  @override
  String toJson(InboundPayloadStructureType object) {
    return object.toJson();
  }
}
