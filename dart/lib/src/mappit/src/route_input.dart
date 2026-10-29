part of '../mappit.dart';

/// Mutable input used to create or update a [MappitRoute] (Mappit API only).
@unfreezed
abstract class MappitRouteInput with _$MappitRouteInput {
  const MappitRouteInput._();

  /// Constructs a mutable [MappitRouteInput].
  factory MappitRouteInput({
    /// The ID of the route, `null` when creating a new one.
    String? id,

    /// The name of the route.
    @Default('') String name,

    /// The IDs of the geofences linked to the route. The API replaces the stored list.
    @Default([]) List<String> geofencesIds,
  }) = _MappitRouteInput;

  /// Deserializes a [MappitRouteInput] from a JSON map.
  factory MappitRouteInput.fromJson(Map<String, dynamic> json) => _$MappitRouteInputFromJson(json);

  /// Builds a [MappitRouteInput] that edits [route].
  factory MappitRouteInput.fromRoute(MappitRoute route) {
    return MappitRouteInput(
      id: route.id,
      name: route.name,
      geofencesIds: [...?(route.geofencesIds ?? route.geofences?.map((geofence) => geofence.id))],
    );
  }

  // coverage:ignore-start
  /// Creates the route when [id] is `null` (`addMappitRoute`), otherwise updates it (`editMappitRoute`).
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the saved [MappitRoute].
  Future<StandardResponse<MappitRoute>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    final mutationName = id == null ? 'addMappitRoute' : 'editMappitRoute';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'MappitRouteInput'),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: MappitRoute.fragment)),
        ),
        _mappitRouteDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRouteInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
