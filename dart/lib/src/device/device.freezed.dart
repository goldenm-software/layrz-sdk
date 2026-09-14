// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssetTelemetry {

/// ID of the message entity.
 String get id;/// ID of the unit.
 String? get assetId;/// Unix of last reception date.
@TimestampConverter() DateTime get receivedAt;/// Current geofences ID's where the unit is.
 List<String>? get geofenceIds;/// Current position of the message.
 TelemetryPosition? get position;/// Raw received payload values list of the message.
 List<TelemetrySensor>? get payload;/// Current sensor values list of the message.
 List<TelemetrySensor>? get sensors;
/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetTelemetryCopyWith<AssetTelemetry> get copyWith => _$AssetTelemetryCopyWithImpl<AssetTelemetry>(this as AssetTelemetry, _$identity);

  /// Serializes this AssetTelemetry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetTelemetry&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&const DeepCollectionEquality().equals(other.geofenceIds, geofenceIds)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.sensors, sensors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,receivedAt,const DeepCollectionEquality().hash(geofenceIds),position,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(sensors));

@override
String toString() {
  return 'AssetTelemetry(id: $id, assetId: $assetId, receivedAt: $receivedAt, geofenceIds: $geofenceIds, position: $position, payload: $payload, sensors: $sensors)';
}


}

