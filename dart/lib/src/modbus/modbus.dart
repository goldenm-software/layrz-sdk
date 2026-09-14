/// Modbus device configuration models for the Layrz platform.
///
/// [ModbusConfig] describes how a device's Modbus polling is configured: whether
/// it is enabled, the [ModbusParameter] list to poll, and the port it is bound
/// to (referenced from `InboundProtocol.modbusPorts`, part of the `inbound`
/// module). [ModbusParameterSchema] selects whether a parameter reads a single
/// or multiple register.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'modbus.freezed.dart';
part 'modbus.g.dart';

part 'src/config.dart';
part 'src/config_input.dart';
part 'src/parameter.dart';
part 'src/parameter_input.dart';
part 'src/parameter_schema.dart';
