part of '../workspace.dart';

/// The width/height span of a grid slot, measured in grid cells.
@freezed
abstract class GridDimension with _$GridDimension {
  /// Constructs an immutable [GridDimension].
  const factory GridDimension({
    /// [width] Represents the number of columns to be expanded
    required int width,

    /// [height] Represents the number of rows to be expanded
    required int height,
  }) = _GridDimension;

  /// Deserializes a [GridDimension] from a JSON map.
  factory GridDimension.fromJson(Map<String, dynamic> json) => _$GridDimensionFromJson(json);
}

/// [GridDimensionInput] is the input variant of [GridDimension].
@unfreezed
abstract class GridDimensionInput with _$GridDimensionInput {
  /// Constructs a mutable [GridDimensionInput].
  factory GridDimensionInput({
    /// [width] Represents the number of columns to be expanded
    @Default(1) int width,

    /// [height] Represents the number of rows to be expanded
    @Default(1) int height,
  }) = _GridDimensionInput;

  /// Deserializes a [GridDimensionInput] from a JSON map.
  factory GridDimensionInput.fromJson(Map<String, dynamic> json) => _$GridDimensionInputFromJson(json);
}
