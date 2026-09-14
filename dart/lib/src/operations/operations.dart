/// Operation models for the Layrz automation/notification pipeline.
///
/// [Operation] represents a configured action triggered by the platform's
/// rule engine (a webhook call, an email, an in-app notification, a push
/// notification, and so on), classified by [OperationType], with
/// [HttpHeader] describing a single HTTP header sent by a webhook-type
/// operation ([HttpRequestType]), [NotificationType] describing a
/// Twilio-backed delivery channel, and [SoundEffect] describing the sound
/// played by an in-app notification. [OperationInput] and [HttpHeaderInput]
/// provide the mutable counterparts used for creating or editing these
/// entities.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/app/app.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'operations.freezed.dart';
part 'operations.g.dart';

part 'src/variants.dart';
part 'src/decoders.dart';
part 'src/operation.dart';
part 'src/http_header.dart';
part 'src/operation_type.dart';
part 'src/http_request_type.dart';
part 'src/notification_type.dart';
part 'src/sound_effect.dart';
part 'src/twilio_content_sid.dart';
