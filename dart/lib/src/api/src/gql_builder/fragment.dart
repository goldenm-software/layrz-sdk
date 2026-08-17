part of '../../api.dart';

/// Represents a reusable GraphQL named fragment.
///
/// [GqlFragment] defines a named selection set that can be spread into multiple query or mutation
/// operations, reducing duplication when querying common fields across different operations.
///
/// When rendered in a [Gql] query, a fragment generates a fragment definition at the top of
/// the document:
/// ```
/// fragment ChartFragment on Chart {
///   id
///   name
///   type
/// }
/// ```
///
/// Fragments are automatically collected from the field tree and deduplicated by name, so each
/// fragment block appears exactly once in the generated query, even if referenced multiple times.
///
/// Example:
/// ```dart
/// var chartFragment = GqlFragment(
///   name: 'ChartFragment',
///   onType: 'Chart',
///   fields: [
///     GqlField(name: 'id'),
///     GqlField(name: 'name'),
///     GqlField(name: 'type'),
///   ],
/// );
/// ```
class GqlFragment {
  /// The name of this fragment (e.g., `'ChartFragment'`, `'BroadcastFragment'`).
  /// This name is used when spreading the fragment with `...FragmentName` syntax.
  final String name;

  /// The GraphQL type on which this fragment is defined (e.g., `'Chart'`, `'Broadcast'`).
  /// Only fields that exist on this type can be included in this fragment.
  final String onType;

  /// The list of fields included in this fragment.
  /// These fields form the selection set of the fragment definition.
  late List<GqlField> fields;

  /// Creates a new GraphQL named fragment.
  ///
  /// Parameters:
  ///   - [name]: The fragment name used in spread syntax `...fragmentName` (required).
  ///   - [onType]: The GraphQL type on which this fragment is defined (required).
  ///   - [fields]: Optional list of fields to include in this fragment.
  GqlFragment({
    required this.name,
    required this.onType,
    List<GqlField>? fields,
  }) {
    this.fields = List.from(fields ?? [], growable: true);
  }

  /// Adds a field to this fragment.
  ///
  /// This is a convenience method for building the fragment's selection set.
  void add(GqlField field) => fields.add(field);

  /// Compares two fragments by name and type.
  ///
  /// Two fragments are considered equal if they have the same [name] and [onType],
  /// regardless of their [fields]. This allows fragments to be deduped by identity.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GqlFragment && other.name == name && other.onType == onType;
  }

  /// Returns the hash code for this fragment based on its [name] and [onType].
  @override
  int get hashCode => name.hashCode ^ onType.hashCode;
}
