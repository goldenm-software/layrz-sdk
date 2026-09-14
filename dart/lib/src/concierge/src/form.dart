part of '../concierge.dart';

/// A minimal reference to a concierge form, identifying it by [id] and [name] without its pages.
///
/// Used where a full [ConciergeFormPage] listing is not needed, such as when linking a form to a
/// [Tag].
@freezed
abstract class ConciergeForm with _$ConciergeForm {
  /// Constructs an immutable [ConciergeForm].
  const factory ConciergeForm({
    /// The unique identifier of the concierge form.
    required String id,

    /// The name of the concierge form.
    required String name,
  }) = _ConciergeForm;

  /// Deserializes a [ConciergeForm] from a JSON map.
  factory ConciergeForm.fromJson(Map<String, dynamic> json) => _$ConciergeFormFromJson(json);
}
