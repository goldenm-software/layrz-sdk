// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExternalAccount _$ExternalAccountFromJson(Map<String, dynamic> json) =>
    _ExternalAccount(
      id: json['id'] as String,
      name: json['name'] as String,
      credentials: json['credentials'] as Map<String, dynamic>?,
      source: json['source'] == null
          ? null
          : ExternalSource.fromJson(json['source'] as Map<String, dynamic>),
      sourceId: json['sourceId'] as String?,
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
      ownerId: json['ownerId'] as String?,
      sourceName: json['sourceName'] as String?,
    );

Map<String, dynamic> _$ExternalAccountToJson(_ExternalAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'credentials': instance.credentials,
      'source': instance.source?.toJson(),
      'sourceId': instance.sourceId,
      'access': instance.access?.map((e) => e.toJson()).toList(),
      'devices': instance.devices?.map((e) => e.toJson()).toList(),
      'ownerId': instance.ownerId,
      'sourceName': instance.sourceName,
    };

_ExternalAccountInput _$ExternalAccountInputFromJson(
  Map<String, dynamic> json,
) => _ExternalAccountInput(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  credentials: json['credentials'] as Map<String, dynamic>? ?? const {},
  sourceId: json['sourceId'] as String?,
);

Map<String, dynamic> _$ExternalAccountInputToJson(
  _ExternalAccountInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'credentials': instance.credentials,
  'sourceId': instance.sourceId,
};

_ExternalSource _$ExternalSourceFromJson(Map<String, dynamic> json) =>
    _ExternalSource(
      id: json['id'] as String,
      name: json['name'] as String,
      color: const ColorConverter().fromJson(json['color'] as String),
      isEnabled: json['isEnabled'] as bool,
      requiredFields:
          (json['requiredFields'] as List<dynamic>?)
              ?.map((e) => CredentialField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ExternalSourceToJson(_ExternalSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': const ColorConverter().toJson(instance.color),
      'isEnabled': instance.isEnabled,
      'requiredFields': instance.requiredFields.map((e) => e.toJson()).toList(),
    };

_WialonAccount _$WialonAccountFromJson(Map<String, dynamic> json) =>
    _WialonAccount(
      wialonId: json['wialonId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$WialonAccountToJson(_WialonAccount instance) =>
    <String, dynamic>{'wialonId': instance.wialonId, 'name': instance.name};

_WialonAccountsInput _$WialonAccountsInputFromJson(Map<String, dynamic> json) =>
    _WialonAccountsInput(
      externalAccountId: json['externalAccountId'] as String,
      wialonIds:
          (json['wialonIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WialonAccountsInputToJson(
  _WialonAccountsInput instance,
) => <String, dynamic>{
  'externalAccountId': instance.externalAccountId,
  'wialonIds': instance.wialonIds,
};
