part of '../scripting.dart';

/// The execution scope of a Python script.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `SENSORS`, `FIXED_TRIGGERS`). Use [toJson]
/// and [fromJson] to convert between enum and wire format.
///
/// If deserialization encounters an unknown value, it defaults to [sensors].
@JsonEnum(alwaysCreate: true)
enum PythonScope {
  /// [sensors] runs against the calculated sensors of an asset. This is the fallback value used when an unknown scope is received.
  @JsonValue('SENSORS')
  sensors,

  /// [triggers] runs as a message-driven trigger.
  @JsonValue('TRIGGERS')
  triggers,

  /// [fixedTriggers] runs as a scheduled (fixed execution) trigger.
  @JsonValue('FIXED_TRIGGERS')
  fixedTriggers,

  /// [charts] runs as a chart series calculation.
  @JsonValue('CHARTS')
  charts,

  /// [reports] runs as a report generation.
  @JsonValue('REPORTS')
  reports,

  /// [dynamicSensors] runs as a dynamic sensor.
  @JsonValue('DYNAMIC_SENSORS')
  dynamicSensors,
  ;

  /// Returns the JSON representation of this value (e.g., `SENSORS`).
  @override
  String toString() => toJson();

  /// Converts this [PythonScope] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is not found in
  /// the generated map (should never occur), defaults to `'SENSORS'`.
  String toJson() => _$PythonScopeEnumMap[this] ?? 'SENSORS';

  /// Converts a JSON string to a [PythonScope].
  ///
  /// Accepts the uppercase JSON values (e.g., `'SENSORS'`) from the server wire format. If the input
  /// does not match any known value, returns [sensors] as the fallback default.
  static PythonScope fromJson(String json) =>
      _$PythonScopeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? PythonScope.sensors;
}
