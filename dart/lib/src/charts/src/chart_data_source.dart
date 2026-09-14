part of '../charts.dart';

/// The telemetry data source a [LayrzChart] is computed over.
@JsonEnum(alwaysCreate: true)
enum ChartDataSource {
  /// Messages data source.
  @JsonValue('MESSAGES')
  messages,

  /// Events data source.
  @JsonValue('EVENTS')
  events,

  /// Cases data source.
  @JsonValue('CASES')
  cases,

  /// Checkpoints data source.
  @JsonValue('CHECKPOINTS')
  checkpoints,

  /// ATS operations data source.
  @JsonValue('ATS_OPERATIONS')
  atsOperations,

  /// ATS purchase orders data source.
  @JsonValue('ATS_PURCHASEORDERS')
  atsPurchaseOrders,

  /// Last messages data source.
  @JsonValue('LAST_MESSAGES')
  lastMessages,
  ;

  /// Returns the JSON representation of this data source.
  @override
  String toString() => toJson();

  /// Converts this [ChartDataSource] to its wire JSON string.
  String toJson() => _$ChartDataSourceEnumMap[this] ?? 'MESSAGES';

  /// Converts a JSON string to a [ChartDataSource], defaulting to [messages] when unknown.
  static ChartDataSource fromJson(String json) {
    final found = _$ChartDataSourceEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? ChartDataSource.messages;
  }

  /// [pythonSource] returns the Python-side identifier string for this data source.
  String get pythonSource {
    switch (this) {
      case ChartDataSource.messages:
        return "MESSAGES";
      case ChartDataSource.events:
        return "EVENTS";
      case ChartDataSource.cases:
        return "CASES";
      case ChartDataSource.checkpoints:
        return "CHECKPOINTS";
      case ChartDataSource.atsOperations:
        return "ATS_OPERATIONS";
      case ChartDataSource.atsPurchaseOrders:
        return "ATS_PURCHASEORDERS";
      case ChartDataSource.lastMessages:
        return "LAST_MESSAGES";
    }
  }
}
