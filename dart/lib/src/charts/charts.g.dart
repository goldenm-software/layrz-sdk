// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LayrzChart _$LayrzChartFromJson(Map<String, dynamic> json) => _LayrzChart(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  formula: json['formula'] as String?,
  script: json['script'] as String?,
  sensors: (json['sensors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  assets: (json['assets'] as List<dynamic>?)
      ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
      .toList(),
  assetsIds: (json['assetsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  type: $enumDecodeNullable(
    _$ChartTypeEnumMap,
    json['type'],
    unknownValue: ChartType.area,
  ),
  algorithm: $enumDecodeNullable(
    _$ChartAlgorithmEnumMap,
    json['algorithm'],
    unknownValue: ChartAlgorithm.auto,
  ),
  dataSource: $enumDecodeNullable(
    _$ChartDataSourceEnumMap,
    json['dataSource'],
    unknownValue: ChartDataSource.messages,
  ),
  enableLttb: json['enableLttb'] as bool?,
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LayrzChartToJson(_LayrzChart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'formula': instance.formula,
      'script': instance.script,
      'sensors': instance.sensors,
      'assets': instance.assets?.map((e) => e.toJson()).toList(),
      'assetsIds': instance.assetsIds,
      'type': instance.type?.toJson(),
      'algorithm': instance.algorithm?.toJson(),
      'dataSource': instance.dataSource?.toJson(),
      'enableLttb': instance.enableLttb,
      'access': instance.access?.map((e) => e.toJson()).toList(),
    };

const _$ChartTypeEnumMap = {
  ChartType.pie: 'PIE',
  ChartType.bar: 'BAR',
  ChartType.line: 'LINE',
  ChartType.area: 'AREA',
  ChartType.column: 'COLUMN',
  ChartType.radialBar: 'RADIALBAR',
  ChartType.scatter: 'SCATTER',
  ChartType.timeline: 'TIMELINE',
  ChartType.radar: 'RADAR',
  ChartType.html: 'HTML',
  ChartType.map: 'MAP',
  ChartType.number: 'NUMBER',
  ChartType.table: 'TABLE',
};

const _$ChartAlgorithmEnumMap = {
  ChartAlgorithm.python: 'PYTHON',
  ChartAlgorithm.lcl: 'LCL',
  ChartAlgorithm.auto: 'AUTO',
};

const _$ChartDataSourceEnumMap = {
  ChartDataSource.messages: 'MESSAGES',
  ChartDataSource.events: 'EVENTS',
  ChartDataSource.cases: 'CASES',
  ChartDataSource.checkpoints: 'CHECKPOINTS',
  ChartDataSource.atsOperations: 'ATS_OPERATIONS',
  ChartDataSource.atsPurchaseOrders: 'ATS_PURCHASEORDERS',
  ChartDataSource.lastMessages: 'LAST_MESSAGES',
};

_LayrzChartInput _$LayrzChartInputFromJson(
  Map<String, dynamic> json,
) => _LayrzChartInput(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  description: json['description'] as String? ?? '',
  formula: json['formula'] as String? ?? '',
  script: json['script'] as String? ?? '',
  sensors:
      (json['sensors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  assetsIds:
      (json['assetsIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  type:
      $enumDecodeNullable(
        _$ChartTypeEnumMap,
        json['type'],
        unknownValue: ChartType.area,
      ) ??
      ChartType.area,
  algorithm:
      $enumDecodeNullable(
        _$ChartAlgorithmEnumMap,
        json['algorithm'],
        unknownValue: ChartAlgorithm.auto,
      ) ??
      ChartAlgorithm.auto,
  dataSource:
      $enumDecodeNullable(
        _$ChartDataSourceEnumMap,
        json['dataSource'],
        unknownValue: ChartDataSource.messages,
      ) ??
      ChartDataSource.messages,
  enableLttb: json['enableLttb'] as bool? ?? true,
);

Map<String, dynamic> _$LayrzChartInputToJson(_LayrzChartInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'formula': instance.formula,
      'script': instance.script,
      'sensors': instance.sensors,
      'assetsIds': instance.assetsIds,
      'type': instance.type.toJson(),
      'algorithm': instance.algorithm.toJson(),
      'dataSource': instance.dataSource.toJson(),
      'enableLttb': instance.enableLttb,
    };
