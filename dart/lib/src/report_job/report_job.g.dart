// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportJobInput _$ReportJobInputFromJson(Map<String, dynamic> json) =>
    _ReportJobInput(
      languageId: json['languageId'] as String?,
      appId: json['appId'] as String?,
      templateId: json['templateId'] as String?,
      templateCode: json['templateCode'] as String?,
      startAt: const TimestampConverter().fromJson(json['startAt'] as num),
      endAt: const TimestampConverter().fromJson(json['endAt'] as num),
      assetsIds:
          (json['assetsIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      outboundServicesIds:
          (json['outboundServicesIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      functionsIds:
          (json['functionsIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      utcOffset: (json['utcOffset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReportJobInputToJson(_ReportJobInput instance) =>
    <String, dynamic>{
      'languageId': instance.languageId,
      'appId': instance.appId,
      'templateId': instance.templateId,
      'templateCode': instance.templateCode,
      'startAt': const TimestampConverter().toJson(instance.startAt),
      'endAt': const TimestampConverter().toJson(instance.endAt),
      'assetsIds': instance.assetsIds,
      'outboundServicesIds': instance.outboundServicesIds,
      'functionsIds': instance.functionsIds,
      'utcOffset': instance.utcOffset,
    };
