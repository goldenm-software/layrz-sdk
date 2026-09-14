/// Trigger module for Layrz SDK.
///
/// A [Trigger] detects changes or activity (geofence presence, exact times,
/// formulas, scripts, authentication attempts, case changes, manual actions,
/// or nested triggers) and performs actions in response. Triggers can nest
/// via [Trigger.children], and can execute a [CareProtocol] when activated.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/app/app.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/care_protocols/care_protocols.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/time_of_day/time_of_day.dart';

part 'triggers.freezed.dart';
part 'triggers.g.dart';

part 'src/geofence_detection_mode.dart';
part 'src/type.dart';
part 'src/case_type.dart';
part 'src/case_comment_pattern.dart';
part 'src/case_event_effect.dart';

part 'src/activation.dart';
part 'src/input.dart';
part 'src/trigger.dart';
