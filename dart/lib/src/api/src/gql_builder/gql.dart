part of '../../api.dart';

/// Represents a GraphQL operation (query, mutation, or subscription) with variables, fields, and fragments.
///
/// [Gql] is an abstract base class for building GraphQL operations programmatically. It supports
/// hierarchical field selections, variable declarations, named and inline fragments, and automatic
/// `__typename` inclusion for type-aware parsing.
///
/// When [generated] is called, it produces a complete, valid GraphQL document string that includes:
/// - Fragment definitions at the top (deduped by name)
/// - The operation definition (query, mutation, or subscription)
/// - Variable declarations with type annotations and non-null markers
/// - Field selections with aliases, arguments, and nested structure
/// - Inline fragments (`... on Type`) for union/interface type handling
///
/// Subclasses:
/// - [GqlQuery]: For GraphQL queries (read-only data fetching)
/// - [GqlMutation]: For GraphQL mutations (data modification)
/// - [GqlSubscription]: For GraphQL subscriptions (real-time updates via [LayrzConnector.subscribe])
///
/// Example:
/// ```dart
/// // Create variables and a fragment
/// var variables = [
///   GqlVariable(name: 'id', type: GqlVariableType.id, isRequired: true, value: 'chart-1'),
/// ];
///
/// var chartFragment = GqlFragment(
///   name: 'ChartFields',
///   onType: 'Chart',
///   fields: [
///     GqlField(name: 'id'),
///     GqlField(name: 'name'),
///     GqlField(name: 'type'),
///   ],
/// );
///
/// // Create a query
/// var query = GqlQuery(
///   name: 'GetChart',
///   variables: variables,
///   fields: [
///     GqlField(
///       name: 'chart',
///       args: {'id': 'id'},
///       fields: [
///         GqlField(name: 'id'),
///         GqlField(name: 'name'),
///         GqlField(
///           name: 'creator',
///           fragment: chartFragment,
///         ),
///       ],
///     ),
///   ],
/// );
///
/// print(query.generated);
/// // Output:
/// // fragment ChartFields on Chart {
/// //   id
/// //   name
/// //   type
/// // }
/// //
/// // query GetChart($id: ID!) {
/// //   chart(id: $id) {
/// //     id
/// //     name
/// //     creator {
/// //       ...ChartFields
/// //     }
/// //   }
/// // }
/// ```
abstract class Gql {
  /// An optional name for this operation, useful for debugging and server-side logging.
  /// If not provided, [generated] will auto-generate a name based on the first field.
  final String? name;

  /// The list of variables declared for this operation.
  /// Variables appear in the operation signature like `($apiToken: String!, $id: ID)`.
  /// Each variable's name, type, and optionality are rendered in the generated document.
  final List<GqlVariable> variables;

  /// The top-level fields of this operation.
  /// These become the root selection set of the query, mutation, or subscription.
  late List<GqlField> fields;

  /// Whether to automatically include `__typename` in every selection set.
  /// When true, `__typename` is added to each nested object for type-aware response parsing.
  /// Default is false.
  final bool includeTypename;

  /// Creates a new GraphQL operation (query, mutation, or subscription).
  ///
  /// Parameters:
  ///   - [name]: Optional operation name for debugging and server logging.
  ///   - [variables]: List of variable declarations (required, may be empty).
  ///   - [fields]: Optional list of top-level fields.
  ///   - [includeTypename]: Whether to include `__typename` in selection sets (default: false).
  Gql({
    this.name,
    required this.variables,
    List<GqlField>? fields,
    this.includeTypename = false,
  }) {
    this.fields = List.from(fields ?? [], growable: true);
  }

  /// Generates the complete GraphQL operation document as a string.
  ///
  /// Returns a valid GraphQL document including:
  /// - Fragment definitions (deduplicated by name, in dependency order)
  /// - The operation definition (query/mutation/subscription)
  /// - Variable declarations with types and non-null markers
  /// - Field selections with all aliases, arguments, and nesting
  /// - Inline fragments for union/interface type selections
  /// - `__typename` fields if [includeTypename] is true
  ///
  /// Example output for a query:
  /// ```
  /// query GetCharts($apiToken: String!) {
  ///   charts(apiToken: $apiToken) {
  ///     id
  ///     name
  ///   }
  /// }
  /// ```
  String get generated {
    final buffer = StringBuffer();

    // Collect all fragments referenced anywhere in the field tree, in encounter order,
    // deduped by name so each fragment block is only rendered once.
    final fragments = _collectFragments(fields);
    for (final fragment in fragments) {
      buffer.write('fragment ${fragment.name} on ${fragment.onType} {\n');
      if (includeTypename) buffer.write('  __typename\n');
      for (final field in fragment.fields) {
        buffer.write('${_writeField(field)}\n');
      }
      buffer.write('}\n\n');
    }

    buffer.write(
      this is GqlMutation
          ? 'mutation'
          : this is GqlSubscription
          ? 'subscription'
          : 'query',
    );

    if (name != null) {
      buffer.write(' $name');
    } else {
      String autoname = _findName();
      buffer.write(' $autoname');
    }

    if (variables.isNotEmpty) {
      buffer.write('(');
      buffer.write(
        variables
            .map((v) => '\$${v.name}: ${v.type.name}${v.isRequired ? '!' : ''}')
            .join(', '),
      );
      buffer.write(')');
    }
    buffer.write(' {\n');

    for (final field in fields) {
      buffer.write('${_writeField(field)}\n');
    }
    buffer.write('}\n');

    return buffer.toString();
  }

