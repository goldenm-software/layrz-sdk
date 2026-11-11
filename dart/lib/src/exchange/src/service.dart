part of '../exchange.dart';

/// Immutable definition of a configured data-exchange integration.
@freezed
abstract class ExchangeService with _$ExchangeService {
  /// Private constructor used by the code generator.
  const ExchangeService._();

  /// Constructs an immutable [ExchangeService].
  const factory ExchangeService({
    /// Is the ID of the entity. This ID is unique.
    required String id,

    /// Is the assigned service name, cannot be translated for other languages.
    required String name,

    /// Is the credentials object; check the documentation for more information.
    Map<String, dynamic>? credentials,

    /// Is the protocol entity.
    ExchangeProtocol? protocol,

    /// Is the protocol ID.
    String? protocolId,

    /// Is the current transmission status.
    bool? isEnabled,

    /// Is the asset IDs linked to the service.
    List<String>? assetsIds,

    /// Is the assets linked to the service.
    List<Asset>? assets,

    /// Is the groups (tags) IDs linked to the service.
    List<String>? tagsIds,

    /// Is the groups (tags) linked to the service.
    List<Tag>? tags,

    /// Is the list of custom access permissions.
    List<Access>? access,

    /// Is the list of geofence IDs linked to the service.
    List<String>? geofencesIds,

    /// Is the list of geofences linked to the service.
    List<Geofence>? geofences,

    /// Is the list of tag IDs, as geofence groups, linked to the service.
    List<String>? geofencesGroupsIds,

    /// Is the list of tags, as geofence groups, linked to the service.
    List<Tag>? geofencesGroups,
  }) = _ExchangeService;

  /// Deserializes an [ExchangeService] from a JSON map.
  factory ExchangeService.fromJson(Map<String, dynamic> json) => _$ExchangeServiceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying exchange service fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'exchangeServiceFragment',
    onType: 'ExchangeService',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'credentials'),
      GqlField(name: 'protocolId'),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'assetsIds'),
      GqlField(name: 'tagsIds'),
      GqlField(name: 'geofencesIds'),
      GqlField(name: 'geofencesGroupsIds'),
      GqlField(name: 'access', fragment: Access.idFragment),
      GqlField(name: 'protocol', fragment: ExchangeProtocol.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all exchange services visible to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`exchangeServices`). Authentication is carried solely via
  /// the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server error).
  /// Errors are logged internally.
  static Future<List<ExchangeService>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'exchangeServices')..add(
          GqlField(name: 'exchangeServices')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _exchangeServiceListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExchangeService/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single exchange service by its [id].
  ///
  /// The backend always returns `result` as a list, even when filtered by ID, so the first element
  /// (if any) is returned. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns `null` on any error or when no service matches. Errors are logged internally.
  static Future<ExchangeService?> fetch({
    /// The ID of the [ExchangeService] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'exchangeServices',
        )..add(
          GqlField(name: 'exchangeServices', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/ExchangeService/fetch(): No result in list");
            return null;
          }
          return ExchangeService.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExchangeService/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple exchange services by their [ids].
  ///
  /// Sends the `deleteExchangeServices` mutation. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> deleteMultiple({
    /// The IDs of the exchange services to delete.
    required List<String> ids,

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
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'deleteExchangeServices',
        )..add(
          GqlField(name: 'deleteExchangeServices', args: {'ids': 'ids'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExchangeService/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Enables or disables the exchange service identified by [id] (flips its current state).
  ///
  /// Sends the `toggleExchangeService` mutation. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> toggle({
    /// The ID of the exchange service to toggle.
    required String id,

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
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'toggleExchangeService',
        )..add(
          GqlField(name: 'toggleExchangeService', args: {'id': 'id'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExchangeService/toggle(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_exchangeServiceDecoder] decodes a single-object `result` payload into an [ExchangeService].
/// Used by result-bearing mutations (add/edit-style).
ExchangeService _exchangeServiceDecoder(Object? json) {
  return ExchangeService.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_exchangeServiceListDecoder] decodes a raw listing `result` payload into a list of
/// [ExchangeService]. Used by listing queries (fetchAll).
List<ExchangeService> _exchangeServiceListDecoder(Object? json) {
  return List<ExchangeService>.from(
    (json as List? ?? []).map((e) => ExchangeService.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
