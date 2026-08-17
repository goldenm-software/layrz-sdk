// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utils.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParamData _$ParamDataFromJson(Map<String, dynamic> json) => _ParamData(
  value: json['value'],
  updatedAt: _$JsonConverterFromJson<num, DateTime>(
    json['updatedAt'],
    const TimestampConverter().fromJson,
  ),
);

Map<String, dynamic> _$ParamDataToJson(_ParamData instance) =>
    <String, dynamic>{
      'value': instance.value,
      'updatedAt': _$JsonConverterToJson<num, DateTime>(
        instance.updatedAt,
        const TimestampConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
