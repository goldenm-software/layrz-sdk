// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssetTelemetry _$AssetTelemetryFromJson(
  Map<String, dynamic> json,
) => _AssetTelemetry(
  id: json['id'] as String,
  assetId: json['assetId'] as String?,
  receivedAt: const TimestampConverter().fromJson(json['receivedAt'] as num),
  geofenceIds: (json['geofenceIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  position: json['position'] == null
      ? null
      : TelemetryPosition.fromJson(json['position'] as Map<String, dynamic>),
  payload: (json['payload'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
  sensors: (json['sensors'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AssetTelemetryToJson(_AssetTelemetry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetId': instance.assetId,
      'receivedAt': const TimestampConverter().toJson(instance.receivedAt),
      'geofenceIds': instance.geofenceIds,
      'position': instance.position?.toJson(),
      'payload': instance.payload?.map((e) => e.toJson()).toList(),
      'sensors': instance.sensors?.map((e) => e.toJson()).toList(),
    };

_CommandData _$CommandDataFromJson(Map<String, dynamic> json) => _CommandData(
  source: $enumDecode(_$CommandDefinitionSourceEnumMap, json['source']),
  definition: json['definition'] as String,
  payload: json['payload'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$CommandDataToJson(_CommandData instance) =>
    <String, dynamic>{
      'source': instance.source.toJson(),
      'definition': instance.definition,
      'payload': instance.payload,
    };

const _$CommandDefinitionSourceEnumMap = {
  CommandDefinitionSource.flespi: 'FLESPI',
  CommandDefinitionSource.custom: 'CUSTOM',
  CommandDefinitionSource.layrzLink: 'LAYRZ_LINK',
  CommandDefinitionSource.ble: 'BLE',
  CommandDefinitionSource.serial: 'SERIAL',
  CommandDefinitionSource.psg: 'PSG',
};

_CommandDataInput _$CommandDataInputFromJson(Map<String, dynamic> json) =>
    _CommandDataInput(
      source: $enumDecodeNullable(
        _$CommandDefinitionSourceEnumMap,
        json['source'],
      ),
      definition: json['definition'] as String?,
      payload: json['payload'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$CommandDataInputToJson(_CommandDataInput instance) =>
    <String, dynamic>{
      'source': instance.source?.toJson(),
      'definition': instance.definition,
      'payload': instance.payload,
    };

_CommandInput _$CommandInputFromJson(Map<String, dynamic> json) =>
    _CommandInput(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      source: $enumDecodeNullable(_$CommandSourceEnumMap, json['source']),
      payload: json['payload'] as String?,
      tagId: json['tagId'] as String?,
      deviceId: json['deviceId'] as String?,
      protocolId: json['protocolId'] as String?,
      modelId: json['modelId'] as String?,
      externalAccountId: json['externalAccountId'] as String?,
      data: json['data'] == null
          ? null
          : CommandDataInput.fromJson(json['data'] as Map<String, dynamic>),
      modbusParameter: json['modbusParameter'] == null
          ? null
          : ModbusParameterInput.fromJson(
              json['modbusParameter'] as Map<String, dynamic>,
            ),
      modbusPort: json['modbusPort'] as String?,
    );

Map<String, dynamic> _$CommandInputToJson(_CommandInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'source': instance.source?.toJson(),
      'payload': instance.payload,
      'tagId': instance.tagId,
      'deviceId': instance.deviceId,
      'protocolId': instance.protocolId,
      'modelId': instance.modelId,
      'externalAccountId': instance.externalAccountId,
      'data': instance.data?.toJson(),
      'modbusParameter': instance.modbusParameter?.toJson(),
      'modbusPort': instance.modbusPort,
    };

const _$CommandSourceEnumMap = {
  CommandSource.protocolNative: 'NATIVE',
  CommandSource.sms: 'SMS',
  CommandSource.psg: 'PSG',
  CommandSource.modbus: 'MODBUS',
  CommandSource.ble: 'BLE',
  CommandSource.serial: 'SERIAL',
};

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  id: json['id'] as String,
  name: json['name'] as String,
  ident: json['ident'] as String,
  flespiToken: json['flespiToken'] as String?,
  modelId: json['modelId'] as String?,
  model: json['model'] == null
      ? null
      : Model.fromJson(json['model'] as Map<String, dynamic>),
  protocolId: json['protocolId'] as String?,
  protocol: json['protocol'] == null
      ? null
      : InboundProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
  additionalFields: json['additionalFields'] as Map<String, dynamic>?,
  qrCode: json['qrCode'] as String?,
  linkQr: json['linkQr'] as String?,
  commands: (json['commands'] as List<dynamic>?)
      ?.map((e) => DeviceCommand.fromJson(e as Map<String, dynamic>))
      .toList(),
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
  telemetry: json['telemetry'] == null
      ? null
      : DeviceTelemetry.fromJson(json['telemetry'] as Map<String, dynamic>),
  visionProfileId: json['visionProfileId'] as String?,
  visionProfile: json['visionProfile'] == null
      ? null
      : VisionProfile.fromJson(json['visionProfile'] as Map<String, dynamic>),
  phone: json['phone'] == null
      ? null
      : PhoneNumber.fromJson(Map<String, String>.from(json['phone'] as Map)),
  modbus: json['modbus'] == null
      ? null
      : ModbusConfig.fromJson(json['modbus'] as Map<String, dynamic>),
  isSuspended: json['isSuspended'] as bool?,
  hwModel: json['hwModel'] == null
      ? null
      : HwModel.fromJson(json['hwModel'] as Map<String, dynamic>),
  hwModelId: json['hwModelId'] as String?,
  macAddress: json['macAddress'] as String?,
  configParams: json['configParams'] as Map<String, dynamic>?,
  visionCaptureThreshold: _$JsonConverterFromJson<num, Duration>(
    json['visionCaptureThreshold'],
    const DurationConverter().fromJson,
  ),
  peripherals: (json['peripherals'] as List<dynamic>?)
      ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
      .toList(),
  zigbeeDevices: (json['zigbeeDevices'] as List<dynamic>?)
      ?.map((e) => ZigbeeDevice.fromJson(e as Map<String, dynamic>))
      .toList(),
  exposes: (json['exposes'] as List<dynamic>?)
      ?.map((e) => ZigbeeDeviceExpose.fromJson(e as Map<String, dynamic>))
      .toList(),
  localIpAddress: json['localIpAddress'] as String?,
  hasWorldwideCoverage: json['hasWorldwideCoverage'] as bool?,
  zigbeeZoneId: json['zigbeeZoneId'] as String? ?? '',
  zigbeeToken: json['zigbeeToken'] as String? ?? '',
  zigbeePermitJoinExpiresAt: json['zigbeePermitJoinExpiresAt'] == null
      ? null
      : DateTime.parse(json['zigbeePermitJoinExpiresAt'] as String),
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'ident': instance.ident,
  'flespiToken': instance.flespiToken,
  'modelId': instance.modelId,
  'model': instance.model?.toJson(),
  'protocolId': instance.protocolId,
  'protocol': instance.protocol?.toJson(),
  'additionalFields': instance.additionalFields,
  'qrCode': instance.qrCode,
  'linkQr': instance.linkQr,
  'commands': instance.commands?.map((e) => e.toJson()).toList(),
  'access': instance.access?.map((e) => e.toJson()).toList(),
  'telemetry': instance.telemetry?.toJson(),
  'visionProfileId': instance.visionProfileId,
  'visionProfile': instance.visionProfile?.toJson(),
  'phone': instance.phone?.toJson(),
  'modbus': instance.modbus?.toJson(),
  'isSuspended': instance.isSuspended,
  'hwModel': instance.hwModel?.toJson(),
  'hwModelId': instance.hwModelId,
  'macAddress': instance.macAddress,
  'configParams': instance.configParams,
  'visionCaptureThreshold': _$JsonConverterToJson<num, Duration>(
    instance.visionCaptureThreshold,
    const DurationConverter().toJson,
  ),
  'peripherals': instance.peripherals?.map((e) => e.toJson()).toList(),
  'zigbeeDevices': instance.zigbeeDevices?.map((e) => e.toJson()).toList(),
  'exposes': instance.exposes?.map((e) => e.toJson()).toList(),
  'localIpAddress': instance.localIpAddress,
  'hasWorldwideCoverage': instance.hasWorldwideCoverage,
  'zigbeeZoneId': instance.zigbeeZoneId,
  'zigbeeToken': instance.zigbeeToken,
  'zigbeePermitJoinExpiresAt': instance.zigbeePermitJoinExpiresAt
      ?.toIso8601String(),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_DeviceCommand _$DeviceCommandFromJson(Map<String, dynamic> json) =>
    _DeviceCommand(
      id: json['id'] as String,
      name: json['name'] as String,
      source: $enumDecode(_$CommandSourceEnumMap, json['source']),
      isGlobal: json['isGlobal'] as bool? ?? false,
      payload: json['payload'] as String?,
      tagId: json['tagId'] as String?,
      deviceId: json['deviceId'] as String?,
      protocolId: json['protocolId'] as String?,
      protocol: json['protocol'] == null
          ? null
          : InboundProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
      modelId: json['modelId'] as String?,
      model: json['model'] == null
          ? null
          : Model.fromJson(json['model'] as Map<String, dynamic>),
      definition: json['definition'] as String?,
      externalAccountId: json['externalAccountId'] as String?,
      data: json['data'] == null
          ? null
          : CommandData.fromJson(json['data'] as Map<String, dynamic>),
      modbusParameter: json['modbusParameter'] == null
          ? null
          : ModbusParameter.fromJson(
              json['modbusParameter'] as Map<String, dynamic>,
            ),
      modbusPort: json['modbusPort'] as String?,
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibleDevices: (json['possibleDevices'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeviceCommandToJson(
  _DeviceCommand instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'source': instance.source.toJson(),
  'isGlobal': instance.isGlobal,
  'payload': instance.payload,
  'tagId': instance.tagId,
  'deviceId': instance.deviceId,
  'protocolId': instance.protocolId,
  'protocol': instance.protocol?.toJson(),
  'modelId': instance.modelId,
  'model': instance.model?.toJson(),
  'definition': instance.definition,
  'externalAccountId': instance.externalAccountId,
  'data': instance.data?.toJson(),
  'modbusParameter': instance.modbusParameter?.toJson(),
  'modbusPort': instance.modbusPort,
  'access': instance.access?.map((e) => e.toJson()).toList(),
  'possibleDevices': instance.possibleDevices?.map((e) => e.toJson()).toList(),
};

_DeviceInput _$DeviceInputFromJson(Map<String, dynamic> json) => _DeviceInput(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  ident: json['ident'] as String? ?? '',
  protocolId: json['protocolId'] as String?,
  modelId: json['modelId'] as String?,
  visionProfileId: json['visionProfileId'] as String?,
  phone: json['phone'] == null
      ? null
      : PhoneNumberInput.fromJson(json['phone'] as Map<String, dynamic>),
  modbus: json['modbus'] == null
      ? null
      : ModbusConfigInput.fromJson(json['modbus'] as Map<String, dynamic>),
  macAddress: json['macAddress'] as String?,
  hwModelId: json['hwModelId'] as String?,
  visionCaptureThreshold: _$JsonConverterFromJson<num, Duration>(
    json['visionCaptureThreshold'],
    const DurationConverter().fromJson,
  ),
  localIpAddress: json['localIpAddress'] as String?,
);

Map<String, dynamic> _$DeviceInputToJson(_DeviceInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ident': instance.ident,
      'protocolId': instance.protocolId,
      'modelId': instance.modelId,
      'visionProfileId': instance.visionProfileId,
      'phone': instance.phone?.toJson(),
      'modbus': instance.modbus?.toJson(),
      'macAddress': instance.macAddress,
      'hwModelId': instance.hwModelId,
      'visionCaptureThreshold': _$JsonConverterToJson<num, Duration>(
        instance.visionCaptureThreshold,
        const DurationConverter().toJson,
      ),
      'localIpAddress': instance.localIpAddress,
    };

_DeviceTelemetry _$DeviceTelemetryFromJson(
  Map<String, dynamic> json,
) => _DeviceTelemetry(
  id: json['id'] as String,
  deviceId: json['deviceId'] as String?,
  receivedAt: const TimestampConverter().fromJson(json['receivedAt'] as num),
  position: json['position'] == null
      ? null
      : TelemetryPosition.fromJson(json['position'] as Map<String, dynamic>),
  payload: (json['payload'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DeviceTelemetryToJson(_DeviceTelemetry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'receivedAt': const TimestampConverter().toJson(instance.receivedAt),
      'position': instance.position?.toJson(),
      'payload': instance.payload?.map((e) => e.toJson()).toList(),
    };

_TelemetryPosition _$TelemetryPositionFromJson(Map<String, dynamic> json) =>
    _TelemetryPosition(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      direction: (json['direction'] as num?)?.toDouble(),
      satellites: (json['satellites'] as num?)?.toInt(),
      hdop: (json['hdop'] as num?)?.toDouble(),
      timestamp: const TimestampOrNullConverter().fromJson(
        json['timestamp'] as num?,
      ),
    );

Map<String, dynamic> _$TelemetryPositionToJson(_TelemetryPosition instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'direction': instance.direction,
      'satellites': instance.satellites,
      'hdop': instance.hdop,
      'timestamp': const TimestampOrNullConverter().toJson(instance.timestamp),
    };

_TelemetrySensor _$TelemetrySensorFromJson(Map<String, dynamic> json) =>
    _TelemetrySensor(
      value: json['value'],
      parameter: json['parameter'] as String,
    );

Map<String, dynamic> _$TelemetrySensorToJson(_TelemetrySensor instance) =>
    <String, dynamic>{'value': instance.value, 'parameter': instance.parameter};
