part of '../asset.dart';

/// Immutable static geographic position of an [Asset].
///
/// [StaticPosition] is only meaningful when the owning asset's mode is [AssetMode.fixed].
@freezed
abstract class StaticPosition with _$StaticPosition {
  const StaticPosition._();

  /// Constructs an immutable [StaticPosition].
  const factory StaticPosition({
    /// [latitude] is the latitude of the asset.
    double? latitude,

    /// [longitude] is the longitude of the asset.
    double? longitude,

    /// [altitude] is the altitude of the asset.
    double? altitude,
  }) = _StaticPosition;

  /// Deserializes a [StaticPosition] from a JSON map.
  factory StaticPosition.fromJson(Map<String, dynamic> json) => _$StaticPositionFromJson(json);

  /// Converts this position to a [LatLng], for use with map-rendering widgets, or
  /// `null` if [latitude] or [longitude] is unknown.
  LatLng? get toLatLng => latitude != null && longitude != null ? LatLng(latitude!, longitude!) : null;
}

/// Mutable input data for creating or updating a [StaticPosition].
@unfreezed
abstract class StaticPositionInput with _$StaticPositionInput {
  StaticPositionInput._();

  /// Constructs a mutable [StaticPositionInput].
  factory StaticPositionInput({
    /// [latitude] is the latitude of the asset.
    double? latitude,

    /// [longitude] is the longitude of the asset.
    double? longitude,

    /// [altitude] is the altitude of the asset.
    double? altitude,
  }) = _StaticPositionInput;

  /// Deserializes a [StaticPositionInput] from a JSON map.
  factory StaticPositionInput.fromJson(Map<String, dynamic> json) => _$StaticPositionInputFromJson(json);

  /// Converts this position to a [LatLng], for use with map-rendering widgets, or
  /// `null` if [latitude] or [longitude] is unknown.
  LatLng? get toLatLng => latitude != null && longitude != null ? LatLng(latitude!, longitude!) : null;
}
