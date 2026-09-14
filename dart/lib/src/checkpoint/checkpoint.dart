/// Checkpoint models for asset tracking routes in Layrz.
///
/// This library provides [Checkpoint] and [CheckpointInput] for defining a
/// sequence of tracked points along an asset's route, [Waypoint] for a single
/// stop or pathway segment within a checkpoint, and
/// [LinkedAssetToCheckpointId] for identifying the assets or tags linked to a
/// checkpoint.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';

part 'checkpoint.freezed.dart';
part 'checkpoint.g.dart';

part 'src/waypoint.dart';
part 'src/linked_asset.dart';
part 'src/checkpoint.dart';
