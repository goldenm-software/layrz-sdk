// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FtpAccount _$FtpAccountFromJson(Map<String, dynamic> json) => _FtpAccount(
  host: json['host'] as String?,
  port: (json['port'] as num?)?.toInt(),
  username: json['username'] as String?,
  password: json['password'] as String?,
);

Map<String, dynamic> _$FtpAccountToJson(_FtpAccount instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
      'username': instance.username,
      'password': instance.password,
    };

_Algorithm _$AlgorithmFromJson(Map<String, dynamic> json) => _Algorithm(
  id: json['id'] as String,
  name: json['name'] as String,
  color: const ColorConverter().fromJson(json['color'] as String),
  icon: const IconOrNullConverter().fromJson(json['icon'] as String?),
  isEnabled: json['isEnabled'] as bool,
  categoriesIds:
      (json['categoriesIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  canBeInSensors: json['canBeInSensors'] as bool? ?? false,
  hasHttp: json['hasHttp'] as bool? ?? false,
  hasFtp: json['hasFtp'] as bool? ?? false,
  requiredFields:
      (json['requiredFields'] as List<dynamic>?)
          ?.map((e) => CredentialField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  usage: (json['usage'] as num?)?.toInt(),
);

Map<String, dynamic> _$AlgorithmToJson(_Algorithm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': const ColorConverter().toJson(instance.color),
      'icon': const IconOrNullConverter().toJson(instance.icon),
      'isEnabled': instance.isEnabled,
      'categoriesIds': instance.categoriesIds,
      'canBeInSensors': instance.canBeInSensors,
      'hasHttp': instance.hasHttp,
      'hasFtp': instance.hasFtp,
      'requiredFields': instance.requiredFields.map((e) => e.toJson()).toList(),
      'usage': instance.usage,
    };

_AlgorithmInput _$AlgorithmInputFromJson(Map<String, dynamic> json) =>
    _AlgorithmInput(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      color: json['color'] == null
          ? const Color(0xFF000000)
          : const ColorConverter().fromJson(json['color'] as String),
      icon: const IconOrNullConverter().fromJson(json['icon'] as String?),
      isEnabled: json['isEnabled'] as bool? ?? false,
      categoriesIds:
          (json['categoriesIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      canBeInSensors: json['canBeInSensors'] as bool? ?? false,
      hasHttp: json['hasHttp'] as bool? ?? false,
      hasFtp: json['hasFtp'] as bool? ?? false,
      requiredFields:
          (json['requiredFields'] as List<dynamic>?)
              ?.map((e) => CredentialField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AlgorithmInputToJson(_AlgorithmInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': const ColorConverter().toJson(instance.color),
      'icon': const IconOrNullConverter().toJson(instance.icon),
      'isEnabled': instance.isEnabled,
      'categoriesIds': instance.categoriesIds,
      'canBeInSensors': instance.canBeInSensors,
      'hasHttp': instance.hasHttp,
      'hasFtp': instance.hasFtp,
      'requiredFields': instance.requiredFields.map((e) => e.toJson()).toList(),
    };

_LayrzFunction _$LayrzFunctionFromJson(Map<String, dynamic> json) =>
    _LayrzFunction(
      id: json['id'] as String,
      name: json['name'] as String,
      algorithmId: json['algorithmId'] as String?,
      algorithm: json['algorithm'] == null
          ? null
          : Algorithm.fromJson(json['algorithm'] as Map<String, dynamic>),
      maximumTime: (json['maximumTime'] as num?)?.toDouble(),
      minutesDelta: (json['minutesDelta'] as num?)?.toDouble(),
      externalIdentifiers: (json['externalIdentifiers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      token: json['token'] as String?,
      credentials: json['credentials'] as Map<String, dynamic>?,
      ftp: json['ftp'] == null
          ? null
          : FtpAccount.fromJson(json['ftp'] as Map<String, dynamic>),
      groupsIds: (json['groupsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetsIds: (json['assetsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LayrzFunctionToJson(_LayrzFunction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'algorithmId': instance.algorithmId,
      'algorithm': instance.algorithm?.toJson(),
      'maximumTime': instance.maximumTime,
      'minutesDelta': instance.minutesDelta,
      'externalIdentifiers': instance.externalIdentifiers,
      'token': instance.token,
      'credentials': instance.credentials,
      'ftp': instance.ftp?.toJson(),
      'groupsIds': instance.groupsIds,
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'assetsIds': instance.assetsIds,
      'assets': instance.assets?.map((e) => e.toJson()).toList(),
      'access': instance.access?.map((e) => e.toJson()).toList(),
    };
