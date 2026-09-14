/// Sensor models for the Layrz platform.
///
/// A [Sensor] represents a calculated or raw value extracted from a device's telemetry, using an
/// LCL formula, a script, or a raw unpack configuration. This library also provides the supporting
/// types a [Sensor] is built from: [SensorRange] for linear interval conversions, [MaskPoint] for
/// value-to-presentation overrides, and [SensorType] and [SensorSubType] for classifying the
/// sensor's execution behavior.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/ats/ats.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/icons/icons.dart';

part 'sensors.freezed.dart';
part 'sensors.g.dart';

part 'src/sensor.dart';
part 'src/range.dart';
part 'src/mask.dart';
part 'src/type.dart';
part 'src/subtype.dart';
part 'src/data_type.dart';
