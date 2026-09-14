part of '../care_protocols.dart';

/// A single question within a [CareProtocol] (simple mode).
///
/// [CareTask] represents one item of the checklist that must be answered
/// before a case can be submitted. The relevant fields depend on [answer]:
/// [AnswerKind.choice] uses [choices], and [AnswerKind.range] uses [minValue]
/// and [maxValue].
@freezed
abstract class CareTask with _$CareTask {
  /// Creates a new [CareTask].
  const factory CareTask({
    /// [question] is the question to prompt.
    required String question,

    /// [answer] is the type of answer expected for [question].
    @JsonKey(unknownEnumValue: AnswerKind.text) required AnswerKind answer,

    /// [choices] represents the list of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.choice].
    @Default([]) List<String> choices,

    /// [minValue] represents the minimum of the range of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.range].
    @Default(0) int minValue,

    /// [maxValue] represents the maximum of the range of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.range].
    @Default(0) int maxValue,
  }) = _CareTask;

  /// Converts a JSON object to a [CareTask].
  factory CareTask.fromJson(Map<String, dynamic> json) => _$CareTaskFromJson(json);
}

/// The input variant of [CareTask], used to create or update a task within a
/// [CareProtocolInput].
@unfreezed
abstract class CareTaskInput with _$CareTaskInput {
  const CareTaskInput._();

  /// Creates a new [CareTaskInput].
  factory CareTaskInput({
    /// [question] is the question to prompt.
    @Default('') String question,

    /// [answer] is the type of answer expected for [question].
    @JsonKey(unknownEnumValue: AnswerKind.text) @Default(AnswerKind.text) AnswerKind answer,

    /// [choices] represents the list of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.choice].
    @Default([]) List<String> choices,

    /// [minValue] represents the minimum of the range of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.range].
    @Default(0) int minValue,

    /// [maxValue] represents the maximum of the range of possible values.
    ///
    /// Only relevant when [answer] is [AnswerKind.range].
    @Default(0) int maxValue,
  }) = _CareTaskInput;

  /// Converts a JSON object to a [CareTaskInput].
  factory CareTaskInput.fromJson(Map<String, dynamic> json) => _$CareTaskInputFromJson(json);
}
