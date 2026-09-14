/// Device model catalog for the Layrz platform.
///
/// [Model] describes a device model: its identity, its [InboundProtocol],
/// command/configuration structures, ConfIoT layout, firmware catalog
/// ([FirmwareBuild]), rendering hints ([RenderWidget]), and Zigbee parameters
/// ([ZigbeeParameter]) when Zigbee-capable. [HwModel] groups one or more
/// [Model] entries under a single commercial or physical hardware model name.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/commands/commands.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/inbound/inbound.dart';

part 'model.freezed.dart';
part 'model.g.dart';

part 'src/model.dart';
part 'src/confiot_layout.dart';
part 'src/widget.dart';
part 'src/firmware_build.dart';
part 'src/firmware_branch.dart';
part 'src/zigbee_parameter.dart';
part 'src/hw_model.dart';
part 'src/hw_model_input.dart';
