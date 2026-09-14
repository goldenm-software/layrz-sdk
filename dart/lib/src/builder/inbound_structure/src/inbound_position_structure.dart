part of '../inbound_structure.dart';

/// [InboundPositionStructure] describes which position fields are expected
/// in an inbound payload, used by the Omega REST inbound protocol.
@freezed
abstract class InboundPositionStructure with _$InboundPositionStructure {
  const factory InboundPositionStructure({
    /// [latitude] indicates if the payload includes the latitude.
    required bool latitude,

    /// [longitude] indicates if the payload includes the longitude.
    required bool longitude,

    /// [altitude] indicates if the payload includes the altitude.
    required bool altitude,

    /// [speed] indicates if the payload includes the speed.
    required bool speed,

    /// [direction] indicates if the payload includes the direction.
    required bool direction,

    /// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
    required bool hdop,

    /// [satellites] indicates if the payload includes the satellites' quantity.
    required bool satellites,
  }) = _InboundPositionStructure;

  /// [fromJson] builds an [InboundPositionStructure] from a decoded JSON [json] map.
  factory InboundPositionStructure.fromJson(Map<String, dynamic> json) =>
      _$InboundPositionStructureFromJson(json);
}

/// [InboundPositionStructureInput] is the mutable input variant of [InboundPositionStructure],
/// used to create or edit the position structure of an inbound payload.
@unfreezed
abstract class InboundPositionStructureInput with _$InboundPositionStructureInput {
  factory InboundPositionStructureInput({
    /// [latitude] indicates if the payload includes the latitude.
    @Default(true) bool latitude,

    /// [longitude] indicates if the payload includes the longitude.
    @Default(true) bool longitude,

    /// [speed] indicates if the payload includes the speed.
    @Default(true) bool speed,

    /// [direction] indicates if the payload includes the direction.
    @Default(true) bool direction,

    /// [altitude] indicates if the payload includes the altitude.
    @Default(true) bool altitude,

    /// [satellites] indicates if the payload includes the satellites' quantity.
    @Default(true) bool satellites,

    /// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
    @Default(true) bool hdop,
  }) = _InboundPositionStructureInput;

  /// [fromJson] builds an [InboundPositionStructureInput] from a decoded JSON [json] map.
  factory InboundPositionStructureInput.fromJson(Map<String, dynamic> json) =>
      _$InboundPositionStructureInputFromJson(json);
}
