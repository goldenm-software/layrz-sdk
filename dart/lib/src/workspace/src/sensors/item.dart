part of '../../workspace.dart';

/// One card slot in a workspace's sensors grid configuration.
@freezed
abstract class SensorGridItem with _$SensorGridItem {
  /// Constructs an immutable [SensorGridItem].
  const factory SensorGridItem({
    /// Represents the Asset ID
    String? objectId,

    /// [kind] represents the kind of card should be displayed
    @JsonKey(unknownEnumValue: WorkspaceCardType.asset) required WorkspaceCardType kind,

    /// [dimensions] Represents the dimension of the sensor
    GridDimension? dimensions,

    /// Represents the color of the card
    // NOTE: default color replicates `Colors.white` (0xFFFFFFFF) without importing
    // package:flutter/material.dart, per the SDK's material-free policy.
    @ColorConverter() @Default(Color(0xFFFFFFFF)) Color color,

    /// Represents the sensors of the card
    @Default([]) List<SensorGridContent> sensors,
  }) = _SensorGridItem;

  /// Deserializes a [SensorGridItem] from a JSON map.
  factory SensorGridItem.fromJson(Map<String, dynamic> json) => _$SensorGridItemFromJson(json);
}

/// [SensorGridItemInput] is the input variant of [SensorGridItem].
@unfreezed
abstract class SensorGridItemInput with _$SensorGridItemInput {
  /// Constructs a mutable [SensorGridItemInput].
  factory SensorGridItemInput({
    /// Represents the assigned object ID
    String? objectId,

    /// [kind] represents the kind of card should be displayed
    @JsonKey(unknownEnumValue: WorkspaceCardType.asset) @Default(WorkspaceCardType.asset) WorkspaceCardType kind,

    /// [dimensions] represents the dimensions of the sensor content
    GridDimensionInput? dimensions,

    /// Represents the color of the card
    // NOTE: default color replicates `Colors.white` (0xFFFFFFFF) without importing
    // package:flutter/material.dart, per the SDK's material-free policy.
    @ColorConverter() @Default(Color(0xFFFFFFFF)) Color color,

    /// Represents the sensors of the card
    @Default([]) List<SensorGridContentInput> sensors,
  }) = _SensorGridItemInput;

  /// Deserializes a [SensorGridItemInput] from a JSON map.
  factory SensorGridItemInput.fromJson(Map<String, dynamic> json) => _$SensorGridItemInputFromJson(json);
}
