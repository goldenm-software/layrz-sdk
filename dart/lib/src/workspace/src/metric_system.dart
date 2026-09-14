part of '../workspace.dart';

/// The unit system a [Workspace] displays measurements in.
enum MetricSystem {
  /// [metric] uses metric units (kilometers, Celsius, etc.).
  @JsonValue('METRIC')
  metric,

  /// [imperial] uses imperial units (miles, Fahrenheit, etc.).
  @JsonValue('IMPERIAL')
  imperial;

  /// Returns the JSON representation of this metric system value.
  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$MetricSystemEnumMap[this] ?? 'METRIC';

  /// [fromJson] returns the enum value from a string representation.
  static MetricSystem fromJson(String json) {
    final found = _$MetricSystemEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? MetricSystem.metric;
  }
}
