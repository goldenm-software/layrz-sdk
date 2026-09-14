/// Realtime MQTT broker configuration models for the Layrz platform.
///
/// [RealtimeMqttConfig] describes the connection details used to publish or
/// subscribe to a device's realtime telemetry over MQTT.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mqtt.freezed.dart';
part 'mqtt.g.dart';

part 'src/config.dart';
