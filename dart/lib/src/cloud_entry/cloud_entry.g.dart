// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CloudEntry _$CloudEntryFromJson(Map<String, dynamic> json) => _CloudEntry(
  name: json['name'] as String,
  type: const CloudEntryTypeConverter().fromJson(json['type'] as String),
  path: json['path'] as String,
  serial: json['serial'] as String?,
  fileId: json['fileId'] as String?,
  size: (json['size'] as num?)?.toInt(),
  lastModified: const TimestampOrNullConverter().fromJson(
    json['lastModified'] as num?,
  ),
  contentType: json['contentType'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  sensorId: json['sensorId'] as String?,
);

Map<String, dynamic> _$CloudEntryToJson(_CloudEntry instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': const CloudEntryTypeConverter().toJson(instance.type),
      'path': instance.path,
      'serial': instance.serial,
      'fileId': instance.fileId,
      'size': instance.size,
      'lastModified': const TimestampOrNullConverter().toJson(
        instance.lastModified,
      ),
      'contentType': instance.contentType,
      'metadata': instance.metadata,
      'sensorId': instance.sensorId,
    };
