part of '../concierge.dart';

/// Immutable configuration for a [ConciergeFormBlock], describing the constraints a value entered
/// for that block must satisfy.
@freezed
abstract class ConciergeFormBlockConfiguration with _$ConciergeFormBlockConfiguration {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormBlockConfiguration._();

  /// Constructs an immutable [ConciergeFormBlockConfiguration].
  const factory ConciergeFormBlockConfiguration({
    /// Indicates if the field can be submitted without value. Defaults to `false` when the backend sends `null` or
    /// omits it.
    @Default(false) bool allowEmpty,

    /// Indicates if the field is an integer value or a float value.
    bool? asInt,

    /// Indicates if the field is a multiple choice.
    bool? isMultiple,

    /// The maximum value of the field, when it is a number.
    double? max,

    /// The minimum value of the field, when it is a number.
    double? min,

    /// The list of choices, when the field is a select. Defaults to an empty list.
    @Default(<String>[]) List<String> choices,
  }) = _ConciergeFormBlockConfiguration;

  /// Deserializes a [ConciergeFormBlockConfiguration] from a JSON map.
  factory ConciergeFormBlockConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ConciergeFormBlockConfigurationFromJson(json);
}

/// Mutable input data for creating or updating a [ConciergeFormBlockConfiguration].
@unfreezed
abstract class ConciergeFormBlockConfigurationInput with _$ConciergeFormBlockConfigurationInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormBlockConfigurationInput._();

  /// Constructs a mutable [ConciergeFormBlockConfigurationInput].
  factory ConciergeFormBlockConfigurationInput({
    /// Indicates if the field can be submitted without value.
    bool? allowEmpty,

    /// Indicates if the field is a multiple choice.
    bool? isMultiple,

    /// The minimum value of the field, when it is a number.
    double? min,

    /// The maximum value of the field, when it is a number.
    double? max,

    /// Indicates if the field is an integer value or a float value.
    bool? asInt,

    /// The list of choices, when the field is a select.
    List<String>? choices,
  }) = _ConciergeFormBlockConfigurationInput;

  /// Deserializes a [ConciergeFormBlockConfigurationInput] from a JSON map.
  factory ConciergeFormBlockConfigurationInput.fromJson(Map<String, dynamic> json) =>
      _$ConciergeFormBlockConfigurationInputFromJson(json);
}
