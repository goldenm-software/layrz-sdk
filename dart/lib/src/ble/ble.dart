/// Bluetooth Low Energy (BLE) scan-result models for the Layrz platform.
///
/// A [BleDevice] is the client-side representation of a BLE scan result,
/// carrying its [BleManufacturerData] and [BleServiceData] entries as
/// reported by the platform's BLE scanner. These are pure data classes with
/// no network access of their own.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble.freezed.dart';
part 'ble.g.dart';

part 'src/device.dart';
part 'src/service.dart';
part 'src/characteristic.dart';
part 'src/property.dart';
