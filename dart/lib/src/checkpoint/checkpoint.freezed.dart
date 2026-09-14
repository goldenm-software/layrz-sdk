// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Waypoint {

/// ID of the waypoint entity. This ID is unique.
 String get id;/// Geofence ID associated to the route as checkpoint, or null if not set.
 String? get geofenceId;/// Geofence associated to the route as checkpoint, or null if not set.
 Geofence? get geofence;/// This is the time between two waypoints or the time inside of the geofence.
 String? get time;/// It can be [WaypointKind.point] or [WaypointKind.pathway]. See [WaypointKind] for more
/// information.
@WaypointKindOrNullConverter() WaypointKind? get kind;
/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaypointCopyWith<Waypoint> get copyWith => _$WaypointCopyWithImpl<Waypoint>(this as Waypoint, _$identity);

  /// Serializes this Waypoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Waypoint&&(identical(other.id, id) || other.id == id)&&(identical(other.geofenceId, geofenceId) || other.geofenceId == geofenceId)&&(identical(other.geofence, geofence) || other.geofence == geofence)&&(identical(other.time, time) || other.time == time)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,geofenceId,geofence,time,kind);

@override
String toString() {
  return 'Waypoint(id: $id, geofenceId: $geofenceId, geofence: $geofence, time: $time, kind: $kind)';
}


}

/// @nodoc
abstract mixin class $WaypointCopyWith<$Res>  {
  factory $WaypointCopyWith(Waypoint value, $Res Function(Waypoint) _then) = _$WaypointCopyWithImpl;
@useResult
$Res call({
 String id, String? geofenceId, Geofence? geofence, String? time,@WaypointKindOrNullConverter() WaypointKind? kind
});


$GeofenceCopyWith<$Res>? get geofence;

}
/// @nodoc
class _$WaypointCopyWithImpl<$Res>
    implements $WaypointCopyWith<$Res> {
  _$WaypointCopyWithImpl(this._self, this._then);

  final Waypoint _self;
  final $Res Function(Waypoint) _then;

/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? geofenceId = freezed,Object? geofence = freezed,Object? time = freezed,Object? kind = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,geofenceId: freezed == geofenceId ? _self.geofenceId : geofenceId // ignore: cast_nullable_to_non_nullable
as String?,geofence: freezed == geofence ? _self.geofence : geofence // ignore: cast_nullable_to_non_nullable
as Geofence?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WaypointKind?,
  ));
}
/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeofenceCopyWith<$Res>? get geofence {
    if (_self.geofence == null) {
    return null;
  }

  return $GeofenceCopyWith<$Res>(_self.geofence!, (value) {
    return _then(_self.copyWith(geofence: value));
  });
}
}


