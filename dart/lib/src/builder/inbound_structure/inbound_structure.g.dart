// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbound_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InboundStructure _$InboundStructureFromJson(Map<String, dynamic> json) =>
    _InboundStructure(
      hasPosition: json['hasPosition'] as bool,
      position: json['position'] == null
          ? null
          : InboundPositionStructure.fromJson(
              json['position'] as Map<String, dynamic>,
            ),
      hasPayload: json['hasPayload'] as bool,
      payload: (json['payload'] as List<dynamic>)
          .map(
            (e) => InboundPayloadStructure.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$InboundStructureToJson(_InboundStructure instance) =>
    <String, dynamic>{
      'hasPosition': instance.hasPosition,
      'position': instance.position?.toJson(),
      'hasPayload': instance.hasPayload,
      'payload': instance.payload.map((e) => e.toJson()).toList(),
    };

_InboundStructureInput _$InboundStructureInputFromJson(
  Map<String, dynamic> json,
) => _InboundStructureInput(
  hasPosition: json['hasPosition'] as bool? ?? true,
  position: json['position'] == null
      ? null
      : InboundPositionStructureInput.fromJson(
          json['position'] as Map<String, dynamic>,
        ),
  hasPayload: json['hasPayload'] as bool? ?? false,
  payload:
      (json['payload'] as List<dynamic>?)
          ?.map(
            (e) => InboundPayloadStructureInput.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$InboundStructureInputToJson(
  _InboundStructureInput instance,
) => <String, dynamic>{
  'hasPosition': instance.hasPosition,
  'position': instance.position?.toJson(),
  'hasPayload': instance.hasPayload,
  'payload': instance.payload.map((e) => e.toJson()).toList(),
};

_InboundPositionStructure _$InboundPositionStructureFromJson(
  Map<String, dynamic> json,
) => _InboundPositionStructure(
  latitude: json['latitude'] as bool,
  longitude: json['longitude'] as bool,
  altitude: json['altitude'] as bool,
  speed: json['speed'] as bool,
  direction: json['direction'] as bool,
  hdop: json['hdop'] as bool,
  satellites: json['satellites'] as bool,
);

Map<String, dynamic> _$InboundPositionStructureToJson(
  _InboundPositionStructure instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'altitude': instance.altitude,
  'speed': instance.speed,
  'direction': instance.direction,
  'hdop': instance.hdop,
  'satellites': instance.satellites,
};

_InboundPositionStructureInput _$InboundPositionStructureInputFromJson(
  Map<String, dynamic> json,
) => _InboundPositionStructureInput(
  latitude: json['latitude'] as bool? ?? true,
  longitude: json['longitude'] as bool? ?? true,
  speed: json['speed'] as bool? ?? true,
  direction: json['direction'] as bool? ?? true,
  altitude: json['altitude'] as bool? ?? true,
  satellites: json['satellites'] as bool? ?? true,
  hdop: json['hdop'] as bool? ?? true,
);

Map<String, dynamic> _$InboundPositionStructureInputToJson(
  _InboundPositionStructureInput instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'speed': instance.speed,
  'direction': instance.direction,
  'altitude': instance.altitude,
  'satellites': instance.satellites,
  'hdop': instance.hdop,
};

_InboundPayloadStructure _$InboundPayloadStructureFromJson(
  Map<String, dynamic> json,
) => _InboundPayloadStructure(
  field: json['field'] as String,
  type: const InboundPayloadStructureTypeConverter().fromJson(
    json['type'] as String,
  ),
);

Map<String, dynamic> _$InboundPayloadStructureToJson(
  _InboundPayloadStructure instance,
) => <String, dynamic>{
  'field': instance.field,
  'type': const InboundPayloadStructureTypeConverter().toJson(instance.type),
};

_InboundPayloadStructureInput _$InboundPayloadStructureInputFromJson(
  Map<String, dynamic> json,
) => _InboundPayloadStructureInput(
  field: json['field'] as String? ?? '',
  type: json['type'] == null
      ? InboundPayloadStructureType.string
      : const InboundPayloadStructureTypeConverter().fromJson(
          json['type'] as String,
        ),
);

Map<String, dynamic> _$InboundPayloadStructureInputToJson(
  _InboundPayloadStructureInput instance,
) => <String, dynamic>{
  'field': instance.field,
  'type': const InboundPayloadStructureTypeConverter().toJson(instance.type),
};
