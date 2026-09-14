part of '../concierge.dart';

/// Immutable definition of the condition that controls whether a [ConciergeFormBlock] is
/// displayed.
@freezed
abstract class ConciergeFormBlockValidator with _$ConciergeFormBlockValidator {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormBlockValidator._();

  /// Constructs an immutable [ConciergeFormBlockValidator].
  const factory ConciergeFormBlockValidator({
    /// Is the reference number of the block inside the same page, in programming terms, is the
    /// position of the array.
    int? blockId,

    /// The maximum value of the field, or the maximum length of the string value, when the
    /// referenced block is a number or string, respectively.
    double? max,

    /// The minimum value of the field, or the minimum length of the string value, when the
    /// referenced block is a number or string, respectively.
    double? min,

    /// Represents the exact value of the field.
    String? value,

    /// Represents the validator of the block.
    @JsonKey(unknownEnumValue: ConciergeFormDisplayConditionValidator.always)
    required ConciergeFormDisplayConditionValidator validator,

    /// Represents the operator used to validate the value.
    @JsonKey(unknownEnumValue: ConciergeFormDisplayConditionOperator.equals)
    ConciergeFormDisplayConditionOperator? validatorOperator,
  }) = _ConciergeFormBlockValidator;

  /// Deserializes a [ConciergeFormBlockValidator] from a JSON map.
  factory ConciergeFormBlockValidator.fromJson(Map<String, dynamic> json) =>
      _$ConciergeFormBlockValidatorFromJson(json);
}
