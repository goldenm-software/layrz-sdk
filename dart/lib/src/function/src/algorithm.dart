part of '../function.dart';

/// Immutable definition of an algorithm that can drive a [LayrzFunction].
@freezed
abstract class Algorithm with _$Algorithm {
  /// Private constructor used by the code generator.
  const Algorithm._();

  /// Constructs an immutable [Algorithm].
  const factory Algorithm({
    /// Is the unique identifier of the algorithm.
    required String id,

    /// Is the name of the algorithm.
    required String name,

    /// Is the color assigned to the algorithm.
    @ColorConverter() required Color color,

    /// Is the icon assigned to the algorithm.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// Indicates if the algorithm is enabled and available for use, or disabled and not
    /// available for use.
    required bool isEnabled,

    /// Is the list of category IDs the algorithm belongs to. Defaults to an empty list.
    @Default([]) List<String> categoriesIds,

    /// Indicates if the algorithm can be used in sensors. Defaults to `false`.
    @Default(false) bool canBeInSensors,

    /// Indicates if the algorithm supports HTTP. Defaults to `false`.
    @Default(false) bool hasHttp,

    /// Indicates if the algorithm supports FTP. Defaults to `false`.
    @Default(false) bool hasFtp,

    /// Is the list of required fields for the algorithm. Defaults to an empty list.
    @Default([]) List<CredentialField> requiredFields,

    /// Is the usage of the algorithm. This field should only be used to show the popularity of
    /// the algorithm, for marketing purposes.
    int? usage,
  }) = _Algorithm;

  /// Deserializes an [Algorithm] from a JSON map.
  factory Algorithm.fromJson(Map<String, dynamic> json) => _$AlgorithmFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying algorithm fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'algorithmFragment',
    onType: 'Algorithm',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'icon'),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'categoriesIds'),
      GqlField(name: 'canBeInSensors'),
      GqlField(name: 'hasHttp'),
      GqlField(name: 'hasFtp'),
      GqlField(name: 'requiredFields', fragment: CredentialField.fragment),
      GqlField(name: 'usage'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all algorithms available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`algorithms`) to retrieve every [Algorithm] visible to
  /// the user. Authentication is carried solely via the connector's `Authorization` header, built
  /// from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure. This allows the caller to observe success or error states
  /// without relying on the return value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server
  /// error). Errors are logged internally.
  static Future<List<Algorithm>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'algorithms')..add(
          GqlField(name: 'algorithms')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _algorithmListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Algorithm/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single algorithm by its [id].
  ///
  /// Makes an authenticated GraphQL query (`algorithms`) filtered by [id]. The backend always
  /// returns `result` as a list, even when filtered down to a single entity, so the first element
  /// (if any) is returned. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure, server error, or no
  /// matching algorithm). Errors are logged internally.
  static Future<Algorithm?> fetch({
    /// The ID of the [Algorithm] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'algorithms',
        )..add(
          GqlField(name: 'algorithms', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Algorithm/fetch(): No result in list");
            return null;
          }
          return Algorithm.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Algorithm/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_algorithmDecoder] decodes a single-object `result` payload into an [Algorithm].
/// Used by result-bearing mutations (add/edit-style).
Algorithm _algorithmDecoder(Object? json) {
  return Algorithm.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_algorithmListDecoder] decodes a raw listing `result` payload into a list of [Algorithm].
/// Used by listing queries (fetchAll).
List<Algorithm> _algorithmListDecoder(Object? json) {
  return List<Algorithm>.from(
    (json as List? ?? []).map((e) => Algorithm.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
