/// Exchange models for the Layrz data-exchange pipeline.
///
/// [ExchangeService] represents a configured exchange integration driven by an
/// [ExchangeProtocol], linking assets, tags and geofences to a third-party data exchange.
library;

import 'package:flutter/widgets.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/builder/flespi/flespi.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';
import 'package:layrz_sdk/src/geofences/geofences.dart';
import 'package:layrz_sdk/src/tag/tag.dart';

part 'exchange.freezed.dart';
part 'exchange.g.dart';

part 'src/protocol.dart';
part 'src/protocol_input.dart';
part 'src/service.dart';
