// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_of_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeOfDay _$TimeOfDayFromJson(Map<String, dynamic> json) => _TimeOfDay(
  hour: (json['hour'] as num).toInt(),
  minute: (json['minute'] as num).toInt(),
);

Map<String, dynamic> _$TimeOfDayToJson(_TimeOfDay instance) =>
    <String, dynamic>{'hour': instance.hour, 'minute': instance.minute};
