part of '../concierge.dart';

/// Mutable input data for creating or updating a [ConciergeFormBlockValidator].
@unfreezed
abstract class ConciergeFormBlockDisplayConditionInput with _$ConciergeFormBlockDisplayConditionInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormBlockDisplayConditionInput._();

  /// Constructs a mutable [ConciergeFormBlockDisplayConditionInput].
  factory ConciergeFormBlockDisplayConditionInput({
    /// Is the reference number of the block inside the same page, in programming terms, is the
    /// position of the array.
    int? blockId,

    /// The minimum value of the field, or the minimum length of the string value, when the
    /// referenced block is a number or string, respectively.
    double? min,

    /// The maximum value of the field, or the maximum length of the string value, when the
    /// referenced block is a number or string, respectively.
    double? max,

    /// Represents the exact value of the field.
    String? value,

    /// Represents the validator of the block. Defaults to
    /// [ConciergeFormDisplayConditionValidator.always].
    @JsonKey(unknownEnumValue: ConciergeFormDisplayConditionValidator.always)
    @Default(ConciergeFormDisplayConditionValidator.always)
    ConciergeFormDisplayConditionValidator validator,

    /// Represents the operator used to validate the value.
    @JsonKey(unknownEnumValue: ConciergeFormDisplayConditionOperator.equals)
    ConciergeFormDisplayConditionOperator? validatorOperator,
  }) = _ConciergeFormBlockDisplayConditionInput;

  /// Deserializes a [ConciergeFormBlockDisplayConditionInput] from a JSON map.
  factory ConciergeFormBlockDisplayConditionInput.fromJson(Map<String, dynamic> json) =>
      _$ConciergeFormBlockDisplayConditionInputFromJson(json);
}
