part of '../geofences.dart';

List<ExternalResource> _externalResourceListDecoder(Object? json) {
  return List<ExternalResource>.from(
    (json as List? ?? []).map((e) => ExternalResource.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

List<ExternalGeofenceGroup> _externalGeofenceGroupListDecoder(Object? json) {
  return List<ExternalGeofenceGroup>.from(
    (json as List? ?? []).map((e) => ExternalGeofenceGroup.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

List<ExternalGeofence> _externalGeofenceListDecoder(Object? json) {
  return List<ExternalGeofence>.from(
    (json as List? ?? []).map((e) => ExternalGeofence.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// A resource of an external Wialon account (Hosting or Local), the container
/// of the geofences that can be imported into Layrz.
@freezed
abstract class ExternalResource with _$ExternalResource {
  /// Private constructor used by the code generator.
  const ExternalResource._();

  /// Constructs an immutable [ExternalResource].
  const factory ExternalResource({
    /// The resource identifier in Wialon.
    required String wialonId,

    /// The resource name in Wialon.
    required String name,
  }) = _ExternalResource;

  /// Deserializes an [ExternalResource] from a JSON map.
  factory ExternalResource.fromJson(Map<String, dynamic> json) => _$ExternalResourceFromJson(json);

  // coverage:ignore-start
  /// Fetches the Wialon resources of the external account [externalAccountId]
  /// through the `externalResources` query.
  ///
  /// [onResponse] receives the status of a failing response. Returns an empty
  /// list on any error.
  static Future<List<ExternalResource>> fetchAll({
    /// The external account to read the resources from.
    required String externalAccountId,

    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Called with the status of a failing response.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'externalResources',
          variables: [
            GqlVariable(name: 'externalAccountId', type: .id, isRequired: true, value: externalAccountId),
          ],
        )..add(
          GqlField(name: 'externalResources', args: {'externalAccountId': 'externalAccountId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'wialonId'))
                ..add(GqlField(name: 'name')),
            ),
        ),
        _externalResourceListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExternalResource/fetchAll(): General exception => $e\n$stack");
      onResponse?.call(ApiStatus.internalError);
      return [];
    }
  }

  // coverage:ignore-end
}

/// A geofence of an external Wialon resource that can be imported into Layrz.
@freezed
abstract class ExternalGeofence with _$ExternalGeofence {
  /// Private constructor used by the code generator.
  const ExternalGeofence._();

  /// Constructs an immutable [ExternalGeofence].
  const factory ExternalGeofence({
    /// The geofence identifier in Wialon.
    required String wialonId,

    /// The geofence name in Wialon.
    required String name,
  }) = _ExternalGeofence;

  /// Deserializes an [ExternalGeofence] from a JSON map.
  factory ExternalGeofence.fromJson(Map<String, dynamic> json) => _$ExternalGeofenceFromJson(json);

  // coverage:ignore-start
  /// Fetches the geofences of the Wialon resource [wialonResourceId] in the
  /// external account [externalAccountId] through the `externalGeofences`
  /// query.
  ///
  /// [onResponse] receives the status of a failing response. Returns an empty
  /// list on any error.
  static Future<List<ExternalGeofence>> fetchAll({
    /// The external account to read the geofences from.
    required String externalAccountId,

    /// The Wialon resource that holds the geofences.
    required String wialonResourceId,

    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Called with the status of a failing response.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'externalGeofences',
          variables: [
            GqlVariable(name: 'externalAccountId', type: .id, isRequired: true, value: externalAccountId),
            GqlVariable(name: 'resourceId', type: .id, isRequired: true, value: wialonResourceId),
          ],
        )..add(
          GqlField(
              name: 'externalGeofences',
              args: {'externalAccountId': 'externalAccountId', 'resourceId': 'resourceId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'wialonId'))
                ..add(GqlField(name: 'name')),
            ),
        ),
        _externalGeofenceListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExternalGeofence/fetchAll(): General exception => $e\n$stack");
      onResponse?.call(ApiStatus.internalError);
      return [];
    }
  }

  // coverage:ignore-end

  // coverage:ignore-start
  /// Starts the import of [wialonGeofenceIds] from the Wialon resource
  /// [wialonResourceId] through the `importGeofencesFromExternal` mutation.
  ///
  /// When [createAsTag] is true the backend also creates a Layrz tag named
  /// after the resource. [onResponse] receives the status of a failing
  /// response. Returns the status and, on a rejected request, the field errors.
  static Future<StandardResponse<void>> import({
    /// The external account that owns the resource.
    required String externalAccountId,

    /// The Wialon resource that holds the geofences.
    required String wialonResourceId,

    /// The Wialon ids of the geofences to import.
    required List<String> wialonGeofenceIds,

    /// Whether to create the resource as a Layrz tag.
    required bool createAsTag,

    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Called with the status of a failing response.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'importGeofencesFromExternal',
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'WialonGeofenceInput'),
              isRequired: true,
              value: {
                'externalAccountId': externalAccountId,
                'resourceId': wialonResourceId,
                'geofencesIds': wialonGeofenceIds,
                'createResourceAsTag': createAsTag,
              },
            ),
          ],
        )..add(
          GqlField(name: 'importGeofencesFromExternal', args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (ApiStatus.ok, null, null);
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExternalGeofence/import(): General exception => $e\n$stack");
      onResponse?.call(ApiStatus.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end
}

/// A geofence group of an external Wialon resource, imported into Mappit as a route.
@freezed
abstract class ExternalGeofenceGroup with _$ExternalGeofenceGroup {
  /// Private constructor used by the code generator.
  const ExternalGeofenceGroup._();

  /// Constructs an immutable [ExternalGeofenceGroup].
  const factory ExternalGeofenceGroup({
    /// The group identifier in Wialon.
    required String wialonId,

    /// The group name in Wialon.
    required String name,
  }) = _ExternalGeofenceGroup;

  /// Deserializes an [ExternalGeofenceGroup] from a JSON map.
  factory ExternalGeofenceGroup.fromJson(Map<String, dynamic> json) => _$ExternalGeofenceGroupFromJson(json);

  // coverage:ignore-start
  /// Fetches the geofence groups of the Wialon resource [wialonResourceId] in the external account
  /// [externalAccountId] through the `externalGeofencesGroups` query.
  ///
  /// [onResponse] receives the status of a failing response. Returns an empty list on any error.
  static Future<List<ExternalGeofenceGroup>> fetchAll({
    /// The external account to read the groups from.
    required String externalAccountId,

    /// The Wialon resource that holds the groups.
    required String wialonResourceId,

    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Called with the status of a failing response.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'externalGeofencesGroups',
          variables: [
            GqlVariable(name: 'externalAccountId', type: .id, isRequired: true, value: externalAccountId),
            GqlVariable(name: 'resourceId', type: .id, isRequired: true, value: wialonResourceId),
          ],
        )..add(
          GqlField(
              name: 'externalGeofencesGroups',
              args: {'externalAccountId': 'externalAccountId', 'resourceId': 'resourceId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'wialonId'))
                ..add(GqlField(name: 'name')),
            ),
        ),
        _externalGeofenceGroupListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExternalGeofenceGroup/fetchAll(): General exception => $e\n$stack");
      onResponse?.call(ApiStatus.internalError);
      return [];
    }
  }

  // coverage:ignore-end
}
