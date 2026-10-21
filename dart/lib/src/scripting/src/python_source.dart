part of '../scripting.dart';

/// The kind of data a Python script receives as input.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `MESSAGES`, `CORE_PROCESSES`). Use [toJson]
/// and [fromJson] to convert between enum and wire format.
///
/// If deserialization encounters an unknown value, it defaults to [messages].
@JsonEnum(alwaysCreate: true)
enum PythonSource {
  /// [messages] receives device messages. This is the default source and the fallback value used when an unknown source is received.
  @JsonValue('MESSAGES')
  messages,

  /// [cases] receives cases.
  @JsonValue('CASES')
  cases,

  /// [checkpoints] receives checkpoints.
  @JsonValue('CHECKPOINTS')
  checkpoints,

  /// [events] receives events.
  @JsonValue('EVENTS')
  events,

  /// [coreProcesses] receives core processes.
  @JsonValue('CORE_PROCESSES')
  coreProcesses,

  /// [broadcasts] receives broadcasts.
  @JsonValue('BROADCASTS')
  broadcasts,

  /// [atsOperations] receives ATS operations.
  @JsonValue('ATS_OPERATIONS')
  atsOperations,

  /// [atsPurchaseorders] receives ATS purchase orders.
  @JsonValue('ATS_PURCHASEORDERS')
  atsPurchaseorders,
  ;

  /// Returns the JSON representation of this value (e.g., `MESSAGES`).
  @override
  String toString() => toJson();

  /// Converts this [PythonSource] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is not found in
  /// the generated map (should never occur), defaults to `'MESSAGES'`.
  String toJson() => _$PythonSourceEnumMap[this] ?? 'MESSAGES';

  /// Converts a JSON string to a [PythonSource].
  ///
  /// Accepts the uppercase JSON values (e.g., `'MESSAGES'`) from the server wire format. If the input
  /// does not match any known value, returns [messages] as the fallback default.
  static PythonSource fromJson(String json) =>
      _$PythonSourceEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? PythonSource.messages;
}
