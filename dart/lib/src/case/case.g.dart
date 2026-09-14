// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentOwner _$CommentOwnerFromJson(Map<String, dynamic> json) =>
    _CommentOwner(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      dynamicAvatar: json['dynamicAvatar'] == null
          ? null
          : Avatar.fromJson(json['dynamicAvatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentOwnerToJson(_CommentOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'dynamicAvatar': instance.dynamicAvatar?.toJson(),
    };

_CaseComment _$CaseCommentFromJson(Map<String, dynamic> json) => _CaseComment(
  id: json['id'] as String,
  at: const TimestampConverter().fromJson(json['at'] as num),
  owner: json['owner'] == null
      ? null
      : CommentOwner.fromJson(json['owner'] as Map<String, dynamic>),
  comment: json['comment'] as String,
  metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
  file: json['file'] == null
      ? null
      : CloudEntry.fromJson(json['file'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CaseCommentToJson(_CaseComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'at': const TimestampConverter().toJson(instance.at),
      'owner': instance.owner?.toJson(),
      'comment': instance.comment,
      'metadata': instance.metadata,
      'file': instance.file?.toJson(),
    };

_Case _$CaseFromJson(Map<String, dynamic> json) => _Case(
  id: json['id'] as String,
  receivedAt: const TimestampConverter().fromJson(json['dateReceived'] as num),
  status: $enumDecode(
    _$CaseStatusEnumMap,
    json['status'],
    unknownValue: CaseStatus.pending,
  ),
  ignoredStatus: $enumDecodeNullable(
    _$CaseIgnoredStatusEnumMap,
    json['ignoredStatus'],
    unknownValue: CaseIgnoredStatus.normal,
  ),
  asset: Asset.fromJson(json['asset'] as Map<String, dynamic>),
  trigger: Trigger.fromJson(json['trigger'] as Map<String, dynamic>),
  geofence: json['geofence'] == null
      ? null
      : Geofence.fromJson(json['geofence'] as Map<String, dynamic>),
  geofences:
      (json['geofences'] as List<dynamic>?)
          ?.map((e) => Geofence.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  sequence: (json['sequence'] as num?)?.toInt(),
  comments:
      (json['comments'] as List<dynamic>?)
          ?.map((e) => CaseComment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  position: json['position'] == null
      ? null
      : TelemetryPosition.fromJson(json['position'] as Map<String, dynamic>),
  payload: (json['payload'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
  sensors: (json['sensors'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
  file: json['file'] == null
      ? null
      : CloudEntry.fromJson(json['file'] as Map<String, dynamic>),
  stackCount: (json['stackCount'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CaseToJson(_Case instance) => <String, dynamic>{
  'id': instance.id,
  'dateReceived': const TimestampConverter().toJson(instance.receivedAt),
  'status': instance.status.toJson(),
  'ignoredStatus': instance.ignoredStatus?.toJson(),
  'asset': instance.asset.toJson(),
  'trigger': instance.trigger.toJson(),
  'geofence': instance.geofence?.toJson(),
  'geofences': instance.geofences.map((e) => e.toJson()).toList(),
  'sequence': instance.sequence,
  'comments': instance.comments.map((e) => e.toJson()).toList(),
  'position': instance.position?.toJson(),
  'payload': instance.payload?.map((e) => e.toJson()).toList(),
  'sensors': instance.sensors?.map((e) => e.toJson()).toList(),
  'file': instance.file?.toJson(),
  'stackCount': instance.stackCount,
};

const _$CaseStatusEnumMap = {
  CaseStatus.pending: 'PENDING',
  CaseStatus.followed: 'FOLLOWED',
  CaseStatus.closed: 'CLOSED',
};

const _$CaseIgnoredStatusEnumMap = {
  CaseIgnoredStatus.normal: 'NORMAL',
  CaseIgnoredStatus.ignored: 'IGNORED',
  CaseIgnoredStatus.preset: 'PRESET',
  CaseIgnoredStatus.expired: 'EXPIRED',
  CaseIgnoredStatus.auto: 'AUTO',
};
