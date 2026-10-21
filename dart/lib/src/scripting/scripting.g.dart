// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scripting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LintError _$LintErrorFromJson(Map<String, dynamic> json) => _LintError(
  code: json['code'] as String,
  line: (json['line'] as num?)?.toInt() ?? 1,
  name: json['name'] as String?,
  expected: json['expected'],
  received: json['received'],
);

Map<String, dynamic> _$LintErrorToJson(_LintError instance) => <String, dynamic>{
  'code': instance.code,
  'line': instance.line,
  'name': instance.name,
  'expected': instance.expected,
  'received': instance.received,
};

const _$PythonScopeEnumMap = {
  PythonScope.sensors: 'SENSORS',
  PythonScope.triggers: 'TRIGGERS',
  PythonScope.fixedTriggers: 'FIXED_TRIGGERS',
  PythonScope.charts: 'CHARTS',
  PythonScope.reports: 'REPORTS',
  PythonScope.dynamicSensors: 'DYNAMIC_SENSORS',
};

const _$PythonSourceEnumMap = {
  PythonSource.messages: 'MESSAGES',
  PythonSource.cases: 'CASES',
  PythonSource.checkpoints: 'CHECKPOINTS',
  PythonSource.events: 'EVENTS',
  PythonSource.coreProcesses: 'CORE_PROCESSES',
  PythonSource.broadcasts: 'BROADCASTS',
  PythonSource.atsOperations: 'ATS_OPERATIONS',
  PythonSource.atsPurchaseorders: 'ATS_PURCHASEORDERS',
};
