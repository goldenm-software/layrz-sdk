/// Zigbee device models for the Layrz platform.
///
/// [ZigbeeDevice] represents a device discovered on a Zigbee network, and
/// [ZigbeeDeviceExpose] describes one capability (sensor, actuator, or other
/// feature) that device exposes, using [RenderWidget] to hint at how it
/// should be rendered.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/model/model.dart';

part 'zigbee.freezed.dart';
part 'zigbee.g.dart';

part 'src/zigbee_device.dart';
part 'src/zigbee_device_expose.dart';
