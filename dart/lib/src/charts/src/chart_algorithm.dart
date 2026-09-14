part of '../charts.dart';

/// The computation engine used to evaluate a [LayrzChart].
@JsonEnum(alwaysCreate: true)
enum ChartAlgorithm {
  /// Python as a chart algorithm engine.
  @JsonValue('PYTHON')
  python,

  /// Layrz Compute Language (LCL) as a chart algorithm engine.
  @JsonValue('LCL')
  lcl,

  /// Automatic chart algorithm engine selection.
  @JsonValue('AUTO')
  auto,
  ;

  /// Returns the JSON representation of this algorithm.
  @override
  String toString() => toJson();

  /// Converts this [ChartAlgorithm] to its wire JSON string.
  String toJson() => _$ChartAlgorithmEnumMap[this] ?? 'AUTO';

  /// Converts a JSON string to a [ChartAlgorithm], defaulting to [auto] when unknown.
  static ChartAlgorithm fromJson(String json) {
    final found = _$ChartAlgorithmEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? ChartAlgorithm.auto;
  }
}