  /// Adds a top-level field to this operation.
  ///
  /// This is a convenience method for building the operation's selection set.
  void add(GqlField field) => fields.add(field);

  /// Recursively collects all [GqlFragment] instances referenced in the field tree.
  ///
  /// Fragments are collected in post-order dependency traversal: dependencies (fragments referenced
  /// by nested fragments) are emitted before the fragments that reference them. This ensures that
  /// when fragments are rendered in the generated document, all their dependencies are already defined.
  ///
  /// Each fragment is deduplicated by name, so fragments referenced multiple times appear in the
  /// output exactly once. Circular fragment dependencies are detected and safely broken using a
  /// three-state visiting/emitted set approach, preventing infinite loops.
  ///
  /// Parameters:
  ///   - [fields]: The list of fields to traverse.
  ///
  /// Returns a list of [GqlFragment] instances in stable, deterministic order where dependencies
  /// come before dependents.
  List<GqlFragment> _collectFragments(List<GqlField> fields) {
    final emitted = <String>{};
    final visiting = <String>{};
    final result = <GqlFragment>[];

    void visit(List<GqlField> fs) {
      for (final f in fs) {
        if (f.fragment != null) {
          final fragmentName = f.fragment!.name;
          if (emitted.contains(fragmentName)) {
            // Already processed; skip.
            continue;
          }
          if (visiting.contains(fragmentName)) {
            // Cycle detected; break it by not recursing further.
            continue;
          }
          // Mark as visiting to detect cycles.
          visiting.add(fragmentName);
          // Post-order: recurse into nested fields first.
          visit(f.fragment!.fields);
          // Then emit this fragment.
          result.add(f.fragment!);
          emitted.add(fragmentName);
          visiting.remove(fragmentName);
        }
        visit(f.fields);
      }
    }

    visit(fields);
    return result;
  }

  /// Renders a single [GqlField] into its GraphQL string representation with proper indentation.
  ///
  /// This private method handles the complete formatting of a field including:
  /// - Field aliases (e.g., `myAlias: fieldName`)
  /// - Arguments (e.g., `(arg1: $var1, arg2: $var2)`)
  /// - Nested field selections (selection sets)
  /// - Fragment spreads (e.g., `...FragmentName`)
  /// - Union inline fragments (e.g., `... on TypeName { ... }`)
  /// - Nested `__typename` fields (if [includeTypename] is true)
  ///
  /// Parameters:
  ///   - [field]: The field to render.
  ///   - [depth]: Nesting depth for indentation (each level adds 2 spaces). Default is 0.
  ///
  /// Returns the formatted GraphQL field string.
  String _writeField(GqlField field, {int depth = 0}) {
    final buffer = StringBuffer();
    final indent = '  ' * (depth + 1);

    if (field is GqlUnion) {
      buffer.write('$indent... on ${field.name} {\n');
      for (final subField in field.fields) {
        buffer.write('${_writeField(subField, depth: depth + 1)}\n');
      }
      buffer.write('$indent}');
      return buffer.toString();
    }

    if (field.alias != null) {
      buffer.write('$indent${field.alias}: ${field.name}');
    } else {
      buffer.write('$indent${field.name}');
    }

    if (field.args.isNotEmpty) {
      final argStr = field.args.entries
          .map((e) => '${e.key}: \$${e.value}')
          .join(', ');
      buffer.write('($argStr)');
    }

    if (field.fields.isNotEmpty) {
      buffer.write(' {\n');
      if (includeTypename) buffer.write('$indent  __typename\n');
      for (final subField in field.fields) {
        buffer.write('${_writeField(subField, depth: depth + 1)}\n');
      }
      buffer.write('$indent}');
    } else if (field.fragment != null) {
      buffer.write(' {\n');
      if (includeTypename) buffer.write('$indent  __typename\n');
      buffer.write('$indent  ...${field.fragment!.name}\n');
      buffer.write('$indent}');
    }

    return buffer.toString();
  }

