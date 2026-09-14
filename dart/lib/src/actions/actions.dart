/// Action models for the Layrz platform.
///
/// An [Action] is a rule triggered by [Trigger]s that performs a side effect:
/// linking/unlinking an asset, invoking an [Operation], sending a command, broadcasting to an
/// outbound service, sending data to the monitor center or a checkpoint route, creating a
/// geofence, or applying Zigbee settings to a device. This library also provides the supporting
/// types an action is built from: [ActionType], [ActionSubtype], [ActionProperty],
/// [ActionGeofenceSettings], [ActionZigbeeSettings] and [ActionVariant].
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/mappit/mappit.dart';
import 'package:layrz_sdk/src/operations/operations.dart';
import 'package:layrz_sdk/src/outbound/outbound.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'actions.freezed.dart';
part 'actions.g.dart';

part 'src/action_property.dart';
part 'src/action_subtype.dart';
part 'src/action_type.dart';
part 'src/action.dart';
part 'src/action_geofence_settings.dart';
part 'src/action_zigbee_settings.dart';
part 'src/variants.dart';
