part of '../custom_field.dart';

/// Mutable input data for creating or updating a [CustomField].
///
/// [CustomFieldInput] mirrors the fields of [CustomField] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission as part of a parent entity's mutation payload.
@unfreezed
abstract class CustomFieldInput with _$CustomFieldInput {
  /// Constructs a mutable [CustomFieldInput].
  factory CustomFieldInput({
    /// Unique identifier for this custom field, or null when creating a new
    /// one.
    String? id,

    /// Human-readable name of the custom field. Defaults to an empty string.
    @Default('') String name,

    /// The value stored for this custom field. Defaults to an empty string.
    @Default('') String value,

    /// Whether this custom field is system-managed and should not be freely
    /// edited by the end user. Defaults to false.
    @Default(false) bool isFixed,
  }) = _CustomFieldInput;

  /// Deserializes a [CustomFieldInput] from a JSON map.
  factory CustomFieldInput.fromJson(Map<String, dynamic> json) => _$CustomFieldInputFromJson(json);
}
