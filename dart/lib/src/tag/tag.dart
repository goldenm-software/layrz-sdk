/// Tag model for grouping and cross-referencing entities across Layrz.
///
/// A [Tag] is a named, colored label that can be associated with many kinds
/// of platform entities (users, assets, devices, references, and so on)
/// simultaneously.
library;

import 'package:flutter/widgets.dart' hide Action;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/actions/actions.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/care_protocols/care_protocols.dart';
import 'package:layrz_sdk/src/charts/charts.dart';
import 'package:layrz_sdk/src/checkpoint/checkpoint.dart';
import 'package:layrz_sdk/src/concierge/concierge.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/exchange/exchange.dart';
import 'package:layrz_sdk/src/external/external.dart';
import 'package:layrz_sdk/src/function/function.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/inbound/inbound.dart';
import 'package:layrz_sdk/src/mappit/mappit.dart';
import 'package:layrz_sdk/src/operations/operations.dart';
import 'package:layrz_sdk/src/outbound/outbound.dart';
import 'package:layrz_sdk/src/presets/presets.dart';
import 'package:layrz_sdk/src/references/references.dart';
import 'package:layrz_sdk/src/report_template/report_template.dart';
import 'package:layrz_sdk/src/sensors/sensors.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';
import 'package:layrz_sdk/src/users/users.dart';
import 'package:layrz_sdk/src/vision_profile/vision_profile.dart';
import 'package:layrz_sdk/src/workspace/workspace.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

part 'src/tag.dart';
