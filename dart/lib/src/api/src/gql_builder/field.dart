part of '../../api.dart';

/// Represents a field selection in a GraphQL query or mutation.
///
/// [GqlField] is a core building block for constructing GraphQL field selections.
/// It supports hierarchical field nesting, field arguments, fragment spreads, and optional
/// parsing of JSON responses into Dart types.
///
/// A field can be rendered as:
/// - A simple field: `fieldName`
/// - A field with alias: `myAlias: fieldName`
/// - A field with arguments: `fieldName(arg1: $var1, arg2: $var2)`
/// - A field with child fields: `fieldName { childField1 childField2 }`
/// - A field with a fragment spread: `fieldName { ...FragmentName }`
/// - A union inline fragment: see [GqlUnion]
///
/// Example:
/// ```dart
/// var chartsField = GqlField(
///   name: 'charts',
///   alias: 'myCharts',
///   fields: [
///     GqlField(name: 'id'),
///     GqlField(name: 'name'),
///   ],
/// );
/// ```
class GqlField<T> {
  /// The GraphQL field name (e.g., `'charts'`, `'addChart'`, `'id'`, `'name'`).
  final String name;

  /// Optional GraphQL field alias for renaming the field in the response.
  /// When set, renders as `alias: fieldName`. Example: `myCharts: charts`.
  final String? alias;

  /// Child fields to select on this field (for object/interface/union types).
  /// For example, in `charts { id name }`, `charts` has two child fields: `id` and `name`.
  late List<GqlField> fields;

  /// Optional function to parse the raw JSON value of this field into a Dart type [T].
  /// Called after the response is received to transform the JSON value.
  final T? Function(Object?)? parser;

  /// Optional named fragment to spread on this field (e.g., `...ChartFragment`).
  /// If set, the fragment's fields are included when this field is rendered.
  final GqlFragment? fragment;

  /// GraphQL field arguments as a map of argument names to variable names (without `$` prefix).
  /// Example: `{'apiToken': 'apiToken', 'id': 'id'}` renders as `(apiToken: $apiToken, id: $id)`.
  final Map<String, String> args;

  /// Creates a new GraphQL field selection with optional nested fields, arguments, and fragments.
  ///
  /// Parameters:
  ///   - [name]: The GraphQL field name (required).
  ///   - [alias]: Optional field alias for response renaming.
  ///   - [parser]: Optional function to parse the JSON response into a Dart type.
  ///   - [fields]: Optional list of child fields to select.
  ///   - [fragment]: Optional fragment to spread on this field.
  ///   - [args]: Optional map of argument names to variable names.
  GqlField({
    required this.name,
    this.alias,
    this.parser,
    List<GqlField>? fields,
    this.fragment,
    Map<String, String>? args,
  }) : args = args ?? const {} {
    this.fields = List.from(fields ?? [], growable: true);
  }

  /// Adds a child field to this field.
  ///
  /// This is a convenience method for building nested field selections.
  /// For example, adding `id` and `name` to `charts` creates `charts { id name }`.
  void add(GqlField field) => fields.add(field);
}
