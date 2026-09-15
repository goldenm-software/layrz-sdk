// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BleDevice _$BleDeviceFromJson(Map<String, dynamic> json) => _BleDevice(
  macAddress: json['macAddress'] as String,
  name: json['name'] as String?,
  rssi: (json['rssi'] as num?)?.toInt(),
  txPower: (json['txPower'] as num?)?.toInt(),
  manufacturerData:
      (json['manufacturerData'] as List<dynamic>?)
          ?.map((e) => BleManufacturerData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  serviceData:
      (json['serviceData'] as List<dynamic>?)
          ?.map((e) => BleServiceData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$BleDeviceToJson(
  _BleDevice instance,
) => <String, dynamic>{
  'macAddress': instance.macAddress,
  'name': instance.name,
  'rssi': instance.rssi,
  'txPower': instance.txPower,
  'manufacturerData': instance.manufacturerData.map((e) => e.toJson()).toList(),
  'serviceData': instance.serviceData.map((e) => e.toJson()).toList(),
};

_BleManufacturerData _$BleManufacturerDataFromJson(Map<String, dynamic> json) =>
    _BleManufacturerData(
      companyId: (json['companyId'] as num?)?.toInt() ?? 0x0000,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$BleManufacturerDataToJson(
  _BleManufacturerData instance,
) => <String, dynamic>{'companyId': instance.companyId, 'data': instance.data};

_BleServiceData _$BleServiceDataFromJson(Map<String, dynamic> json) =>
    _BleServiceData(
      uuid: (json['uuid'] as num).toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$BleServiceDataToJson(_BleServiceData instance) =>
    <String, dynamic>{'uuid': instance.uuid, 'data': instance.data};
