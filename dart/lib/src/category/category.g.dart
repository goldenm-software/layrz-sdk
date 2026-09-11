// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String,
  name: json['name'] as String,
  kind: $enumDecode(_$CategoryKindEnumMap, json['kind']),
  assetKind: $enumDecodeNullable(_$AssetKindEnumMap, json['assetKind']),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': instance.kind.toJson(),
  'assetKind': instance.assetKind?.toJson(),
};

const _$CategoryKindEnumMap = {
  CategoryKind.asset: 'ASSET',
  CategoryKind.app: 'APP',
  CategoryKind.user: 'USER',
  CategoryKind.service: 'SERVICE',
  CategoryKind.function: 'FUNCTION',
  CategoryKind.device: 'DEVICE',
  CategoryKind.universal: 'UNIVERSAL',
};

const _$AssetKindEnumMap = {
  AssetKind.connected: 'CONNECTED',
  AssetKind.disconnected: 'DISCONNECTED',
};

_CategoryInput _$CategoryInputFromJson(Map<String, dynamic> json) =>
    _CategoryInput(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      kind:
          $enumDecodeNullable(_$CategoryKindEnumMap, json['kind']) ??
          CategoryKind.asset,
      assetKind: $enumDecodeNullable(_$AssetKindEnumMap, json['assetKind']),
    );

Map<String, dynamic> _$CategoryInputToJson(_CategoryInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kind': instance.kind.toJson(),
      'assetKind': instance.assetKind?.toJson(),
    };
