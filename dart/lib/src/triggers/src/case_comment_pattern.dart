part of '../triggers.dart';

/// The comment pattern matching mode used to detect changes on cases.
///
/// Required when [Trigger.kind] is [TriggerType.casesChanges] and
/// [Trigger.caseKind] is [CaseType.onCommentPattern].
@JsonEnum(alwaysCreate: true)
enum CaseCommentPattern {
  /// [startsWith] matches when a case comment starts with the pattern value.
  ///
  /// API Reference: `STARTS_WITH`
  @JsonValue('STARTS_WITH')
  startsWith,

  /// [endsWith] matches when a case comment ends with the pattern value.
  ///
  /// API Reference: `ENDS_WITH`
  @JsonValue('ENDS_WITH')
  endsWith,

  /// [contains] matches when a case comment contains the pattern value.
  ///
  /// API Reference: `CONTAINS`
  @JsonValue('CONTAINS')
  contains,
  ;

  @override
  String toString() => toJson();

  /// Converts this [CaseCommentPattern] to its wire representation.
  String toJson() => _$CaseCommentPatternEnumMap[this] ?? 'STARTS_WITH';

  /// Converts a wire representation [json] to a [CaseCommentPattern].
  ///
  /// Returns [CaseCommentPattern.startsWith] when [json] does not match any
  /// known value.
  static CaseCommentPattern fromJson(String json) {
    final value = _$CaseCommentPatternEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? CaseCommentPattern.startsWith;
  }
}
