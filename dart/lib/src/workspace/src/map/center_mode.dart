part of '../../workspace.dart';

/// How a workspace's map monitor determines its initial centering.
enum MapCenterMode {
  /// [address] centers the map on a fixed address/coordinate.
  @JsonValue('ADDRESS')
  address,

  /// [bounds] centers and zooms the map to fit all visible assets.
  @JsonValue('BOUNDS')
  bounds;

  /// Returns the JSON representation of this center mode value.
  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$MapCenterModeEnumMap[this] ?? 'BOUNDS';

  /// [fromJson] returns the enum value from a string representation.
  static MapCenterMode fromJson(String json) {
    final found = _$MapCenterModeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? MapCenterMode.bounds;
  }
}
