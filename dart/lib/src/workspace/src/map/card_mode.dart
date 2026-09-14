part of '../../workspace.dart';

/// The lookback window used by a map card's alert segment.
enum MapCardMode {
  /// [lastDay] shows alerts from the last 24 hours.
  @JsonValue("H24")
  lastDay,

  /// [last2Days] shows alerts from the last 48 hours.
  @JsonValue("H48")
  last2Days;

  /// Returns the JSON representation of this map card mode value.
  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$MapCardModeEnumMap[this] ?? 'H24';

  /// [fromJson] returns the enum value from a string representation.
  static MapCardMode fromJson(String json) {
    final found = _$MapCardModeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? MapCardMode.lastDay;
  }
}