  /// Auto-generates an operation name based on the first field if no explicit name is provided.
  ///
  /// If [name] is null, this method extracts the name of the first top-level field and uses
  /// it as the operation name. This ensures that even anonymous operations have a named form
  /// in the generated document. If there are no fields, returns `'UnnamedOperation'`.
  ///
  /// Returns the operation name to use in the generated document.
  String _findName() {
    if (fields.isNotEmpty) {
      return fields.first.name;
    }

    return 'UnnamedOperation';
  }
}

/// A GraphQL query operation for fetching data from the server.
///
/// [GqlQuery] extends [Gql] to represent a GraphQL `query` operation. Queries are read-only
/// operations that fetch data without modifying state on the server.
///
/// When [Gql.generated] is called on a [GqlQuery], it produces a valid GraphQL query document
/// with the `query` keyword at the start of the operation definition.
///
/// Example:
/// ```dart
/// var query = GqlQuery(
///   name: 'GetCharts',
///   variables: [
///     GqlVariable(name: 'apiToken', type: GqlVariableType.string, isRequired: true),
///   ],
///   fields: [
///     GqlField(name: 'charts', args: {'apiToken': 'apiToken'}, fields: [
///       GqlField(name: 'id'),
///       GqlField(name: 'name'),
///     ]),
///   ],
/// );
/// ```
class GqlQuery extends Gql {
  /// Creates a new GraphQL query operation.
  ///
  /// Parameters:
  ///   - [name]: Optional query name.
  ///   - [variables]: Query variable declarations (default: empty list).
  ///   - [fields]: Top-level fields to query.
  ///   - [includeTypename]: Whether to include `__typename` in selection sets (default: false).
  GqlQuery({
    super.name,
    super.variables = const [],
    super.fields,
    super.includeTypename,
  });
}

/// A GraphQL mutation operation for modifying data on the server.
///
/// [GqlMutation] extends [Gql] to represent a GraphQL `mutation` operation. Mutations are
/// operations that modify data on the server and can also return data in the response.
///
/// When [Gql.generated] is called on a [GqlMutation], it produces a valid GraphQL mutation document
/// with the `mutation` keyword at the start of the operation definition.
///
/// Example:
/// ```dart
/// var mutation = GqlMutation(
///   name: 'CreateChart',
///   variables: [
///     GqlVariable(name: 'data', type: GqlVariableType.input(of: 'CreateChartInput'), isRequired: true),
///   ],
///   fields: [
///     GqlField(name: 'createChart', args: {'data': 'data'}, fields: [
///       GqlField(name: 'id'),
///       GqlField(name: 'name'),
///     ]),
///   ],
/// );
/// ```
class GqlMutation extends Gql {
  /// Creates a new GraphQL mutation operation.
  ///
  /// Parameters:
  ///   - [name]: Optional mutation name.
  ///   - [variables]: Mutation variable declarations (default: empty list).
  ///   - [fields]: Top-level fields to mutate.
  ///   - [includeTypename]: Whether to include `__typename` in selection sets (default: false).
  GqlMutation({
    super.name,
    super.variables = const [],
    super.fields,
    super.includeTypename,
  });
}

/// A GraphQL subscription operation for real-time updates from the server.
///
/// [GqlSubscription] extends [Gql] to represent a GraphQL `subscription` operation. Subscriptions
/// establish a persistent connection to receive real-time updates when data changes on the server.
///
/// Subscriptions are typically used with [LayrzConnector.subscribe] to receive pushed notifications
/// instead of polling. When [Gql.generated] is called on a [GqlSubscription], it produces a valid
/// GraphQL subscription document with the `subscription` keyword at the start of the operation definition.
///
/// Example:
/// ```dart
/// var subscription = GqlSubscription(
///   name: 'OnChartUpdated',
///   variables: [
///     GqlVariable(name: 'id', type: GqlVariableType.id, isRequired: true),
///   ],
///   fields: [
///     GqlField(name: 'chartUpdated', args: {'id': 'id'}, fields: [
///       GqlField(name: 'id'),
///       GqlField(name: 'name'),
///     ]),
///   ],
/// );
/// ```
class GqlSubscription extends Gql {
  /// Creates a new GraphQL subscription operation.
  ///
  /// Parameters:
  ///   - [name]: Optional subscription name.
  ///   - [variables]: Subscription variable declarations (default: empty list).
  ///   - [fields]: Top-level fields to subscribe to.
  ///   - [includeTypename]: Whether to include `__typename` in selection sets (default: false).
  GqlSubscription({
    super.name,
    super.variables = const [],
    super.fields,
    super.includeTypename,
  });
}
