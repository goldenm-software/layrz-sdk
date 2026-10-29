part of '../mappit.dart';

/// A single link or unlink event in a [MappitRoute]'s seller assignment
/// history.
///
/// [MappitRouteLinkingHistory] records who performed the operation
/// ([performedBy]/[performedById]) and when ([performedAt]), along with the
/// seller that resulted from it ([currentSeller]/[currentSellerId]).
@freezed
abstract class MappitRouteLinkingHistory with _$MappitRouteLinkingHistory {
  /// Constructs an immutable [MappitRouteLinkingHistory].
  const factory MappitRouteLinkingHistory({
    /// [currentSeller] represents the current seller of the route. If this field comes null, means
    /// is a unlink.
    Asset? currentSeller,

    /// [currentSellerId] represents the current seller ID of the route. If this field comes null,
    /// means is a unlink.
    String? currentSellerId,

    /// [performedBy] represents the user that performed the operation of link or unlink.
    /// If this field comes null, the relation was soft-deleted (e.g. the user was removed);
    /// [performedById] still holds the plain ID of who performed the operation.
    User? performedBy,

    /// [performedById] represents the user ID that performed the operation of link or unlink.
    required String performedById,

    /// [performedAt] is the timestamp of the operation.
    @TimestampConverter() required DateTime performedAt,
  }) = _MappitRouteLinkingHistory;

  /// Deserializes a [MappitRouteLinkingHistory] from a JSON map.
  factory MappitRouteLinkingHistory.fromJson(Map<String, dynamic> json) => _$MappitRouteLinkingHistoryFromJson(json);
}

/// Immutable route data for Mappit sales/service planning.
///
/// [MappitRoute] links a named route to a set of [geofences], a
/// [currentSeller], optional [secondarySellers], and its full
/// [assignmentsHistory] of seller link/unlink operations.
@freezed
abstract class MappitRoute with _$MappitRoute {
  const MappitRoute._();

  /// Constructs an immutable [MappitRoute].
  const factory MappitRoute({
    /// [id] represents the route ID.
    required String id,

    /// [name] represents the route name.
    required String name,

    /// [currentSeller] represents the current seller of the route.
    Asset? currentSeller,

    /// [currentSellerId] represents the current seller ID of the route.
    String? currentSellerId,

    /// [geofences] represents the geofences linked to the route.
    List<Geofence>? geofences,

    /// [geofencesIds] represents the geofences IDs linked to the route.
    List<String>? geofencesIds,

    /// [assignmentsHistory] is the history of the link and unlink operations of this route.
    List<MappitRouteLinkingHistory>? assignmentsHistory,

    /// [ownerId] refers to the owner of the route.
    String? ownerId,

    /// [owner] refers to the owner of the route.
    User? owner,

    /// [secondarySellers] represents the secondary sellers of the route.
    List<Asset>? secondarySellers,

    /// [secondarySellersIds] represents the secondary sellers IDs of the route.
    List<String>? secondarySellersIds,
  }) = _MappitRoute;

  /// Deserializes a [MappitRoute] from a JSON map.
  factory MappitRoute.fromJson(Map<String, dynamic> json) => _$MappitRouteFromJson(json);

  // coverage:ignore-start
  /// The `id`, `name` and `dynamicIcon` of a seller [Asset].
  static List<GqlField> get _sellerFields => [
    GqlField(name: 'id'),
    GqlField(name: 'name'),
    GqlField(name: 'mode'),
    GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
  ];

