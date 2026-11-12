part of '../locator.dart';

/// Single corner point of a [LocatorBoundary].
@freezed
abstract class LocatorBoundaryPoint with _$LocatorBoundaryPoint {
  /// Constructs an immutable [LocatorBoundaryPoint].
  const factory LocatorBoundaryPoint({
    /// Is the latitude of the boundary point.
    double? latitude,

    /// Is the longitude of the boundary point.
    double? longitude,
  }) = _LocatorBoundaryPoint;

  /// Deserializes a [LocatorBoundaryPoint] from a JSON map.
  factory LocatorBoundaryPoint.fromJson(Map<String, dynamic> json) => _$LocatorBoundaryPointFromJson(json);
}

/// Mutable input variant of [LocatorBoundaryPoint].
@unfreezed
abstract class LocatorBoundaryPointInput with _$LocatorBoundaryPointInput {
  /// Constructs a mutable [LocatorBoundaryPointInput].
  factory LocatorBoundaryPointInput({
    /// Is the latitude of the boundary point.
    double? latitude,

    /// Is the longitude of the boundary point.
    double? longitude,
  }) = _LocatorBoundaryPointInput;

  /// Deserializes a [LocatorBoundaryPointInput] from a JSON map.
  factory LocatorBoundaryPointInput.fromJson(Map<String, dynamic> json) => _$LocatorBoundaryPointInputFromJson(json);
}

/// Geographic bounding box of a [Locator].
@freezed
abstract class LocatorBoundary with _$LocatorBoundary {
  /// Constructs an immutable [LocatorBoundary].
  const factory LocatorBoundary({
    /// Is the top-left corner of the locator boundary. Serialized as `topleft`.
    @JsonKey(name: 'topleft') LocatorBoundaryPoint? topLeft,

    /// Is the bottom-right corner of the locator boundary. Serialized as `bottomright`.
    @JsonKey(name: 'bottomright') LocatorBoundaryPoint? bottomRight,
  }) = _LocatorBoundary;

  /// Deserializes a [LocatorBoundary] from a JSON map.
  factory LocatorBoundary.fromJson(Map<String, dynamic> json) => _$LocatorBoundaryFromJson(json);
}

/// Mutable input variant of [LocatorBoundary].
@unfreezed
abstract class LocatorBoundaryInput with _$LocatorBoundaryInput {
  /// Constructs a mutable [LocatorBoundaryInput].
  factory LocatorBoundaryInput({
    /// Is the top-left corner of the locator boundary. Serialized as `topleft`.
    @JsonKey(name: 'topleft') LocatorBoundaryPointInput? topLeft,

    /// Is the bottom-right corner of the locator boundary. Serialized as `bottomright`.
    @JsonKey(name: 'bottomright') LocatorBoundaryPointInput? bottomRight,
  }) = _LocatorBoundaryInput;

  /// Deserializes a [LocatorBoundaryInput] from a JSON map.
  factory LocatorBoundaryInput.fromJson(Map<String, dynamic> json) => _$LocatorBoundaryInputFromJson(json);
}
