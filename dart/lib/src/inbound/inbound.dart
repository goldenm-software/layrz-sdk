/// Inbound protocol definitions for the Layrz platform.
///
/// [InboundProtocol] describes how the platform connects to and interprets
/// data from a class of devices: its operation mode, connection details,
/// credential requirements, and command/configuration structures. See
/// [ConfigGrouping] and [ConfigDefinition] for the configuration schema a
/// protocol exposes, and [ZigbeeDataType] for Zigbee parameter typing.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/builder/flespi/flespi.dart';
import 'package:layrz_sdk/src/builder/inbound_structure/inbound_structure.dart';
import 'package:layrz_sdk/src/builder/webhook/webhook.dart';
import 'package:layrz_sdk/src/commands/commands.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';
import 'package:layrz_sdk/src/model/model.dart';
import 'package:layrz_sdk/src/simulation/simulation.dart';

// Freezed
part 'inbound.freezed.dart';
part 'inbound.g.dart';

part 'src/decoders.dart';
part 'src/protocol.dart';
part 'src/protocol_input.dart';
part 'src/service.dart';
part 'src/enums.dart';
part 'src/zigbee_data_type.dart';
part 'src/config_grouping.dart';
part 'src/config_definition.dart';
part 'src/config_grouping_input.dart';
part 'src/config_definition_input.dart';
part 'src/confiot_namespace.dart';
part 'src/confiot_file.dart';
