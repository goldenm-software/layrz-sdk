part of '../inbound_structure.dart';

/// [InboundStructure] describes the full structure of an inbound payload,
/// used by the Omega REST inbound protocol. It combines an optional
/// [InboundPositionStructure] for position fields and a list of
/// [InboundPayloadStructure] entries for custom payload fields.
@freezed
abstract class InboundStructure with _$InboundStructure {
  const factory InboundStructure({
    /// [hasPosition] indicates if the payload includes a position.
    required bool hasPosition,

    /// [position] is the structure of the position fields, present when [hasPosition] is `true`.
    required InboundPositionStructure? position,

    /// [hasPayload] indicates if the payload includes custom fields.
    required bool hasPayload,

    /// [payload] is the list of custom payload field definitions.
    required List<InboundPayloadStructure> payload,
  }) = _InboundStructure;

  /// [fromJson] builds an [InboundStructure] from a decoded JSON [json] map.
  factory InboundStructure.fromJson(Map<String, dynamic> json) => _$InboundStructureFromJson(json);
}

/// [InboundStructureInput] is the mutable input variant of [InboundStructure],
/// used to create or edit the structure of the Omega REST inbound protocol.
@unfreezed
abstract class InboundStructureInput with _$InboundStructureInput {
  factory InboundStructureInput({
    /// [hasPosition] indicates if the payload includes a position.
    @Default(true) bool hasPosition,

    /// [position] is the structure of the position fields, present when [hasPosition] is `true`.
    required InboundPositionStructureInput? position,

    /// [hasPayload] indicates if the payload includes custom fields.
    @Default(false) bool hasPayload,

    /// [payload] is the list of custom payload field definitions.
    @Default([]) List<InboundPayloadStructureInput> payload,
  }) = _InboundStructureInput;

  /// [fromJson] builds an [InboundStructureInput] from a decoded JSON [json] map.
  factory InboundStructureInput.fromJson(Map<String, dynamic> json) => _$InboundStructureInputFromJson(json);
}