/// @nodoc
abstract mixin class $AssetTelemetryCopyWith<$Res>  {
  factory $AssetTelemetryCopyWith(AssetTelemetry value, $Res Function(AssetTelemetry) _then) = _$AssetTelemetryCopyWithImpl;
@useResult
$Res call({
 String id, String? assetId,@TimestampConverter() DateTime receivedAt, List<String>? geofenceIds, TelemetryPosition? position, List<TelemetrySensor>? payload, List<TelemetrySensor>? sensors
});


$TelemetryPositionCopyWith<$Res>? get position;

}
/// @nodoc
class _$AssetTelemetryCopyWithImpl<$Res>
    implements $AssetTelemetryCopyWith<$Res> {
  _$AssetTelemetryCopyWithImpl(this._self, this._then);

  final AssetTelemetry _self;
  final $Res Function(AssetTelemetry) _then;

/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetId = freezed,Object? receivedAt = null,Object? geofenceIds = freezed,Object? position = freezed,Object? payload = freezed,Object? sensors = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,geofenceIds: freezed == geofenceIds ? _self.geofenceIds : geofenceIds // ignore: cast_nullable_to_non_nullable
as List<String>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,
  ));
}
/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssetTelemetry].
extension AssetTelemetryPatterns on AssetTelemetry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetTelemetry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetTelemetry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetTelemetry value)  $default,){
final _that = this;
switch (_that) {
case _AssetTelemetry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetTelemetry value)?  $default,){
final _that = this;
switch (_that) {
case _AssetTelemetry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? assetId, @TimestampConverter()  DateTime receivedAt,  List<String>? geofenceIds,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetTelemetry() when $default != null:
return $default(_that.id,_that.assetId,_that.receivedAt,_that.geofenceIds,_that.position,_that.payload,_that.sensors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? assetId, @TimestampConverter()  DateTime receivedAt,  List<String>? geofenceIds,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors)  $default,) {final _that = this;
switch (_that) {
case _AssetTelemetry():
return $default(_that.id,_that.assetId,_that.receivedAt,_that.geofenceIds,_that.position,_that.payload,_that.sensors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? assetId, @TimestampConverter()  DateTime receivedAt,  List<String>? geofenceIds,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors)?  $default,) {final _that = this;
switch (_that) {
case _AssetTelemetry() when $default != null:
return $default(_that.id,_that.assetId,_that.receivedAt,_that.geofenceIds,_that.position,_that.payload,_that.sensors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetTelemetry extends AssetTelemetry {
  const _AssetTelemetry({required this.id, this.assetId, @TimestampConverter() required this.receivedAt, this.geofenceIds, this.position, this.payload, this.sensors}): super._();
  factory _AssetTelemetry.fromJson(Map<String, dynamic> json) => _$AssetTelemetryFromJson(json);

/// ID of the message entity.
@override final  String id;
/// ID of the unit.
@override final  String? assetId;
/// Unix of last reception date.
@override@TimestampConverter() final  DateTime receivedAt;
/// Current geofences ID's where the unit is.
@override final  List<String>? geofenceIds;
/// Current position of the message.
@override final  TelemetryPosition? position;
/// Raw received payload values list of the message.
@override final  List<TelemetrySensor>? payload;
/// Current sensor values list of the message.
@override final  List<TelemetrySensor>? sensors;

/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetTelemetryCopyWith<_AssetTelemetry> get copyWith => __$AssetTelemetryCopyWithImpl<_AssetTelemetry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetTelemetryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetTelemetry&&(identical(other.id, id) || other.id == id)&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&const DeepCollectionEquality().equals(other.geofenceIds, geofenceIds)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.sensors, sensors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assetId,receivedAt,const DeepCollectionEquality().hash(geofenceIds),position,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(sensors));

@override
String toString() {
  return 'AssetTelemetry(id: $id, assetId: $assetId, receivedAt: $receivedAt, geofenceIds: $geofenceIds, position: $position, payload: $payload, sensors: $sensors)';
}


}

/// @nodoc
abstract mixin class _$AssetTelemetryCopyWith<$Res> implements $AssetTelemetryCopyWith<$Res> {
  factory _$AssetTelemetryCopyWith(_AssetTelemetry value, $Res Function(_AssetTelemetry) _then) = __$AssetTelemetryCopyWithImpl;
@override @useResult
$Res call({
 String id, String? assetId,@TimestampConverter() DateTime receivedAt, List<String>? geofenceIds, TelemetryPosition? position, List<TelemetrySensor>? payload, List<TelemetrySensor>? sensors
});


@override $TelemetryPositionCopyWith<$Res>? get position;

}
/// @nodoc
class __$AssetTelemetryCopyWithImpl<$Res>
    implements _$AssetTelemetryCopyWith<$Res> {
  __$AssetTelemetryCopyWithImpl(this._self, this._then);

  final _AssetTelemetry _self;
  final $Res Function(_AssetTelemetry) _then;

/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetId = freezed,Object? receivedAt = null,Object? geofenceIds = freezed,Object? position = freezed,Object? payload = freezed,Object? sensors = freezed,}) {
  return _then(_AssetTelemetry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetId: freezed == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,geofenceIds: freezed == geofenceIds ? _self.geofenceIds : geofenceIds // ignore: cast_nullable_to_non_nullable
as List<String>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,
  ));
}

/// Create a copy of AssetTelemetry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// @nodoc
mixin _$CommandData {

/// [source] is the source of the command.
 CommandDefinitionSource get source;/// [definition] is the definition of the command.
 String get definition;/// [payload] is the list of parameters of the command.
 Map<String, dynamic>? get payload;
/// Create a copy of CommandData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandDataCopyWith<CommandData> get copyWith => _$CommandDataCopyWithImpl<CommandData>(this as CommandData, _$identity);

  /// Serializes this CommandData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandData&&(identical(other.source, source) || other.source == source)&&(identical(other.definition, definition) || other.definition == definition)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,definition,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'CommandData(source: $source, definition: $definition, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $CommandDataCopyWith<$Res>  {
  factory $CommandDataCopyWith(CommandData value, $Res Function(CommandData) _then) = _$CommandDataCopyWithImpl;
@useResult
$Res call({
 CommandDefinitionSource source, String definition, Map<String, dynamic>? payload
});




}
/// @nodoc
class _$CommandDataCopyWithImpl<$Res>
    implements $CommandDataCopyWith<$Res> {
  _$CommandDataCopyWithImpl(this._self, this._then);

  final CommandData _self;
  final $Res Function(CommandData) _then;

/// Create a copy of CommandData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? definition = null,Object? payload = freezed,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandDefinitionSource,definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandData].
extension CommandDataPatterns on CommandData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandData value)  $default,){
final _that = this;
switch (_that) {
case _CommandData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandData value)?  $default,){
final _that = this;
switch (_that) {
case _CommandData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommandDefinitionSource source,  String definition,  Map<String, dynamic>? payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandData() when $default != null:
return $default(_that.source,_that.definition,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommandDefinitionSource source,  String definition,  Map<String, dynamic>? payload)  $default,) {final _that = this;
switch (_that) {
case _CommandData():
return $default(_that.source,_that.definition,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommandDefinitionSource source,  String definition,  Map<String, dynamic>? payload)?  $default,) {final _that = this;
switch (_that) {
case _CommandData() when $default != null:
return $default(_that.source,_that.definition,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandData extends CommandData {
  const _CommandData({required this.source, required this.definition, this.payload}): super._();
  factory _CommandData.fromJson(Map<String, dynamic> json) => _$CommandDataFromJson(json);

/// [source] is the source of the command.
@override final  CommandDefinitionSource source;
/// [definition] is the definition of the command.
@override final  String definition;
/// [payload] is the list of parameters of the command.
@override final  Map<String, dynamic>? payload;

/// Create a copy of CommandData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDataCopyWith<_CommandData> get copyWith => __$CommandDataCopyWithImpl<_CommandData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandData&&(identical(other.source, source) || other.source == source)&&(identical(other.definition, definition) || other.definition == definition)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,definition,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'CommandData(source: $source, definition: $definition, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$CommandDataCopyWith<$Res> implements $CommandDataCopyWith<$Res> {
  factory _$CommandDataCopyWith(_CommandData value, $Res Function(_CommandData) _then) = __$CommandDataCopyWithImpl;
@override @useResult
$Res call({
 CommandDefinitionSource source, String definition, Map<String, dynamic>? payload
});




}
/// @nodoc
class __$CommandDataCopyWithImpl<$Res>
    implements _$CommandDataCopyWith<$Res> {
  __$CommandDataCopyWithImpl(this._self, this._then);

  final _CommandData _self;
  final $Res Function(_CommandData) _then;

/// Create a copy of CommandData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? definition = null,Object? payload = freezed,}) {
  return _then(_CommandData(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandDefinitionSource,definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CommandDataInput {

/// [source] is the source of the command.
 CommandDefinitionSource? get source;/// [source] is the source of the command.
 set source(CommandDefinitionSource? value);/// [definition] is the definition of the command.
 String? get definition;/// [definition] is the definition of the command.
 set definition(String? value);/// [payload] is the list of parameters of the command.
 Map<String, dynamic> get payload;/// [payload] is the list of parameters of the command.
 set payload(Map<String, dynamic> value);
/// Create a copy of CommandDataInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandDataInputCopyWith<CommandDataInput> get copyWith => _$CommandDataInputCopyWithImpl<CommandDataInput>(this as CommandDataInput, _$identity);

  /// Serializes this CommandDataInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CommandDataInput(source: $source, definition: $definition, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $CommandDataInputCopyWith<$Res>  {
  factory $CommandDataInputCopyWith(CommandDataInput value, $Res Function(CommandDataInput) _then) = _$CommandDataInputCopyWithImpl;
@useResult
$Res call({
 CommandDefinitionSource? source, String? definition, Map<String, dynamic> payload
});




}
/// @nodoc
class _$CommandDataInputCopyWithImpl<$Res>
    implements $CommandDataInputCopyWith<$Res> {
  _$CommandDataInputCopyWithImpl(this._self, this._then);

  final CommandDataInput _self;
  final $Res Function(CommandDataInput) _then;

/// Create a copy of CommandDataInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? definition = freezed,Object? payload = null,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandDefinitionSource?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandDataInput].
extension CommandDataInputPatterns on CommandDataInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandDataInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandDataInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandDataInput value)  $default,){
final _that = this;
switch (_that) {
case _CommandDataInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandDataInput value)?  $default,){
final _that = this;
switch (_that) {
case _CommandDataInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommandDefinitionSource? source,  String? definition,  Map<String, dynamic> payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandDataInput() when $default != null:
return $default(_that.source,_that.definition,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommandDefinitionSource? source,  String? definition,  Map<String, dynamic> payload)  $default,) {final _that = this;
switch (_that) {
case _CommandDataInput():
return $default(_that.source,_that.definition,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommandDefinitionSource? source,  String? definition,  Map<String, dynamic> payload)?  $default,) {final _that = this;
switch (_that) {
case _CommandDataInput() when $default != null:
return $default(_that.source,_that.definition,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandDataInput extends CommandDataInput {
   _CommandDataInput({this.source, this.definition, this.payload = const {}}): super._();
  factory _CommandDataInput.fromJson(Map<String, dynamic> json) => _$CommandDataInputFromJson(json);

/// [source] is the source of the command.
@override  CommandDefinitionSource? source;
/// [definition] is the definition of the command.
@override  String? definition;
/// [payload] is the list of parameters of the command.
@override@JsonKey()  Map<String, dynamic> payload;

/// Create a copy of CommandDataInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDataInputCopyWith<_CommandDataInput> get copyWith => __$CommandDataInputCopyWithImpl<_CommandDataInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandDataInputToJson(this, );
}



@override
String toString() {
  return 'CommandDataInput(source: $source, definition: $definition, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$CommandDataInputCopyWith<$Res> implements $CommandDataInputCopyWith<$Res> {
  factory _$CommandDataInputCopyWith(_CommandDataInput value, $Res Function(_CommandDataInput) _then) = __$CommandDataInputCopyWithImpl;
@override @useResult
$Res call({
 CommandDefinitionSource? source, String? definition, Map<String, dynamic> payload
});




}
/// @nodoc
class __$CommandDataInputCopyWithImpl<$Res>
    implements _$CommandDataInputCopyWith<$Res> {
  __$CommandDataInputCopyWithImpl(this._self, this._then);

  final _CommandDataInput _self;
  final $Res Function(_CommandDataInput) _then;

/// Create a copy of CommandDataInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? definition = freezed,Object? payload = null,}) {
  return _then(_CommandDataInput(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandDefinitionSource?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$CommandInput {

/// Unique identifier for this command. When null, [save] creates a new command.
 String? get id;/// Unique identifier for this command. When null, [save] creates a new command.
 set id(String? value);/// Is name of the command. (Only reference, does not affect the command itself)
 String get name;/// Is name of the command. (Only reference, does not affect the command itself)
 set name(String value);/// Is the source of the command.
 CommandSource? get source;/// Is the source of the command.
 set source(CommandSource? value);/// [payload] is the text payload to send into a SMS command.
 String? get payload;/// [payload] is the text payload to send into a SMS command.
 set payload(String? value);/// Is the tag id of the command for "multi" execution from any Action.
 String? get tagId;/// Is the tag id of the command for "multi" execution from any Action.
 set tagId(String? value);/// Is the [deviceId] that the command is for.
/// Only will comes when the command comes from the asset or device query.
 String? get deviceId;/// Is the [deviceId] that the command is for.
/// Only will comes when the command comes from the asset or device query.
 set deviceId(String? value);/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
 String? get protocolId;/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
 set protocolId(String? value);/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
 String? get modelId;/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
 set modelId(String? value);/// [externalAccountId] refers to the external account id of the command.
 String? get externalAccountId;/// [externalAccountId] refers to the external account id of the command.
 set externalAccountId(String? value);/// [data] refers to the definition of the command.
 CommandDataInput? get data;/// [data] refers to the definition of the command.
 set data(CommandDataInput? value);/// [modbusParameter] refers to the modbus parameter of the command.
/// This parameter contains the composition of the modbus command, like the controller address, function code,
/// register address, etc.
 ModbusParameterInput? get modbusParameter;/// [modbusParameter] refers to the modbus parameter of the command.
/// This parameter contains the composition of the modbus command, like the controller address, function code,
/// register address, etc.
 set modbusParameter(ModbusParameterInput? value);/// [modbusPort] refers to the modbus port of the command.
/// This parameter contains the port number of the modbus command.
 String? get modbusPort;/// [modbusPort] refers to the modbus port of the command.
/// This parameter contains the port number of the modbus command.
 set modbusPort(String? value);
/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandInputCopyWith<CommandInput> get copyWith => _$CommandInputCopyWithImpl<CommandInput>(this as CommandInput, _$identity);

  /// Serializes this CommandInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CommandInput(id: $id, name: $name, source: $source, payload: $payload, tagId: $tagId, deviceId: $deviceId, protocolId: $protocolId, modelId: $modelId, externalAccountId: $externalAccountId, data: $data, modbusParameter: $modbusParameter, modbusPort: $modbusPort)';
}


}

/// @nodoc
abstract mixin class $CommandInputCopyWith<$Res>  {
  factory $CommandInputCopyWith(CommandInput value, $Res Function(CommandInput) _then) = _$CommandInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, CommandSource? source, String? payload, String? tagId, String? deviceId, String? protocolId, String? modelId, String? externalAccountId, CommandDataInput? data, ModbusParameterInput? modbusParameter, String? modbusPort
});


$CommandDataInputCopyWith<$Res>? get data;$ModbusParameterInputCopyWith<$Res>? get modbusParameter;

}
/// @nodoc
class _$CommandInputCopyWithImpl<$Res>
    implements $CommandInputCopyWith<$Res> {
  _$CommandInputCopyWithImpl(this._self, this._then);

  final CommandInput _self;
  final $Res Function(CommandInput) _then;

/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? source = freezed,Object? payload = freezed,Object? tagId = freezed,Object? deviceId = freezed,Object? protocolId = freezed,Object? modelId = freezed,Object? externalAccountId = freezed,Object? data = freezed,Object? modbusParameter = freezed,Object? modbusPort = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandSource?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,tagId: freezed == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommandDataInput?,modbusParameter: freezed == modbusParameter ? _self.modbusParameter : modbusParameter // ignore: cast_nullable_to_non_nullable
as ModbusParameterInput?,modbusPort: freezed == modbusPort ? _self.modbusPort : modbusPort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandDataInputCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommandDataInputCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusParameterInputCopyWith<$Res>? get modbusParameter {
    if (_self.modbusParameter == null) {
    return null;
  }

  return $ModbusParameterInputCopyWith<$Res>(_self.modbusParameter!, (value) {
    return _then(_self.copyWith(modbusParameter: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommandInput].
extension CommandInputPatterns on CommandInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandInput value)  $default,){
final _that = this;
switch (_that) {
case _CommandInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandInput value)?  $default,){
final _that = this;
switch (_that) {
case _CommandInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  CommandSource? source,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  String? modelId,  String? externalAccountId,  CommandDataInput? data,  ModbusParameterInput? modbusParameter,  String? modbusPort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandInput() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.modelId,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  CommandSource? source,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  String? modelId,  String? externalAccountId,  CommandDataInput? data,  ModbusParameterInput? modbusParameter,  String? modbusPort)  $default,) {final _that = this;
switch (_that) {
case _CommandInput():
return $default(_that.id,_that.name,_that.source,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.modelId,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  CommandSource? source,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  String? modelId,  String? externalAccountId,  CommandDataInput? data,  ModbusParameterInput? modbusParameter,  String? modbusPort)?  $default,) {final _that = this;
switch (_that) {
case _CommandInput() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.modelId,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandInput extends CommandInput {
   _CommandInput({this.id, this.name = '', this.source, this.payload, this.tagId, this.deviceId, this.protocolId, this.modelId, this.externalAccountId, this.data, this.modbusParameter, this.modbusPort}): super._();
  factory _CommandInput.fromJson(Map<String, dynamic> json) => _$CommandInputFromJson(json);

/// Unique identifier for this command. When null, [save] creates a new command.
@override  String? id;
/// Is name of the command. (Only reference, does not affect the command itself)
@override@JsonKey()  String name;
/// Is the source of the command.
@override  CommandSource? source;
/// [payload] is the text payload to send into a SMS command.
@override  String? payload;
/// Is the tag id of the command for "multi" execution from any Action.
@override  String? tagId;
/// Is the [deviceId] that the command is for.
/// Only will comes when the command comes from the asset or device query.
@override  String? deviceId;
/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
@override  String? protocolId;
/// Is the protocol id and the model id of the command.
/// Only will comes when the command is a "template"
@override  String? modelId;
/// [externalAccountId] refers to the external account id of the command.
@override  String? externalAccountId;
/// [data] refers to the definition of the command.
@override  CommandDataInput? data;
/// [modbusParameter] refers to the modbus parameter of the command.
/// This parameter contains the composition of the modbus command, like the controller address, function code,
/// register address, etc.
@override  ModbusParameterInput? modbusParameter;
/// [modbusPort] refers to the modbus port of the command.
/// This parameter contains the port number of the modbus command.
@override  String? modbusPort;

/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandInputCopyWith<_CommandInput> get copyWith => __$CommandInputCopyWithImpl<_CommandInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandInputToJson(this, );
}



@override
String toString() {
  return 'CommandInput(id: $id, name: $name, source: $source, payload: $payload, tagId: $tagId, deviceId: $deviceId, protocolId: $protocolId, modelId: $modelId, externalAccountId: $externalAccountId, data: $data, modbusParameter: $modbusParameter, modbusPort: $modbusPort)';
}


}

/// @nodoc
abstract mixin class _$CommandInputCopyWith<$Res> implements $CommandInputCopyWith<$Res> {
  factory _$CommandInputCopyWith(_CommandInput value, $Res Function(_CommandInput) _then) = __$CommandInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, CommandSource? source, String? payload, String? tagId, String? deviceId, String? protocolId, String? modelId, String? externalAccountId, CommandDataInput? data, ModbusParameterInput? modbusParameter, String? modbusPort
});


@override $CommandDataInputCopyWith<$Res>? get data;@override $ModbusParameterInputCopyWith<$Res>? get modbusParameter;

}
/// @nodoc
class __$CommandInputCopyWithImpl<$Res>
    implements _$CommandInputCopyWith<$Res> {
  __$CommandInputCopyWithImpl(this._self, this._then);

  final _CommandInput _self;
  final $Res Function(_CommandInput) _then;

/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? source = freezed,Object? payload = freezed,Object? tagId = freezed,Object? deviceId = freezed,Object? protocolId = freezed,Object? modelId = freezed,Object? externalAccountId = freezed,Object? data = freezed,Object? modbusParameter = freezed,Object? modbusPort = freezed,}) {
  return _then(_CommandInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandSource?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,tagId: freezed == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommandDataInput?,modbusParameter: freezed == modbusParameter ? _self.modbusParameter : modbusParameter // ignore: cast_nullable_to_non_nullable
as ModbusParameterInput?,modbusPort: freezed == modbusPort ? _self.modbusPort : modbusPort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandDataInputCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommandDataInputCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CommandInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusParameterInputCopyWith<$Res>? get modbusParameter {
    if (_self.modbusParameter == null) {
    return null;
  }

  return $ModbusParameterInputCopyWith<$Res>(_self.modbusParameter!, (value) {
    return _then(_self.copyWith(modbusParameter: value));
  });
}
}


/// @nodoc
mixin _$Device {

/// Unique identifier for this device.
 String get id;/// The [name] of the device.
 String get name;/// The [ident] of the device. Generally, for GPS devices means the IMEI, for other devices means the
/// MAC address or randomly string.
 String get ident;/// The [flespiToken] of the device.
 String? get flespiToken;/// The [modelId] of the device.
 String? get modelId;/// The [model] of the device.
 Model? get model;/// The [protocolId] of the device. Only the ID
 String? get protocolId;/// The [protocol] of the device.
 InboundProtocol? get protocol;/// The [additionalFields] of the device, only will return something when is imported from compatible source.
 Map<String, dynamic>? get additionalFields;/// The [qrCode] of the device.
 String? get qrCode;/// The [linkQr] of the device, means the QR code generated for auto-config of the Layrz Link app device.
 String? get linkQr;/// The [commands] of the device.
 List<DeviceCommand>? get commands;/// The [access] of the device.
 List<Access>? get access;/// Device last message, read the documentation of LastLocation for more information.
 DeviceTelemetry? get telemetry;/// The [visionProfileId] of the device. Only the ID
 String? get visionProfileId;/// The [visionProfile] of the device.
 VisionProfile? get visionProfile;/// Is the phone number information linked to this device, can be null.
 PhoneNumber? get phone;/// [modbus] is the configuration of the modbus device.
 ModbusConfig? get modbus;/// [isSuspended] if the asset is suspended.
 bool? get isSuspended;/// [hwModel] is the hardware model of the device.
 HwModel? get hwModel;/// [hwModelId] is the hardware model ID of the device.
 String? get hwModelId;/// [macAddress] is the MAC address of the device.
 String? get macAddress;/// [configParams] is the configuration parameters received from the device, this information is
/// used to configure the device.
 Map<String, dynamic>? get configParams;/// [visionCaptureThreshold] is the vision capture threshold of the device. This value is the
/// threshold of the indicator displayed on Layrz Vision app.
@DurationConverter() Duration? get visionCaptureThreshold;/// [peripherals] is the list of peripherals of the device. Only used when
/// [protocol.operationMode] is [OperationMode.peripheral].
 List<Device>? get peripherals;/// [zigbeeDevices] is the list of Zigbee devices connected to this hub.
 List<ZigbeeDevice>? get zigbeeDevices;/// [exposes] is the list of Zigbee exposes of this device, flattened across its bound
/// Zigbee device(s). Populated for leaf Zigbee devices; empty/null for non-Zigbee devices.
 List<ZigbeeDeviceExpose>? get exposes;/// [localIpAddress] is the local IP address of the device, used for local communication.
 String? get localIpAddress;/// [hasWorldwideCoverage] represents if the device has worldwide coverag For the BHS use case, this field is used to identify if the device has GPS insurance.
 bool? get hasWorldwideCoverage;/// Auto-generated Zigbee zone ID (10 chars). Empty for non-Zigbee devices.
 String get zigbeeZoneId;/// Auto-generated Zigbee token (72 chars). Empty for non-Zigbee devices.
 String get zigbeeToken;/// When permit-join expires on the Zigbee coordinator. Null if not active.
///
/// The key matches the field name: the fragment requests `zigbeePermitJoinExpiresAt`,
/// so a snake_case [JsonKey] would never match and would decode to null forever.
 DateTime? get zigbeePermitJoinExpiresAt;
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(this as Device, _$identity);

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Device&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ident, ident) || other.ident == ident)&&(identical(other.flespiToken, flespiToken) || other.flespiToken == flespiToken)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.model, model) || other.model == model)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&const DeepCollectionEquality().equals(other.additionalFields, additionalFields)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.linkQr, linkQr) || other.linkQr == linkQr)&&const DeepCollectionEquality().equals(other.commands, commands)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.telemetry, telemetry) || other.telemetry == telemetry)&&(identical(other.visionProfileId, visionProfileId) || other.visionProfileId == visionProfileId)&&(identical(other.visionProfile, visionProfile) || other.visionProfile == visionProfile)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.modbus, modbus) || other.modbus == modbus)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.hwModel, hwModel) || other.hwModel == hwModel)&&(identical(other.hwModelId, hwModelId) || other.hwModelId == hwModelId)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&const DeepCollectionEquality().equals(other.configParams, configParams)&&(identical(other.visionCaptureThreshold, visionCaptureThreshold) || other.visionCaptureThreshold == visionCaptureThreshold)&&const DeepCollectionEquality().equals(other.peripherals, peripherals)&&const DeepCollectionEquality().equals(other.zigbeeDevices, zigbeeDevices)&&const DeepCollectionEquality().equals(other.exposes, exposes)&&(identical(other.localIpAddress, localIpAddress) || other.localIpAddress == localIpAddress)&&(identical(other.hasWorldwideCoverage, hasWorldwideCoverage) || other.hasWorldwideCoverage == hasWorldwideCoverage)&&(identical(other.zigbeeZoneId, zigbeeZoneId) || other.zigbeeZoneId == zigbeeZoneId)&&(identical(other.zigbeeToken, zigbeeToken) || other.zigbeeToken == zigbeeToken)&&(identical(other.zigbeePermitJoinExpiresAt, zigbeePermitJoinExpiresAt) || other.zigbeePermitJoinExpiresAt == zigbeePermitJoinExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,ident,flespiToken,modelId,model,protocolId,protocol,const DeepCollectionEquality().hash(additionalFields),qrCode,linkQr,const DeepCollectionEquality().hash(commands),const DeepCollectionEquality().hash(access),telemetry,visionProfileId,visionProfile,phone,modbus,isSuspended,hwModel,hwModelId,macAddress,const DeepCollectionEquality().hash(configParams),visionCaptureThreshold,const DeepCollectionEquality().hash(peripherals),const DeepCollectionEquality().hash(zigbeeDevices),const DeepCollectionEquality().hash(exposes),localIpAddress,hasWorldwideCoverage,zigbeeZoneId,zigbeeToken,zigbeePermitJoinExpiresAt]);

@override
String toString() {
  return 'Device(id: $id, name: $name, ident: $ident, flespiToken: $flespiToken, modelId: $modelId, model: $model, protocolId: $protocolId, protocol: $protocol, additionalFields: $additionalFields, qrCode: $qrCode, linkQr: $linkQr, commands: $commands, access: $access, telemetry: $telemetry, visionProfileId: $visionProfileId, visionProfile: $visionProfile, phone: $phone, modbus: $modbus, isSuspended: $isSuspended, hwModel: $hwModel, hwModelId: $hwModelId, macAddress: $macAddress, configParams: $configParams, visionCaptureThreshold: $visionCaptureThreshold, peripherals: $peripherals, zigbeeDevices: $zigbeeDevices, exposes: $exposes, localIpAddress: $localIpAddress, hasWorldwideCoverage: $hasWorldwideCoverage, zigbeeZoneId: $zigbeeZoneId, zigbeeToken: $zigbeeToken, zigbeePermitJoinExpiresAt: $zigbeePermitJoinExpiresAt)';
}


}

/// @nodoc
abstract mixin class $DeviceCopyWith<$Res>  {
  factory $DeviceCopyWith(Device value, $Res Function(Device) _then) = _$DeviceCopyWithImpl;
@useResult
$Res call({
 String id, String name, String ident, String? flespiToken, String? modelId, Model? model, String? protocolId, InboundProtocol? protocol, Map<String, dynamic>? additionalFields, String? qrCode, String? linkQr, List<DeviceCommand>? commands, List<Access>? access, DeviceTelemetry? telemetry, String? visionProfileId, VisionProfile? visionProfile, PhoneNumber? phone, ModbusConfig? modbus, bool? isSuspended, HwModel? hwModel, String? hwModelId, String? macAddress, Map<String, dynamic>? configParams,@DurationConverter() Duration? visionCaptureThreshold, List<Device>? peripherals, List<ZigbeeDevice>? zigbeeDevices, List<ZigbeeDeviceExpose>? exposes, String? localIpAddress, bool? hasWorldwideCoverage, String zigbeeZoneId, String zigbeeToken, DateTime? zigbeePermitJoinExpiresAt
});


$ModelCopyWith<$Res>? get model;$InboundProtocolCopyWith<$Res>? get protocol;$DeviceTelemetryCopyWith<$Res>? get telemetry;$VisionProfileCopyWith<$Res>? get visionProfile;$PhoneNumberCopyWith<$Res>? get phone;$ModbusConfigCopyWith<$Res>? get modbus;$HwModelCopyWith<$Res>? get hwModel;

}
/// @nodoc
class _$DeviceCopyWithImpl<$Res>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._self, this._then);

  final Device _self;
  final $Res Function(Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ident = null,Object? flespiToken = freezed,Object? modelId = freezed,Object? model = freezed,Object? protocolId = freezed,Object? protocol = freezed,Object? additionalFields = freezed,Object? qrCode = freezed,Object? linkQr = freezed,Object? commands = freezed,Object? access = freezed,Object? telemetry = freezed,Object? visionProfileId = freezed,Object? visionProfile = freezed,Object? phone = freezed,Object? modbus = freezed,Object? isSuspended = freezed,Object? hwModel = freezed,Object? hwModelId = freezed,Object? macAddress = freezed,Object? configParams = freezed,Object? visionCaptureThreshold = freezed,Object? peripherals = freezed,Object? zigbeeDevices = freezed,Object? exposes = freezed,Object? localIpAddress = freezed,Object? hasWorldwideCoverage = freezed,Object? zigbeeZoneId = null,Object? zigbeeToken = null,Object? zigbeePermitJoinExpiresAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ident: null == ident ? _self.ident : ident // ignore: cast_nullable_to_non_nullable
as String,flespiToken: freezed == flespiToken ? _self.flespiToken : flespiToken // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as Model?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as InboundProtocol?,additionalFields: freezed == additionalFields ? _self.additionalFields : additionalFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,linkQr: freezed == linkQr ? _self.linkQr : linkQr // ignore: cast_nullable_to_non_nullable
as String?,commands: freezed == commands ? _self.commands : commands // ignore: cast_nullable_to_non_nullable
as List<DeviceCommand>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,telemetry: freezed == telemetry ? _self.telemetry : telemetry // ignore: cast_nullable_to_non_nullable
as DeviceTelemetry?,visionProfileId: freezed == visionProfileId ? _self.visionProfileId : visionProfileId // ignore: cast_nullable_to_non_nullable
as String?,visionProfile: freezed == visionProfile ? _self.visionProfile : visionProfile // ignore: cast_nullable_to_non_nullable
as VisionProfile?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumber?,modbus: freezed == modbus ? _self.modbus : modbus // ignore: cast_nullable_to_non_nullable
as ModbusConfig?,isSuspended: freezed == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool?,hwModel: freezed == hwModel ? _self.hwModel : hwModel // ignore: cast_nullable_to_non_nullable
as HwModel?,hwModelId: freezed == hwModelId ? _self.hwModelId : hwModelId // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,configParams: freezed == configParams ? _self.configParams : configParams // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,visionCaptureThreshold: freezed == visionCaptureThreshold ? _self.visionCaptureThreshold : visionCaptureThreshold // ignore: cast_nullable_to_non_nullable
as Duration?,peripherals: freezed == peripherals ? _self.peripherals : peripherals // ignore: cast_nullable_to_non_nullable
as List<Device>?,zigbeeDevices: freezed == zigbeeDevices ? _self.zigbeeDevices : zigbeeDevices // ignore: cast_nullable_to_non_nullable
as List<ZigbeeDevice>?,exposes: freezed == exposes ? _self.exposes : exposes // ignore: cast_nullable_to_non_nullable
as List<ZigbeeDeviceExpose>?,localIpAddress: freezed == localIpAddress ? _self.localIpAddress : localIpAddress // ignore: cast_nullable_to_non_nullable
as String?,hasWorldwideCoverage: freezed == hasWorldwideCoverage ? _self.hasWorldwideCoverage : hasWorldwideCoverage // ignore: cast_nullable_to_non_nullable
as bool?,zigbeeZoneId: null == zigbeeZoneId ? _self.zigbeeZoneId : zigbeeZoneId // ignore: cast_nullable_to_non_nullable
as String,zigbeeToken: null == zigbeeToken ? _self.zigbeeToken : zigbeeToken // ignore: cast_nullable_to_non_nullable
as String,zigbeePermitJoinExpiresAt: freezed == zigbeePermitJoinExpiresAt ? _self.zigbeePermitJoinExpiresAt : zigbeePermitJoinExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $ModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $InboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceTelemetryCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
    return null;
  }

  return $DeviceTelemetryCopyWith<$Res>(_self.telemetry!, (value) {
    return _then(_self.copyWith(telemetry: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionProfileCopyWith<$Res>? get visionProfile {
    if (_self.visionProfile == null) {
    return null;
  }

  return $VisionProfileCopyWith<$Res>(_self.visionProfile!, (value) {
    return _then(_self.copyWith(visionProfile: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusConfigCopyWith<$Res>? get modbus {
    if (_self.modbus == null) {
    return null;
  }

  return $ModbusConfigCopyWith<$Res>(_self.modbus!, (value) {
    return _then(_self.copyWith(modbus: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HwModelCopyWith<$Res>? get hwModel {
    if (_self.hwModel == null) {
    return null;
  }

  return $HwModelCopyWith<$Res>(_self.hwModel!, (value) {
    return _then(_self.copyWith(hwModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [Device].
extension DevicePatterns on Device {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Device value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Device value)  $default,){
final _that = this;
switch (_that) {
case _Device():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Device value)?  $default,){
final _that = this;
switch (_that) {
case _Device() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String ident,  String? flespiToken,  String? modelId,  Model? model,  String? protocolId,  InboundProtocol? protocol,  Map<String, dynamic>? additionalFields,  String? qrCode,  String? linkQr,  List<DeviceCommand>? commands,  List<Access>? access,  DeviceTelemetry? telemetry,  String? visionProfileId,  VisionProfile? visionProfile,  PhoneNumber? phone,  ModbusConfig? modbus,  bool? isSuspended,  HwModel? hwModel,  String? hwModelId,  String? macAddress,  Map<String, dynamic>? configParams, @DurationConverter()  Duration? visionCaptureThreshold,  List<Device>? peripherals,  List<ZigbeeDevice>? zigbeeDevices,  List<ZigbeeDeviceExpose>? exposes,  String? localIpAddress,  bool? hasWorldwideCoverage,  String zigbeeZoneId,  String zigbeeToken,  DateTime? zigbeePermitJoinExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.name,_that.ident,_that.flespiToken,_that.modelId,_that.model,_that.protocolId,_that.protocol,_that.additionalFields,_that.qrCode,_that.linkQr,_that.commands,_that.access,_that.telemetry,_that.visionProfileId,_that.visionProfile,_that.phone,_that.modbus,_that.isSuspended,_that.hwModel,_that.hwModelId,_that.macAddress,_that.configParams,_that.visionCaptureThreshold,_that.peripherals,_that.zigbeeDevices,_that.exposes,_that.localIpAddress,_that.hasWorldwideCoverage,_that.zigbeeZoneId,_that.zigbeeToken,_that.zigbeePermitJoinExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String ident,  String? flespiToken,  String? modelId,  Model? model,  String? protocolId,  InboundProtocol? protocol,  Map<String, dynamic>? additionalFields,  String? qrCode,  String? linkQr,  List<DeviceCommand>? commands,  List<Access>? access,  DeviceTelemetry? telemetry,  String? visionProfileId,  VisionProfile? visionProfile,  PhoneNumber? phone,  ModbusConfig? modbus,  bool? isSuspended,  HwModel? hwModel,  String? hwModelId,  String? macAddress,  Map<String, dynamic>? configParams, @DurationConverter()  Duration? visionCaptureThreshold,  List<Device>? peripherals,  List<ZigbeeDevice>? zigbeeDevices,  List<ZigbeeDeviceExpose>? exposes,  String? localIpAddress,  bool? hasWorldwideCoverage,  String zigbeeZoneId,  String zigbeeToken,  DateTime? zigbeePermitJoinExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _Device():
return $default(_that.id,_that.name,_that.ident,_that.flespiToken,_that.modelId,_that.model,_that.protocolId,_that.protocol,_that.additionalFields,_that.qrCode,_that.linkQr,_that.commands,_that.access,_that.telemetry,_that.visionProfileId,_that.visionProfile,_that.phone,_that.modbus,_that.isSuspended,_that.hwModel,_that.hwModelId,_that.macAddress,_that.configParams,_that.visionCaptureThreshold,_that.peripherals,_that.zigbeeDevices,_that.exposes,_that.localIpAddress,_that.hasWorldwideCoverage,_that.zigbeeZoneId,_that.zigbeeToken,_that.zigbeePermitJoinExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String ident,  String? flespiToken,  String? modelId,  Model? model,  String? protocolId,  InboundProtocol? protocol,  Map<String, dynamic>? additionalFields,  String? qrCode,  String? linkQr,  List<DeviceCommand>? commands,  List<Access>? access,  DeviceTelemetry? telemetry,  String? visionProfileId,  VisionProfile? visionProfile,  PhoneNumber? phone,  ModbusConfig? modbus,  bool? isSuspended,  HwModel? hwModel,  String? hwModelId,  String? macAddress,  Map<String, dynamic>? configParams, @DurationConverter()  Duration? visionCaptureThreshold,  List<Device>? peripherals,  List<ZigbeeDevice>? zigbeeDevices,  List<ZigbeeDeviceExpose>? exposes,  String? localIpAddress,  bool? hasWorldwideCoverage,  String zigbeeZoneId,  String zigbeeToken,  DateTime? zigbeePermitJoinExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _Device() when $default != null:
return $default(_that.id,_that.name,_that.ident,_that.flespiToken,_that.modelId,_that.model,_that.protocolId,_that.protocol,_that.additionalFields,_that.qrCode,_that.linkQr,_that.commands,_that.access,_that.telemetry,_that.visionProfileId,_that.visionProfile,_that.phone,_that.modbus,_that.isSuspended,_that.hwModel,_that.hwModelId,_that.macAddress,_that.configParams,_that.visionCaptureThreshold,_that.peripherals,_that.zigbeeDevices,_that.exposes,_that.localIpAddress,_that.hasWorldwideCoverage,_that.zigbeeZoneId,_that.zigbeeToken,_that.zigbeePermitJoinExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Device extends Device {
  const _Device({required this.id, required this.name, required this.ident, this.flespiToken, this.modelId, this.model, this.protocolId, this.protocol, this.additionalFields, this.qrCode, this.linkQr, this.commands, this.access, this.telemetry, this.visionProfileId, this.visionProfile, this.phone, this.modbus, this.isSuspended, this.hwModel, this.hwModelId, this.macAddress, this.configParams, @DurationConverter() this.visionCaptureThreshold, this.peripherals, this.zigbeeDevices, this.exposes, this.localIpAddress, this.hasWorldwideCoverage, this.zigbeeZoneId = '', this.zigbeeToken = '', this.zigbeePermitJoinExpiresAt}): super._();
  factory _Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

/// Unique identifier for this device.
@override final  String id;
/// The [name] of the device.
@override final  String name;
/// The [ident] of the device. Generally, for GPS devices means the IMEI, for other devices means the
/// MAC address or randomly string.
@override final  String ident;
/// The [flespiToken] of the device.
@override final  String? flespiToken;
/// The [modelId] of the device.
@override final  String? modelId;
/// The [model] of the device.
@override final  Model? model;
/// The [protocolId] of the device. Only the ID
@override final  String? protocolId;
/// The [protocol] of the device.
@override final  InboundProtocol? protocol;
/// The [additionalFields] of the device, only will return something when is imported from compatible source.
@override final  Map<String, dynamic>? additionalFields;
/// The [qrCode] of the device.
@override final  String? qrCode;
/// The [linkQr] of the device, means the QR code generated for auto-config of the Layrz Link app device.
@override final  String? linkQr;
/// The [commands] of the device.
@override final  List<DeviceCommand>? commands;
/// The [access] of the device.
@override final  List<Access>? access;
/// Device last message, read the documentation of LastLocation for more information.
@override final  DeviceTelemetry? telemetry;
/// The [visionProfileId] of the device. Only the ID
@override final  String? visionProfileId;
/// The [visionProfile] of the device.
@override final  VisionProfile? visionProfile;
/// Is the phone number information linked to this device, can be null.
@override final  PhoneNumber? phone;
/// [modbus] is the configuration of the modbus device.
@override final  ModbusConfig? modbus;
/// [isSuspended] if the asset is suspended.
@override final  bool? isSuspended;
/// [hwModel] is the hardware model of the device.
@override final  HwModel? hwModel;
/// [hwModelId] is the hardware model ID of the device.
@override final  String? hwModelId;
/// [macAddress] is the MAC address of the device.
@override final  String? macAddress;
/// [configParams] is the configuration parameters received from the device, this information is
/// used to configure the device.
@override final  Map<String, dynamic>? configParams;
/// [visionCaptureThreshold] is the vision capture threshold of the device. This value is the
/// threshold of the indicator displayed on Layrz Vision app.
@override@DurationConverter() final  Duration? visionCaptureThreshold;
/// [peripherals] is the list of peripherals of the device. Only used when
/// [protocol.operationMode] is [OperationMode.peripheral].
@override final  List<Device>? peripherals;
/// [zigbeeDevices] is the list of Zigbee devices connected to this hub.
@override final  List<ZigbeeDevice>? zigbeeDevices;
/// [exposes] is the list of Zigbee exposes of this device, flattened across its bound
/// Zigbee device(s). Populated for leaf Zigbee devices; empty/null for non-Zigbee devices.
@override final  List<ZigbeeDeviceExpose>? exposes;
/// [localIpAddress] is the local IP address of the device, used for local communication.
@override final  String? localIpAddress;
/// [hasWorldwideCoverage] represents if the device has worldwide coverag For the BHS use case, this field is used to identify if the device has GPS insurance.
@override final  bool? hasWorldwideCoverage;
/// Auto-generated Zigbee zone ID (10 chars). Empty for non-Zigbee devices.
@override@JsonKey() final  String zigbeeZoneId;
/// Auto-generated Zigbee token (72 chars). Empty for non-Zigbee devices.
@override@JsonKey() final  String zigbeeToken;
/// When permit-join expires on the Zigbee coordinator. Null if not active.
///
/// The key matches the field name: the fragment requests `zigbeePermitJoinExpiresAt`,
/// so a snake_case [JsonKey] would never match and would decode to null forever.
@override final  DateTime? zigbeePermitJoinExpiresAt;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCopyWith<_Device> get copyWith => __$DeviceCopyWithImpl<_Device>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Device&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ident, ident) || other.ident == ident)&&(identical(other.flespiToken, flespiToken) || other.flespiToken == flespiToken)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.model, model) || other.model == model)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&const DeepCollectionEquality().equals(other.additionalFields, additionalFields)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.linkQr, linkQr) || other.linkQr == linkQr)&&const DeepCollectionEquality().equals(other.commands, commands)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.telemetry, telemetry) || other.telemetry == telemetry)&&(identical(other.visionProfileId, visionProfileId) || other.visionProfileId == visionProfileId)&&(identical(other.visionProfile, visionProfile) || other.visionProfile == visionProfile)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.modbus, modbus) || other.modbus == modbus)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.hwModel, hwModel) || other.hwModel == hwModel)&&(identical(other.hwModelId, hwModelId) || other.hwModelId == hwModelId)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&const DeepCollectionEquality().equals(other.configParams, configParams)&&(identical(other.visionCaptureThreshold, visionCaptureThreshold) || other.visionCaptureThreshold == visionCaptureThreshold)&&const DeepCollectionEquality().equals(other.peripherals, peripherals)&&const DeepCollectionEquality().equals(other.zigbeeDevices, zigbeeDevices)&&const DeepCollectionEquality().equals(other.exposes, exposes)&&(identical(other.localIpAddress, localIpAddress) || other.localIpAddress == localIpAddress)&&(identical(other.hasWorldwideCoverage, hasWorldwideCoverage) || other.hasWorldwideCoverage == hasWorldwideCoverage)&&(identical(other.zigbeeZoneId, zigbeeZoneId) || other.zigbeeZoneId == zigbeeZoneId)&&(identical(other.zigbeeToken, zigbeeToken) || other.zigbeeToken == zigbeeToken)&&(identical(other.zigbeePermitJoinExpiresAt, zigbeePermitJoinExpiresAt) || other.zigbeePermitJoinExpiresAt == zigbeePermitJoinExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,ident,flespiToken,modelId,model,protocolId,protocol,const DeepCollectionEquality().hash(additionalFields),qrCode,linkQr,const DeepCollectionEquality().hash(commands),const DeepCollectionEquality().hash(access),telemetry,visionProfileId,visionProfile,phone,modbus,isSuspended,hwModel,hwModelId,macAddress,const DeepCollectionEquality().hash(configParams),visionCaptureThreshold,const DeepCollectionEquality().hash(peripherals),const DeepCollectionEquality().hash(zigbeeDevices),const DeepCollectionEquality().hash(exposes),localIpAddress,hasWorldwideCoverage,zigbeeZoneId,zigbeeToken,zigbeePermitJoinExpiresAt]);

@override
String toString() {
  return 'Device(id: $id, name: $name, ident: $ident, flespiToken: $flespiToken, modelId: $modelId, model: $model, protocolId: $protocolId, protocol: $protocol, additionalFields: $additionalFields, qrCode: $qrCode, linkQr: $linkQr, commands: $commands, access: $access, telemetry: $telemetry, visionProfileId: $visionProfileId, visionProfile: $visionProfile, phone: $phone, modbus: $modbus, isSuspended: $isSuspended, hwModel: $hwModel, hwModelId: $hwModelId, macAddress: $macAddress, configParams: $configParams, visionCaptureThreshold: $visionCaptureThreshold, peripherals: $peripherals, zigbeeDevices: $zigbeeDevices, exposes: $exposes, localIpAddress: $localIpAddress, hasWorldwideCoverage: $hasWorldwideCoverage, zigbeeZoneId: $zigbeeZoneId, zigbeeToken: $zigbeeToken, zigbeePermitJoinExpiresAt: $zigbeePermitJoinExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) _then) = __$DeviceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String ident, String? flespiToken, String? modelId, Model? model, String? protocolId, InboundProtocol? protocol, Map<String, dynamic>? additionalFields, String? qrCode, String? linkQr, List<DeviceCommand>? commands, List<Access>? access, DeviceTelemetry? telemetry, String? visionProfileId, VisionProfile? visionProfile, PhoneNumber? phone, ModbusConfig? modbus, bool? isSuspended, HwModel? hwModel, String? hwModelId, String? macAddress, Map<String, dynamic>? configParams,@DurationConverter() Duration? visionCaptureThreshold, List<Device>? peripherals, List<ZigbeeDevice>? zigbeeDevices, List<ZigbeeDeviceExpose>? exposes, String? localIpAddress, bool? hasWorldwideCoverage, String zigbeeZoneId, String zigbeeToken, DateTime? zigbeePermitJoinExpiresAt
});


@override $ModelCopyWith<$Res>? get model;@override $InboundProtocolCopyWith<$Res>? get protocol;@override $DeviceTelemetryCopyWith<$Res>? get telemetry;@override $VisionProfileCopyWith<$Res>? get visionProfile;@override $PhoneNumberCopyWith<$Res>? get phone;@override $ModbusConfigCopyWith<$Res>? get modbus;@override $HwModelCopyWith<$Res>? get hwModel;

}
/// @nodoc
class __$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(this._self, this._then);

  final _Device _self;
  final $Res Function(_Device) _then;

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ident = null,Object? flespiToken = freezed,Object? modelId = freezed,Object? model = freezed,Object? protocolId = freezed,Object? protocol = freezed,Object? additionalFields = freezed,Object? qrCode = freezed,Object? linkQr = freezed,Object? commands = freezed,Object? access = freezed,Object? telemetry = freezed,Object? visionProfileId = freezed,Object? visionProfile = freezed,Object? phone = freezed,Object? modbus = freezed,Object? isSuspended = freezed,Object? hwModel = freezed,Object? hwModelId = freezed,Object? macAddress = freezed,Object? configParams = freezed,Object? visionCaptureThreshold = freezed,Object? peripherals = freezed,Object? zigbeeDevices = freezed,Object? exposes = freezed,Object? localIpAddress = freezed,Object? hasWorldwideCoverage = freezed,Object? zigbeeZoneId = null,Object? zigbeeToken = null,Object? zigbeePermitJoinExpiresAt = freezed,}) {
  return _then(_Device(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ident: null == ident ? _self.ident : ident // ignore: cast_nullable_to_non_nullable
as String,flespiToken: freezed == flespiToken ? _self.flespiToken : flespiToken // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as Model?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as InboundProtocol?,additionalFields: freezed == additionalFields ? _self.additionalFields : additionalFields // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,linkQr: freezed == linkQr ? _self.linkQr : linkQr // ignore: cast_nullable_to_non_nullable
as String?,commands: freezed == commands ? _self.commands : commands // ignore: cast_nullable_to_non_nullable
as List<DeviceCommand>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,telemetry: freezed == telemetry ? _self.telemetry : telemetry // ignore: cast_nullable_to_non_nullable
as DeviceTelemetry?,visionProfileId: freezed == visionProfileId ? _self.visionProfileId : visionProfileId // ignore: cast_nullable_to_non_nullable
as String?,visionProfile: freezed == visionProfile ? _self.visionProfile : visionProfile // ignore: cast_nullable_to_non_nullable
as VisionProfile?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumber?,modbus: freezed == modbus ? _self.modbus : modbus // ignore: cast_nullable_to_non_nullable
as ModbusConfig?,isSuspended: freezed == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool?,hwModel: freezed == hwModel ? _self.hwModel : hwModel // ignore: cast_nullable_to_non_nullable
as HwModel?,hwModelId: freezed == hwModelId ? _self.hwModelId : hwModelId // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,configParams: freezed == configParams ? _self.configParams : configParams // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,visionCaptureThreshold: freezed == visionCaptureThreshold ? _self.visionCaptureThreshold : visionCaptureThreshold // ignore: cast_nullable_to_non_nullable
as Duration?,peripherals: freezed == peripherals ? _self.peripherals : peripherals // ignore: cast_nullable_to_non_nullable
as List<Device>?,zigbeeDevices: freezed == zigbeeDevices ? _self.zigbeeDevices : zigbeeDevices // ignore: cast_nullable_to_non_nullable
as List<ZigbeeDevice>?,exposes: freezed == exposes ? _self.exposes : exposes // ignore: cast_nullable_to_non_nullable
as List<ZigbeeDeviceExpose>?,localIpAddress: freezed == localIpAddress ? _self.localIpAddress : localIpAddress // ignore: cast_nullable_to_non_nullable
as String?,hasWorldwideCoverage: freezed == hasWorldwideCoverage ? _self.hasWorldwideCoverage : hasWorldwideCoverage // ignore: cast_nullable_to_non_nullable
as bool?,zigbeeZoneId: null == zigbeeZoneId ? _self.zigbeeZoneId : zigbeeZoneId // ignore: cast_nullable_to_non_nullable
as String,zigbeeToken: null == zigbeeToken ? _self.zigbeeToken : zigbeeToken // ignore: cast_nullable_to_non_nullable
as String,zigbeePermitJoinExpiresAt: freezed == zigbeePermitJoinExpiresAt ? _self.zigbeePermitJoinExpiresAt : zigbeePermitJoinExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $ModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $InboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceTelemetryCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
    return null;
  }

  return $DeviceTelemetryCopyWith<$Res>(_self.telemetry!, (value) {
    return _then(_self.copyWith(telemetry: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionProfileCopyWith<$Res>? get visionProfile {
    if (_self.visionProfile == null) {
    return null;
  }

  return $VisionProfileCopyWith<$Res>(_self.visionProfile!, (value) {
    return _then(_self.copyWith(visionProfile: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusConfigCopyWith<$Res>? get modbus {
    if (_self.modbus == null) {
    return null;
  }

  return $ModbusConfigCopyWith<$Res>(_self.modbus!, (value) {
    return _then(_self.copyWith(modbus: value));
  });
}/// Create a copy of Device
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HwModelCopyWith<$Res>? get hwModel {
    if (_self.hwModel == null) {
    return null;
  }

  return $HwModelCopyWith<$Res>(_self.hwModel!, (value) {
    return _then(_self.copyWith(hwModel: value));
  });
}
}


/// @nodoc
mixin _$DeviceCommand {

/// Unique identifier for this command.
 String get id;/// Is name of the command. (Only reference, does not affect the command itself)
 String get name;/// Is the source of the command.
 CommandSource get source;/// [isGlobal] is a flag that indicates if the command is global or not. A global command
/// is any command created for Layrz LTD members, and available for all of our customers
/// to use. A non-global command is a command created by a customer for their own use, this
/// can be or not a universal command or local command.
 bool get isGlobal;/// [payload] is the text payload to send into a SMS command.
 String? get payload;/// Is the tag id of the command for "multi" execution from any [Action].
 String? get tagId;/// Is the [deviceId] that the command is for.
/// Only will comes when the command comes from the asset or device query.
 String? get deviceId;/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
 String? get protocolId;/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
 InboundProtocol? get protocol;/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
 String? get modelId;/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
 Model? get model;/// [definition] refers to the definition of the command.
 String? get definition;/// [externalAccountId] refers to the external account id of the command.
 String? get externalAccountId;/// [data] refers to the data of the command.
 CommandData? get data;/// [modbusParameter] refers to the modbus parameter of the command.
/// This parameter contains the composition of the modbus command, like the controller address, function code,
/// register address, etc.
 ModbusParameter? get modbusParameter;/// [modbusPort] refers to the modbus port of the command.
/// This parameter contains the port number of the modbus command.
 String? get modbusPort;/// Is a list of granted access to this entity.
 List<Access>? get access;/// List of possible devices that can perform this command.
 List<Device>? get possibleDevices;
/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCommandCopyWith<DeviceCommand> get copyWith => _$DeviceCommandCopyWithImpl<DeviceCommand>(this as DeviceCommand, _$identity);

  /// Serializes this DeviceCommand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.tagId, tagId) || other.tagId == tagId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.model, model) || other.model == model)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.externalAccountId, externalAccountId) || other.externalAccountId == externalAccountId)&&(identical(other.data, data) || other.data == data)&&(identical(other.modbusParameter, modbusParameter) || other.modbusParameter == modbusParameter)&&(identical(other.modbusPort, modbusPort) || other.modbusPort == modbusPort)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.possibleDevices, possibleDevices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,isGlobal,payload,tagId,deviceId,protocolId,protocol,modelId,model,definition,externalAccountId,data,modbusParameter,modbusPort,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(possibleDevices));

@override
String toString() {
  return 'DeviceCommand(id: $id, name: $name, source: $source, isGlobal: $isGlobal, payload: $payload, tagId: $tagId, deviceId: $deviceId, protocolId: $protocolId, protocol: $protocol, modelId: $modelId, model: $model, definition: $definition, externalAccountId: $externalAccountId, data: $data, modbusParameter: $modbusParameter, modbusPort: $modbusPort, access: $access, possibleDevices: $possibleDevices)';
}


}

/// @nodoc
abstract mixin class $DeviceCommandCopyWith<$Res>  {
  factory $DeviceCommandCopyWith(DeviceCommand value, $Res Function(DeviceCommand) _then) = _$DeviceCommandCopyWithImpl;
@useResult
$Res call({
 String id, String name, CommandSource source, bool isGlobal, String? payload, String? tagId, String? deviceId, String? protocolId, InboundProtocol? protocol, String? modelId, Model? model, String? definition, String? externalAccountId, CommandData? data, ModbusParameter? modbusParameter, String? modbusPort, List<Access>? access, List<Device>? possibleDevices
});


$InboundProtocolCopyWith<$Res>? get protocol;$ModelCopyWith<$Res>? get model;$CommandDataCopyWith<$Res>? get data;$ModbusParameterCopyWith<$Res>? get modbusParameter;

}
/// @nodoc
class _$DeviceCommandCopyWithImpl<$Res>
    implements $DeviceCommandCopyWith<$Res> {
  _$DeviceCommandCopyWithImpl(this._self, this._then);

  final DeviceCommand _self;
  final $Res Function(DeviceCommand) _then;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? source = null,Object? isGlobal = null,Object? payload = freezed,Object? tagId = freezed,Object? deviceId = freezed,Object? protocolId = freezed,Object? protocol = freezed,Object? modelId = freezed,Object? model = freezed,Object? definition = freezed,Object? externalAccountId = freezed,Object? data = freezed,Object? modbusParameter = freezed,Object? modbusPort = freezed,Object? access = freezed,Object? possibleDevices = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandSource,isGlobal: null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,tagId: freezed == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as InboundProtocol?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as Model?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommandData?,modbusParameter: freezed == modbusParameter ? _self.modbusParameter : modbusParameter // ignore: cast_nullable_to_non_nullable
as ModbusParameter?,modbusPort: freezed == modbusPort ? _self.modbusPort : modbusPort // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,possibleDevices: freezed == possibleDevices ? _self.possibleDevices : possibleDevices // ignore: cast_nullable_to_non_nullable
as List<Device>?,
  ));
}
/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $InboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $ModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommandDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusParameterCopyWith<$Res>? get modbusParameter {
    if (_self.modbusParameter == null) {
    return null;
  }

  return $ModbusParameterCopyWith<$Res>(_self.modbusParameter!, (value) {
    return _then(_self.copyWith(modbusParameter: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceCommand].
extension DeviceCommandPatterns on DeviceCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceCommand value)  $default,){
final _that = this;
switch (_that) {
case _DeviceCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceCommand value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CommandSource source,  bool isGlobal,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  InboundProtocol? protocol,  String? modelId,  Model? model,  String? definition,  String? externalAccountId,  CommandData? data,  ModbusParameter? modbusParameter,  String? modbusPort,  List<Access>? access,  List<Device>? possibleDevices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.isGlobal,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.protocol,_that.modelId,_that.model,_that.definition,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort,_that.access,_that.possibleDevices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CommandSource source,  bool isGlobal,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  InboundProtocol? protocol,  String? modelId,  Model? model,  String? definition,  String? externalAccountId,  CommandData? data,  ModbusParameter? modbusParameter,  String? modbusPort,  List<Access>? access,  List<Device>? possibleDevices)  $default,) {final _that = this;
switch (_that) {
case _DeviceCommand():
return $default(_that.id,_that.name,_that.source,_that.isGlobal,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.protocol,_that.modelId,_that.model,_that.definition,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort,_that.access,_that.possibleDevices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CommandSource source,  bool isGlobal,  String? payload,  String? tagId,  String? deviceId,  String? protocolId,  InboundProtocol? protocol,  String? modelId,  Model? model,  String? definition,  String? externalAccountId,  CommandData? data,  ModbusParameter? modbusParameter,  String? modbusPort,  List<Access>? access,  List<Device>? possibleDevices)?  $default,) {final _that = this;
switch (_that) {
case _DeviceCommand() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.isGlobal,_that.payload,_that.tagId,_that.deviceId,_that.protocolId,_that.protocol,_that.modelId,_that.model,_that.definition,_that.externalAccountId,_that.data,_that.modbusParameter,_that.modbusPort,_that.access,_that.possibleDevices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceCommand extends DeviceCommand {
  const _DeviceCommand({required this.id, required this.name, required this.source, this.isGlobal = false, this.payload, this.tagId, this.deviceId, this.protocolId, this.protocol, this.modelId, this.model, this.definition, this.externalAccountId, this.data, this.modbusParameter, this.modbusPort, this.access, this.possibleDevices}): super._();
  factory _DeviceCommand.fromJson(Map<String, dynamic> json) => _$DeviceCommandFromJson(json);

/// Unique identifier for this command.
@override final  String id;
/// Is name of the command. (Only reference, does not affect the command itself)
@override final  String name;
/// Is the source of the command.
@override final  CommandSource source;
/// [isGlobal] is a flag that indicates if the command is global or not. A global command
/// is any command created for Layrz LTD members, and available for all of our customers
/// to use. A non-global command is a command created by a customer for their own use, this
/// can be or not a universal command or local command.
@override@JsonKey() final  bool isGlobal;
/// [payload] is the text payload to send into a SMS command.
@override final  String? payload;
/// Is the tag id of the command for "multi" execution from any [Action].
@override final  String? tagId;
/// Is the [deviceId] that the command is for.
/// Only will comes when the command comes from the asset or device query.
@override final  String? deviceId;
/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
@override final  String? protocolId;
/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
@override final  InboundProtocol? protocol;
/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
@override final  String? modelId;
/// Is the [protocol], [protocolId] and the [model], [modelId] of the command.
/// Only will comes when the command is a "template"
@override final  Model? model;
/// [definition] refers to the definition of the command.
@override final  String? definition;
/// [externalAccountId] refers to the external account id of the command.
@override final  String? externalAccountId;
/// [data] refers to the data of the command.
@override final  CommandData? data;
/// [modbusParameter] refers to the modbus parameter of the command.
/// This parameter contains the composition of the modbus command, like the controller address, function code,
/// register address, etc.
@override final  ModbusParameter? modbusParameter;
/// [modbusPort] refers to the modbus port of the command.
/// This parameter contains the port number of the modbus command.
@override final  String? modbusPort;
/// Is a list of granted access to this entity.
@override final  List<Access>? access;
/// List of possible devices that can perform this command.
@override final  List<Device>? possibleDevices;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCommandCopyWith<_DeviceCommand> get copyWith => __$DeviceCommandCopyWithImpl<_DeviceCommand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceCommandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.isGlobal, isGlobal) || other.isGlobal == isGlobal)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.tagId, tagId) || other.tagId == tagId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.model, model) || other.model == model)&&(identical(other.definition, definition) || other.definition == definition)&&(identical(other.externalAccountId, externalAccountId) || other.externalAccountId == externalAccountId)&&(identical(other.data, data) || other.data == data)&&(identical(other.modbusParameter, modbusParameter) || other.modbusParameter == modbusParameter)&&(identical(other.modbusPort, modbusPort) || other.modbusPort == modbusPort)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.possibleDevices, possibleDevices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,isGlobal,payload,tagId,deviceId,protocolId,protocol,modelId,model,definition,externalAccountId,data,modbusParameter,modbusPort,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(possibleDevices));

@override
String toString() {
  return 'DeviceCommand(id: $id, name: $name, source: $source, isGlobal: $isGlobal, payload: $payload, tagId: $tagId, deviceId: $deviceId, protocolId: $protocolId, protocol: $protocol, modelId: $modelId, model: $model, definition: $definition, externalAccountId: $externalAccountId, data: $data, modbusParameter: $modbusParameter, modbusPort: $modbusPort, access: $access, possibleDevices: $possibleDevices)';
}


}

/// @nodoc
abstract mixin class _$DeviceCommandCopyWith<$Res> implements $DeviceCommandCopyWith<$Res> {
  factory _$DeviceCommandCopyWith(_DeviceCommand value, $Res Function(_DeviceCommand) _then) = __$DeviceCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CommandSource source, bool isGlobal, String? payload, String? tagId, String? deviceId, String? protocolId, InboundProtocol? protocol, String? modelId, Model? model, String? definition, String? externalAccountId, CommandData? data, ModbusParameter? modbusParameter, String? modbusPort, List<Access>? access, List<Device>? possibleDevices
});


@override $InboundProtocolCopyWith<$Res>? get protocol;@override $ModelCopyWith<$Res>? get model;@override $CommandDataCopyWith<$Res>? get data;@override $ModbusParameterCopyWith<$Res>? get modbusParameter;

}
/// @nodoc
class __$DeviceCommandCopyWithImpl<$Res>
    implements _$DeviceCommandCopyWith<$Res> {
  __$DeviceCommandCopyWithImpl(this._self, this._then);

  final _DeviceCommand _self;
  final $Res Function(_DeviceCommand) _then;

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? source = null,Object? isGlobal = null,Object? payload = freezed,Object? tagId = freezed,Object? deviceId = freezed,Object? protocolId = freezed,Object? protocol = freezed,Object? modelId = freezed,Object? model = freezed,Object? definition = freezed,Object? externalAccountId = freezed,Object? data = freezed,Object? modbusParameter = freezed,Object? modbusPort = freezed,Object? access = freezed,Object? possibleDevices = freezed,}) {
  return _then(_DeviceCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as CommandSource,isGlobal: null == isGlobal ? _self.isGlobal : isGlobal // ignore: cast_nullable_to_non_nullable
as bool,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,tagId: freezed == tagId ? _self.tagId : tagId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as InboundProtocol?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as Model?,definition: freezed == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommandData?,modbusParameter: freezed == modbusParameter ? _self.modbusParameter : modbusParameter // ignore: cast_nullable_to_non_nullable
as ModbusParameter?,modbusPort: freezed == modbusPort ? _self.modbusPort : modbusPort // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,possibleDevices: freezed == possibleDevices ? _self.possibleDevices : possibleDevices // ignore: cast_nullable_to_non_nullable
as List<Device>?,
  ));
}

/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $InboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $ModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommandDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of DeviceCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusParameterCopyWith<$Res>? get modbusParameter {
    if (_self.modbusParameter == null) {
    return null;
  }

  return $ModbusParameterCopyWith<$Res>(_self.modbusParameter!, (value) {
    return _then(_self.copyWith(modbusParameter: value));
  });
}
}


/// @nodoc
mixin _$DeviceInput {

/// [id] is the unique identifier of the device.
 String? get id;/// [id] is the unique identifier of the device.
 set id(String? value);/// [name] is the name of the device.
 String get name;/// [name] is the name of the device.
 set name(String value);/// [ident] is the ident of the device. Generally, for GPS devices means the IMEI, for other devices means the
/// MAC address or randomly string.
 String get ident;/// [ident] is the ident of the device. Generally, for GPS devices means the IMEI, for other devices means the
/// MAC address or randomly string.
 set ident(String value);/// [protocolId] is the ID of the protocol
 String? get protocolId;/// [protocolId] is the ID of the protocol
 set protocolId(String? value);/// [modelId] is the ID of the model
 String? get modelId;/// [modelId] is the ID of the model
 set modelId(String? value);/// [visionProfileId] is the ID of the vision profile
 String? get visionProfileId;/// [visionProfileId] is the ID of the vision profile
 set visionProfileId(String? value);/// [phone] is the phone number information linked to this device.
 PhoneNumberInput? get phone;/// [phone] is the phone number information linked to this device.
 set phone(PhoneNumberInput? value);/// [modbus] is the configuration of the modbus device.
 ModbusConfigInput? get modbus;/// [modbus] is the configuration of the modbus device.
 set modbus(ModbusConfigInput? value);/// [macAddress] is the MAC address of the device.
 String? get macAddress;/// [macAddress] is the MAC address of the device.
 set macAddress(String? value);/// [hwModelId] is the hardware model ID of the device.
 String? get hwModelId;/// [hwModelId] is the hardware model ID of the device.
 set hwModelId(String? value);/// [visionCaptureThreshold] is the vision capture threshold of the device. This value is the
/// threshold of the indicator displayed on Layrz Vision app.
@DurationConverter() Duration? get visionCaptureThreshold;/// [visionCaptureThreshold] is the vision capture threshold of the device. This value is the
/// threshold of the indicator displayed on Layrz Vision app.
@DurationConverter() set visionCaptureThreshold(Duration? value);/// [localIpAddress] is the local IP address of the device, used for local communication.
 String? get localIpAddress;/// [localIpAddress] is the local IP address of the device, used for local communication.
 set localIpAddress(String? value);
/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInputCopyWith<DeviceInput> get copyWith => _$DeviceInputCopyWithImpl<DeviceInput>(this as DeviceInput, _$identity);

  /// Serializes this DeviceInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'DeviceInput(id: $id, name: $name, ident: $ident, protocolId: $protocolId, modelId: $modelId, visionProfileId: $visionProfileId, phone: $phone, modbus: $modbus, macAddress: $macAddress, hwModelId: $hwModelId, visionCaptureThreshold: $visionCaptureThreshold, localIpAddress: $localIpAddress)';
}


}

/// @nodoc
abstract mixin class $DeviceInputCopyWith<$Res>  {
  factory $DeviceInputCopyWith(DeviceInput value, $Res Function(DeviceInput) _then) = _$DeviceInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String ident, String? protocolId, String? modelId, String? visionProfileId, PhoneNumberInput? phone, ModbusConfigInput? modbus, String? macAddress, String? hwModelId,@DurationConverter() Duration? visionCaptureThreshold, String? localIpAddress
});


$PhoneNumberInputCopyWith<$Res>? get phone;$ModbusConfigInputCopyWith<$Res>? get modbus;

}
/// @nodoc
class _$DeviceInputCopyWithImpl<$Res>
    implements $DeviceInputCopyWith<$Res> {
  _$DeviceInputCopyWithImpl(this._self, this._then);

  final DeviceInput _self;
  final $Res Function(DeviceInput) _then;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? ident = null,Object? protocolId = freezed,Object? modelId = freezed,Object? visionProfileId = freezed,Object? phone = freezed,Object? modbus = freezed,Object? macAddress = freezed,Object? hwModelId = freezed,Object? visionCaptureThreshold = freezed,Object? localIpAddress = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ident: null == ident ? _self.ident : ident // ignore: cast_nullable_to_non_nullable
as String,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,visionProfileId: freezed == visionProfileId ? _self.visionProfileId : visionProfileId // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberInput?,modbus: freezed == modbus ? _self.modbus : modbus // ignore: cast_nullable_to_non_nullable
as ModbusConfigInput?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,hwModelId: freezed == hwModelId ? _self.hwModelId : hwModelId // ignore: cast_nullable_to_non_nullable
as String?,visionCaptureThreshold: freezed == visionCaptureThreshold ? _self.visionCaptureThreshold : visionCaptureThreshold // ignore: cast_nullable_to_non_nullable
as Duration?,localIpAddress: freezed == localIpAddress ? _self.localIpAddress : localIpAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberInputCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberInputCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusConfigInputCopyWith<$Res>? get modbus {
    if (_self.modbus == null) {
    return null;
  }

  return $ModbusConfigInputCopyWith<$Res>(_self.modbus!, (value) {
    return _then(_self.copyWith(modbus: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceInput].
extension DeviceInputPatterns on DeviceInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceInput value)  $default,){
final _that = this;
switch (_that) {
case _DeviceInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceInput value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String ident,  String? protocolId,  String? modelId,  String? visionProfileId,  PhoneNumberInput? phone,  ModbusConfigInput? modbus,  String? macAddress,  String? hwModelId, @DurationConverter()  Duration? visionCaptureThreshold,  String? localIpAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
return $default(_that.id,_that.name,_that.ident,_that.protocolId,_that.modelId,_that.visionProfileId,_that.phone,_that.modbus,_that.macAddress,_that.hwModelId,_that.visionCaptureThreshold,_that.localIpAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String ident,  String? protocolId,  String? modelId,  String? visionProfileId,  PhoneNumberInput? phone,  ModbusConfigInput? modbus,  String? macAddress,  String? hwModelId, @DurationConverter()  Duration? visionCaptureThreshold,  String? localIpAddress)  $default,) {final _that = this;
switch (_that) {
case _DeviceInput():
return $default(_that.id,_that.name,_that.ident,_that.protocolId,_that.modelId,_that.visionProfileId,_that.phone,_that.modbus,_that.macAddress,_that.hwModelId,_that.visionCaptureThreshold,_that.localIpAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String ident,  String? protocolId,  String? modelId,  String? visionProfileId,  PhoneNumberInput? phone,  ModbusConfigInput? modbus,  String? macAddress,  String? hwModelId, @DurationConverter()  Duration? visionCaptureThreshold,  String? localIpAddress)?  $default,) {final _that = this;
switch (_that) {
case _DeviceInput() when $default != null:
return $default(_that.id,_that.name,_that.ident,_that.protocolId,_that.modelId,_that.visionProfileId,_that.phone,_that.modbus,_that.macAddress,_that.hwModelId,_that.visionCaptureThreshold,_that.localIpAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceInput extends DeviceInput {
   _DeviceInput({this.id, this.name = '', this.ident = '', this.protocolId, this.modelId, this.visionProfileId, this.phone, this.modbus, this.macAddress, this.hwModelId, @DurationConverter() this.visionCaptureThreshold, this.localIpAddress}): super._();
  factory _DeviceInput.fromJson(Map<String, dynamic> json) => _$DeviceInputFromJson(json);

/// [id] is the unique identifier of the device.
@override  String? id;
/// [name] is the name of the device.
@override@JsonKey()  String name;
/// [ident] is the ident of the device. Generally, for GPS devices means the IMEI, for other devices means the
/// MAC address or randomly string.
@override@JsonKey()  String ident;
/// [protocolId] is the ID of the protocol
@override  String? protocolId;
/// [modelId] is the ID of the model
@override  String? modelId;
/// [visionProfileId] is the ID of the vision profile
@override  String? visionProfileId;
/// [phone] is the phone number information linked to this device.
@override  PhoneNumberInput? phone;
/// [modbus] is the configuration of the modbus device.
@override  ModbusConfigInput? modbus;
/// [macAddress] is the MAC address of the device.
@override  String? macAddress;
/// [hwModelId] is the hardware model ID of the device.
@override  String? hwModelId;
/// [visionCaptureThreshold] is the vision capture threshold of the device. This value is the
/// threshold of the indicator displayed on Layrz Vision app.
@override@DurationConverter()  Duration? visionCaptureThreshold;
/// [localIpAddress] is the local IP address of the device, used for local communication.
@override  String? localIpAddress;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceInputCopyWith<_DeviceInput> get copyWith => __$DeviceInputCopyWithImpl<_DeviceInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceInputToJson(this, );
}



@override
String toString() {
  return 'DeviceInput(id: $id, name: $name, ident: $ident, protocolId: $protocolId, modelId: $modelId, visionProfileId: $visionProfileId, phone: $phone, modbus: $modbus, macAddress: $macAddress, hwModelId: $hwModelId, visionCaptureThreshold: $visionCaptureThreshold, localIpAddress: $localIpAddress)';
}


}

/// @nodoc
abstract mixin class _$DeviceInputCopyWith<$Res> implements $DeviceInputCopyWith<$Res> {
  factory _$DeviceInputCopyWith(_DeviceInput value, $Res Function(_DeviceInput) _then) = __$DeviceInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String ident, String? protocolId, String? modelId, String? visionProfileId, PhoneNumberInput? phone, ModbusConfigInput? modbus, String? macAddress, String? hwModelId,@DurationConverter() Duration? visionCaptureThreshold, String? localIpAddress
});


@override $PhoneNumberInputCopyWith<$Res>? get phone;@override $ModbusConfigInputCopyWith<$Res>? get modbus;

}
/// @nodoc
class __$DeviceInputCopyWithImpl<$Res>
    implements _$DeviceInputCopyWith<$Res> {
  __$DeviceInputCopyWithImpl(this._self, this._then);

  final _DeviceInput _self;
  final $Res Function(_DeviceInput) _then;

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? ident = null,Object? protocolId = freezed,Object? modelId = freezed,Object? visionProfileId = freezed,Object? phone = freezed,Object? modbus = freezed,Object? macAddress = freezed,Object? hwModelId = freezed,Object? visionCaptureThreshold = freezed,Object? localIpAddress = freezed,}) {
  return _then(_DeviceInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ident: null == ident ? _self.ident : ident // ignore: cast_nullable_to_non_nullable
as String,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,visionProfileId: freezed == visionProfileId ? _self.visionProfileId : visionProfileId // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneNumberInput?,modbus: freezed == modbus ? _self.modbus : modbus // ignore: cast_nullable_to_non_nullable
as ModbusConfigInput?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,hwModelId: freezed == hwModelId ? _self.hwModelId : hwModelId // ignore: cast_nullable_to_non_nullable
as String?,visionCaptureThreshold: freezed == visionCaptureThreshold ? _self.visionCaptureThreshold : visionCaptureThreshold // ignore: cast_nullable_to_non_nullable
as Duration?,localIpAddress: freezed == localIpAddress ? _self.localIpAddress : localIpAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberInputCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneNumberInputCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}/// Create a copy of DeviceInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModbusConfigInputCopyWith<$Res>? get modbus {
    if (_self.modbus == null) {
    return null;
  }

  return $ModbusConfigInputCopyWith<$Res>(_self.modbus!, (value) {
    return _then(_self.copyWith(modbus: value));
  });
}
}


/// @nodoc
mixin _$DeviceTelemetry {

/// ID of the message entity.
 String get id;/// ID of the unit.
 String? get deviceId;/// Unix of last reception date.
@TimestampConverter() DateTime get receivedAt;/// Current position of the message.
 TelemetryPosition? get position;/// Raw received payload values list of the message.
 List<TelemetrySensor>? get payload;
/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTelemetryCopyWith<DeviceTelemetry> get copyWith => _$DeviceTelemetryCopyWithImpl<DeviceTelemetry>(this as DeviceTelemetry, _$identity);

  /// Serializes this DeviceTelemetry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTelemetry&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,receivedAt,position,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'DeviceTelemetry(id: $id, deviceId: $deviceId, receivedAt: $receivedAt, position: $position, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $DeviceTelemetryCopyWith<$Res>  {
  factory $DeviceTelemetryCopyWith(DeviceTelemetry value, $Res Function(DeviceTelemetry) _then) = _$DeviceTelemetryCopyWithImpl;
@useResult
$Res call({
 String id, String? deviceId,@TimestampConverter() DateTime receivedAt, TelemetryPosition? position, List<TelemetrySensor>? payload
});


$TelemetryPositionCopyWith<$Res>? get position;

}
/// @nodoc
class _$DeviceTelemetryCopyWithImpl<$Res>
    implements $DeviceTelemetryCopyWith<$Res> {
  _$DeviceTelemetryCopyWithImpl(this._self, this._then);

  final DeviceTelemetry _self;
  final $Res Function(DeviceTelemetry) _then;

/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceId = freezed,Object? receivedAt = null,Object? position = freezed,Object? payload = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,
  ));
}
/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceTelemetry].
extension DeviceTelemetryPatterns on DeviceTelemetry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceTelemetry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceTelemetry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceTelemetry value)  $default,){
final _that = this;
switch (_that) {
case _DeviceTelemetry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceTelemetry value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceTelemetry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? deviceId, @TimestampConverter()  DateTime receivedAt,  TelemetryPosition? position,  List<TelemetrySensor>? payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTelemetry() when $default != null:
return $default(_that.id,_that.deviceId,_that.receivedAt,_that.position,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? deviceId, @TimestampConverter()  DateTime receivedAt,  TelemetryPosition? position,  List<TelemetrySensor>? payload)  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetry():
return $default(_that.id,_that.deviceId,_that.receivedAt,_that.position,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? deviceId, @TimestampConverter()  DateTime receivedAt,  TelemetryPosition? position,  List<TelemetrySensor>? payload)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTelemetry() when $default != null:
return $default(_that.id,_that.deviceId,_that.receivedAt,_that.position,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTelemetry extends DeviceTelemetry {
  const _DeviceTelemetry({required this.id, this.deviceId, @TimestampConverter() required this.receivedAt, this.position, this.payload}): super._();
  factory _DeviceTelemetry.fromJson(Map<String, dynamic> json) => _$DeviceTelemetryFromJson(json);

/// ID of the message entity.
@override final  String id;
/// ID of the unit.
@override final  String? deviceId;
/// Unix of last reception date.
@override@TimestampConverter() final  DateTime receivedAt;
/// Current position of the message.
@override final  TelemetryPosition? position;
/// Raw received payload values list of the message.
@override final  List<TelemetrySensor>? payload;

/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceTelemetryCopyWith<_DeviceTelemetry> get copyWith => __$DeviceTelemetryCopyWithImpl<_DeviceTelemetry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceTelemetryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTelemetry&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,receivedAt,position,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'DeviceTelemetry(id: $id, deviceId: $deviceId, receivedAt: $receivedAt, position: $position, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$DeviceTelemetryCopyWith<$Res> implements $DeviceTelemetryCopyWith<$Res> {
  factory _$DeviceTelemetryCopyWith(_DeviceTelemetry value, $Res Function(_DeviceTelemetry) _then) = __$DeviceTelemetryCopyWithImpl;
@override @useResult
$Res call({
 String id, String? deviceId,@TimestampConverter() DateTime receivedAt, TelemetryPosition? position, List<TelemetrySensor>? payload
});


@override $TelemetryPositionCopyWith<$Res>? get position;

}
/// @nodoc
class __$DeviceTelemetryCopyWithImpl<$Res>
    implements _$DeviceTelemetryCopyWith<$Res> {
  __$DeviceTelemetryCopyWithImpl(this._self, this._then);

  final _DeviceTelemetry _self;
  final $Res Function(_DeviceTelemetry) _then;

/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceId = freezed,Object? receivedAt = null,Object? position = freezed,Object? payload = freezed,}) {
  return _then(_DeviceTelemetry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,
  ));
}

/// Create a copy of DeviceTelemetry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// @nodoc
mixin _$TelemetryPosition {

/// Latitude in decimal degrees format.
 double? get latitude;/// Longitude in decimal degrees format.
 double? get longitude;/// Registered altitude, defined in meters.
 double? get altitude;/// Registered speed, defined in kilometers per hour.
 double? get speed;/// Registered direction, defined in degrees.
 double? get direction;/// Number of satellites connected to.
 int? get satellites;/// Horizontal dilution of precision registered for.
 double? get hdop;/// Unix of last reception date.
@TimestampOrNullConverter() DateTime? get timestamp;
/// Create a copy of TelemetryPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<TelemetryPosition> get copyWith => _$TelemetryPositionCopyWithImpl<TelemetryPosition>(this as TelemetryPosition, _$identity);

  /// Serializes this TelemetryPosition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelemetryPosition&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.satellites, satellites) || other.satellites == satellites)&&(identical(other.hdop, hdop) || other.hdop == hdop)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,speed,direction,satellites,hdop,timestamp);

@override
String toString() {
  return 'TelemetryPosition(latitude: $latitude, longitude: $longitude, altitude: $altitude, speed: $speed, direction: $direction, satellites: $satellites, hdop: $hdop, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $TelemetryPositionCopyWith<$Res>  {
  factory $TelemetryPositionCopyWith(TelemetryPosition value, $Res Function(TelemetryPosition) _then) = _$TelemetryPositionCopyWithImpl;
@useResult
$Res call({
 double? latitude, double? longitude, double? altitude, double? speed, double? direction, int? satellites, double? hdop,@TimestampOrNullConverter() DateTime? timestamp
});




}
/// @nodoc
class _$TelemetryPositionCopyWithImpl<$Res>
    implements $TelemetryPositionCopyWith<$Res> {
  _$TelemetryPositionCopyWithImpl(this._self, this._then);

  final TelemetryPosition _self;
  final $Res Function(TelemetryPosition) _then;

/// Create a copy of TelemetryPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? altitude = freezed,Object? speed = freezed,Object? direction = freezed,Object? satellites = freezed,Object? hdop = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as double?,satellites: freezed == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as int?,hdop: freezed == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TelemetryPosition].
extension TelemetryPositionPatterns on TelemetryPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelemetryPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelemetryPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelemetryPosition value)  $default,){
final _that = this;
switch (_that) {
case _TelemetryPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelemetryPosition value)?  $default,){
final _that = this;
switch (_that) {
case _TelemetryPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  double? altitude,  double? speed,  double? direction,  int? satellites,  double? hdop, @TimestampOrNullConverter()  DateTime? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelemetryPosition() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.satellites,_that.hdop,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  double? altitude,  double? speed,  double? direction,  int? satellites,  double? hdop, @TimestampOrNullConverter()  DateTime? timestamp)  $default,) {final _that = this;
switch (_that) {
case _TelemetryPosition():
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.satellites,_that.hdop,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? latitude,  double? longitude,  double? altitude,  double? speed,  double? direction,  int? satellites,  double? hdop, @TimestampOrNullConverter()  DateTime? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _TelemetryPosition() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.satellites,_that.hdop,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelemetryPosition extends TelemetryPosition {
  const _TelemetryPosition({this.latitude, this.longitude, this.altitude, this.speed, this.direction, this.satellites, this.hdop, @TimestampOrNullConverter() this.timestamp}): super._();
  factory _TelemetryPosition.fromJson(Map<String, dynamic> json) => _$TelemetryPositionFromJson(json);

/// Latitude in decimal degrees format.
@override final  double? latitude;
/// Longitude in decimal degrees format.
@override final  double? longitude;
/// Registered altitude, defined in meters.
@override final  double? altitude;
/// Registered speed, defined in kilometers per hour.
@override final  double? speed;
/// Registered direction, defined in degrees.
@override final  double? direction;
/// Number of satellites connected to.
@override final  int? satellites;
/// Horizontal dilution of precision registered for.
@override final  double? hdop;
/// Unix of last reception date.
@override@TimestampOrNullConverter() final  DateTime? timestamp;

/// Create a copy of TelemetryPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelemetryPositionCopyWith<_TelemetryPosition> get copyWith => __$TelemetryPositionCopyWithImpl<_TelemetryPosition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelemetryPositionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelemetryPosition&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.satellites, satellites) || other.satellites == satellites)&&(identical(other.hdop, hdop) || other.hdop == hdop)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,speed,direction,satellites,hdop,timestamp);

@override
String toString() {
  return 'TelemetryPosition(latitude: $latitude, longitude: $longitude, altitude: $altitude, speed: $speed, direction: $direction, satellites: $satellites, hdop: $hdop, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$TelemetryPositionCopyWith<$Res> implements $TelemetryPositionCopyWith<$Res> {
  factory _$TelemetryPositionCopyWith(_TelemetryPosition value, $Res Function(_TelemetryPosition) _then) = __$TelemetryPositionCopyWithImpl;
@override @useResult
$Res call({
 double? latitude, double? longitude, double? altitude, double? speed, double? direction, int? satellites, double? hdop,@TimestampOrNullConverter() DateTime? timestamp
});




}
/// @nodoc
class __$TelemetryPositionCopyWithImpl<$Res>
    implements _$TelemetryPositionCopyWith<$Res> {
  __$TelemetryPositionCopyWithImpl(this._self, this._then);

  final _TelemetryPosition _self;
  final $Res Function(_TelemetryPosition) _then;

/// Create a copy of TelemetryPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? altitude = freezed,Object? speed = freezed,Object? direction = freezed,Object? satellites = freezed,Object? hdop = freezed,Object? timestamp = freezed,}) {
  return _then(_TelemetryPosition(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as double?,satellites: freezed == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as int?,hdop: freezed == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TelemetrySensor {

/// Dynamic value registered.
 dynamic get value;/// Parameter registered.
 String get parameter;
/// Create a copy of TelemetrySensor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelemetrySensorCopyWith<TelemetrySensor> get copyWith => _$TelemetrySensorCopyWithImpl<TelemetrySensor>(this as TelemetrySensor, _$identity);

  /// Serializes this TelemetrySensor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelemetrySensor&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.parameter, parameter) || other.parameter == parameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),parameter);

@override
String toString() {
  return 'TelemetrySensor(value: $value, parameter: $parameter)';
}


}

/// @nodoc
abstract mixin class $TelemetrySensorCopyWith<$Res>  {
  factory $TelemetrySensorCopyWith(TelemetrySensor value, $Res Function(TelemetrySensor) _then) = _$TelemetrySensorCopyWithImpl;
@useResult
$Res call({
 dynamic value, String parameter
});




}
/// @nodoc
class _$TelemetrySensorCopyWithImpl<$Res>
    implements $TelemetrySensorCopyWith<$Res> {
  _$TelemetrySensorCopyWithImpl(this._self, this._then);

  final TelemetrySensor _self;
  final $Res Function(TelemetrySensor) _then;

/// Create a copy of TelemetrySensor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? parameter = null,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TelemetrySensor].
extension TelemetrySensorPatterns on TelemetrySensor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelemetrySensor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelemetrySensor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelemetrySensor value)  $default,){
final _that = this;
switch (_that) {
case _TelemetrySensor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelemetrySensor value)?  $default,){
final _that = this;
switch (_that) {
case _TelemetrySensor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic value,  String parameter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelemetrySensor() when $default != null:
return $default(_that.value,_that.parameter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic value,  String parameter)  $default,) {final _that = this;
switch (_that) {
case _TelemetrySensor():
return $default(_that.value,_that.parameter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic value,  String parameter)?  $default,) {final _that = this;
switch (_that) {
case _TelemetrySensor() when $default != null:
return $default(_that.value,_that.parameter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelemetrySensor extends TelemetrySensor {
  const _TelemetrySensor({required this.value, required this.parameter}): super._();
  factory _TelemetrySensor.fromJson(Map<String, dynamic> json) => _$TelemetrySensorFromJson(json);

/// Dynamic value registered.
@override final  dynamic value;
/// Parameter registered.
@override final  String parameter;

/// Create a copy of TelemetrySensor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelemetrySensorCopyWith<_TelemetrySensor> get copyWith => __$TelemetrySensorCopyWithImpl<_TelemetrySensor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelemetrySensorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelemetrySensor&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.parameter, parameter) || other.parameter == parameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),parameter);

@override
String toString() {
  return 'TelemetrySensor(value: $value, parameter: $parameter)';
}


}

/// @nodoc
abstract mixin class _$TelemetrySensorCopyWith<$Res> implements $TelemetrySensorCopyWith<$Res> {
  factory _$TelemetrySensorCopyWith(_TelemetrySensor value, $Res Function(_TelemetrySensor) _then) = __$TelemetrySensorCopyWithImpl;
@override @useResult
$Res call({
 dynamic value, String parameter
});




}
/// @nodoc
class __$TelemetrySensorCopyWithImpl<$Res>
    implements _$TelemetrySensorCopyWith<$Res> {
  __$TelemetrySensorCopyWithImpl(this._self, this._then);

  final _TelemetrySensor _self;
  final $Res Function(_TelemetrySensor) _then;

/// Create a copy of TelemetrySensor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? parameter = null,}) {
  return _then(_TelemetrySensor(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
