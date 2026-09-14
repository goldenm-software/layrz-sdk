part of '../concierge.dart';

/// Immutable definition of a single page within a concierge form, holding an ordered list of
/// [ConciergeFormBlock]s.
@freezed
abstract class ConciergeFormPage with _$ConciergeFormPage {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormPage._();

  /// Constructs an immutable [ConciergeFormPage].
  const factory ConciergeFormPage({
    /// Is the title of the page.
    required String title,

    /// Is the blocks (may be fields, headers or paragraph) of the page.
    @Default(<ConciergeFormBlock>[]) List<ConciergeFormBlock> blocks,
  }) = _ConciergeFormPage;

  /// Deserializes a [ConciergeFormPage] from a JSON map.
  factory ConciergeFormPage.fromJson(Map<String, dynamic> json) => _$ConciergeFormPageFromJson(json);
}

/// Mutable input data for creating or updating a [ConciergeFormPage].
///
/// [ConciergeFormPageInput] mirrors the fields of [ConciergeFormPage] but is mutable and provides
/// sensible defaults, making it suitable for form binding before submission.
@unfreezed
abstract class ConciergeFormPageInput with _$ConciergeFormPageInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ConciergeFormPageInput._();

  /// Constructs a mutable [ConciergeFormPageInput].
  factory ConciergeFormPageInput({
    /// Is the title of the page. Defaults to an empty string.
    @Default("") String title,

    /// Is the blocks (may be fields, headers or paragraph) of the page. Defaults to an empty
    /// list.
    @Default([]) List<ConciergeBlockInput> blocks,
  }) = _ConciergeFormPageInput;

  /// Deserializes a [ConciergeFormPageInput] from a JSON map.
  factory ConciergeFormPageInput.fromJson(Map<String, dynamic> json) => _$ConciergeFormPageInputFromJson(json);
}
