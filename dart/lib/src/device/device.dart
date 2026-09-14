/// Device models for the Layrz platform.
///
/// A [Device] represents a physical or virtual data source (a GPS tracker, a Zigbee hub, a Modbus
/// gateway, ...) that reports [DeviceTelemetry] and can execute [DeviceCommand]s. This library also
/// provides the supporting types a device is built from: [CommandData], [CommandSource],
/// [TelemetryPosition], [TelemetrySensor] and [DeviceVariant]. [AssetTelemetry] mirrors
/// [DeviceTelemetry] but is scoped to an asset rather than a single device.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' show ValueChanged;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/commands/commands.dart' show CommandDefinitionSource;
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/general/general.dart';
import 'package:layrz_sdk/src/inbound/inbound.dart';
import 'package:layrz_sdk/src/modbus/modbus.dart';
import 'package:layrz_sdk/src/model/model.dart';
import 'package:layrz_sdk/src/vision_profile/vision_profile.dart';
import 'package:layrz_sdk/src/zigbee/zigbee.dart';

part 'device.freezed.dart';
part 'device.g.dart';

part 'src/asset_telemetry.dart';
part 'src/command_data.dart';
part 'src/command_data_input.dart';
part 'src/command_input.dart';
part 'src/command_source.dart';
part 'src/decoders.dart';
part 'src/device.dart';
part 'src/device_command.dart';
part 'src/device_input.dart';
part 'src/device_telemetry.dart';
part 'src/telemetry_position.dart';
part 'src/telemetry_sensor.dart';
part 'src/variants.dart';
