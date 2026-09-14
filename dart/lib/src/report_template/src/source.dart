part of '../report_template.dart';

/// The data source a [ReportTemplatePage] renders.
@JsonEnum(alwaysCreate: true)
enum ReportSource {
  /// Is the source for messages.
  @JsonValue('MESSAGES')
  messages,

  /// Is the source for cases.
  @JsonValue('CASES')
  cases,

  /// Is the source for checkpoints.
  @JsonValue('CHECKPOINTS')
  checkpoints,

  /// Is the source for events.
  @JsonValue('EVENTS')
  events,

  /// Is the source for outbound services' broadcasts.
  @JsonValue('BROADCASTS')
  broadcast,

  /// Is the source for last messages, similar to [messages] but only the latest message per
  /// asset.
  @JsonValue('LAST_MESSAGES')
  lastMessages;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$ReportSourceEnumMap[this] ?? 'MESSAGES';

  /// Deserializes a [ReportSource] from the raw string sent by the backend, defaulting to
  /// [ReportSource.messages] when [json] does not match a known value.
  static ReportSource fromJson(String json) {
    return _$ReportSourceEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        ReportSource.messages;
  }
}
