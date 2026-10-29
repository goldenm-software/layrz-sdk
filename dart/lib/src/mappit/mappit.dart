/// Mappit models for sales/service route planning in Layrz.
///
/// This library provides [MappitRoute] for a named route linked to geofences
/// and sellers, [MappitRouteLinkingHistory] for the audit trail of seller
/// link/unlink operations on a route, and [MappitLaborHour] (with its
/// [MappitLaborHourInput] variant) for a seller's configured working hours by
/// weekday. [MappitRouteInput] creates or edits a route, and [MappitRoute] lists, fetches, deletes,
/// exports and imports (from Wialon geofence groups) routes on the Mappit API.
/// [MappitFreeDay] (with its [MappitFreeDayInput]) covers the dates on which
/// linked sellers do not work. [MappitProfile], [MappitHomeConfig] (with its ranges), [PolygonDetails],
/// [ContainedRouteCategory], [MappitRecalculate], [MappitReportInput] and [MappitReportMultiInput] are the
/// remaining Mappit models ported from layrz_models.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/custom_field/custom_field.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'mappit.freezed.dart';
part 'mappit.g.dart';

part 'src/free_day.dart';
part 'src/free_day_input.dart';
part 'src/labor_hour.dart';
part 'src/route.dart';
part 'src/route_input.dart';
part 'src/profile.dart';
part 'src/home_config.dart';
part 'src/polygon_detail.dart';
part 'src/contained_route_category.dart';
part 'src/report_input.dart';
part 'src/report_multi_input.dart';
part 'src/recalculate.dart';
