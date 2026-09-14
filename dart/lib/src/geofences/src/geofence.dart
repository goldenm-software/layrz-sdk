part of '../geofences.dart';

/// Decodes a raw listing `result` payload into a list of [Geofence].
/// Used by listing queries (fetchAll).
List<Geofence> _geofencesListDecoder(Object? json) {
  return List<Geofence>.from((json as List? ?? []).map((e) => Geofence.fromJson(Map<String, dynamic>.from(e as Map))));
}

/// Decodes a single-object `result` payload into a [Geofence].
/// Used by result-bearing mutations (add/edit-style).
Geofence _geofenceDecoder(Object? json) {
  return Geofence.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Immutable geofence data for defining a geographic boundary in Layrz.
///
/// [Geofence] represents a named geographic area, identified by a unique
/// [id], shaped according to [mode] and defined by [path]. Use
/// [GeofenceInput] for creating or updating geofences.
@freezed
abstract class Geofence with _$Geofence {
  /// Private constructor used by the code generator.
  const Geofence._();

  /// Constructs an immutable [Geofence].
  const factory Geofence({
    /// ID of the geofence entity. This ID is unique.
    required String id,

    /// Name of the geofence.
    required String name,

    /// Mode of geofence, check the documentation of [GeofenceMode] for more information.
    @JsonKey(unknownEnumValue: GeofenceMode.radial) required GeofenceMode mode,

    /// Description of the geofence.
    String? description,

    /// Color of the geofence in hexadecimal code.
    @ColorOrNullConverter() Color? color,

    /// Depending of the Geofence mode, this field may return one or N points. Please check the
    /// [GeofenceMode] definition.
    List<GeofencePoint>? path,

    /// Radius of the geofence in meters. If mode is [GeofenceMode.linear], this field will be the
    /// weight of the geofence. For [GeofenceMode.polygon], this field will be ignored.
    double? radius,

    /// External resource ID, only for external geofences.
    String? resourceId,

    /// List of assets inside the geofence.
    List<Asset>? assetsInside,

    /// [category] refers to the type of geofence, by default is [GeofenceCategory.none] when is requested
    /// from the API.
    @JsonKey(unknownEnumValue: GeofenceCategory.none) @Default(GeofenceCategory.none) GeofenceCategory category,

    /// [childrenIds] refers to the list of children geofences.
    List<String>? childrenIds,

    /// [children] refers to the list of children geofences.
    List<Geofence>? children,

    /// List of custom access permissions.
    List<Access>? access,

    /// List of [customFields] linked to the geofence. Please read the documentation for [CustomField]
    /// for more details about the fields.
    List<CustomField>? customFields,

    /// [ownerId] refers to the owner of the geofence.
    String? ownerId,

    /// [owner] refers to the owner of the geofence.
    User? owner,

    /// [mappitRoutes] refers to the list of routes that are linked to the geofence.
    List<MappitRoute>? mappitRoutes,

    /// [mappitRouteIds] refers to the list of routes that are linked to the geofence.
    List<String>? mappitRouteIds,

    /// [assetId] refers to the asset to which the geofence is linked.
    String? assetId,
  }) = _Geofence;

  /// Deserializes a [Geofence] from a JSON map.
  factory Geofence.fromJson(Map<String, dynamic> json) => _$GeofenceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment covering the fields returned by a listing query
  /// (`fetchAll`), before the heavier `assetsInside`/`access` sub-selections
  /// added by [fragment].
  static GqlFragment reducedFragment([GeofenceVariant variant = .standard]) =>
      GqlFragment(
          name: 'geofenceFragment',
          onType: variant == .standard ? 'Geofence' : 'MappitGeofence',
        )
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'description'))
        ..add(GqlField(name: 'mode'))
        ..add(GqlField(name: 'color'))
        ..add(GqlField(name: 'radius'))
        ..add(GqlField(name: 'category'))
        ..add(GqlField(name: 'childrenIds'))
        ..add(GqlField(name: 'customFields', fragment: CustomField.fragment))
        ..add(
          GqlField(name: 'path')
            ..add(GqlField(name: 'latitude'))
            ..add(GqlField(name: 'longitude')),
        )
        ..add(GqlField(name: 'assetId'));
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment covering every field selectable on [Geofence], used by
  /// [fetch]. [variant] selects the ecosystem the fragment applies to,
  /// defaulting to [GeofenceVariant.standard].
  static GqlFragment fragment([GeofenceVariant variant = .standard]) {
    return reducedFragment(variant)
      ..add(
        GqlField(name: 'assetsInside')
          ..add(GqlField(name: 'id'))
          ..add(GqlField(name: 'name'))
          ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment))
          ..add(
            GqlField(name: 'telemetry')
              ..add(GqlField(name: 'id'))
              ..add(GqlField(name: 'receivedAt'))
              ..add(
                GqlField(name: 'position')
                  ..add(GqlField(name: 'latitude'))
                  ..add(GqlField(name: 'longitude')),
              ),
          ),
      )
      ..add(GqlField(name: 'access', fragment: Access.idFragment));
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all geofences available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (named by [GeofenceVariant.queryName])
  /// to retrieve every [Geofence] visible to the user. Authentication is
  /// carried solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// [variant] selects which ecosystem's geofences are queried, defaulting to
  /// [GeofenceVariant.standard].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<Geofence>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,

    /// The ecosystem variant to fetch geofences for.
    GeofenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: variant.queryName)..add(
          GqlField(name: variant.queryName)
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: reducedFragment(variant))),
        ),
        _geofencesListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single geofence by its [id].
  ///
  /// Makes an authenticated GraphQL query (named by [GeofenceVariant.queryName])
  /// filtered by [id]. The backend always returns `result` as a list, even
  /// when filtered down to a single entity, so the first element (if any) is
  /// returned. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// [variant] selects which ecosystem's geofence is queried, defaulting to
  /// [GeofenceVariant.standard].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching geofence). Errors are logged internally.
  static Future<Geofence?> fetch({
    /// The ID of the [Geofence] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,

    /// The ecosystem variant to fetch the geofence for.
    GeofenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: variant.queryName,
        )..add(
          GqlField(name: variant.queryName, args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment(variant))),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Geofence/fetch(): No result in list");
            return null;
          }
          return Geofence.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes this geofence from the server.
  ///
  /// Sends the mutation named by [GeofenceVariant.deleteMutationName] with
  /// this geofence's [id]. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `true` if the operation was successful, `false` otherwise.
  Future<bool> delete({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,

    /// The ecosystem variant to delete the geofence from.
    GeofenceVariant variant = .standard,
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
              value: [id],
            ),
          ],
          name: variant.deleteMutationName,
        )..add(
          GqlField(name: variant.deleteMutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }

      return response.status == .ok;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/delete(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple geofences by their [ids] from the server.
  ///
  /// Sends the mutation named by [GeofenceVariant.deleteMutationName] with
  /// [ids]. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `true` if the operation was successful, `false` otherwise.
  static Future<bool> deleteMany({
    /// The IDs of the [Geofence] entities to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,

    /// The ecosystem variant to delete the geofences from.
    GeofenceVariant variant = .standard,
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
          ],
          name: variant.deleteMutationName,
        )..add(
          GqlField(name: variant.deleteMutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return response.status == .ok;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/deleteMany(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Exports this geofence to a file in the given [format].
  ///
  /// Sends the `exportGeofences` mutation with this geofence's [id] and the
  /// requested [format]. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns the exported file content as a string, or `null` on any error.
  Future<String?> export({
    /// The file format to export to.
    required ExportFormat format,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'geofencesIds',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: [id],
            ),
            GqlVariable(name: 'format', type: .string, isRequired: true, value: format.toString()),
          ],
          name: 'exportGeofences',
        )..add(
          GqlField(name: 'exportGeofences', args: {'geofencesIds': 'geofencesIds', 'format': 'format'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json as String?,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/export(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Exports multiple geofences by their [ids] to a file in the given
  /// [format].
  ///
  /// Sends the `exportGeofences` mutation with [ids] and the requested
  /// [format]. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns the exported file content as a string, or `null` on any error.
  static Future<String?> exportMany({
    /// The file format to export to.
    required ExportFormat format,

    /// The IDs of the [Geofence] entities to export.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'geofencesIds',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: ids,
            ),
            GqlVariable(name: 'format', type: .string, isRequired: true, value: format.toString()),
          ],
          name: 'exportGeofences',
        )..add(
          GqlField(name: 'exportGeofences', args: {'geofencesIds': 'geofencesIds', 'format': 'format'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json as String?,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }
      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Geofence/exportMany(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end
}
