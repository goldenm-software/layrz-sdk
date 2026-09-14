/// Outbound integration definitions for the Layrz platform.
///
/// An [OutboundService] represents an assigned outbound integration between an asset ecosystem
/// and an [OutboundProtocol], carrying its own credentials, [OutboundStructure] mapping, and
/// [OutboundMetrics] usage snapshot.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/ats/ats.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';
import 'package:layrz_sdk/src/tag/tag.dart';

// Freezed
part 'outbound.freezed.dart';
part 'outbound.g.dart';

// Modules
part 'src/protocol.dart';
part 'src/service.dart';
part 'src/metrics.dart';
