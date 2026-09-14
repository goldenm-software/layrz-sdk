// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Preset _$PresetFromJson(Map<String, dynamic> json) => _Preset(
  id: json['id'] as String,
  name: json['name'] as String,
  validBefore: const TimestampOrNullConverter().fromJson(
    json['validBefore'] as num?,
  ),
  isExpired: json['isExpired'] as bool? ?? true,
  triggers: (json['triggers'] as List<dynamic>?)
      ?.map((e) => Trigger.fromJson(e as Map<String, dynamic>))
      .toList(),
  triggersIds: (json['triggersIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  comment: json['comment'] as String?,
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PresetToJson(_Preset instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'validBefore': const TimestampOrNullConverter().toJson(instance.validBefore),
  'isExpired': instance.isExpired,
  'triggers': instance.triggers?.map((e) => e.toJson()).toList(),
  'triggersIds': instance.triggersIds,
  'comment': instance.comment,
  'access': instance.access?.map((e) => e.toJson()).toList(),
};
