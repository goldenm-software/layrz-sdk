part of '../../api.dart';

/// Represents a GraphQL variable type used in query variable declarations.
///
/// [GqlVariableType] encapsulates GraphQL type names as string representations,
/// supporting both scalar types (String, Int, Float, etc.) and complex types
/// (lists, input types, enums). Variable types are used in variable declarations like
/// `$apiToken: String!` or `$ids: [ID!]!`.
///
/// Use factory methods to construct variable types:
/// - Scalar types: [string], [int], [float], [boolean], [id], [json], [uuid], [duration], [unix]
/// - List type: [list]
/// - Input type: [input]
/// - Enum type: [enum_]
///
/// Example:
/// ```dart
/// var stringType = GqlVariableType.string;
/// var intListType = GqlVariableType.list(of: GqlVariableType.int, isRequired: true);
/// var inputType = GqlVariableType.input(of: 'CreateChartInput');
/// ```
class GqlVariableType {
  /// The string representation of this type as it appears in GraphQL.
  /// For example: `'String'`, `'[Int!]'`, `'CreateChartInput'`.
  final String name;

  const GqlVariableType._(this.name);

  /// GraphQL String scalar type.
  static const string = GqlVariableType._('String');

  /// GraphQL Int scalar type (32-bit signed integer).
  static const int = GqlVariableType._('Int');

  /// GraphQL Float scalar type (IEEE 754 floating point).
  static const float = GqlVariableType._('Float');

  /// GraphQL Boolean scalar type.
  static const boolean = GqlVariableType._('Boolean');

  /// GraphQL ID scalar type (serialized as a string).
  static const id = GqlVariableType._('ID');

  /// GraphQL Json scalar type (custom Layrz type for arbitrary JSON objects).
  static const json = GqlVariableType._('Json');

  /// GraphQL Uuid scalar type (custom Layrz type for UUID strings).
  static const uuid = GqlVariableType._('Uuid');

  /// GraphQL Duration scalar type (custom Layrz type for duration/interval values).
  static const duration = GqlVariableType._('Duration');

  /// GraphQL Unix scalar type (custom Layrz type for Unix timestamps).
  static const unix = GqlVariableType._('Unix');

  /// Creates a list variable type wrapping another [GqlVariableType].
  ///
  /// Parameters:
  ///   - [of]: The element type of the list (required).
  ///   - [isRequired]: If true, renders the inner type as non-null (e.g., `[Int!]` instead of `[Int]`).
  ///
  /// Example:
  /// ```dart
  /// GqlVariableType.list(of: GqlVariableType.id, isRequired: true)  // [ID!]
  /// GqlVariableType.list(of: GqlVariableType.string)                 // [String]
  /// ```
  static GqlVariableType list({
    required GqlVariableType of,
    bool isRequired = false,
  }) {
    if (isRequired) {
      return GqlVariableType._('[${of.name}!]');
    } else {
      return GqlVariableType._('[${of.name}]');
    }
  }

  /// Creates an input object variable type with the given input type name.
  ///
  /// Input types represent GraphQL input objects, typically used for mutation arguments.
  ///
  /// Parameter:
  ///   - [of]: The name of the GraphQL input type (e.g., `'CreateChartInput'`).
  ///
  /// Example:
  /// ```dart
  /// GqlVariableType.input(of: 'CreateChartInput')  // CreateChartInput
  /// ```
  static GqlVariableType input({required String of}) => GqlVariableType._(of);

  /// Creates an enum variable type with the given enum type name.
  ///
  /// Enum types represent GraphQL enums, used for arguments with a fixed set of values.
  ///
  /// Parameter:
  ///   - [of]: The name of the GraphQL enum type (e.g., `'AssetType'`).
  ///
  /// Example:
  /// ```dart
  /// GqlVariableType.enum_(of: 'AssetType')  // AssetType
  /// ```
  static GqlVariableType enum_({required String of}) => GqlVariableType._(of);
}

/// Represents a variable in a GraphQL query or mutation operation.
///
/// [GqlVariable] defines a single variable that can be passed as an argument to a query or mutation.
/// Each variable has a name, type, optionality (required or nullable), and an optional runtime value.
///
/// Variables appear in operation variable declarations like:
/// ```
/// query GetChart($id: ID!, $apiToken: String) {
///   chart(id: $id, apiToken: $apiToken) { ... }
/// }
/// ```
///
/// And are serialized into the request's variables map:
/// ```json
/// {
///   "variables": {
///     "id": "chart-123",
///     "apiToken": "token-abc"
///   }
/// }
/// ```
///
/// Example:
/// ```dart
/// var variables = [
///   GqlVariable(name: 'id', type: GqlVariableType.id, isRequired: true, value: 'chart-123'),
///   GqlVariable(name: 'apiToken', type: GqlVariableType.string, value: 'my-token'),
/// ];
/// ```
class GqlVariable {
  /// The variable name without the leading `$` prefix.
  /// For example: `'apiToken'`, `'id'`, `'data'`.
  /// Used in operation declarations as `$name: Type` and in field arguments as `fieldName: $name`.
  final String name;

  /// The GraphQL type of this variable (e.g., String, Int, ID, custom input types).
  /// See [GqlVariableType] for available types.
  final GqlVariableType type;

  /// Whether this variable is required (non-null) in the operation.
  /// When true, the type is rendered with a trailing `!` (e.g., `ID!`, `[String!]!`).
  /// When false, the variable is nullable and can be omitted from the request.
  final bool isRequired;

  /// The runtime value to serialize into the request's variables map.
  /// If null, the variable is declared but omitted from the wire payload.
  final Object? value;

  /// Creates a new GraphQL variable with the given name and type.
  ///
  /// Parameters:
  ///   - [name]: The variable name without `$` prefix (required).
  ///   - [type]: The variable type (required). See [GqlVariableType].
  ///   - [isRequired]: Whether this variable is required/non-null (default: false).
  ///   - [value]: The runtime value to include in the variables map (default: null).
  const GqlVariable({
    required this.name,
    required this.type,
    this.isRequired = false,
    this.value,
  });
}
