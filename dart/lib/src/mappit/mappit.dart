/// Mappit models for sales/service route planning in Layrz.
///
/// This library provides [MappitRoute] for a named route linked to geofences
/// and sellers, [MappitRouteLinkingHistory] for the audit trail of seller
/// link/unlink operations on a route, and [MappitLaborHour] (with its
/// [MappitLaborHourInput] variant) for a seller's configured working hours by
/// weekday.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'mappit.freezed.dart';
part 'mappit.g.dart';

part 'src/labor_hour.dart';
part 'src/route.dart';
