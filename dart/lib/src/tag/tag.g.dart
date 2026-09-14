// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tag _$TagFromJson(Map<String, dynamic> json) => _Tag(
  id: json['id'] as String,
  name: json['name'] as String,
  color: const ColorConverter().fromJson(json['color'] as String),
  dynamicIcon: json['dynamicIcon'] == null
      ? null
      : Avatar.fromJson(json['dynamicIcon'] as Map<String, dynamic>),
  users: (json['users'] as List<dynamic>?)
      ?.map((e) => User.fromJson(e as Map<String, dynamic>))
      .toList(),
  usersIds: (json['usersIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  outboundServices: (json['outboundServices'] as List<dynamic>?)
      ?.map((e) => OutboundService.fromJson(e as Map<String, dynamic>))
      .toList(),
  outboundServicesIds: (json['outboundServicesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  triggers: (json['triggers'] as List<dynamic>?)
      ?.map((e) => Trigger.fromJson(e as Map<String, dynamic>))
      .toList(),
  triggersIds: (json['triggersIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => Action.fromJson(e as Map<String, dynamic>))
      .toList(),
  actionsIds: (json['actionsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  operations: (json['operations'] as List<dynamic>?)
      ?.map((e) => Operation.fromJson(e as Map<String, dynamic>))
      .toList(),
  operationsIds: (json['operationsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  assets: (json['assets'] as List<dynamic>?)
      ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
      .toList(),
  assetsIds: (json['assetsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  devices: (json['devices'] as List<dynamic>?)
      ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
      .toList(),
  devicesIds: (json['devicesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  geofences: (json['geofences'] as List<dynamic>?)
      ?.map((e) => Geofence.fromJson(e as Map<String, dynamic>))
      .toList(),
  geofencesIds: (json['geofencesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  externalAccounts: (json['externalAccounts'] as List<dynamic>?)
      ?.map((e) => ExternalAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
  externalAccountsIds: (json['externalAccountsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  presets: (json['presets'] as List<dynamic>?)
      ?.map((e) => Preset.fromJson(e as Map<String, dynamic>))
      .toList(),
  presetsIds: (json['presetsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  references: (json['references'] as List<dynamic>?)
      ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
      .toList(),
  referencesIds: (json['referencesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  checkpoints: (json['checkpoints'] as List<dynamic>?)
      ?.map((e) => Checkpoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  checkpointsIds: (json['checkpointsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  careProtocols: (json['careProtocols'] as List<dynamic>?)
      ?.map((e) => CareProtocol.fromJson(e as Map<String, dynamic>))
      .toList(),
  careProtocolsIds: (json['careProtocolsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  inboundServices: (json['inboundServices'] as List<dynamic>?)
      ?.map((e) => InboundService.fromJson(e as Map<String, dynamic>))
      .toList(),
  inboundServicesIds: (json['inboundServicesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  functions: (json['functions'] as List<dynamic>?)
      ?.map((e) => LayrzFunction.fromJson(e as Map<String, dynamic>))
      .toList(),
  functionsIds: (json['functionsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  conciergeForms: (json['conciergeForms'] as List<dynamic>?)
      ?.map((e) => ConciergeForm.fromJson(e as Map<String, dynamic>))
      .toList(),
  conciergeFormsIds: (json['conciergeFormsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  reportTemplates: (json['reportTemplates'] as List<dynamic>?)
      ?.map((e) => ReportTemplate.fromJson(e as Map<String, dynamic>))
      .toList(),
  reportTemplatesIds: (json['reportTemplatesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  charts: (json['charts'] as List<dynamic>?)
      ?.map((e) => LayrzChart.fromJson(e as Map<String, dynamic>))
      .toList(),
  chartsIds: (json['chartsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  workspaces: (json['workspaces'] as List<dynamic>?)
      ?.map((e) => Workspace.fromJson(e as Map<String, dynamic>))
      .toList(),
  workspacesIds: (json['workspacesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  visionProfiles: (json['visionProfiles'] as List<dynamic>?)
      ?.map((e) => VisionProfile.fromJson(e as Map<String, dynamic>))
      .toList(),
  visionProfilesIds: (json['visionProfilesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mappitRoutes: (json['mappitRoutes'] as List<dynamic>?)
      ?.map((e) => MappitRoute.fromJson(e as Map<String, dynamic>))
      .toList(),
  mappitRoutesIds: (json['mappitRoutesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  exchangeServices: (json['exchangeServices'] as List<dynamic>?)
      ?.map((e) => ExchangeService.fromJson(e as Map<String, dynamic>))
      .toList(),
  exchangeServicesIds: (json['exchangeServicesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  ownerId: json['ownerId'] as String?,
  sensorsIds: (json['sensorsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  sensors: (json['sensors'] as List<dynamic>?)
      ?.map((e) => Sensor.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': const ColorConverter().toJson(instance.color),
  'dynamicIcon': instance.dynamicIcon?.toJson(),
  'users': instance.users?.map((e) => e.toJson()).toList(),
  'usersIds': instance.usersIds,
  'outboundServices': instance.outboundServices
      ?.map((e) => e.toJson())
      .toList(),
  'outboundServicesIds': instance.outboundServicesIds,
  'triggers': instance.triggers?.map((e) => e.toJson()).toList(),
  'triggersIds': instance.triggersIds,
  'actions': instance.actions?.map((e) => e.toJson()).toList(),
  'actionsIds': instance.actionsIds,
  'operations': instance.operations?.map((e) => e.toJson()).toList(),
  'operationsIds': instance.operationsIds,
  'assets': instance.assets?.map((e) => e.toJson()).toList(),
  'assetsIds': instance.assetsIds,
  'devices': instance.devices?.map((e) => e.toJson()).toList(),
  'devicesIds': instance.devicesIds,
  'geofences': instance.geofences?.map((e) => e.toJson()).toList(),
  'geofencesIds': instance.geofencesIds,
  'externalAccounts': instance.externalAccounts
      ?.map((e) => e.toJson())
      .toList(),
  'externalAccountsIds': instance.externalAccountsIds,
  'presets': instance.presets?.map((e) => e.toJson()).toList(),
  'presetsIds': instance.presetsIds,
  'references': instance.references?.map((e) => e.toJson()).toList(),
  'referencesIds': instance.referencesIds,
  'checkpoints': instance.checkpoints?.map((e) => e.toJson()).toList(),
  'checkpointsIds': instance.checkpointsIds,
  'careProtocols': instance.careProtocols?.map((e) => e.toJson()).toList(),
  'careProtocolsIds': instance.careProtocolsIds,
  'inboundServices': instance.inboundServices?.map((e) => e.toJson()).toList(),
  'inboundServicesIds': instance.inboundServicesIds,
  'functions': instance.functions?.map((e) => e.toJson()).toList(),
  'functionsIds': instance.functionsIds,
  'conciergeForms': instance.conciergeForms?.map((e) => e.toJson()).toList(),
  'conciergeFormsIds': instance.conciergeFormsIds,
  'reportTemplates': instance.reportTemplates?.map((e) => e.toJson()).toList(),
  'reportTemplatesIds': instance.reportTemplatesIds,
  'charts': instance.charts?.map((e) => e.toJson()).toList(),
  'chartsIds': instance.chartsIds,
  'workspaces': instance.workspaces?.map((e) => e.toJson()).toList(),
  'workspacesIds': instance.workspacesIds,
  'visionProfiles': instance.visionProfiles?.map((e) => e.toJson()).toList(),
  'visionProfilesIds': instance.visionProfilesIds,
  'mappitRoutes': instance.mappitRoutes?.map((e) => e.toJson()).toList(),
  'mappitRoutesIds': instance.mappitRoutesIds,
  'exchangeServices': instance.exchangeServices
      ?.map((e) => e.toJson())
      .toList(),
  'exchangeServicesIds': instance.exchangeServicesIds,
  'access': instance.access?.map((e) => e.toJson()).toList(),
  'owner': instance.owner?.toJson(),
  'ownerId': instance.ownerId,
  'sensorsIds': instance.sensorsIds,
  'sensors': instance.sensors?.map((e) => e.toJson()).toList(),
};
