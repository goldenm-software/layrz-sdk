/// Automated Transport System (ATS) fuel-handling models for Layrz.
///
/// This module defines the subset of the ATS domain ported to the SDK:
/// [AtsExit] (a completed fuel exit/dispatch record), [AtsAuthenticationCard]
/// (a physical/NFC/tag card used to authenticate ATS operations), its
/// [AtsHistoryAuthenticationCard] audit trail entries, and [AtsStreamModel]
/// (the streaming model used by an ATS Stream outbound integration).
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'ats.freezed.dart';
part 'ats.g.dart';

part 'src/exits/exit.dart';
part 'src/authentication_card.dart';
part 'src/history_authentication_card.dart';
part 'src/ats_outbound_services/ats_stream_model.dart';
