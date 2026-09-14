part of '../link_shortcut.dart';

/// Immutable link shortcut data for short, redirecting URLs in Layrz.
///
/// [LinkShortcut] represents a short [code] that redirects to a longer
/// destination URL ([redirectTo]), identified by a unique [id] and optionally
/// attributed to the [Employee] who created it via [creator]/[creatorId].
@freezed
abstract class LinkShortcut with _$LinkShortcut {
  /// Private constructor used by the code generator.
  const LinkShortcut._();

  /// Constructs an immutable [LinkShortcut].
  const factory LinkShortcut({
    /// Unique identifier for this link shortcut.
    required String id,

    /// The short code used to reach this shortcut.
    required String code,

    /// The destination URL this shortcut redirects to, or null if not set.
    String? redirectTo,

    /// The [Employee] who created this shortcut, or null if not available.
    Employee? creator,

    /// The unique identifier of the [Employee] who created this shortcut, or
    /// null if not available.
    String? creatorId,
  }) = _LinkShortcut;

  /// Deserializes a [LinkShortcut] from a JSON map.
  factory LinkShortcut.fromJson(Map<String, dynamic> json) => _$LinkShortcutFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying link shortcut fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'linkShortcutFragment',
    onType: 'LinkShortcut',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'code'),
      GqlField(name: 'redirectTo'),
      GqlField(name: 'creatorId'),
      GqlField(name: 'creator', fragment: Employee.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all link shortcuts available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`goldenmShortcuts`) to retrieve every
  /// [LinkShortcut] visible to the user. Authentication is carried solely via
  /// the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure. This allows the
  /// caller to observe success or error states without relying on the return
  /// value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<LinkShortcut>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'goldenmShortcuts')..add(
          GqlField(name: 'goldenmShortcuts')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _linkShortcutListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LinkShortcut/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single link shortcut by its [id].
  ///
  /// Makes an authenticated GraphQL query (`goldenmShortcuts`) filtered by [id]. The
  /// backend always returns `result` as a list, even when filtered down to a
  /// single entity, so the first element (if any) is returned. Authentication
  /// is carried solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching link shortcut). Errors are logged
  /// internally.
  static Future<LinkShortcut?> fetch({
    /// The ID of the [LinkShortcut] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'goldenmShortcuts',
        )..add(
          GqlField(
              name: 'goldenmShortcuts',
              args: {'id': 'id'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/LinkShortcut/fetch(): No result in list");
            return null;
          }
          return LinkShortcut.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LinkShortcut/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the link shortcuts identified by [ids] from the server.
  ///
  /// Makes an authenticated GraphQL mutation (`deleteGoldenmShortcuts`). Authentication
  /// is carried solely via the connector's `Authorization` header, built from
  /// [apiToken]. The mutation returns only `status` and `errors` on the wire
  /// (no per-item result payload), so the [StandardResponse] result slot is a
  /// plain `bool`: `true` on success, `false` otherwise.
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, bool)`: on an
  /// internal error, `(ApiStatus.internalError, null, false)`; on any other
  /// non-ok status, `(status, errors, false)`; on success, `(status, errors, true)`.
  static Future<StandardResponse<bool>> delete({
    /// The unique identifiers of the [LinkShortcut] entries to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: GqlVariableType.list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'deleteGoldenmShortcuts',
        )..add(
          GqlField(
              name: 'deleteGoldenmShortcuts',
              args: {'ids': 'ids'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, false);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, false);
      }

      return (response.status, response.errors, true);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LinkShortcut/delete(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, false);
    }
  }
  // coverage:ignore-end
}

/// [_linkShortcutDecoder] decodes a single-object `result` payload into a [LinkShortcut].
/// Used by result-bearing mutations (add/edit-style).
LinkShortcut _linkShortcutDecoder(Object? json) {
  return LinkShortcut.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_linkShortcutListDecoder] decodes a raw listing `result` payload into a list of [LinkShortcut].
/// Used by listing queries (fetchAll).
List<LinkShortcut> _linkShortcutListDecoder(Object? json) {
  return List<LinkShortcut>.from(
    (json as List? ?? []).map(
      (e) => LinkShortcut.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
