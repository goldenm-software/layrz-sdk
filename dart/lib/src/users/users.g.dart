// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordInput _$PasswordInputFromJson(Map<String, dynamic> json) =>
    _PasswordInput(
      currentPassword: json['currentPassword'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
      newPasswordConfirmation: json['newPasswordConfirmation'] as String? ?? '',
    );

Map<String, dynamic> _$PasswordInputToJson(_PasswordInput instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
      'newPasswordConfirmation': instance.newPasswordConfirmation,
    };

_ProfileInput _$ProfileInputFromJson(Map<String, dynamic> json) =>
    _ProfileInput(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      username: json['username'] as String? ?? '',
      dynamicAvatar: json['dynamicAvatar'] == null
          ? null
          : AvatarInput.fromJson(json['dynamicAvatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileInputToJson(_ProfileInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'dynamicAvatar': instance.dynamicAvatar?.toJson(),
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  token: json['token'] == null
      ? null
      : Token.fromJson(json['token'] as Map<String, dynamic>),
  parentId: json['parentId'] as String?,
  email: json['email'] as String?,
  username: json['username'] as String?,
  dynamicAvatar: json['dynamicAvatar'] == null
      ? null
      : Avatar.fromJson(json['dynamicAvatar'] as Map<String, dynamic>),
  referencesIds: (json['referencesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  references: (json['references'] as List<dynamic>?)
      ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
      .toList(),
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  categoryId: json['categoryId'] as String?,
  mqttToken: json['mqttToken'] as String?,
  mqttConfig: json['mqttConfig'] == null
      ? null
      : RealtimeMqttConfig.fromJson(json['mqttConfig'] as Map<String, dynamic>),
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['customFields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  platformAuth: json['platformAuth'] as String? ?? "",
  childs:
      (json['childs'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tagsIds: (json['tagsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  planId: json['planId'] as String?,
  allowedApps: (json['allowedApps'] as List<dynamic>?)
      ?.map((e) => RegisteredApp.fromJson(e as Map<String, dynamic>))
      .toList(),
  mappitAssetsIds: (json['mappitAssetsIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mappitSecondaryRoutesIds: (json['mappitSecondaryRoutesIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mappitAssets: (json['mappitAssets'] as List<dynamic>?)
      ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
      .toList(),
  historicalDaysAllowed: (json['historicalDaysAllowed'] as num?)?.toInt(),
  mappitExternalAccountId: json['mappitExternalAccountId'] as String?,
  mappitExternalAccount: json['mappitExternalAccount'] == null
      ? null
      : ExternalAccount.fromJson(
          json['mappitExternalAccount'] as Map<String, dynamic>,
        ),
  mfaEnabled: json['mfaEnabled'] as bool? ?? false,
  mfaMethods:
      (json['mfaMethods'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaMethodEnumMap, e))
          .toList() ??
      const [],
  tenvioAddress: json['tenvioAddress'] as String?,
  tenvioPhone: json['tenvioPhone'] as String?,
  tenvioLatitude: (json['tenvioLatitude'] as num?)?.toDouble(),
  tenvioLongitude: (json['tenvioLongitude'] as num?)?.toDouble(),
  tenvioAddressIsPlusCode: json['tenvioAddressIsPlusCode'] as bool?,
  suspendedAt: const TimestampOrNullConverter().fromJson(
    json['suspendedAt'] as num?,
  ),
  hwModelsAnimationsIds:
      (json['hwModelsAnimationsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  brickhousePermissionTier: json['brickhousePermissionTier'] == null
      ? null
      : BHSPermissionTier.fromJson(
          json['brickhousePermissionTier'] as Map<String, dynamic>,
        ),
  brickhousePermissionTierId: json['brickhousePermissionTierId'] as String?,
  brickhouseRole: $enumDecodeNullable(
    _$BrickhouseUserRoleEnumMap,
    json['brickhouseRole'],
    unknownValue: BrickhouseUserRole.unknown,
  ),
  sdmCode: json['sdmCode'] as String?,
  isLocked: json['isLocked'] as bool? ?? false,
  isSuspended: json['isSuspended'] as bool? ?? false,
  hasPaymentWarning: json['hasPaymentWarning'] as bool? ?? false,
  billingPlan: json['billingPlan'] == null
      ? null
      : BillingPlan.fromJson(json['billingPlan'] as Map<String, dynamic>),
  isPasswordExpired: json['isPasswordExpired'] as bool?,
  preferences: json['preferences'] == null
      ? null
      : UserPreferences.fromJson(json['preferences'] as Map<String, dynamic>),
  passkeys:
      (json['passkeys'] as List<dynamic>?)
          ?.map((e) => Passkey.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasGpsInsurance: json['hasGpsInsurance'] as bool?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'token': instance.token?.toJson(),
  'parentId': instance.parentId,
  'email': instance.email,
  'username': instance.username,
  'dynamicAvatar': instance.dynamicAvatar?.toJson(),
  'referencesIds': instance.referencesIds,
  'references': instance.references?.map((e) => e.toJson()).toList(),
  'category': instance.category?.toJson(),
  'categoryId': instance.categoryId,
  'mqttToken': instance.mqttToken,
  'mqttConfig': instance.mqttConfig?.toJson(),
  'access': instance.access?.map((e) => e.toJson()).toList(),
  'customFields': instance.customFields?.map((e) => e.toJson()).toList(),
  'platformAuth': instance.platformAuth,
  'childs': instance.childs.map((e) => e.toJson()).toList(),
  'tagsIds': instance.tagsIds,
  'tags': instance.tags?.map((e) => e.toJson()).toList(),
  'planId': instance.planId,
  'allowedApps': instance.allowedApps?.map((e) => e.toJson()).toList(),
  'mappitAssetsIds': instance.mappitAssetsIds,
  'mappitSecondaryRoutesIds': instance.mappitSecondaryRoutesIds,
  'mappitAssets': instance.mappitAssets?.map((e) => e.toJson()).toList(),
  'historicalDaysAllowed': instance.historicalDaysAllowed,
  'mappitExternalAccountId': instance.mappitExternalAccountId,
  'mappitExternalAccount': instance.mappitExternalAccount?.toJson(),
  'mfaEnabled': instance.mfaEnabled,
  'mfaMethods': instance.mfaMethods.map((e) => e.toJson()).toList(),
  'tenvioAddress': instance.tenvioAddress,
  'tenvioPhone': instance.tenvioPhone,
  'tenvioLatitude': instance.tenvioLatitude,
  'tenvioLongitude': instance.tenvioLongitude,
  'tenvioAddressIsPlusCode': instance.tenvioAddressIsPlusCode,
  'suspendedAt': const TimestampOrNullConverter().toJson(instance.suspendedAt),
  'hwModelsAnimationsIds': instance.hwModelsAnimationsIds,
  'brickhousePermissionTier': instance.brickhousePermissionTier?.toJson(),
  'brickhousePermissionTierId': instance.brickhousePermissionTierId,
  'brickhouseRole': instance.brickhouseRole?.toJson(),
  'sdmCode': instance.sdmCode,
  'isLocked': instance.isLocked,
  'isSuspended': instance.isSuspended,
  'hasPaymentWarning': instance.hasPaymentWarning,
  'billingPlan': instance.billingPlan?.toJson(),
  'isPasswordExpired': instance.isPasswordExpired,
  'preferences': instance.preferences?.toJson(),
  'passkeys': instance.passkeys.map((e) => e.toJson()).toList(),
  'hasGpsInsurance': instance.hasGpsInsurance,
};

const _$MfaMethodEnumMap = {
  MfaMethod.totp: 'TOTP',
  MfaMethod.hotp: 'HOTP',
  MfaMethod.passkey: 'PASSKEY',
  MfaMethod.backupCode: 'BACKUP_CODE',
};

const _$BrickhouseUserRoleEnumMap = {
  BrickhouseUserRole.owner: 'OWNER',
  BrickhouseUserRole.manager: 'MANAGER',
  BrickhouseUserRole.viewer: 'VIEWER',
  BrickhouseUserRole.unknown: 'UNKNOWN',
};

_UserInput _$UserInputFromJson(Map<String, dynamic> json) => _UserInput(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  email: json['email'] as String? ?? '',
  username: json['username'] as String? ?? '',
  dynamicAvatar: json['dynamicAvatar'] == null
      ? null
      : AvatarInput.fromJson(json['dynamicAvatar'] as Map<String, dynamic>),
  referencesIds:
      (json['referencesIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  categoryId: json['categoryId'] as String?,
  customFields:
      (json['customFields'] as List<dynamic>?)
          ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tagsIds:
      (json['tagsIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  mappitAssetsIds:
      (json['mappitAssetsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  historicalDaysAllowed: (json['historicalDaysAllowed'] as num?)?.toInt() ?? 1,
  brickhousePermissionTierId: json['brickhousePermissionTierId'] as String?,
  brickhouseRole: $enumDecodeNullable(
    _$BrickhouseUserRoleEnumMap,
    json['brickhouseRole'],
    unknownValue: BrickhouseUserRole.unknown,
  ),
  sdmCode: json['sdmCode'] as String?,
  password: json['password'] as String?,
  preferences: json['preferences'] == null
      ? null
      : UserPreferencesInput.fromJson(
          json['preferences'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserInputToJson(_UserInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'dynamicAvatar': instance.dynamicAvatar?.toJson(),
      'referencesIds': instance.referencesIds,
      'categoryId': instance.categoryId,
      'customFields': instance.customFields.map((e) => e.toJson()).toList(),
      'tagsIds': instance.tagsIds,
      'mappitAssetsIds': instance.mappitAssetsIds,
      'historicalDaysAllowed': instance.historicalDaysAllowed,
      'brickhousePermissionTierId': instance.brickhousePermissionTierId,
      'brickhouseRole': instance.brickhouseRole?.toJson(),
      'sdmCode': instance.sdmCode,
      'password': instance.password,
      'preferences': instance.preferences?.toJson(),
    };
