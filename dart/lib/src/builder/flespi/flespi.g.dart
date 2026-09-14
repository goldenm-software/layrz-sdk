// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flespi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlespiAcl _$FlespiAclFromJson(Map<String, dynamic> json) => _FlespiAcl(
  uri: const FlespiUriConverter().fromJson(json['uri'] as String),
  topic: json['topic'] as String?,
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => const FlespiActionConverter().fromJson(e as String))
      .toList(),
  methods: (json['methods'] as List<dynamic>?)
      ?.map((e) => const FlespiMethodConverter().fromJson(e as String))
      .toList(),
  ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  submodules: (json['submodules'] as List<dynamic>?)
      ?.map((e) => FlespiSubmoduleConfig.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FlespiAclToJson(_FlespiAcl instance) =>
    <String, dynamic>{
      'uri': const FlespiUriConverter().toJson(instance.uri),
      'topic': instance.topic,
      'actions': instance.actions
          ?.map(const FlespiActionConverter().toJson)
          .toList(),
      'methods': instance.methods
          ?.map(const FlespiMethodConverter().toJson)
          .toList(),
      'ids': instance.ids,
      'submodules': instance.submodules?.map((e) => e.toJson()).toList(),
    };

_FlespiSubmoduleConfig _$FlespiSubmoduleConfigFromJson(
  Map<String, dynamic> json,
) => _FlespiSubmoduleConfig(
  name: const FlespiSubmoduleConverter().fromJson(json['name'] as String),
  methods:
      (json['methods'] as List<dynamic>?)
          ?.map((e) => const FlespiMethodConverter().fromJson(e as String))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FlespiSubmoduleConfigToJson(
  _FlespiSubmoduleConfig instance,
) => <String, dynamic>{
  'name': const FlespiSubmoduleConverter().toJson(instance.name),
  'methods': instance.methods
      .map(const FlespiMethodConverter().toJson)
      .toList(),
};
