/// Case models for the Layrz platform.
///
/// A [Case] represents an incident or event raised against an [Asset], typically created by a
/// [Trigger]. Cases can carry a discussion thread of [CaseComment]s, each attributed to a
/// [CommentOwner], along with the telemetry and geofence context that was active when the case
/// was raised.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/cloud_entry/cloud_entry.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'case.freezed.dart';
part 'case.g.dart';

part 'src/comment.dart';
part 'src/case.dart';
