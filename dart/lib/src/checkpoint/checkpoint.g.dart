// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Waypoint _$WaypointFromJson(Map<String, dynamic> json) => _Waypoint(
  id: json['id'] as String,
  geofenceId: json['geofenceId'] as String?,
  geofence: json['geofence'] == null
      ? null
      : Geofence.fromJson(json['geofence'] as Map<String, dynamic>),
  time: json['time'] as String?,
  kind: const WaypointKindOrNullConverter().fromJson(json['kind'] as String?),
);

Map<String, dynamic> _$WaypointToJson(_Waypoint instance) => <String, dynamic>{
  'id': instance.id,
  'geofenceId': instance.geofenceId,
  'geofence': instance.geofence?.toJson(),
  'time': instance.time,
  'kind': const WaypointKindOrNullConverter().toJson(instance.kind),
};

_LinkedAssetToCheckpointId _$LinkedAssetToCheckpointIdFromJson(
  Map<String, dynamic> json,
) => _LinkedAssetToCheckpointId(
  itemId: json['itemId'] as String,
  entity: const LinkedAssetEntityConverter().fromJson(json['entity'] as String),
);

Map<String, dynamic> _$LinkedAssetToCheckpointIdToJson(
  _LinkedAssetToCheckpointId instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'entity': const LinkedAssetEntityConverter().toJson(instance.entity),
};

_Checkpoint _$CheckpointFromJson(Map<String, dynamic> json) => _Checkpoint(
  id: json['id'] as String,
  name: json['name'] as String,
  assetId: json['assetId'] as String?,
  waypoints: (json['waypoints'] as List<dynamic>?)
      ?.map((e) => Waypoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  isActive: json['isActive'] as bool?,
  access: (json['access'] as List<dynamic>?)
      ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
      .toList(),
  linkedAssetsIds: (json['linkedAssetsIds'] as List<dynamic>?)
      ?.map(
        (e) => LinkedAssetToCheckpointId.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$CheckpointToJson(
  _Checkpoint instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'assetId': instance.assetId,
  'waypoints': instance.waypoints?.map((e) => e.toJson()).toList(),
  'isActive': instance.isActive,
  'access': instance.access?.map((e) => e.toJson()).toList(),
  'linkedAssetsIds': instance.linkedAssetsIds?.map((e) => e.toJson()).toList(),
};

_CheckpointInput _$CheckpointInputFromJson(Map<String, dynamic> json) =>
    _CheckpointInput(
      id: json['id'] as String?,
      name: json['name'] as String?,
      assetId: json['assetId'] as String?,
      waypointsJson:
          (json['waypointsJson'] as List<dynamic>?)
              ?.map((e) => Waypoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      linkedAssetsIds:
          (json['linkedAssetsIds'] as List<dynamic>?)
              ?.map(
                (e) => LinkedAssetToCheckpointId.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CheckpointInputToJson(
  _CheckpointInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'assetId': instance.assetId,
  'waypointsJson': instance.waypointsJson?.map((e) => e.toJson()).toList(),
  'linkedAssetsIds': instance.linkedAssetsIds?.map((e) => e.toJson()).toList(),
};
