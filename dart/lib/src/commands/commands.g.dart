// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommandDefinition _$CommandDefinitionFromJson(Map<String, dynamic> json) =>
    _CommandDefinition(
      name: json['name'] as String,
      description: json['description'] as String?,
      sources: (json['sources'] as List<dynamic>)
          .map(
            (e) =>
                const CommandDefinitionSourceConverter().fromJson(e as String),
          )
          .toList(),
      payload: (json['payload'] as List<dynamic>)
          .map(
            (e) => CommandPayloadDefinition.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      translationKey: json['translationKey'] as String?,
    );

Map<String, dynamic> _$CommandDefinitionToJson(_CommandDefinition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'sources': instance.sources
          .map(const CommandDefinitionSourceConverter().toJson)
          .toList(),
      'payload': instance.payload.map((e) => e.toJson()).toList(),
      'translationKey': instance.translationKey,
    };

_CommandDefinitionInput _$CommandDefinitionInputFromJson(
  Map<String, dynamic> json,
) => _CommandDefinitionInput(
  name: json['name'] as String? ?? '',
  description: json['description'] as String? ?? '',
  sources:
      (json['sources'] as List<dynamic>?)
          ?.map(
            (e) =>
                const CommandDefinitionSourceConverter().fromJson(e as String),
          )
          .toList() ??
      const [],
  payload:
      (json['payload'] as List<dynamic>?)
          ?.map(
            (e) => CommandPayloadDefinitionInput.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$CommandDefinitionInputToJson(
  _CommandDefinitionInput instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'sources': instance.sources
      .map(const CommandDefinitionSourceConverter().toJson)
      .toList(),
  'payload': instance.payload.map((e) => e.toJson()).toList(),
};

_CommandPayloadDefinition _$CommandPayloadDefinitionFromJson(
  Map<String, dynamic> json,
) => _CommandPayloadDefinition(
  parameter: json['parameter'] as String,
  description: json['description'] as String?,
  dataType: const CommandPayloadDataTypeConverter().fromJson(
    json['dataType'] as String,
  ),
  isRequired: json['isRequired'] as bool?,
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
  nested: (json['nested'] as List<dynamic>?)
      ?.map((e) => CommandPayloadDefinition.fromJson(e as Map<String, dynamic>))
      .toList(),
  maxQuantity: (json['maxQuantity'] as num?)?.toInt(),
);

Map<String, dynamic> _$CommandPayloadDefinitionToJson(
  _CommandPayloadDefinition instance,
) => <String, dynamic>{
  'parameter': instance.parameter,
  'description': instance.description,
  'dataType': const CommandPayloadDataTypeConverter().toJson(instance.dataType),
  'isRequired': instance.isRequired,
  'minValue': instance.minValue,
  'maxValue': instance.maxValue,
  'minLength': instance.minLength,
  'maxLength': instance.maxLength,
  'choices': instance.choices,
  'regexPattern': const RegExpOrNullConverter().toJson(instance.regexPattern),
  'nested': instance.nested?.map((e) => e.toJson()).toList(),
  'maxQuantity': instance.maxQuantity,
};

_CommandPayloadDefinitionInput _$CommandPayloadDefinitionInputFromJson(
  Map<String, dynamic> json,
) => _CommandPayloadDefinitionInput(
  parameter: json['parameter'] as String? ?? '',
  description: json['description'] as String? ?? '',
  dataType: json['dataType'] == null
      ? CommandPayloadDataType.string
      : const CommandPayloadDataTypeConverter().fromJson(
          json['dataType'] as String,
        ),
  isRequired: json['isRequired'] as bool? ?? false,
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
  nested: (json['nested'] as List<dynamic>?)
      ?.map(
        (e) =>
            CommandPayloadDefinitionInput.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  maxQuantity: (json['maxQuantity'] as num?)?.toInt(),
);

Map<String, dynamic> _$CommandPayloadDefinitionInputToJson(
  _CommandPayloadDefinitionInput instance,
) => <String, dynamic>{
  'parameter': instance.parameter,
  'description': instance.description,
  'dataType': const CommandPayloadDataTypeConverter().toJson(instance.dataType),
  'isRequired': instance.isRequired,
  'minValue': instance.minValue,
  'maxValue': instance.maxValue,
  'minLength': instance.minLength,
  'maxLength': instance.maxLength,
  'choices': instance.choices,
  'regexPattern': const RegExpOrNullConverter().toJson(instance.regexPattern),
  'nested': instance.nested?.map((e) => e.toJson()).toList(),
  'maxQuantity': instance.maxQuantity,
};

const _$CommandDefinitionSourceEnumMap = {
  CommandDefinitionSource.flespi: 'FLESPI',
  CommandDefinitionSource.custom: 'CUSTOM',
  CommandDefinitionSource.layrzLink: 'LAYRZ_LINK',
  CommandDefinitionSource.ble: 'BLE',
  CommandDefinitionSource.serial: 'SERIAL',
  CommandDefinitionSource.psg: 'PSG',
};

const _$CommandPayloadDataTypeEnumMap = {
  CommandPayloadDataType.string: 'STRING',
  CommandPayloadDataType.integer: 'INTEGER',
  CommandPayloadDataType.float: 'FLOAT',
  CommandPayloadDataType.boolean: 'BOOLEAN',
  CommandPayloadDataType.choice: 'CHOICE',
  CommandPayloadDataType.choiceIndex: 'CHOICE_INDEX',
  CommandPayloadDataType.nested: 'NESTED',
  CommandPayloadDataType.list: 'LIST',
  CommandPayloadDataType.bluetoothPair: 'BLUETOOTH_PAIR',
};
