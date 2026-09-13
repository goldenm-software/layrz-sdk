// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbound.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InboundProtocol _$InboundProtocolFromJson(
  Map<String, dynamic> json,
) => _InboundProtocol(
  id: json['id'] as String,
  name: json['name'] as String,
  color: const ColorConverter().fromJson(json['color'] as String),
  isEnabled: json['isEnabled'] as bool,
  operationMode: $enumDecode(
    _$OperationModeEnumMap,
    json['operationMode'],
    unknownValue: OperationMode.unknown,
  ),
  host: json['host'] as String?,
  port: (json['port'] as num?)?.toInt(),
  mqttTopic: json['mqttTopic'] as String?,
  hasNativeCommands: json['hasNativeCommands'] as bool?,
  hasSmsCommands: json['hasSmsCommands'] as bool?,
  hasCommandsResult: json['hasCommandsResult'] as bool?,
  isFlespi: json['isFlespi'] as bool?,
  channelId: (json['channelId'] as num?)?.toInt(),
  flespiId: json['flespiId'] as String?,
  requiredFields: (json['requiredFields'] as List<dynamic>?)
      ?.map((e) => CredentialField.fromJson(e as Map<String, dynamic>))
      .toList(),
  isImported: json['isImported'] as bool?,
  categoriesIds: (json['categoriesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  canFota: json['canFota'] as bool?,
  models: (json['models'] as List<dynamic>?)
      ?.map((e) => Model.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasAck: json['hasAck'] as bool?,
  ackTopicFormat: json['ackTopicFormat'] as String?,
  dynamicIcon: json['dynamicIcon'] == null
      ? null
      : Avatar.fromJson(json['dynamicIcon'] as Map<String, dynamic>),
  cycleId: json['cycleId'] as String?,
  cycle: json['cycle'] == null
      ? null
      : SimulationCycle.fromJson(json['cycle'] as Map<String, dynamic>),
  hasModbus: json['hasModbus'] as bool?,
  modbusPorts:
      (json['modbusPorts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  usage: (json['usage'] as num?)?.toInt(),
  requiresFlespiToken: json['requiresFlespiToken'] as bool?,
  flespiAcl: (json['flespiAcl'] as List<dynamic>?)
      ?.map((e) => FlespiAcl.fromJson(e as Map<String, dynamic>))
      .toList(),
  webhookStructure: json['webhookStructure'] == null
      ? null
      : WebhookStructure.fromJson(
          json['webhookStructure'] as Map<String, dynamic>,
        ),
  requiresExternalAccount: json['requiresExternalAccount'] as bool? ?? false,
  requiresStructure: json['requiresStructure'] as bool? ?? false,
  commandsStructure:
      (json['commandsStructure'] as List<dynamic>?)
          ?.map((e) => CommandDefinition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  configStructure:
      (json['configStructure'] as List<dynamic>?)
          ?.map((e) => ConfigGrouping.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  confiotCapable: json['confiotCapable'] as bool? ?? false,
  peripheralIdentifier: json['peripheralIdentifier'] as String?,
  peripheralParserSpec: json['peripheralParserSpec'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$InboundProtocolToJson(
  _InboundProtocol instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': const ColorConverter().toJson(instance.color),
  'isEnabled': instance.isEnabled,
  'operationMode': instance.operationMode.toJson(),
  'host': instance.host,
  'port': instance.port,
  'mqttTopic': instance.mqttTopic,
  'hasNativeCommands': instance.hasNativeCommands,
  'hasSmsCommands': instance.hasSmsCommands,
  'hasCommandsResult': instance.hasCommandsResult,
  'isFlespi': instance.isFlespi,
  'channelId': instance.channelId,
  'flespiId': instance.flespiId,
  'requiredFields': instance.requiredFields?.map((e) => e.toJson()).toList(),
  'isImported': instance.isImported,
  'categoriesIds': instance.categoriesIds,
  'canFota': instance.canFota,
  'models': instance.models?.map((e) => e.toJson()).toList(),
  'hasAck': instance.hasAck,
  'ackTopicFormat': instance.ackTopicFormat,
  'dynamicIcon': instance.dynamicIcon?.toJson(),
  'cycleId': instance.cycleId,
  'cycle': instance.cycle?.toJson(),
  'hasModbus': instance.hasModbus,
  'modbusPorts': instance.modbusPorts,
  'usage': instance.usage,
  'requiresFlespiToken': instance.requiresFlespiToken,
  'flespiAcl': instance.flespiAcl?.map((e) => e.toJson()).toList(),
  'webhookStructure': instance.webhookStructure?.toJson(),
  'requiresExternalAccount': instance.requiresExternalAccount,
  'requiresStructure': instance.requiresStructure,
  'commandsStructure': instance.commandsStructure
      .map((e) => e.toJson())
      .toList(),
  'configStructure': instance.configStructure.map((e) => e.toJson()).toList(),
  'confiotCapable': instance.confiotCapable,
  'peripheralIdentifier': instance.peripheralIdentifier,
  'peripheralParserSpec': instance.peripheralParserSpec,
};

const _$OperationModeEnumMap = {
  OperationMode.realtime: 'REALTIME',
  OperationMode.realtimeClient: 'REALTIMECLIENT',
  OperationMode.asyncronus: 'ASYNC',
  OperationMode.webhook: 'WEBHOOK',
  OperationMode.simulation: 'SIMULATION',
  OperationMode.mqtt: 'MQTT',
  OperationMode.peripheral: 'PERIPHERAL',
  OperationMode.zigbee: 'ZIGBEE',
  OperationMode.unknown: 'UNKNOWN',
};

_ConfigGrouping _$ConfigGroupingFromJson(Map<String, dynamic> json) =>
    _ConfigGrouping(
      name: json['name'] as String,
      kind: $enumDecode(
        _$ConfigKindEnumMap,
        json['kind'],
        unknownValue: ConfigKind.unknown,
      ),
      description: json['description'] as String?,
      setupCapable: json['setupCapable'] as bool?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ConfigDefinition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ConfigGroupingToJson(_ConfigGrouping instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kind': instance.kind.toJson(),
      'description': instance.description,
      'setupCapable': instance.setupCapable,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

const _$ConfigKindEnumMap = {
  ConfigKind.grouping: 'GROUPING',
  ConfigKind.listing: 'LISTING',
  ConfigKind.unknown: 'UNKNOWN',
};

_ConfigDefinition _$ConfigDefinitionFromJson(Map<String, dynamic> json) =>
    _ConfigDefinition(
      sources: (json['sources'] as List<dynamic>?)
          ?.map(
            (e) => $enumDecode(
              _$ConfigSourceEnumMap,
              e,
              unknownValue: ConfigSource.unknown,
            ),
          )
          .toList(),
      parameter: json['parameter'] as String,
      description: json['description'] as String?,
      dataType: $enumDecodeNullable(
        _$ConfigPayloadDataTypeEnumMap,
        json['dataType'],
        unknownValue: ConfigPayloadDataType.unknown,
      ),
      minValue: json['minValue'] as num?,
      maxValue: json['maxValue'] as num?,
      minLength: (json['minLength'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      regexPattern: const RegExpOrNullConverter().fromJson(
        json['regexPattern'] as String?,
      ),
      setupCapable: json['setupCapable'] as bool?,
    );

Map<String, dynamic> _$ConfigDefinitionToJson(
  _ConfigDefinition instance,
) => <String, dynamic>{
  'sources': instance.sources?.map((e) => e.toJson()).toList(),
  'parameter': instance.parameter,
  'description': instance.description,
  'dataType': instance.dataType?.toJson(),
  'minValue': instance.minValue,
  'maxValue': instance.maxValue,
  'minLength': instance.minLength,
  'maxLength': instance.maxLength,
  'choices': instance.choices,
  'regexPattern': const RegExpOrNullConverter().toJson(instance.regexPattern),
  'setupCapable': instance.setupCapable,
};

const _$ConfigSourceEnumMap = {
  ConfigSource.layrzLink: 'LAYRZ_LINK',
  ConfigSource.ble: 'BLE',
  ConfigSource.serial: 'SERIAL',
  ConfigSource.unknown: 'UNKNOWN',
};

const _$ConfigPayloadDataTypeEnumMap = {
  ConfigPayloadDataType.string: 'STRING',
  ConfigPayloadDataType.integer: 'INTEGER',
  ConfigPayloadDataType.float: 'FLOAT',
  ConfigPayloadDataType.boolean: 'BOOLEAN',
  ConfigPayloadDataType.choice: 'CHOICE',
  ConfigPayloadDataType.choiceIndex: 'CHOICE_INDEX',
  ConfigPayloadDataType.bluetoothPair: 'BLUETOOTH_PAIR',
  ConfigPayloadDataType.coordinates: 'COORDINATES',
  ConfigPayloadDataType.unknown: 'UNKNOWN',
};
