part of '../device.dart';

/// [_deviceListDecoder] decodes a raw listing `result` payload into a list of [Device].
/// Used by listing queries (fetchAll).
List<Device> _deviceListDecoder(Object? json) {
  if (json is List) {
    return json.map((e) => Device.fromJson(e as Map<String, dynamic>)).toList();
  }
  return [];
}

/// [_deviceDecoder] decodes a single-object `result` payload into a [Device].
/// Used by result-bearing mutations (add/edit-style).
Device _deviceDecoder(Object? json) {
  if (json is Map<String, dynamic>) {
    return Device.fromJson(json);
  }
  throw FormatException('Invalid JSON format for Device');
}

/// [_deviceCommandListDecoder] decodes a raw listing `result` payload into a list of [DeviceCommand].
/// Used by listing queries (fetchAll).
List<DeviceCommand> _deviceCommandListDecoder(Object? json) {
  return List<DeviceCommand>.from(
    (json as List? ?? []).map(
      (e) => DeviceCommand.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

/// [_deviceCommandDecoder] decodes a single-object `result` payload into a [DeviceCommand].
/// Used by result-bearing mutations (add/edit-style).
DeviceCommand _deviceCommandDecoder(Object? json) {
  if (json is Map<String, dynamic>) {
    return DeviceCommand.fromJson(json);
  }
  throw FormatException('Invalid JSON format for DeviceCommand');
}
