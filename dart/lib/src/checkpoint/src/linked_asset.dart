part of '../checkpoint.dart';

/// The kind of entity a [LinkedAssetToCheckpointId] refers to.
enum LinkedAssetEntity {
  /// [asset] - The linked entity is an asset.
  asset,

  /// [tag] - The linked entity is a tag.
  tag,
  ;

  /// Converts this [LinkedAssetEntity] to its wire JSON string (e.g.,
  /// `'ASSET'`, `'TAG'`).
  @override
  String toString() => toJson();

  /// Converts this [LinkedAssetEntity] to its wire JSON string.
  String toJson() {
    switch (this) {
      case LinkedAssetEntity.asset:
        return 'ASSET';
      case LinkedAssetEntity.tag:
        return 'TAG';
    }
  }

  /// Converts a JSON string to a [LinkedAssetEntity].
  ///
  /// Throws an [Exception] if [json] does not match a known value.
  static LinkedAssetEntity fromJson(String json) {
    switch (json) {
      case 'ASSET':
        return LinkedAssetEntity.asset;
      case 'TAG':
        return LinkedAssetEntity.tag;
      default:
        throw Exception('Unknown LinkedAssetEntity: $json');
    }
  }
}

/// A [JsonConverter] that converts between [LinkedAssetEntity] and its wire
/// string.
class LinkedAssetEntityConverter implements JsonConverter<LinkedAssetEntity, String> {
  /// Creates a [LinkedAssetEntityConverter].
  const LinkedAssetEntityConverter();

  @override
  LinkedAssetEntity fromJson(String json) {
    return LinkedAssetEntity.fromJson(json);
  }

  @override
  String toJson(LinkedAssetEntity object) => object.toJson();
}

/// A single asset or tag linked to a [Checkpoint], identifying presence in
/// its geofences.
@freezed
abstract class LinkedAssetToCheckpointId with _$LinkedAssetToCheckpointId {
  /// Constructs an immutable [LinkedAssetToCheckpointId].
  const factory LinkedAssetToCheckpointId({
    /// ID of the linked asset or tag.
    required String itemId,

    /// The kind of entity [itemId] refers to.
    @LinkedAssetEntityConverter() required LinkedAssetEntity entity,
  }) = _LinkedAssetToCheckpointId;

  /// Deserializes a [LinkedAssetToCheckpointId] from a JSON map.
  factory LinkedAssetToCheckpointId.fromJson(Map<String, dynamic> json) => _$LinkedAssetToCheckpointIdFromJson(json);
}
