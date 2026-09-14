/// Care protocol module for Layrz SDK.
///
/// A care protocol defines a checklist ([CareProtocolMode.simple]) or a set of
/// concierge form pages ([CareProtocolMode.concierge]) that must be completed
/// or filled before a case can be submitted. Use [CareProtocolInput] and
/// [CareTaskInput] for creating or updating protocols and their tasks.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/concierge/concierge.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'care_protocols.freezed.dart';
part 'care_protocols.g.dart';

part 'src/mode.dart';
part 'src/answer_kind.dart';

part 'src/care_protocol.dart';
part 'src/care_task.dart';
