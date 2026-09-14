/// Workspace configuration models for the Layrz platform.
///
/// [Workspace] is the top-level configuration for a Layrz dashboard: its
/// identity, appearance, associated assets and services, and the per-monitor
/// configuration (cases, checkpoints, map, analytics, sensors grid, table)
/// that drives what each monitor view renders. The remaining types in this
/// module are nested configuration shapes referenced by [Workspace] or by
/// each other.
///
/// `WorkspaceAlert` and `WorkspaceTrip`/`WorkspaceTripPoint` (also defined in
/// the source `workspace/src/` directory) are NOT part of [Workspace]'s own
/// field closure and are intentionally excluded from this module.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/app/app.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/charts/charts.dart';
import 'package:layrz_sdk/src/checkpoint/checkpoint.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/inbound/inbound.dart';
import 'package:layrz_sdk/src/outbound/outbound.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'workspace.freezed.dart';
part 'workspace.g.dart';

// Modules
part 'src/model.dart';
part 'src/card_type.dart';
part 'src/main_view.dart';
part 'src/metric_system.dart';
part 'src/grid_dimension.dart';

// Cases
part 'src/cases/card.dart';

// Analytics
part 'src/analytics/item.dart';

// Sensors
part 'src/sensors/item.dart';
part 'src/sensors/content.dart';
part 'src/sensors/type.dart';

// Map
part 'src/map/alert.dart';
part 'src/map/card_mode.dart';
part 'src/map/connection.dart';
part 'src/map/center_mode.dart';
part 'src/map/sensor_card.dart';
part 'src/map/sensor_mode.dart';
part 'src/map/sensors.dart';

// Table
part 'src/table/table_item.dart';
