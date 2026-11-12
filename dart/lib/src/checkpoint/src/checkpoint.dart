part of '../checkpoint.dart';

/// Immutable checkpoint data defining a tracked route for asset tracking.
///
/// [Checkpoint] groups a sequence of [Waypoint] entries and the assets or
/// tags ([linkedAssetsIds]) whose presence along the route is tracked. Use
/// [CheckpointInput] for creating or updating checkpoints.
@freezed
abstract class Checkpoint with _$Checkpoint {
  /// Private constructor used by the code generator.
  const Checkpoint._();

  /// Constructs an immutable [Checkpoint].
  const factory Checkpoint({
    /// ID of the checkpoint entity. This ID is unique.
    required String id,

    /// Name of the checkpoint.
    required String name,

    /// Asset tag ID of the checkpoint, or null if not linked.
    String? assetId,

    /// List of waypoints in the checkpoint. See [Waypoint] for more information.
    List<Waypoint>? waypoints,

    /// Boolean value that determines if the checkpoint is active, or null if unknown.
    bool? isActive,

    /// List of custom access permissions.
    List<Access>? access,

    /// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
    List<LinkedAssetToCheckpointId>? linkedAssetsIds,
  }) = _Checkpoint;

  /// Deserializes a [Checkpoint] from a JSON map.
  factory Checkpoint.fromJson(Map<String, dynamic> json) => _$CheckpointFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment covering every field of a [Checkpoint] consumers select: its waypoints (with the reduced
  /// selection of their geofence), the linked assets, the active flag and the access permissions.
  static GqlFragment get fragment => GqlFragment(name: 'checkpointFragment', onType: 'Checkpoint')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'assetId'))
    ..add(GqlField(name: 'waypoints', fragment: Waypoint.fragment))
    ..add(GqlField(name: 'linkedAssetsIds', fragment: LinkedAssetToCheckpointId.fragment))
    ..add(GqlField(name: 'isActive'))
    ..add(GqlField(name: 'access', fragment: Access.idFragment));
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all checkpoints available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`checkpoints`). Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server error). Errors are
  /// logged internally.
  static Future<List<Checkpoint>> fetchAll({
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
          variables: [],
          name: 'checkpoints',
        )..add(
          GqlField(name: 'checkpoints', args: {})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _checkpointListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Checkpoint/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single checkpoint by its [id].
  ///
  /// Makes an authenticated GraphQL query (`checkpoints`) filtered by [id]. The backend always returns `result` as
  /// a list, so the first element (if any) is returned. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns `null` on any error or when no checkpoint matches.
  static Future<Checkpoint?> fetch({
    /// The ID of the [Checkpoint] to fetch.
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
            GqlVariable(name: 'id', type: .id, isRequired: false, value: id),
          ],
          name: 'checkpoints',
        )..add(
          GqlField(name: 'checkpoints', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Checkpoint/fetch(): No result in list");
            return null;
          }
          return _checkpointDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Checkpoint/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple checkpoints by their [ids].
  ///
  /// Sends the `deleteCheckpoints` mutation. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> deleteMultiple({
    /// The IDs of the checkpoints to delete.
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
            GqlVariable(name: 'ids', type: .list(of: .id), isRequired: true, value: ids),
          ],
          name: 'deleteCheckpoints',
        )..add(
          GqlField(name: 'deleteCheckpoints', args: {'ids': 'ids'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Checkpoint/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_checkpointDecoder] decodes a single-object `result` payload into a [Checkpoint]. Used by result-bearing
/// mutations and single-item fetches.
Checkpoint _checkpointDecoder(Object? json) {
  return Checkpoint.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_checkpointListDecoder] decodes a raw listing `result` payload into a list of [Checkpoint]. Used by listing
/// queries (fetchAll).
List<Checkpoint> _checkpointListDecoder(Object? json) {
  return List<Checkpoint>.from(
    (json as List? ?? []).map((e) => Checkpoint.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// Mutable input data for creating or updating a [Checkpoint].
///
/// [CheckpointInput] mirrors the fields of [Checkpoint] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new checkpoint;
/// otherwise it updates the existing one.
@unfreezed
abstract class CheckpointInput with _$CheckpointInput {
  /// Private constructor used by the code generator.
  const CheckpointInput._();

  /// Constructs a mutable [CheckpointInput].
  factory CheckpointInput({
    /// ID of the checkpoint entity, or null when creating a new one. This ID is unique.
    String? id,

    /// Name of the checkpoint, or null if not set.
    String? name,

    /// Asset tag ID of the checkpoint, or null if not linked.
    String? assetId,

    /// List of waypoints in the checkpoint. See [Waypoint] for more information. Deprecated by the
    /// backend: use [waypoints] instead. Defaults to an empty list.
    @Deprecated('Use waypoints instead.') @Default([]) List<Waypoint>? waypointsJson,

    /// List of waypoints in the checkpoint. See [Waypoint] for more information. Defaults to an
    /// empty list.
    @Default([]) List<Waypoint>? waypoints,

    /// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
    /// Defaults to an empty list.
    @Default([]) List<LinkedAssetToCheckpointId>? linkedAssetsIds,
  }) = _CheckpointInput;

  /// Deserializes a [CheckpointInput] from a JSON map.
  factory CheckpointInput.fromJson(Map<String, dynamic> json) => _$CheckpointInputFromJson(json);

  /// Serializes this input as the backend `CheckpointInput`. Waypoints are sent through `waypoints` as
  /// `WaypointInput` (without the nested `geofence`, which the backend does not accept); when [waypoints] is empty
  /// the deprecated [waypointsJson] is used as a fallback. The deprecated `waypointsJson` key is never sent.
  Map<String, dynamic> toRequestJson() {
    // ignore: deprecated_member_use_from_same_package
    final legacyWaypoints = waypointsJson ?? const <Waypoint>[];
    final effectiveWaypoints = (waypoints?.isNotEmpty ?? false) ? waypoints! : legacyWaypoints;

    return {
      if (id != null) 'id': id,
      'name': name,
      'assetId': assetId,
      'waypoints': effectiveWaypoints.map((e) => e.toInputJson()).toList(),
      'linkedAssetsIds': (linkedAssetsIds ?? const <LinkedAssetToCheckpointId>[]).map((e) => e.toJson()).toList(),
    };
  }

  // coverage:ignore-start
  /// Creates or updates this checkpoint on the server.
  ///
  /// Sends `addCheckpoint` when [id] is null, or `editCheckpoint` when [id] is set, both with [toRequestJson]
  /// as the `CheckpointInput` GraphQL input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Checkpoint?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedCheckpoint)`.
  Future<StandardResponse<Checkpoint>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation when the
    /// status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addCheckpoint' : 'editCheckpoint';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'CheckpointInput'),
              isRequired: true,
              value: toRequestJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Checkpoint.fragment)),
        ),
        _checkpointDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/CheckpointInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