/// Adds pattern-matching-related methods to [Waypoint].
extension WaypointPatterns on Waypoint {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Waypoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Waypoint() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Waypoint value)  $default,){
final _that = this;
switch (_that) {
case _Waypoint():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Waypoint value)?  $default,){
final _that = this;
switch (_that) {
case _Waypoint() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? geofenceId,  Geofence? geofence,  String? time, @WaypointKindOrNullConverter()  WaypointKind? kind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Waypoint() when $default != null:
return $default(_that.id,_that.geofenceId,_that.geofence,_that.time,_that.kind);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? geofenceId,  Geofence? geofence,  String? time, @WaypointKindOrNullConverter()  WaypointKind? kind)  $default,) {final _that = this;
switch (_that) {
case _Waypoint():
return $default(_that.id,_that.geofenceId,_that.geofence,_that.time,_that.kind);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? geofenceId,  Geofence? geofence,  String? time, @WaypointKindOrNullConverter()  WaypointKind? kind)?  $default,) {final _that = this;
switch (_that) {
case _Waypoint() when $default != null:
return $default(_that.id,_that.geofenceId,_that.geofence,_that.time,_that.kind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Waypoint implements Waypoint {
  const _Waypoint({required this.id, this.geofenceId, this.geofence, this.time, @WaypointKindOrNullConverter() this.kind});
  factory _Waypoint.fromJson(Map<String, dynamic> json) => _$WaypointFromJson(json);

/// ID of the waypoint entity. This ID is unique.
@override final  String id;
/// Geofence ID associated to the route as checkpoint, or null if not set.
@override final  String? geofenceId;
/// Geofence associated to the route as checkpoint, or null if not set.
@override final  Geofence? geofence;
/// This is the time between two waypoints or the time inside of the geofence.
@override final  String? time;
/// It can be [WaypointKind.point] or [WaypointKind.pathway]. See [WaypointKind] for more
/// information.
@override@WaypointKindOrNullConverter() final  WaypointKind? kind;

/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaypointCopyWith<_Waypoint> get copyWith => __$WaypointCopyWithImpl<_Waypoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaypointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Waypoint&&(identical(other.id, id) || other.id == id)&&(identical(other.geofenceId, geofenceId) || other.geofenceId == geofenceId)&&(identical(other.geofence, geofence) || other.geofence == geofence)&&(identical(other.time, time) || other.time == time)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,geofenceId,geofence,time,kind);

@override
String toString() {
  return 'Waypoint(id: $id, geofenceId: $geofenceId, geofence: $geofence, time: $time, kind: $kind)';
}


}

/// @nodoc
abstract mixin class _$WaypointCopyWith<$Res> implements $WaypointCopyWith<$Res> {
  factory _$WaypointCopyWith(_Waypoint value, $Res Function(_Waypoint) _then) = __$WaypointCopyWithImpl;
@override @useResult
$Res call({
 String id, String? geofenceId, Geofence? geofence, String? time,@WaypointKindOrNullConverter() WaypointKind? kind
});


@override $GeofenceCopyWith<$Res>? get geofence;

}
/// @nodoc
class __$WaypointCopyWithImpl<$Res>
    implements _$WaypointCopyWith<$Res> {
  __$WaypointCopyWithImpl(this._self, this._then);

  final _Waypoint _self;
  final $Res Function(_Waypoint) _then;

/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? geofenceId = freezed,Object? geofence = freezed,Object? time = freezed,Object? kind = freezed,}) {
  return _then(_Waypoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,geofenceId: freezed == geofenceId ? _self.geofenceId : geofenceId // ignore: cast_nullable_to_non_nullable
as String?,geofence: freezed == geofence ? _self.geofence : geofence // ignore: cast_nullable_to_non_nullable
as Geofence?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WaypointKind?,
  ));
}

/// Create a copy of Waypoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeofenceCopyWith<$Res>? get geofence {
    if (_self.geofence == null) {
    return null;
  }

  return $GeofenceCopyWith<$Res>(_self.geofence!, (value) {
    return _then(_self.copyWith(geofence: value));
  });
}
}


/// @nodoc
mixin _$LinkedAssetToCheckpointId {

/// ID of the linked asset or tag.
 String get itemId;/// The kind of entity [itemId] refers to.
@LinkedAssetEntityConverter() LinkedAssetEntity get entity;
/// Create a copy of LinkedAssetToCheckpointId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkedAssetToCheckpointIdCopyWith<LinkedAssetToCheckpointId> get copyWith => _$LinkedAssetToCheckpointIdCopyWithImpl<LinkedAssetToCheckpointId>(this as LinkedAssetToCheckpointId, _$identity);

  /// Serializes this LinkedAssetToCheckpointId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkedAssetToCheckpointId&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.entity, entity) || other.entity == entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,entity);

@override
String toString() {
  return 'LinkedAssetToCheckpointId(itemId: $itemId, entity: $entity)';
}


}

