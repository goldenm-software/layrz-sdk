part of '../poi.dart';

/// Immutable point of interest, a named location that can be drawn on maps.
@freezed
abstract class Poi with _$Poi {
  /// Private constructor used by the code generator.
  const Poi._();

  /// Constructs an immutable [Poi].
  const factory Poi({
    /// [id] is the unique identifier of the point of interest.
    required String id,

    /// [name] is the name of the point of interest.
    required String name,

    /// [description] is the description of the point of interest.
    String? description,

    /// [icon] is the icon representing the point of interest.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [latitude] is the latitude of the point of interest.
    double? latitude,

    /// [longitude] is the longitude of the point of interest.
    double? longitude,

    /// [access] is the list of granted access to this point of interest.
    List<Access>? access,
  }) = _Poi;

  /// Deserializes a [Poi] from a JSON map.
  factory Poi.fromJson(Map<String, dynamic> json) => _$PoiFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with every field of a [Poi], including its access grants (UUID based).
  static GqlFragment get fragment => GqlFragment(name: 'poiFragment', onType: 'Poi')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'description'))
    ..add(GqlField(name: 'icon'))
    ..add(GqlField(name: 'latitude'))
    ..add(GqlField(name: 'longitude'))
    ..add(GqlField(name: 'access', fragment: Access.uuidFragment));
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches every point of interest visible to the authenticated user.
  ///
  /// Uses a lightweight selection (`id`, `name`, `icon`, `latitude` and `longitude`), enough to list and draw
  /// them. Use [fetch] to get the full [fragment] of a single point of interest. Authentication is carried
  /// solely via the connector's `Authorization` header.
  ///
  /// Returns the list of points of interest, or an empty list on any error ([onResponse] receives the status).
  static Future<List<Poi>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(variables: [], name: 'pois')..add(
          GqlField(name: 'pois')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'id'))
                ..add(GqlField(name: 'name'))
                ..add(GqlField(name: 'icon'))
                ..add(GqlField(name: 'latitude'))
                ..add(GqlField(name: 'longitude')),
            ),
        ),
        _poiListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Poi/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single point of interest by [id], with the full [fragment] (description and access included).
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the point of interest, or `null` when it does not exist or on any error ([onResponse] receives
  /// the status).
  static Future<Poi?> fetch({
    /// The identifier of the point of interest to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'pois',
        )..add(
          GqlField(name: 'pois', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Poi/fetch(): No result in list");
            return null;
          }
          return _poiDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Poi/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the points of interest identified by [ids].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> deleteMultiple({
    /// The identifiers of the points of interest to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
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
          name: 'deletePois',
        )..add(
          GqlField(name: 'deletePois', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Poi/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a single-object `result` payload into a [Poi].
Poi _poiDecoder(Object? json) {
  return Poi.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Decodes a listing `result` payload into a list of [Poi].
List<Poi> _poiListDecoder(Object? json) {
  return List<Poi>.from(
    (json as List? ?? []).map((e) => Poi.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
