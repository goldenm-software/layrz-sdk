/// Application metadata and platform detection module for Layrz SDK.
///
/// This module defines platform identification for the Layrz application,
/// supporting web, mobile (iOS/Android), desktop (Windows/macOS/Linux), and
/// the proprietary Layrz OS. Use [AppPlatform] to represent the running
/// application platform in telemetry, analytics, or platform-specific logic.
///
/// It also defines [RegisteredApp] and its supporting models ([AppBuild],
/// [AppDesign], [AppFont], [AppInstance], [AppLegal], [AppLoginDesign],
/// [AppThemedAsset], [PushSecrets], [DnsConfiguration]) that describe an app
/// registered in the Layrz platform, its customization, and its deployed
/// instances, plus [CustomReport] (which forms a circular reference with
/// [RegisteredApp] and therefore lives in this same library).
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/device/device.dart';
import 'package:layrz_sdk/src/map/map.dart';
import 'package:layrz_sdk/src/users/users.dart';
import 'package:layrz_sdk/src/workspace/workspace.dart';

part 'app.freezed.dart';
part 'app.g.dart';

part 'src/accessibility.dart';
part 'src/app_platform.dart';
part 'src/available_app.dart';
part 'src/background.dart';
part 'src/push_device.dart';
part 'src/registered_app.dart';
part 'src/build.dart';
part 'src/design.dart';
part 'src/font.dart';
part 'src/instance.dart';
part 'src/legal.dart';
part 'src/login.dart';
part 'src/asset.dart';
part 'src/push_secrets.dart';
part 'src/version.dart';

part 'src/enums/app_technology.dart';
part 'src/enums/app_type.dart';
part 'src/enums/theme.dart';
part 'src/enums/app_internal_identifier.dart';
part 'src/enums/background_mode.dart';
part 'src/enums/font_source.dart';
part 'src/enums/footer_format.dart';
part 'src/enums/layout_design.dart';
part 'src/enums/instance_status.dart';
