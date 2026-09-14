part of '../asset.dart';

/// The operation mode of an [Asset].
///
/// [AssetMode] indicates how the asset is composed and tracked: a single device, a cluster of
/// devices, a cluster of assets, a disconnected device, a fixed/static position, or a zone.
enum AssetMode {
  /// [single] is the default mode for an asset. It means that the asset is a single device.
  /// Layrz API definition: SINGLE
  single,

  /// [multiple] means that the asset is a cluster of devices.
  /// Layrz API definition: MULTIPLE
  multiple,

  /// [assetmultiple] means that the asset is a cluster of assets.
  /// Layrz API definition: ASSETMULTIPLE
  assetmultiple,

  /// [disconnected] means that the asset is a disconnected device.
  /// Layrz API definition: DISCONNECTED
  disconnected,

  /// [fixed] means that the asset is a static asset.
  /// Layrz API definition: STATIC
  fixed,

  /// [zone] means that the asset is a zone. Like a Geofence
  /// Layrz API definition: ZONE
  zone,
  ;

  /// Returns the JSON representation of this mode value.
  @override
  String toString() => toJson();

  /// Converts this [AssetMode] to its wire JSON string.
  String toJson() {
    switch (this) {
      case AssetMode.multiple:
        return 'MULTIPLE';
      case AssetMode.assetmultiple:
        return 'ASSETMULTIPLE';
      case AssetMode.disconnected:
        return 'DISCONNECTED';
      case AssetMode.fixed:
        return 'STATIC';
      case AssetMode.zone:
        return 'ZONE';
      case AssetMode.single:
        return 'SINGLE';
    }
  }

  /// Converts a JSON string to an [AssetMode]. Defaults to [single] for unknown values.
  static AssetMode fromJson(String json) {
    switch (json) {
      case 'MULTIPLE':
        return AssetMode.multiple;
      case 'ASSETMULTIPLE':
        return AssetMode.assetmultiple;
      case 'DISCONNECTED':
        return AssetMode.disconnected;
      case 'STATIC':
        return AssetMode.fixed;
      case 'ZONE':
        return AssetMode.zone;
      case 'SINGLE':
      default:
        return AssetMode.single;
    }
  }
}

/// A [JsonConverter] that converts between nullable [AssetMode] and [String?].
class AssetModeOrNullConverter implements JsonConverter<AssetMode?, String?> {
  /// Creates an [AssetModeOrNullConverter].
  const AssetModeOrNullConverter();

  @override
  AssetMode? fromJson(String? json) {
    if (json == null) return null;
    return AssetMode.fromJson(json);
  }

  @override
  String? toJson(AssetMode? object) => object?.toJson();
}

/// A [JsonConverter] that converts between [AssetMode] and [String].
class AssetModeConverter implements JsonConverter<AssetMode, String> {
  /// Creates an [AssetModeConverter].
  const AssetModeConverter();

  @override
  AssetMode fromJson(String json) => AssetMode.fromJson(json);

  @override
  String toJson(AssetMode object) => object.toJson();
}
