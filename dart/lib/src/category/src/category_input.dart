part of '../category.dart';

/// Mutable input data for creating or updating a [Category].
///
/// [CategoryInput] mirrors the fields of [Category] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new category;
/// otherwise it updates the existing one.
@unfreezed
abstract class CategoryInput with _$CategoryInput {
  /// Private constructor used by the code generator.
  const CategoryInput._();

  /// Constructs a mutable [CategoryInput].
  factory CategoryInput({
    /// Unique identifier for this category, or null when creating a new one.
    String? id,

    /// Human-readable name of the category. Defaults to an empty string.
    @Default('') String name,

    /// The kind of entity this category classifies. Defaults to
    /// [CategoryKind.asset].
    @Default(CategoryKind.asset) CategoryKind kind,

    /// The asset connectivity state this category applies to, or null when
    /// not applicable.
    AssetKind? assetKind,
  }) = _CategoryInput;

  /// Deserializes a [CategoryInput] from a JSON map.
  factory CategoryInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this category on the server.
  ///
  /// Sends `addCategory` when [id] is null, or `editCategory` when [id] is
  /// set, both with this input serialized as the `CategoryInput` GraphQL
  /// input type.
  ///
  /// The [onResponse] callback, if provided, is invoked with the [ApiStatus]
  /// response code as a JSON string.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Category?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedCategory)`.
  Future<StandardResponse<Category>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] response code as a JSON
    /// string. Called once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addCategory' : 'editCategory';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'apiToken',
              type: .string,
              isRequired: true,
              value: apiToken,
            ),
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'CategoryInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: {'apiToken': 'apiToken', 'data': 'data'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Category.fragment)),
        ),
        _categoryDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/CategoryInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
