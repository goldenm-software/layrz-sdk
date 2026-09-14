// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brickhouse_permission_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BHSPermissionTier _$BHSPermissionTierFromJson(Map<String, dynamic> json) =>
    _BHSPermissionTier(
      id: json['id'] as String,
      name: json['name'] as String,
      tierLevel: (json['tierLevel'] as num).toInt(),
      billingPeriod: $enumDecodeNullable(
        _$BrickhouseBillingPeriodEnumMap,
        json['billingPeriod'],
      ),
      description: json['description'] as String?,
      customProperties: json['customProperties'] as Map<String, dynamic>?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BHSPermissionTierToJson(_BHSPermissionTier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tierLevel': instance.tierLevel,
      'billingPeriod': instance.billingPeriod?.toJson(),
      'description': instance.description,
      'customProperties': instance.customProperties,
      'users': instance.users?.map((e) => e.toJson()).toList(),
      'access': instance.access?.map((e) => e.toJson()).toList(),
    };

const _$BrickhouseBillingPeriodEnumMap = {
  BrickhouseBillingPeriod.monthly: 'MONTHLY',
  BrickhouseBillingPeriod.quarterly: 'QUARTERLY',
  BrickhouseBillingPeriod.yearly: 'YEARLY',
  BrickhouseBillingPeriod.twoYearly: 'TWO_YEARLY',
  BrickhouseBillingPeriod.unknown: 'UNKNOWN',
};

_BHSPermissionTierInput _$BHSPermissionTierInputFromJson(
  Map<String, dynamic> json,
) => _BHSPermissionTierInput(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  billingPeriod: $enumDecodeNullable(
    _$BrickhouseBillingPeriodEnumMap,
    json['billingPeriod'],
  ),
  tierLevel: (json['tierLevel'] as num?)?.toInt() ?? 1,
  customProperties: json['customProperties'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BHSPermissionTierInputToJson(
  _BHSPermissionTierInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'billingPeriod': instance.billingPeriod?.toJson(),
  'tierLevel': instance.tierLevel,
  'customProperties': instance.customProperties,
};
