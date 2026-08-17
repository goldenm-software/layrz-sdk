// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MfaInput _$MfaInputFromJson(Map<String, dynamic> json) => _MfaInput(
  method: $enumDecodeNullable(_$MfaMethodEnumMap, json['method']),
  token: json['token'] as String?,
  isRequesting: json['isRequesting'] as bool? ?? false,
);

Map<String, dynamic> _$MfaInputToJson(_MfaInput instance) => <String, dynamic>{
  'method': instance.method?.toJson(),
  'token': instance.token,
  'isRequesting': instance.isRequesting,
};

const _$MfaMethodEnumMap = {
  MfaMethod.totp: 'TOTP',
  MfaMethod.hotp: 'HOTP',
  MfaMethod.passkey: 'PASSKEY',
  MfaMethod.backupCode: 'BACKUP_CODE',
};

_Passkey _$PasskeyFromJson(Map<String, dynamic> json) => _Passkey(
  id: json['id'] as String,
  appId: json['appId'] as String,
  platform: $enumDecode(_$AppPlatformEnumMap, json['platform']),
);

Map<String, dynamic> _$PasskeyToJson(_Passkey instance) => <String, dynamic>{
  'id': instance.id,
  'appId': instance.appId,
  'platform': instance.platform.toJson(),
};

const _$AppPlatformEnumMap = {
  AppPlatform.web: 'WEB',
  AppPlatform.windows: 'WINDOWS',
  AppPlatform.macos: 'MACOS',
  AppPlatform.ios: 'IOS',
  AppPlatform.android: 'ANDROID',
  AppPlatform.linux: 'LINUX',
  AppPlatform.layrzOS: 'LAYRZ_OS',
};
