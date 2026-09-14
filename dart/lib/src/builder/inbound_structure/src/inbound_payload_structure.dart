part of '../inbound_structure.dart';

/// [InboundPayloadStructure] describes a single custom field expected in an
/// inbound payload, used by the Omega REST inbound protocol.
@freezed
abstract class InboundPayloadStructure with _$InboundPayloadStructure {
  const factory InboundPayloadStructure({
    /// [field] is the name of the payload field.
    required String field,

    /// [type] is the data type of the payload field.
    @InboundPayloadStructureTypeConverter() required InboundPayloadStructureType type,
  }) = _InboundPayloadStructure;

  /// [fromJson] builds an [InboundPayloadStructure] from a decoded JSON [json] map.
  factory InboundPayloadStructure.fromJson(Map<String, dynamic> json) =>
      _$InboundPayloadStructureFromJson(json);
}

/// [InboundPayloadStructureInput] is the mutable input variant of [InboundPayloadStructure],
/// used to create or edit an inbound payload field.
@unfreezed
abstract class InboundPayloadStructureInput with _$InboundPayloadStructureInput {
  factory InboundPayloadStructureInput({
    /// [field] is the name of the payload field.
    @Default('') String field,

    /// [type] is the data type of the payload field.
    @InboundPayloadStructureTypeConverter()
    @Default(InboundPayloadStructureType.string)
    InboundPayloadStructureType type,
  }) = _InboundPayloadStructureInput;

  /// [fromJson] builds an [InboundPayloadStructureInput] from a decoded JSON [json] map.
  factory InboundPayloadStructureInput.fromJson(Map<String, dynamic> json) =>
      _$InboundPayloadStructureInputFromJson(json);
}
