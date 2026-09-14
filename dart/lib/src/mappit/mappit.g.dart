// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mappit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MappitLaborHour _$MappitLaborHourFromJson(Map<String, dynamic> json) =>
    _MappitLaborHour(
      id: json['id'] as String,
      weekday: $enumDecode(
        _$WeekdayEnumMap,
        json['weekday'],
        unknownValue: Weekday.monday,
      ),
      administrative: const DurationConverter().fromJson(
        json['administrative'] as num,
      ),
      f2f: const DurationConverter().fromJson(json['f2f'] as num),
      other: const DurationConverter().fromJson(json['other'] as num),
    );

Map<String, dynamic> _$MappitLaborHourToJson(
  _MappitLaborHour instance,
) => <String, dynamic>{
  'id': instance.id,
  'weekday': instance.weekday.toJson(),
  'administrative': const DurationConverter().toJson(instance.administrative),
  'f2f': const DurationConverter().toJson(instance.f2f),
  'other': const DurationConverter().toJson(instance.other),
};

const _$WeekdayEnumMap = {
  Weekday.monday: 'MON',
  Weekday.tuesday: 'TUE',
  Weekday.wednesday: 'WED',
  Weekday.thursday: 'THU',
  Weekday.friday: 'FRI',
  Weekday.saturday: 'SAT',
  Weekday.sunday: 'SUN',
};

_MappitLaborHourInput _$MappitLaborHourInputFromJson(
  Map<String, dynamic> json,
) => _MappitLaborHourInput(
  id: json['id'] as String?,
  weekday: $enumDecode(
    _$WeekdayEnumMap,
    json['weekday'],
    unknownValue: Weekday.monday,
  ),
  administrative: json['administrative'] == null
      ? const Duration(minutes: 0)
      : const DurationConverter().fromJson(json['administrative'] as num),
  f2f: json['f2f'] == null
      ? const Duration(minutes: 0)
      : const DurationConverter().fromJson(json['f2f'] as num),
  other: json['other'] == null
      ? const Duration(minutes: 0)
      : const DurationConverter().fromJson(json['other'] as num),
);

Map<String, dynamic> _$MappitLaborHourInputToJson(
  _MappitLaborHourInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'weekday': instance.weekday.toJson(),
  'administrative': const DurationConverter().toJson(instance.administrative),
  'f2f': const DurationConverter().toJson(instance.f2f),
  'other': const DurationConverter().toJson(instance.other),
};

_MappitRouteLinkingHistory _$MappitRouteLinkingHistoryFromJson(
  Map<String, dynamic> json,
) => _MappitRouteLinkingHistory(
  currentSeller: json['currentSeller'] == null
      ? null
      : Asset.fromJson(json['currentSeller'] as Map<String, dynamic>),
  currentSellerId: json['currentSellerId'] as String?,
  performedBy: json['performedBy'] == null
      ? null
      : User.fromJson(json['performedBy'] as Map<String, dynamic>),
  performedById: json['performedById'] as String,
  performedAt: const TimestampConverter().fromJson(json['performedAt'] as num),
);

Map<String, dynamic> _$MappitRouteLinkingHistoryToJson(
  _MappitRouteLinkingHistory instance,
) => <String, dynamic>{
  'currentSeller': instance.currentSeller?.toJson(),
  'currentSellerId': instance.currentSellerId,
  'performedBy': instance.performedBy?.toJson(),
  'performedById': instance.performedById,
  'performedAt': const TimestampConverter().toJson(instance.performedAt),
};

_MappitRoute _$MappitRouteFromJson(Map<String, dynamic> json) => _MappitRoute(
  id: json['id'] as String,
  name: json['name'] as String,
  currentSeller: json['currentSeller'] == null
      ? null
      : Asset.fromJson(json['currentSeller'] as Map<String, dynamic>),
  currentSellerId: json['currentSellerId'] as String?,
  geofences: (json['geofences'] as List<dynamic>?)
      ?.map((e) => Geofence.fromJson(e as Map<String, dynamic>))
      .toList(),
  geofencesIds: (json['geofencesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  assignmentsHistory: (json['assignmentsHistory'] as List<dynamic>?)
      ?.map(
        (e) => MappitRouteLinkingHistory.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  ownerId: json['ownerId'] as String?,
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  secondarySellers: (json['secondarySellers'] as List<dynamic>?)
      ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
      .toList(),
  secondarySellersIds: (json['secondarySellersIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MappitRouteToJson(_MappitRoute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currentSeller': instance.currentSeller?.toJson(),
      'currentSellerId': instance.currentSellerId,
      'geofences': instance.geofences?.map((e) => e.toJson()).toList(),
      'geofencesIds': instance.geofencesIds,
      'assignmentsHistory': instance.assignmentsHistory
          ?.map((e) => e.toJson())
          .toList(),
      'ownerId': instance.ownerId,
      'owner': instance.owner?.toJson(),
      'secondarySellers': instance.secondarySellers
          ?.map((e) => e.toJson())
          .toList(),
      'secondarySellersIds': instance.secondarySellersIds,
    };
