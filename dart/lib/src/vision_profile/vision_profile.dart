/// Vision profile model for Layrz Vision (AI-assisted image analysis)
/// configurations.
///
/// A [VisionProfile] binds a [VisionProtocol] configuration to a set of
/// granted [Access] entries and exposes the last recorded [VisionGaugeResult]
/// measurement, when available.
library;

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';

part 'vision_profile.freezed.dart';
part 'vision_profile.g.dart';

part 'src/profile.dart';
part 'src/protocol.dart';
part 'src/protocol_input.dart';
part 'src/gauge_result.dart';
