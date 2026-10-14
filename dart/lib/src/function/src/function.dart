part of '../function.dart';

/// Immutable definition of a configured integration function.
@freezed
abstract class LayrzFunction with _$LayrzFunction {
  /// Private constructor used by the code generator.
  const LayrzFunction._();

  /// Constructs an immutable [LayrzFunction].
  const factory LayrzFunction({
    /// Is the unique identifier of the function.
    required String id,

    /// Is the name of the function.
    required String name,

    /// Is the unique identifier of the algorithm.
    String? algorithmId,

    /// Is the algorithm of the function.
    Algorithm? algorithm,

    /// Is the minimum time of the function, defined in minutes.
    double? maximumTime,

    /// Is the minutes delta of the function, defined in minutes.
    double? minutesDelta,

    /// Is the external identifiers of the function.
    List<String>? externalIdentifiers,

    /// Is the token of the function.
    String? token,

    /// Is the credentials of the function.
    Map<String, dynamic>? credentials,

    /// Is the FTP account of the function.
    FtpAccount? ftp,

    /// Is the group (tag) IDs of the function.
    List<String>? groupsIds,

    /// Is the groups (tags) of the function.
    List<Tag>? groups,

    /// Is the asset IDs of the function.
    List<String>? assetsIds,

    /// Is the assets of the function.
    List<Asset>? assets,

    /// Is the access of the function.
    List<Access>? access,
  }) = _LayrzFunction;

  /// Deserializes a [LayrzFunction] from a JSON map.
  factory LayrzFunction.fromJson(Map<String, dynamic> json) => _$LayrzFunctionFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying function fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'functionFragment',
    onType: 'Function',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'algorithmId'),
      GqlField(name: 'maximumTime'),
      GqlField(name: 'minutesDelta'),
      GqlField(name: 'externalIdentifiers'),
      GqlField(name: 'assetsIds'),
      GqlField(name: 'assets')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'mode'))
        ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment)),
      GqlField(name: 'groupsIds'),
      GqlField(name: 'groups')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'color'))
        ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment)),
      GqlField(name: 'credentials'),
      GqlField(name: 'ftp')
        ..add(GqlField(name: 'host'))
        ..add(GqlField(name: 'port'))
        ..add(GqlField(name: 'username'))
        ..add(GqlField(name: 'password')),
      GqlField(name: 'token'),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all functions available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`functions`). Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// When [appId] is provided, the listing is scoped to that app.
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server
  /// error). Errors are logged internally.
  static Future<List<LayrzFunction>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional app ID to scope the listing to.
    String? appId,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            if (appId != null)
              GqlVariable(
                name: 'appId',
                type: .id,
                isRequired: false,
                value: appId,
              ),
          ],
          name: 'functions',
        )..add(
          GqlField(
              name: 'functions',
              args: {if (appId != null) 'appId': 'appId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _layrzFunctionListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LayrzFunction/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single function by its [id].
  ///
  /// Makes an authenticated GraphQL query (`functions`) filtered by [id]. The backend always
  /// returns `result` as a list, so the first element (if any) is returned. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `null` on any error or when no function matches.
  static Future<LayrzFunction?> fetch({
    /// The ID of the [LayrzFunction] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional app ID to scope the query to.
    String? appId,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
            if (appId != null)
              GqlVariable(
                name: 'appId',
                type: .id,
                isRequired: false,
                value: appId,
              ),
          ],
          name: 'functions',
        )..add(
          GqlField(
              name: 'functions',
              args: {'id': 'id', if (appId != null) 'appId': 'appId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/LayrzFunction/fetch(): No result in list");
            return null;
          }
          return _layrzFunctionDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LayrzFunction/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple functions by their [ids].
  ///
  /// Sends the `deleteFunctions` mutation, optionally scoped to [appId]. Authentication is carried
  /// solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> deleteMultiple({
    /// The IDs of the functions to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional app ID scope for the mutation.
    String? appId,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: ids,
            ),
            if (appId != null)
              GqlVariable(
                name: 'appId',
                type: .id,
                isRequired: false,
                value: appId,
              ),
          ],
          name: 'deleteFunctions',
        )..add(
          GqlField(
            name: 'deleteFunctions',
            args: {'ids': 'ids', if (appId != null) 'appId': 'appId'},
          )..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LayrzFunction/deleteMultiple(): General exception => $e\n$stack",
      );
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Imports a list of functions into an app.
  ///
  /// Sends the `importFunctionsIntoApp` mutation. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> importIntoApp({
    /// The ID of the app to import functions into.
    required String appId,

    /// The IDs of the functions to import.
    required List<String> functionsIds,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'appId',
              type: .id,
              isRequired: true,
              value: appId,
            ),
            GqlVariable(
              name: 'functionsIds',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: functionsIds,
            ),
          ],
          name: 'importFunctionsIntoApp',
        )..add(
          GqlField(
            name: 'importFunctionsIntoApp',
            args: {'appId': 'appId', 'functionsIds': 'functionsIds'},
          )..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LayrzFunction/importIntoApp(): General exception => $e\n$stack",
      );
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_layrzFunctionDecoder] decodes a single-object `result` payload into a [LayrzFunction].
/// Used by result-bearing mutations and single-item fetches.
LayrzFunction _layrzFunctionDecoder(Object? json) {
  return LayrzFunction.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_layrzFunctionListDecoder] decodes a raw listing `result` payload into a list of
/// [LayrzFunction]. Used by listing queries (fetchAll).
List<LayrzFunction> _layrzFunctionListDecoder(Object? json) {
  return List<LayrzFunction>.from(
    (json as List? ?? []).map(
      (e) => LayrzFunction.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
