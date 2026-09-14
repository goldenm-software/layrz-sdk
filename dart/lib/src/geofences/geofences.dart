/// Geofence models for defining and querying geographic boundaries in Layrz.
///
/// This library provides [Geofence] and [GeofenceInput] for reading and
/// writing geofence entities, [GeoPoint] and [GeofencePoint] (with its
/// [GeofencePointInput] variant) for representing geographic coordinates, and
/// the supporting [GeofenceMode], [GeofenceCategory], [GeofenceVariant], and
/// [ExportFormat] enumerations used to classify and export geofences.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/custom_field/custom_field.dart';
import 'package:layrz_sdk/src/mappit/mappit.dart';
import 'package:layrz_sdk/src/users/users.dart';
import 'package:latlong2/latlong.dart';

part 'geofences.freezed.dart';
part 'geofences.g.dart';

part 'src/mode.dart';
part 'src/category.dart';
part 'src/export_format.dart';
part 'src/search_item.dart';
part 'src/variant.dart';
part 'src/point.dart';
part 'src/geofence.dart';
part 'src/geofence_input.dart';
