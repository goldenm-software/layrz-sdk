// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportTemplate _$ReportTemplateFromJson(Map<String, dynamic> json) =>
    _ReportTemplate(
      id: json['id'] as String,
      name: json['name'] as String,
      structure: (json['structure'] as List<dynamic>?)
          ?.map((e) => ReportTemplatePage.fromJson(e as Map<String, dynamic>))
          .toList(),
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetsIds: (json['assetsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      outboundServices: (json['outboundServices'] as List<dynamic>?)
          ?.map((e) => OutboundService.fromJson(e as Map<String, dynamic>))
          .toList(),
      outboundServicesIds: (json['outboundServicesIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportTemplateToJson(_ReportTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'structure': instance.structure?.map((e) => e.toJson()).toList(),
      'assets': instance.assets?.map((e) => e.toJson()).toList(),
      'assetsIds': instance.assetsIds,
      'outboundServices': instance.outboundServices
          ?.map((e) => e.toJson())
          .toList(),
      'outboundServicesIds': instance.outboundServicesIds,
      'access': instance.access?.map((e) => e.toJson()).toList(),
    };

_ReportTemplateInput _$ReportTemplateInputFromJson(Map<String, dynamic> json) =>
    _ReportTemplateInput(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
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
      structure:
          (json['structure'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ReportTemplatePageInput.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ReportTemplateInputToJson(
  _ReportTemplateInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'assetsIds': instance.assetsIds,
  'outboundServicesIds': instance.outboundServicesIds,
  'structure': instance.structure.map((e) => e.toJson()).toList(),
};

_ReportTemplatePage _$ReportTemplatePageFromJson(Map<String, dynamic> json) =>
    _ReportTemplatePage(
      title: json['title'] as String,
      source: $enumDecode(
        _$ReportSourceEnumMap,
        json['source'],
        unknownValue: ReportSource.messages,
      ),
      algorithm:
          $enumDecodeNullable(
            _$ReportAlgorithmEnumMap,
            json['algorithm'],
            unknownValue: ReportAlgorithm.auto,
          ) ??
          ReportAlgorithm.auto,
      cols: (json['cols'] as List<dynamic>?)
          ?.map((e) => ReportTemplateCol.fromJson(e as Map<String, dynamic>))
          .toList(),
      script: json['script'] as String?,
    );

Map<String, dynamic> _$ReportTemplatePageToJson(_ReportTemplatePage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source.toJson(),
      'algorithm': instance.algorithm.toJson(),
      'cols': instance.cols?.map((e) => e.toJson()).toList(),
      'script': instance.script,
    };

const _$ReportSourceEnumMap = {
  ReportSource.messages: 'MESSAGES',
  ReportSource.cases: 'CASES',
  ReportSource.checkpoints: 'CHECKPOINTS',
  ReportSource.events: 'EVENTS',
  ReportSource.broadcast: 'BROADCASTS',
  ReportSource.lastMessages: 'LAST_MESSAGES',
};

const _$ReportAlgorithmEnumMap = {
  ReportAlgorithm.auto: 'AUTO',
  ReportAlgorithm.python: 'PYTHON',
};

_ReportTemplatePageInput _$ReportTemplatePageInputFromJson(
  Map<String, dynamic> json,
) => _ReportTemplatePageInput(
  title: json['title'] as String? ?? 'Page',
  source:
      $enumDecodeNullable(
        _$ReportSourceEnumMap,
        json['source'],
        unknownValue: ReportSource.messages,
      ) ??
      ReportSource.messages,
  algorithm:
      $enumDecodeNullable(
        _$ReportAlgorithmEnumMap,
        json['algorithm'],
        unknownValue: ReportAlgorithm.auto,
      ) ??
      ReportAlgorithm.auto,
  cols:
      (json['cols'] as List<dynamic>?)
          ?.map(
            (e) => ReportTemplateColInput.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  script: json['script'] as String? ?? '',
);

Map<String, dynamic> _$ReportTemplatePageInputToJson(
  _ReportTemplatePageInput instance,
) => <String, dynamic>{
  'title': instance.title,
  'source': instance.source.toJson(),
  'algorithm': instance.algorithm.toJson(),
  'cols': instance.cols.map((e) => e.toJson()).toList(),
  'script': instance.script,
};

_ReportTemplateCol _$ReportTemplateColFromJson(Map<String, dynamic> json) =>
    _ReportTemplateCol(
      name: json['name'] as String,
      field: json['field'] as String,
      visible: json['visible'] as bool,
      isCustom: json['isCustom'] as bool,
    );

Map<String, dynamic> _$ReportTemplateColToJson(_ReportTemplateCol instance) =>
    <String, dynamic>{
      'name': instance.name,
      'field': instance.field,
      'visible': instance.visible,
      'isCustom': instance.isCustom,
    };

_ReportTemplateColInput _$ReportTemplateColInputFromJson(
  Map<String, dynamic> json,
) => _ReportTemplateColInput(
  name: json['name'] as String? ?? '',
  field: json['field'] as String? ?? '',
  visible: json['visible'] as bool? ?? true,
  isCustom: json['isCustom'] as bool? ?? false,
);

Map<String, dynamic> _$ReportTemplateColInputToJson(
  _ReportTemplateColInput instance,
) => <String, dynamic>{
  'name': instance.name,
  'field': instance.field,
  'visible': instance.visible,
  'isCustom': instance.isCustom,
};
