// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_launcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneratorTemplateInput _$GeneratorTemplateInputFromJson(
  Map<String, dynamic> json,
) => _GeneratorTemplateInput(
  name: json['name'] as String? ?? '',
  email: json['email'] as String? ?? '',
  username: json['username'] as String? ?? '',
  cycle1: json['cycle1'] as String?,
  cycle2: json['cycle2'] as String?,
  cycle3: json['cycle3'] as String?,
  languageId: json['languageId'] as String? ?? '2',
  isNewUser: json['isNewUser'] as bool? ?? true,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$GeneratorTemplateInputToJson(
  _GeneratorTemplateInput instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'username': instance.username,
  'cycle1': instance.cycle1,
  'cycle2': instance.cycle2,
  'cycle3': instance.cycle3,
  'languageId': instance.languageId,
  'isNewUser': instance.isNewUser,
  'userId': instance.userId,
};

_BusTemplateInput _$BusTemplateInputFromJson(Map<String, dynamic> json) =>
    _BusTemplateInput(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      username: json['username'] as String? ?? '',
      languageId: json['languageId'] as String? ?? '2',
      isNewUser: json['isNewUser'] as bool? ?? true,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$BusTemplateInputToJson(_BusTemplateInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'languageId': instance.languageId,
      'isNewUser': instance.isNewUser,
      'userId': instance.userId,
    };
