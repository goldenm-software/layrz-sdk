part of '../../workspace.dart';

/// The layout used to display a map card's sensor list.
enum MapSensorMode {
  /// [grid] arranges sensors in a grid layout.
  @JsonValue('GRID')
  grid,

  /// [list] arranges sensors in a vertical list layout.
  @JsonValue('LIST')
  list;

  /// Returns the JSON representation of this sensor mode value.
  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$MapSensorModeEnumMap[this] ?? 'GRID';

  /// [fromJson] returns the enum value from a string representation.
  static MapSensorMode fromJson(String json) {
    final found = _$MapSensorModeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? MapSensorMode.grid;
  }
}