/// @nodoc
abstract mixin class $LinkedAssetToCheckpointIdCopyWith<$Res>  {
  factory $LinkedAssetToCheckpointIdCopyWith(LinkedAssetToCheckpointId value, $Res Function(LinkedAssetToCheckpointId) _then) = _$LinkedAssetToCheckpointIdCopyWithImpl;
@useResult
$Res call({
 String itemId,@LinkedAssetEntityConverter() LinkedAssetEntity entity
});




}
/// @nodoc
class _$LinkedAssetToCheckpointIdCopyWithImpl<$Res>
    implements $LinkedAssetToCheckpointIdCopyWith<$Res> {
  _$LinkedAssetToCheckpointIdCopyWithImpl(this._self, this._then);

  final LinkedAssetToCheckpointId _self;
  final $Res Function(LinkedAssetToCheckpointId) _then;

/// Create a copy of LinkedAssetToCheckpointId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? entity = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as LinkedAssetEntity,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkedAssetToCheckpointId].
extension LinkedAssetToCheckpointIdPatterns on LinkedAssetToCheckpointId {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkedAssetToCheckpointId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkedAssetToCheckpointId value)  $default,){
final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkedAssetToCheckpointId value)?  $default,){
final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId, @LinkedAssetEntityConverter()  LinkedAssetEntity entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId() when $default != null:
return $default(_that.itemId,_that.entity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId, @LinkedAssetEntityConverter()  LinkedAssetEntity entity)  $default,) {final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId():
return $default(_that.itemId,_that.entity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId, @LinkedAssetEntityConverter()  LinkedAssetEntity entity)?  $default,) {final _that = this;
switch (_that) {
case _LinkedAssetToCheckpointId() when $default != null:
return $default(_that.itemId,_that.entity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkedAssetToCheckpointId implements LinkedAssetToCheckpointId {
  const _LinkedAssetToCheckpointId({required this.itemId, @LinkedAssetEntityConverter() required this.entity});
  factory _LinkedAssetToCheckpointId.fromJson(Map<String, dynamic> json) => _$LinkedAssetToCheckpointIdFromJson(json);

/// ID of the linked asset or tag.
@override final  String itemId;
/// The kind of entity [itemId] refers to.
@override@LinkedAssetEntityConverter() final  LinkedAssetEntity entity;

/// Create a copy of LinkedAssetToCheckpointId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkedAssetToCheckpointIdCopyWith<_LinkedAssetToCheckpointId> get copyWith => __$LinkedAssetToCheckpointIdCopyWithImpl<_LinkedAssetToCheckpointId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkedAssetToCheckpointIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkedAssetToCheckpointId&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.entity, entity) || other.entity == entity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,entity);

@override
String toString() {
  return 'LinkedAssetToCheckpointId(itemId: $itemId, entity: $entity)';
}


}

/// @nodoc
abstract mixin class _$LinkedAssetToCheckpointIdCopyWith<$Res> implements $LinkedAssetToCheckpointIdCopyWith<$Res> {
  factory _$LinkedAssetToCheckpointIdCopyWith(_LinkedAssetToCheckpointId value, $Res Function(_LinkedAssetToCheckpointId) _then) = __$LinkedAssetToCheckpointIdCopyWithImpl;
@override @useResult
$Res call({
 String itemId,@LinkedAssetEntityConverter() LinkedAssetEntity entity
});




}
/// @nodoc
class __$LinkedAssetToCheckpointIdCopyWithImpl<$Res>
    implements _$LinkedAssetToCheckpointIdCopyWith<$Res> {
  __$LinkedAssetToCheckpointIdCopyWithImpl(this._self, this._then);

  final _LinkedAssetToCheckpointId _self;
  final $Res Function(_LinkedAssetToCheckpointId) _then;

/// Create a copy of LinkedAssetToCheckpointId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? entity = null,}) {
  return _then(_LinkedAssetToCheckpointId(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as LinkedAssetEntity,
  ));
}


}


/// @nodoc
mixin _$Checkpoint {

/// ID of the checkpoint entity. This ID is unique.
 String get id;/// Name of the checkpoint.
 String get name;/// Asset tag ID of the checkpoint, or null if not linked.
 String? get assetId;/// List of waypoints in the checkpoint. See [Waypoint] for more information.
 List<Waypoint>? get waypoints;/// Boolean value that determines if the checkpoint is active, or null if unknown.
 bool? get isActive;/// List of custom access permissions.
 List<Access>? get access;/// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
 List<LinkedAssetToCheckpointId>? get linkedAssetsIds;
/// Create a copy of Checkpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckpointCopyWith<Checkpoint> get copyWith => _$CheckpointCopyWithImpl<Checkpoint>(this as Checkpoint, _$identity);

  /// Serializes this Checkpoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Checkpoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&const DeepCollectionEquality().equals(other.waypoints, waypoints)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.linkedAssetsIds, linkedAssetsIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assetId,const DeepCollectionEquality().hash(waypoints),isActive,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(linkedAssetsIds));

@override
String toString() {
  return 'Checkpoint(id: $id, name: $name, assetId: $assetId, waypoints: $waypoints, isActive: $isActive, access: $access, linkedAssetsIds: $linkedAssetsIds)';
}


}

/// @nodoc
abstract mixin class $CheckpointCopyWith<$Res>  {
  factory $CheckpointCopyWith(Checkpoint value, $Res Function(Checkpoint) _then) = _$CheckpointCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? assetId, List<Waypoint>? waypoints, bool? isActive, List<Access>? access, List<LinkedAssetToCheckpointId>? linkedAssetsIds
});




}
/// @nodoc
class _$CheckpointCopyWithImpl<$Res>
    implements $CheckpointCopyWith<$Res> {
  _$CheckpointCopyWithImpl(this._self, this._then);

  final Checkpoint _self;
  final $Res Function(Checkpoint) _then;

/// Create a copy of Checkpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? assetId = freezed,Object? waypoints = freezed,Object? isActive = freezed,Object? access = freezed,Object? linkedAssetsIds = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,waypoints: freezed == waypoints ? _self.waypoints : waypoints // ignore: cast_nullable_to_non_nullable
as List<Waypoint>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,linkedAssetsIds: freezed == linkedAssetsIds ? _self.linkedAssetsIds : linkedAssetsIds // ignore: cast_nullable_to_non_nullable
as List<LinkedAssetToCheckpointId>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Checkpoint].
extension CheckpointPatterns on Checkpoint {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Checkpoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Checkpoint() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Checkpoint value)  $default,){
final _that = this;
switch (_that) {
case _Checkpoint():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Checkpoint value)?  $default,){
final _that = this;
switch (_that) {
case _Checkpoint() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? assetId,  List<Waypoint>? waypoints,  bool? isActive,  List<Access>? access,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Checkpoint() when $default != null:
return $default(_that.id,_that.name,_that.assetId,_that.waypoints,_that.isActive,_that.access,_that.linkedAssetsIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? assetId,  List<Waypoint>? waypoints,  bool? isActive,  List<Access>? access,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)  $default,) {final _that = this;
switch (_that) {
case _Checkpoint():
return $default(_that.id,_that.name,_that.assetId,_that.waypoints,_that.isActive,_that.access,_that.linkedAssetsIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? assetId,  List<Waypoint>? waypoints,  bool? isActive,  List<Access>? access,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)?  $default,) {final _that = this;
switch (_that) {
case _Checkpoint() when $default != null:
return $default(_that.id,_that.name,_that.assetId,_that.waypoints,_that.isActive,_that.access,_that.linkedAssetsIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Checkpoint implements Checkpoint {
  const _Checkpoint({required this.id, required this.name, this.assetId, this.waypoints, this.isActive, this.access, this.linkedAssetsIds});
  factory _Checkpoint.fromJson(Map<String, dynamic> json) => _$CheckpointFromJson(json);

/// ID of the checkpoint entity. This ID is unique.
@override final  String id;
/// Name of the checkpoint.
@override final  String name;
/// Asset tag ID of the checkpoint, or null if not linked.
@override final  String? assetId;
/// List of waypoints in the checkpoint. See [Waypoint] for more information.
@override final  List<Waypoint>? waypoints;
/// Boolean value that determines if the checkpoint is active, or null if unknown.
@override final  bool? isActive;
/// List of custom access permissions.
@override final  List<Access>? access;
/// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
@override final  List<LinkedAssetToCheckpointId>? linkedAssetsIds;

/// Create a copy of Checkpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckpointCopyWith<_Checkpoint> get copyWith => __$CheckpointCopyWithImpl<_Checkpoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckpointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checkpoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&const DeepCollectionEquality().equals(other.waypoints, waypoints)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.linkedAssetsIds, linkedAssetsIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,assetId,const DeepCollectionEquality().hash(waypoints),isActive,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(linkedAssetsIds));

@override
String toString() {
  return 'Checkpoint(id: $id, name: $name, assetId: $assetId, waypoints: $waypoints, isActive: $isActive, access: $access, linkedAssetsIds: $linkedAssetsIds)';
}


}

/// @nodoc
abstract mixin class _$CheckpointCopyWith<$Res> implements $CheckpointCopyWith<$Res> {
  factory _$CheckpointCopyWith(_Checkpoint value, $Res Function(_Checkpoint) _then) = __$CheckpointCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? assetId, List<Waypoint>? waypoints, bool? isActive, List<Access>? access, List<LinkedAssetToCheckpointId>? linkedAssetsIds
});




}
/// @nodoc
class __$CheckpointCopyWithImpl<$Res>
    implements _$CheckpointCopyWith<$Res> {
  __$CheckpointCopyWithImpl(this._self, this._then);

  final _Checkpoint _self;
  final $Res Function(_Checkpoint) _then;

/// Create a copy of Checkpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? assetId = freezed,Object? waypoints = freezed,Object? isActive = freezed,Object? access = freezed,Object? linkedAssetsIds = freezed,}) {
  return _then(_Checkpoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,waypoints: freezed == waypoints ? _self.waypoints : waypoints // ignore: cast_nullable_to_non_nullable
as List<Waypoint>?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,linkedAssetsIds: freezed == linkedAssetsIds ? _self.linkedAssetsIds : linkedAssetsIds // ignore: cast_nullable_to_non_nullable
as List<LinkedAssetToCheckpointId>?,
  ));
}


}


/// @nodoc
mixin _$CheckpointInput {

/// ID of the checkpoint entity, or null when creating a new one. This ID is unique.
 String? get id;/// ID of the checkpoint entity, or null when creating a new one. This ID is unique.
 set id(String? value);/// Name of the checkpoint, or null if not set.
 String? get name;/// Name of the checkpoint, or null if not set.
 set name(String? value);/// Asset tag ID of the checkpoint, or null if not linked.
 String? get assetId;/// Asset tag ID of the checkpoint, or null if not linked.
 set assetId(String? value);/// List of waypoints in the checkpoint. See [Waypoint] for more information. Defaults to an
/// empty list.
 List<Waypoint>? get waypointsJson;/// List of waypoints in the checkpoint. See [Waypoint] for more information. Defaults to an
/// empty list.
 set waypointsJson(List<Waypoint>? value);/// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
/// Defaults to an empty list.
 List<LinkedAssetToCheckpointId>? get linkedAssetsIds;/// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
/// Defaults to an empty list.
 set linkedAssetsIds(List<LinkedAssetToCheckpointId>? value);
/// Create a copy of CheckpointInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckpointInputCopyWith<CheckpointInput> get copyWith => _$CheckpointInputCopyWithImpl<CheckpointInput>(this as CheckpointInput, _$identity);

  /// Serializes this CheckpointInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CheckpointInput(id: $id, name: $name, assetId: $assetId, waypointsJson: $waypointsJson, linkedAssetsIds: $linkedAssetsIds)';
}


}