  /// GraphQL fragment with the lightweight fields of a [MappitRoute]: its geofence IDs, the current
  /// seller and the owner ID.
  static GqlFragment get fragment => GqlFragment(
    name: 'mappitRouteFragment',
    onType: 'MappitRoute',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'geofencesIds'),
      GqlField(name: 'ownerId'),
      GqlField(name: 'currentSellerId'),
      GqlField(name: 'currentSeller', fields: _sellerFields),
    ],
  );

  /// The detail fields read by the route form: geofences with their custom fields, secondary sellers
  /// and the assignments history.
  static List<GqlField> get _detailFields => [
    GqlField(
      name: 'geofences',
      fields: [
        for (final name in ['id', 'name', 'mode', 'description', 'color', 'category']) GqlField(name: name),
        GqlField(name: 'customFields', fragment: CustomField.fragment),
      ],
    ),
    GqlField(name: 'secondarySellersIds'),
    GqlField(name: 'secondarySellers', fields: _sellerFields),
    GqlField(
      name: 'assignmentsHistory',
      fields: [
        GqlField(name: 'currentSellerId'),
        GqlField(name: 'currentSeller', fields: _sellerFields),
        GqlField(name: 'performedAt'),
        GqlField(name: 'performedById'),
        GqlField(
          name: 'performedBy',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
            GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
          ],
        ),
      ],
    ),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches every Mappit route available to the authenticated user through the `mappitRoutes`
  /// query (Mappit API only).
  ///
  /// Selects the lightweight [fragment]; add any other field with [extraFields]. Use [fetch] for the
  /// full record. Returns an empty list on any error.
  static Future<List<MappitRoute>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'mappitRoutes')..add(
          GqlField(name: 'mappitRoutes')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment, fields: [...?extraFields])),
        ),
        _mappitRouteListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this route: geofences (with their custom fields), secondary sellers
  /// and the assignments history.
  ///
  /// Returns `null` when the route is not found or on any error; a missing route reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<MappitRoute?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'mappitRoutes',
          variables: [GqlVariable(name: 'id', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: 'mappitRoutes', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment, fields: _detailFields)),
        ),
        _mappitRouteListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result ?? [];
      if (result.isEmpty) {
        onResponse?.call(.notfound);
        return null;
      }

      return result.first;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the routes with the given [ids] through the `deleteMappitRoutes` mutation.
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ids] are the IDs of the routes to delete.
    required List<String> ids,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteMappitRoutes',
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'deleteMappitRoutes', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Exports the geofences of this route (with their custom fields) to Microsoft Excel through the
  /// `exportMappitRoute` mutation.
  ///
  /// Returns the URL of the generated file, or `null` on any error.
  Future<String?> export({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'exportMappitRoute',
          variables: [GqlVariable(name: 'routeId', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: 'exportMappitRoute', args: {'routeId': 'routeId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json as String?,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/export(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/export(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Queues the import of the Wialon geofence groups [wialonGroupIds] of the resource
  /// [wialonResourceId] as routes, through the `importMappitGeofencesGroupsFromWialon` mutation.
  ///
  /// [useNext] selects the next version of the import process. Returns the status and, on a rejected
  /// request, the field errors.
  static Future<StandardResponse<void>> importFromWialon({
    /// The external account that owns the resource.
    required String externalAccountId,

    /// The Wialon resource that holds the groups.
    required String wialonResourceId,

    /// The Wialon IDs of the groups to import.
    required List<String> wialonGroupIds,

    /// Whether to use the next version of the import process.
    bool useNext = false,

    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'importMappitGeofencesGroupsFromWialon',
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'WialonGeofenceGroupInput'),
              isRequired: true,
              value: {
                'externalAccountId': externalAccountId,
                'resourceId': wialonResourceId,
                'groupsIds': wialonGroupIds,
                'useNext': useNext,
              },
            ),
          ],
        )..add(
          GqlField(name: 'importMappitGeofencesGroupsFromWialon', args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (ApiStatus.ok, null, null);
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/importFromWialon(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Gives the user [userId] access to the routes [routesIds] (`assignMappitRoutesToUser`).
  ///
  /// Returns `true` when the API answers ok.
  static Future<bool> assignToUser({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [routesIds] are the IDs of the routes to assign.
    required List<String> routesIds,

    /// [userId] is the ID of the user that receives the routes.
    required String userId,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'assignMappitRoutesToUser',
          variables: [
            GqlVariable(
              name: 'routesIds',
              value: routesIds,
              type: .list(of: .id),
              isRequired: true,
            ),
            GqlVariable(name: 'userId', value: userId, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'assignMappitRoutesToUser', args: {'routesIds': 'routesIds', 'userId': 'userId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/assignToUser(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/assignToUser(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Sets the main route of the seller [sellerId] to [routeId] (`assignMappitRouteToSeller`).
  ///
  /// A `null` [routeId] unassigns the seller's route. Returns `true` when the API answers ok.
  static Future<bool> assignToSeller({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [sellerId] is the ID of the seller (asset).
    required String sellerId,

    /// [routeId] is the ID of the route to assign, or `null` to unassign it.
    String? routeId,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'assignMappitRouteToSeller',
          variables: [
            GqlVariable(name: 'sellerId', value: sellerId, type: .id, isRequired: true),
            GqlVariable(name: 'routeId', value: routeId, type: .id),
          ],
        )..add(
          GqlField(name: 'assignMappitRouteToSeller', args: {'sellerId': 'sellerId', 'routeId': 'routeId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRoute/assignToSeller(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRoute/assignToSeller(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a raw listing `result` payload into a list of [MappitRoute].
List<MappitRoute> _mappitRouteListDecoder(Object? json) {
  return List<MappitRoute>.from(
    (json as List? ?? []).map((e) => MappitRoute.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// Decodes a single raw `result` payload into a [MappitRoute].
MappitRoute _mappitRouteDecoder(Object? json) => MappitRoute.fromJson(Map<String, dynamic>.from(json as Map));
