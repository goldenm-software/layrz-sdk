part of '../../api.dart';

/// Represents an inline fragment spread in a GraphQL query (e.g., `... on TypeName { ... }`).
///
/// [GqlUnion] is used to query fields on a specific type within a union or interface type.
/// When rendered as part of a [Gql] query, it generates an inline fragment in the format:
/// ```
/// ... on TypeName {
///   field1
///   field2
/// }
/// ```
///
/// This is commonly used when querying union or interface fields where you need type-specific fields.
///
/// Example:
/// ```dart
/// var union = GqlUnion(
///   name: 'Chart',
///   fields: [
///     GqlField(name: 'id'),
///     GqlField(name: 'name'),
///   ],
/// );
/// ```
class GqlUnion extends GqlField {
  /// Creates a new inline fragment spread with the given GraphQL type name.
  ///
  /// Parameters:
  ///   - [name]: The GraphQL type name to spread on (e.g., `'Chart'`, `'Broadcast'`).
  ///   - [fields]: Optional list of fields to select within this inline fragment.
  GqlUnion({required super.name, super.fields});

  @override
  String toString() {
    return 'GqlUnion(name: $name, fields: $fields)';
  }
}
