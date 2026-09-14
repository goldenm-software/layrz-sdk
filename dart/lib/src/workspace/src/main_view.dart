part of '../workspace.dart';

/// The primary monitor view shown when a [Workspace] is opened.
@JsonEnum(alwaysCreate: true)
enum WorkspaceMainView {
  /// [sensors] shows the sensors grid monitor.
  @JsonValue('/Main/Grid')
  sensors,

  /// [map] shows the map monitor.
  @JsonValue('/Main/Map')
  map,

  /// [cases] shows the cases monitor.
  @JsonValue('/Main/Cases')
  cases,

  /// [checkpoints] shows the checkpoints monitor.
  @JsonValue('/Main/Checkpoints')
  checkpoints,

  /// [analytics] shows the analytics/charts monitor.
  @JsonValue('/Main/Analytics')
  analytics,

  /// [table] shows the table monitor.
  @JsonValue('/Main/Table')
  table;

  /// Returns the JSON representation of this main view value.
  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$WorkspaceMainViewEnumMap[this] ?? '/Main/Grid';

  /// [fromJson] returns the enum value from a string representation.
  static WorkspaceMainView fromJson(String json) {
    final found = _$WorkspaceMainViewEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? WorkspaceMainView.sensors;
  }
}
