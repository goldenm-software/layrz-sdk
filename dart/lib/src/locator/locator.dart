/// Locator models for the Layrz platform.
///
/// A [Locator] is a shareable, expirable link that exposes a selection of assets, geofences and points of
/// interest on a map. Locators are never deleted, they are expired.
///
/// [Locator] exposes API callers to fetch and expire locators, and [LocatorInput] is its mutable counterpart
/// with a `save` caller to create or update them. [LocatorMqttConfig] describes the MQTT channel of a locator
/// and [LocatorBoundary] / [LocatorBoundaryPoint] describe its geographic bounding box.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/app/app.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/map/map.dart';
import 'package:layrz_sdk/src/poi/poi.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'locator.freezed.dart';
part 'locator.g.dart';

part 'src/boundary.dart';
part 'src/mqtt_config.dart';
part 'src/locator.dart';
part 'src/locator_input.dart';
