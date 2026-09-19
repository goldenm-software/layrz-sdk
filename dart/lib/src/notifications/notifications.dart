/// In-app notification models for Layrz.
///
/// [LayrzNotification] represents the payload of an in-app notification
/// shown to a user, including its title and message (optionally routed
/// through the Layrz Translation system), the [SoundEffect] played when it
/// arrives, an optional icon and color, and how long it should remain
/// visible.
library;

import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/operations/operations.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

part 'src/notification.dart';
