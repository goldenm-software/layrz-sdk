// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AtsExit _$AtsExitFromJson(Map<String, dynamic> json) => _AtsExit(
  id: json['id'] as String?,
  identifier: (json['identifier'] as num?)?.toInt(),
  fromAssetId: json['fromAssetId'] as String?,
  fromAsset: json['fromAsset'] == null
      ? null
      : Asset.fromJson(json['fromAsset'] as Map<String, dynamic>),
  toAssetId: json['toAssetId'] as String?,
  toAsset: json['toAsset'] == null
      ? null
      : Asset.fromJson(json['toAsset'] as Map<String, dynamic>),
  errorPercent: (json['errorPercent'] as num?)?.toDouble(),
  totalLiters: (json['totalLiters'] as num?)?.toDouble(),
  toAssetMileage: (json['toAssetMileage'] as num?)?.toDouble(),
  startAt: const TimestampOrNullConverter().fromJson(json['startAt'] as num?),
  endAt: const TimestampOrNullConverter().fromJson(json['endAt'] as num?),
  totalTime: json['totalTime'] as String?,
  totalTimeDuration: const DurationOrNullConverter().fromJson(
    json['totalTimeDuration'] as num?,
  ),
  initialFluxometer: (json['initialFluxometer'] as num?)?.toDouble(),
  finalFluxometer: (json['finalFluxometer'] as num?)?.toDouble(),
  initialTankVolume: (json['initialTankVolume'] as num?)?.toDouble(),
  finalTankVolume: (json['finalTankVolume'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
  attendantName: json['attendantName'] as String?,
  attendantId: json['attendantId'] as String?,
);

Map<String, dynamic> _$AtsExitToJson(_AtsExit instance) => <String, dynamic>{
  'id': instance.id,
  'identifier': instance.identifier,
  'fromAssetId': instance.fromAssetId,
  'fromAsset': instance.fromAsset?.toJson(),
  'toAssetId': instance.toAssetId,
  'toAsset': instance.toAsset?.toJson(),
  'errorPercent': instance.errorPercent,
  'totalLiters': instance.totalLiters,
  'toAssetMileage': instance.toAssetMileage,
  'startAt': const TimestampOrNullConverter().toJson(instance.startAt),
  'endAt': const TimestampOrNullConverter().toJson(instance.endAt),
  'totalTime': instance.totalTime,
  'totalTimeDuration': const DurationOrNullConverter().toJson(
    instance.totalTimeDuration,
  ),
  'initialFluxometer': instance.initialFluxometer,
  'finalFluxometer': instance.finalFluxometer,
  'initialTankVolume': instance.initialTankVolume,
  'finalTankVolume': instance.finalTankVolume,
  'price': instance.price,
  'attendantName': instance.attendantName,
  'attendantId': instance.attendantId,
};

_AtsAuthenticationCard _$AtsAuthenticationCardFromJson(
  Map<String, dynamic> json,
) => _AtsAuthenticationCard(
  id: json['id'] as String,
  number: (json['number'] as num).toInt(),
  externalIdentifier: (json['externalIdentifier'] as num).toInt(),
  externalIdentifierHex: json['externalIdentifierHex'] as String,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  isSuspended: json['isSuspended'] as bool?,
  typeId: const AtsSelectCardConverter().fromJson(json['typeId'] as String),
  history: (json['history'] as List<dynamic>?)
      ?.map(
        (e) => AtsHistoryAuthenticationCard.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  createdAt: const TimestampOrNullConverter().fromJson(
    json['createdAt'] as num?,
  ),
);

Map<String, dynamic> _$AtsAuthenticationCardToJson(
  _AtsAuthenticationCard instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'externalIdentifier': instance.externalIdentifier,
  'externalIdentifierHex': instance.externalIdentifierHex,
  'asset': instance.asset?.toJson(),
  'owner': instance.owner?.toJson(),
  'isSuspended': instance.isSuspended,
  'typeId': const AtsSelectCardConverter().toJson(instance.typeId),
  'history': instance.history?.map((e) => e.toJson()).toList(),
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
};

_AtsHistoryAuthenticationCard _$AtsHistoryAuthenticationCardFromJson(
  Map<String, dynamic> json,
) => _AtsHistoryAuthenticationCard(
  id: json['id'] as String,
  operation: const AtsHistoryAuthenticationCardOperationConverter().fromJson(
    json['operation'] as String,
  ),
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  createdBy: User.fromJson(json['createdBy'] as Map<String, dynamic>),
  createdAt: const TimestampConverter().fromJson(json['createdAt'] as num),
);

Map<String, dynamic> _$AtsHistoryAuthenticationCardToJson(
  _AtsHistoryAuthenticationCard instance,
) => <String, dynamic>{
  'id': instance.id,
  'operation': const AtsHistoryAuthenticationCardOperationConverter().toJson(
    instance.operation,
  ),
  'asset': instance.asset?.toJson(),
  'owner': instance.owner?.toJson(),
  'createdBy': instance.createdBy.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};

const _$AtsStreamModelEnumMap = {AtsStreamModel.exit: 'EXIT'};
