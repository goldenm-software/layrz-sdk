/// Flespi platform models for Layrz inbound protocols that proxy through
/// Flespi.
///
/// A [FlespiProtocol] identifies a supported device protocol on the Flespi
/// platform, a [FlespiChannel] identifies the connection channel a device
/// communicates through, and a [FlespiModel] identifies the specific device
/// model recognized by a given [FlespiProtocol].
library;

import 'package:flutter/widgets.dart' show ValueChanged;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'flespi.freezed.dart';
part 'flespi.g.dart';

part 'src/protocol.dart';
part 'src/channel.dart';
part 'src/decoders.dart';
part 'src/model.dart';
