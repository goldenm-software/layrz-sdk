// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyGrowthItem _$DailyGrowthItemFromJson(Map<String, dynamic> json) =>
    _DailyGrowthItem(
      day: const DateConverter().fromJson(json['day'] as String),
      totalAssets: (json['totalAssets'] as num).toInt(),
      totalDevices: (json['totalDevices'] as num).toInt(),
      totalUsers: (json['totalUsers'] as num).toInt(),
    );

Map<String, dynamic> _$DailyGrowthItemToJson(_DailyGrowthItem instance) =>
    <String, dynamic>{
      'day': const DateConverter().toJson(instance.day),
      'totalAssets': instance.totalAssets,
      'totalDevices': instance.totalDevices,
      'totalUsers': instance.totalUsers,
    };

_GrowthItem _$GrowthItemFromJson(Map<String, dynamic> json) => _GrowthItem(
  month: const MonthConverter().fromJson(json['month'] as String),
  totalAssets: (json['totalAssets'] as num).toInt(),
  totalDevices: (json['totalDevices'] as num).toInt(),
  totalUsers: (json['totalUsers'] as num).toInt(),
  predicted: json['predicted'] as bool? ?? false,
);

Map<String, dynamic> _$GrowthItemToJson(_GrowthItem instance) =>
    <String, dynamic>{
      'month': const MonthConverter().toJson(instance.month),
      'totalAssets': instance.totalAssets,
      'totalDevices': instance.totalDevices,
      'totalUsers': instance.totalUsers,
      'predicted': instance.predicted,
    };

_GrowthSummary _$GrowthSummaryFromJson(Map<String, dynamic> json) =>
    _GrowthSummary(
      totalAssets: (json['totalAssets'] as num).toInt(),
      totalDevices: (json['totalDevices'] as num).toInt(),
      totalUsers: (json['totalUsers'] as num).toInt(),
      topAccounts: (json['topAccounts'] as List<dynamic>)
          .map((e) => TopAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      accumulatedGrowth: (json['accumulatedGrowth'] as List<dynamic>)
          .map((e) => GrowthItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GrowthSummaryToJson(_GrowthSummary instance) =>
    <String, dynamic>{
      'totalAssets': instance.totalAssets,
      'totalDevices': instance.totalDevices,
      'totalUsers': instance.totalUsers,
      'topAccounts': instance.topAccounts.map((e) => e.toJson()).toList(),
      'accumulatedGrowth': instance.accumulatedGrowth
          .map((e) => e.toJson())
          .toList(),
    };

_AccountGrowth _$AccountGrowthFromJson(Map<String, dynamic> json) =>
    _AccountGrowth(
      account: TopAccount.fromJson(json['account'] as Map<String, dynamic>),
      growth: (json['growth'] as List<dynamic>)
          .map((e) => GrowthItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccountGrowthToJson(_AccountGrowth instance) =>
    <String, dynamic>{
      'account': instance.account.toJson(),
      'growth': instance.growth.map((e) => e.toJson()).toList(),
    };

_TopAccount _$TopAccountFromJson(Map<String, dynamic> json) =>
    _TopAccount(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$TopAccountToJson(_TopAccount instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
