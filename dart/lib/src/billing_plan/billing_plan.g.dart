// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillingPlan _$BillingPlanFromJson(Map<String, dynamic> json) => _BillingPlan(
  id: json['id'] as String,
  reconnectionPercent: (json['reconnectionPercent'] as num?)?.toDouble() ?? 0.0,
  reconnectionMaximum: (json['reconnectionMaximum'] as num?)?.toInt() ?? 0,
  reconnectionIncidents: (json['reconnectionIncidents'] as num?)?.toInt() ?? 0,
  maxAssets: (json['maxAssets'] as num?)?.toInt() ?? 0,
  maxDevices: (json['maxDevices'] as num?)?.toInt() ?? 0,
  maxUsers: (json['maxUsers'] as num?)?.toInt() ?? 0,
  maxOutboundServices: (json['maxOutboundServices'] as num?)?.toInt() ?? 0,
  maxFunctions: (json['maxFunctions'] as num?)?.toInt() ?? 0,
  maxApps: (json['maxApps'] as num?)?.toInt() ?? 0,
  allowedAppsIds:
      (json['allowedAppsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedAlgorithmsIds:
      (json['allowedAlgorithmsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedInboundProtocolsIds:
      (json['allowedInboundProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedOutboundProtocolsIds:
      (json['allowedOutboundProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedVisionProtocolsIds:
      (json['allowedVisionProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedExchangeProtocolsIds:
      (json['allowedExchangeProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  aiEnabled: json['aiEnabled'] as bool? ?? false,
);

Map<String, dynamic> _$BillingPlanToJson(_BillingPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reconnectionPercent': instance.reconnectionPercent,
      'reconnectionMaximum': instance.reconnectionMaximum,
      'reconnectionIncidents': instance.reconnectionIncidents,
      'maxAssets': instance.maxAssets,
      'maxDevices': instance.maxDevices,
      'maxUsers': instance.maxUsers,
      'maxOutboundServices': instance.maxOutboundServices,
      'maxFunctions': instance.maxFunctions,
      'maxApps': instance.maxApps,
      'allowedAppsIds': instance.allowedAppsIds,
      'allowedAlgorithmsIds': instance.allowedAlgorithmsIds,
      'allowedInboundProtocolsIds': instance.allowedInboundProtocolsIds,
      'allowedOutboundProtocolsIds': instance.allowedOutboundProtocolsIds,
      'allowedVisionProtocolsIds': instance.allowedVisionProtocolsIds,
      'allowedExchangeProtocolsIds': instance.allowedExchangeProtocolsIds,
      'aiEnabled': instance.aiEnabled,
    };

_BillingPlanInput _$BillingPlanInputFromJson(
  Map<String, dynamic> json,
) => _BillingPlanInput(
  id: json['id'] as String?,
  reconnectionPercent: (json['reconnectionPercent'] as num?)?.toDouble() ?? 0.0,
  reconnectionMaximum: (json['reconnectionMaximum'] as num?)?.toInt() ?? 0,
  reconnectionIncidents: (json['reconnectionIncidents'] as num?)?.toInt() ?? 0,
  maxAssets: (json['maxAssets'] as num?)?.toInt() ?? 0,
  maxDevices: (json['maxDevices'] as num?)?.toInt() ?? 0,
  maxUsers: (json['maxUsers'] as num?)?.toInt() ?? 0,
  maxOutboundServices: (json['maxOutboundServices'] as num?)?.toInt() ?? 0,
  maxFunctions: (json['maxFunctions'] as num?)?.toInt() ?? 0,
  maxApps: (json['maxApps'] as num?)?.toInt() ?? 0,
  allowedAppsIds:
      (json['allowedAppsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedAlgorithmsIds:
      (json['allowedAlgorithmsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedInboundProtocolsIds:
      (json['allowedInboundProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedOutboundProtocolsIds:
      (json['allowedOutboundProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedVisionProtocolsIds:
      (json['allowedVisionProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allowedExchangeProtocolsIds:
      (json['allowedExchangeProtocolsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  aiEnabled: json['aiEnabled'] as bool? ?? false,
);

Map<String, dynamic> _$BillingPlanInputToJson(_BillingPlanInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reconnectionPercent': instance.reconnectionPercent,
      'reconnectionMaximum': instance.reconnectionMaximum,
      'reconnectionIncidents': instance.reconnectionIncidents,
      'maxAssets': instance.maxAssets,
      'maxDevices': instance.maxDevices,
      'maxUsers': instance.maxUsers,
      'maxOutboundServices': instance.maxOutboundServices,
      'maxFunctions': instance.maxFunctions,
      'maxApps': instance.maxApps,
      'allowedAppsIds': instance.allowedAppsIds,
      'allowedAlgorithmsIds': instance.allowedAlgorithmsIds,
      'allowedInboundProtocolsIds': instance.allowedInboundProtocolsIds,
      'allowedOutboundProtocolsIds': instance.allowedOutboundProtocolsIds,
      'allowedVisionProtocolsIds': instance.allowedVisionProtocolsIds,
      'allowedExchangeProtocolsIds': instance.allowedExchangeProtocolsIds,
      'aiEnabled': instance.aiEnabled,
    };
