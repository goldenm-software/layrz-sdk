part of '../asset.dart';

/// A Layrz Drive image captured by an image sensor of an [Asset].
@freezed
abstract class AssetSensorImage with _$AssetSensorImage {
  /// Constructs an immutable [AssetSensorImage].
  const factory AssetSensorImage({
    /// [fileId] is the Layrz Drive file ID.
    required String fileId,

    /// [sensorId] is the ID of the sensor that produced the image.
    required String sensorId,

    /// [serial] is the serial of the image, if any.
    String? serial,

    /// [lastModified] is when the image was last modified.
    @TimestampOrNullConverter() DateTime? lastModified,
  }) = _AssetSensorImage;

  /// Deserializes an [AssetSensorImage] from a JSON map.
  factory AssetSensorImage.fromJson(Map<String, dynamic> json) => _$AssetSensorImageFromJson(json);
}
