part of '../asset.dart';

/// Immutable point of a zone-mode [Asset]'s boundary.
///
/// [ZonePoint] is only meaningful when the owning asset's mode is [AssetMode.zone].
@freezed
abstract class ZonePoint with _$ZonePoint {
  const ZonePoint._();

  /// Constructs an immutable [ZonePoint].
  const factory ZonePoint({
    /// [latitude] is the latitude of the point.
    required double latitude,

    /// [longitude] is the longitude of the point.
    required double longitude,
  }) = _ZonePoint;

  /// Deserializes a [ZonePoint] from a JSON map.
  factory ZonePoint.fromJson(Map<String, dynamic> json) => _$ZonePointFromJson(json);

  /// Converts this point to a [LatLng], for use with map-rendering widgets.
  LatLng get toLatLng => LatLng(latitude, longitude);
}

/// Mutable input data for creating or updating a [ZonePoint].
@unfreezed
abstract class ZonePointInput with _$ZonePointInput {
  ZonePointInput._();

  /// Constructs a mutable [ZonePointInput].
  factory ZonePointInput({
    /// [latitude] is the latitude of the point.
    required double latitude,

    /// [longitude] is the longitude of the point.
    required double longitude,
  }) = _ZonePointInput;

  /// Deserializes a [ZonePointInput] from a JSON map.
  factory ZonePointInput.fromJson(Map<String, dynamic> json) => _$ZonePointInputFromJson(json);

  /// Converts this point to a [LatLng], for use with map-rendering widgets.
  LatLng get toLatLng => LatLng(latitude, longitude);
}
