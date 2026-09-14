part of '../checkpoint.dart';

/// Immutable checkpoint data defining a tracked route for asset tracking.
///
/// [Checkpoint] groups a sequence of [Waypoint] entries and the assets or
/// tags ([linkedAssetsIds]) whose presence along the route is tracked. Use
/// [CheckpointInput] for creating or updating checkpoints.
@freezed
abstract class Checkpoint with _$Checkpoint {
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
}

/// Mutable input data for creating or updating a [Checkpoint].
///
/// [CheckpointInput] mirrors the fields of [Checkpoint] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission. When [id] is null, submitting creates a new checkpoint;
/// otherwise it updates the existing one.
@unfreezed
abstract class CheckpointInput with _$CheckpointInput {
  /// Constructs a mutable [CheckpointInput].
  factory CheckpointInput({
    /// ID of the checkpoint entity, or null when creating a new one. This ID is unique.
    String? id,

    /// Name of the checkpoint, or null if not set.
    String? name,

    /// Asset tag ID of the checkpoint, or null if not linked.
    String? assetId,

    /// List of waypoints in the checkpoint. See [Waypoint] for more information. Defaults to an
    /// empty list.
    @Default([]) List<Waypoint>? waypointsJson,

    /// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
    /// Defaults to an empty list.
    @Default([]) List<LinkedAssetToCheckpointId>? linkedAssetsIds,
  }) = _CheckpointInput;

  /// Deserializes a [CheckpointInput] from a JSON map.
  factory CheckpointInput.fromJson(Map<String, dynamic> json) => _$CheckpointInputFromJson(json);
}
