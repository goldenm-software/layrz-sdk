part of '../care_protocols.dart';

/// The kind of answer expected for a [CareTask] question.
///
/// [AnswerKind] determines which fields of [CareTask] are relevant: [choice]
/// uses `choices`, while [range] uses `minValue`/`maxValue`.
@JsonEnum(alwaysCreate: true)
enum AnswerKind {
  /// [text] is a text answer, used for free text input.
  ///
  /// API Reference: `TEXT`
  @JsonValue('TEXT')
  text,

  /// [choice] is a choice answer, used for multiple choice questions.
  ///
  /// API Reference: `CHOICE`
  @JsonValue('CHOICE')
  choice,

  /// [boolean] is a boolean answer, used for yes/no questions.
  ///
  /// API Reference: `BOOLEAN`
  @JsonValue('BOOLEAN')
  boolean,

  /// [range] is a range answer, used for questions with a range of values.
  ///
  /// API Reference: `RANGE`
  @JsonValue('RANGE')
  range,
  ;

  @override
  String toString() => toJson();

  /// Converts this [AnswerKind] to its wire representation.
  String toJson() => _$AnswerKindEnumMap[this] ?? 'TEXT';

  /// Converts a wire representation [json] to an [AnswerKind].
  ///
  /// Returns [AnswerKind.text] when [json] does not match any known value.
  static AnswerKind fromJson(String json) {
    final value = _$AnswerKindEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? AnswerKind.text;
  }
}
