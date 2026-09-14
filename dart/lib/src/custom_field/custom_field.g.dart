// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => _CustomField(
  id: json['id'] as String,
  name: json['name'] as String,
  value: json['value'] as String,
  isFixed: json['isFixed'] as bool?,
  updatedAt: const TimestampOrNullConverter().fromJson(
    json['updatedAt'] as num?,
  ),
);

Map<String, dynamic> _$CustomFieldToJson(_CustomField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'isFixed': instance.isFixed,
      'updatedAt': const TimestampOrNullConverter().toJson(instance.updatedAt),
    };

_CustomFieldInput _$CustomFieldInputFromJson(Map<String, dynamic> json) =>
    _CustomFieldInput(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      value: json['value'] as String? ?? '',
      isFixed: json['isFixed'] as bool? ?? false,
    );

Map<String, dynamic> _$CustomFieldInputToJson(_CustomFieldInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'isFixed': instance.isFixed,
    };
