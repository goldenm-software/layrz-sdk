part of '../concierge.dart';

/// Immutable definition of a single block (field, header, paragraph, separator, ...) within a
/// [ConciergeFormPage].
@freezed
abstract class ConciergeFormBlock with _$ConciergeFormBlock {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormBlock._();

  /// Constructs an immutable [ConciergeFormBlock].
  const factory ConciergeFormBlock({
    /// Is the type of the block.
    @JsonKey(unknownEnumValue: ConciergeFormBlockType.text) required ConciergeFormBlockType blockType,

    /// Is the title of the block.
    required String name,

    /// Is the configuration of the block.
    ConciergeFormBlockConfiguration? configuration,

    /// Is the validator of the block.
    ConciergeFormBlockValidator? showWhen,
  }) = _ConciergeFormBlock;

  /// Deserializes a [ConciergeFormBlock] from a JSON map.
  factory ConciergeFormBlock.fromJson(Map<String, dynamic> json) => _$ConciergeFormBlockFromJson(json);
}

/// Mutable input data for creating or updating a [ConciergeFormBlock].
///
/// [ConciergeBlockInput] mirrors the fields of [ConciergeFormBlock] but is mutable and provides
/// sensible defaults, making it suitable for form binding before submission.
@unfreezed
abstract class ConciergeBlockInput with _$ConciergeBlockInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeBlockInput._();

  /// Constructs a mutable [ConciergeBlockInput].
  factory ConciergeBlockInput({
    /// Is the title of the block. Defaults to an empty string.
    @Default("") String name,

    /// Is the type of the block. Defaults to [ConciergeFormBlockType.text].
    @JsonKey(unknownEnumValue: ConciergeFormBlockType.text)
    @Default(ConciergeFormBlockType.text)
    ConciergeFormBlockType blockType,

    /// Is the display condition of the block, or null when the block is always shown.
    ConciergeFormBlockDisplayConditionInput? showWhen,

    /// Is the configuration of the block, or null when not applicable.
    ConciergeFormBlockConfigurationInput? configuration,
  }) = _ConciergeBlockInput;

  /// Deserializes a [ConciergeBlockInput] from a JSON map.
  factory ConciergeBlockInput.fromJson(Map<String, dynamic> json) => _$ConciergeBlockInputFromJson(json);
}
