// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebhookStructure _$WebhookStructureFromJson(Map<String, dynamic> json) =>
    _WebhookStructure(
      baseUrl: json['baseUrl'] as String,
      paths:
          (json['paths'] as List<dynamic>?)
              ?.map((e) => WebhookPath.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      method: json['method'] == null
          ? WebhookMethod.post
          : const WebhookMethodConverter().fromJson(json['method'] as String),
      contentType: json['contentType'] == null
          ? WebhookFormat.json
          : const WebhookFormatConverter().fromJson(
              json['contentType'] as String,
            ),
      headers:
          (json['headers'] as List<dynamic>?)
              ?.map((e) => WebhookHeader.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WebhookStructureToJson(
  _WebhookStructure instance,
) => <String, dynamic>{
  'baseUrl': instance.baseUrl,
  'paths': instance.paths.map((e) => e.toJson()).toList(),
  'method': const WebhookMethodConverter().toJson(instance.method),
  'contentType': const WebhookFormatConverter().toJson(instance.contentType),
  'headers': instance.headers.map((e) => e.toJson()).toList(),
};

_WebhookPath _$WebhookPathFromJson(Map<String, dynamic> json) =>
    _WebhookPath(path: json['path'] as String, name: json['name'] as String);

Map<String, dynamic> _$WebhookPathToJson(_WebhookPath instance) =>
    <String, dynamic>{'path': instance.path, 'name': instance.name};

_WebhookHeader _$WebhookHeaderFromJson(Map<String, dynamic> json) =>
    _WebhookHeader(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$WebhookHeaderToJson(_WebhookHeader instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};
