// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_shortcut.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LinkShortcut _$LinkShortcutFromJson(Map<String, dynamic> json) =>
    _LinkShortcut(
      id: json['id'] as String,
      code: json['code'] as String,
      redirectTo: json['redirectTo'] as String?,
      creator: json['creator'] == null
          ? null
          : Employee.fromJson(json['creator'] as Map<String, dynamic>),
      creatorId: json['creatorId'] as String?,
    );

Map<String, dynamic> _$LinkShortcutToJson(_LinkShortcut instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'redirectTo': instance.redirectTo,
      'creator': instance.creator?.toJson(),
      'creatorId': instance.creatorId,
    };

_LinkShortcutInput _$LinkShortcutInputFromJson(Map<String, dynamic> json) =>
    _LinkShortcutInput(
      id: json['id'] as String?,
      code: json['code'] as String? ?? '',
      redirectTo: json['redirectTo'] as String?,
    );

Map<String, dynamic> _$LinkShortcutInputToJson(_LinkShortcutInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'redirectTo': instance.redirectTo,
    };
