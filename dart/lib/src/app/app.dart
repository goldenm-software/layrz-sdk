/// Application metadata and platform detection module for Layrz SDK.
///
/// This module defines platform identification for the Layrz application,
/// supporting web, mobile (iOS/Android), desktop (Windows/macOS/Linux), and
/// the proprietary Layrz OS. Use [AppPlatform] to represent the running
/// application platform in telemetry, analytics, or platform-specific logic.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'app.freezed.dart';
part 'app.g.dart';

part 'src/app_platform.dart';
