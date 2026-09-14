part of '../report_template.dart';

/// The strategy a [ReportTemplatePage] uses to generate its data.
@JsonEnum(alwaysCreate: true)
enum ReportAlgorithm {
  /// Is the report template algorithm for automatic column-based generation.
  @JsonValue('AUTO')
  auto,

  /// Is the report template algorithm for a custom Python script.
  @JsonValue('PYTHON')
  python;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$ReportAlgorithmEnumMap[this] ?? 'AUTO';

  /// Deserializes a [ReportAlgorithm] from the raw string sent by the backend, defaulting to
  /// [ReportAlgorithm.auto] when [json] does not match a known value.
  static ReportAlgorithm fromJson(String json) {
    return _$ReportAlgorithmEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        ReportAlgorithm.auto;
  }
}
