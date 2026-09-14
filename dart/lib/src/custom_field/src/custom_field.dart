part of '../custom_field.dart';

/// Immutable named value attached to a parent entity in Layrz.
///
/// [CustomField] represents a single arbitrary name/value pair, identified by
/// a unique [id]. Set [isFixed] to indicate the field is system-managed and
/// should not be freely edited by the end user. [updatedAt] tracks the last
/// modification time, when reported by the server.
@freezed
abstract class CustomField with _$CustomField {
  /// Constructs an immutable [CustomField].
  const factory CustomField({
    /// Unique identifier for this custom field.
    required String id,

    /// Human-readable name of the custom field.
    required String name,

    /// The value stored for this custom field.
    required String value,

    /// Whether this custom field is system-managed and should not be freely
    /// edited by the end user.
    bool? isFixed,

    /// The date and time (UTC) this custom field was last updated, or null
    /// if not tracked by the server.
    @TimestampOrNullConverter() DateTime? updatedAt,
  }) = _CustomField;

  /// Deserializes a [CustomField] from a JSON map.
  factory CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying custom field values.
  static GqlFragment get fragment => GqlFragment(name: 'customFieldFragment', onType: 'CustomField')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'value'))
    ..add(GqlField(name: 'isFixed'))
    ..add(GqlField(name: 'updatedAt'));
  // coverage:ignore-end
}
