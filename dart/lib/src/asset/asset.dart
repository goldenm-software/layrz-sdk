/// Asset models for the Layrz platform.
///
/// An [Asset] represents a trackable entity in Layrz — a vehicle, container, cluster of devices,
/// static location, or zone. This library also provides the supporting types an [Asset] is built
/// from: [ContactInfo], [Connection], [AssetMode], [AssetLoginInfo], [StaticPosition], [ZonePoint]
/// and [AssetWidget].
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/ats/ats.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/category/category.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/custom_field/custom_field.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/mappit/mappit.dart';
import 'package:layrz_sdk/src/model/model.dart';
import 'package:layrz_sdk/src/references/references.dart';
import 'package:layrz_sdk/src/sensors/sensors.dart';
import 'package:layrz_sdk/src/tag/tag.dart';
import 'package:layrz_sdk/src/time_of_day/time_of_day.dart';
import 'package:layrz_sdk/src/users/users.dart';
import 'package:latlong2/latlong.dart';

part 'asset.freezed.dart';
part 'asset.g.dart';

part 'src/asset.dart';
part 'src/asset_widget.dart';
part 'src/connection.dart';
part 'src/contact_info.dart';
part 'src/login_info.dart';
part 'src/mode.dart';
part 'src/static_position.dart';
part 'src/zone_point.dart';