/// @nodoc
abstract mixin class $CheckpointInputCopyWith<$Res>  {
  factory $CheckpointInputCopyWith(CheckpointInput value, $Res Function(CheckpointInput) _then) = _$CheckpointInputCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? assetId, List<Waypoint>? waypointsJson, List<LinkedAssetToCheckpointId>? linkedAssetsIds
});




}
/// @nodoc
class _$CheckpointInputCopyWithImpl<$Res>
    implements $CheckpointInputCopyWith<$Res> {
  _$CheckpointInputCopyWithImpl(this._self, this._then);

  final CheckpointInput _self;
  final $Res Function(CheckpointInput) _then;

/// Create a copy of CheckpointInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? assetId = freezed,Object? waypointsJson = freezed,Object? linkedAssetsIds = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,waypointsJson: freezed == waypointsJson ? _self.waypointsJson : waypointsJson // ignore: cast_nullable_to_non_nullable
as List<Waypoint>?,linkedAssetsIds: freezed == linkedAssetsIds ? _self.linkedAssetsIds : linkedAssetsIds // ignore: cast_nullable_to_non_nullable
as List<LinkedAssetToCheckpointId>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckpointInput].
extension CheckpointInputPatterns on CheckpointInput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckpointInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckpointInput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckpointInput value)  $default,){
final _that = this;
switch (_that) {
case _CheckpointInput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckpointInput value)?  $default,){
final _that = this;
switch (_that) {
case _CheckpointInput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? assetId,  List<Waypoint>? waypointsJson,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckpointInput() when $default != null:
return $default(_that.id,_that.name,_that.assetId,_that.waypointsJson,_that.linkedAssetsIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? assetId,  List<Waypoint>? waypointsJson,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)  $default,) {final _that = this;
switch (_that) {
case _CheckpointInput():
return $default(_that.id,_that.name,_that.assetId,_that.waypointsJson,_that.linkedAssetsIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? assetId,  List<Waypoint>? waypointsJson,  List<LinkedAssetToCheckpointId>? linkedAssetsIds)?  $default,) {final _that = this;
switch (_that) {
case _CheckpointInput() when $default != null:
return $default(_that.id,_that.name,_that.assetId,_that.waypointsJson,_that.linkedAssetsIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckpointInput implements CheckpointInput {
   _CheckpointInput({this.id, this.name, this.assetId, this.waypointsJson = const [], this.linkedAssetsIds = const []});
  factory _CheckpointInput.fromJson(Map<String, dynamic> json) => _$CheckpointInputFromJson(json);

/// ID of the checkpoint entity, or null when creating a new one. This ID is unique.
@override  String? id;
/// Name of the checkpoint, or null if not set.
@override  String? name;
/// Asset tag ID of the checkpoint, or null if not linked.
@override  String? assetId;
/// List of waypoints in the checkpoint. See [Waypoint] for more information. Defaults to an
/// empty list.
@override@JsonKey()  List<Waypoint>? waypointsJson;
/// IDs of the linked assets or tags. See [LinkedAssetToCheckpointId] for more information.
/// Defaults to an empty list.
@override@JsonKey()  List<LinkedAssetToCheckpointId>? linkedAssetsIds;

/// Create a copy of CheckpointInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckpointInputCopyWith<_CheckpointInput> get copyWith => __$CheckpointInputCopyWithImpl<_CheckpointInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckpointInputToJson(this, );
}



@override
String toString() {
  return 'CheckpointInput(id: $id, name: $name, assetId: $assetId, waypointsJson: $waypointsJson, linkedAssetsIds: $linkedAssetsIds)';
}


}

/// @nodoc
abstract mixin class _$CheckpointInputCopyWith<$Res> implements $CheckpointInputCopyWith<$Res> {
  factory _$CheckpointInputCopyWith(_CheckpointInput value, $Res Function(_CheckpointInput) _then) = __$CheckpointInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? assetId, List<Waypoint>? waypointsJson, List<LinkedAssetToCheckpointId>? linkedAssetsIds
});




}
/// @nodoc
class __$CheckpointInputCopyWithImpl<$Res>
    implements _$CheckpointInputCopyWith<$Res> {
  __$CheckpointInputCopyWithImpl(this._self, this._then);

  final _CheckpointInput _self;
  final $Res Function(_CheckpointInput) _then;

/// Create a copy of CheckpointInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? assetId = freezed,Object? waypointsJson = freezed,Object? linkedAssetsIds = freezed,}) {
  return _then(_CheckpointInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,waypointsJson: freezed == waypointsJson ? _self.waypointsJson : waypointsJson // ignore: cast_nullable_to_non_nullable
as List<Waypoint>?,linkedAssetsIds: freezed == linkedAssetsIds ? _self.linkedAssetsIds : linkedAssetsIds // ignore: cast_nullable_to_non_nullable
as List<LinkedAssetToCheckpointId>?,
  ));
}


}

// dart format on
