/// External account integration models for the Layrz platform.
///
/// [ExternalAccount] represents a configured connection to a third-party
/// platform (e.g., a GPS tracking service) from which data such as devices
/// and geofences can be imported into Layrz. [ExternalAccountVariant]
/// selects between the standard external-account API and the Mappit variant.
/// [ExternalSource] represents the supported external integration
/// sources/protocols available for such accounts.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';
import 'package:layrz_sdk/src/device/device.dart';

part 'external.freezed.dart';
part 'external.g.dart';

part 'src/variants.dart';
part 'src/decoders.dart';
part 'src/account.dart';
part 'src/source.dart';
