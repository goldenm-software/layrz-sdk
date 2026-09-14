// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbound_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InboundStructure {

/// [hasPosition] indicates if the payload includes a position.
 bool get hasPosition;/// [position] is the structure of the position fields, present when [hasPosition] is `true`.
 InboundPositionStructure? get position;/// [hasPayload] indicates if the payload includes custom fields.
 bool get hasPayload;/// [payload] is the list of custom payload field definitions.
 List<InboundPayloadStructure> get payload;
/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundStructureCopyWith<InboundStructure> get copyWith => _$InboundStructureCopyWithImpl<InboundStructure>(this as InboundStructure, _$identity);

  /// Serializes this InboundStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboundStructure&&(identical(other.hasPosition, hasPosition) || other.hasPosition == hasPosition)&&(identical(other.position, position) || other.position == position)&&(identical(other.hasPayload, hasPayload) || other.hasPayload == hasPayload)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPosition,position,hasPayload,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'InboundStructure(hasPosition: $hasPosition, position: $position, hasPayload: $hasPayload, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $InboundStructureCopyWith<$Res>  {
  factory $InboundStructureCopyWith(InboundStructure value, $Res Function(InboundStructure) _then) = _$InboundStructureCopyWithImpl;
@useResult
$Res call({
 bool hasPosition, InboundPositionStructure? position, bool hasPayload, List<InboundPayloadStructure> payload
});


$InboundPositionStructureCopyWith<$Res>? get position;

}
/// @nodoc
class _$InboundStructureCopyWithImpl<$Res>
    implements $InboundStructureCopyWith<$Res> {
  _$InboundStructureCopyWithImpl(this._self, this._then);

  final InboundStructure _self;
  final $Res Function(InboundStructure) _then;

/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasPosition = null,Object? position = freezed,Object? hasPayload = null,Object? payload = null,}) {
  return _then(_self.copyWith(
hasPosition: null == hasPosition ? _self.hasPosition : hasPosition // ignore: cast_nullable_to_non_nullable
as bool,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as InboundPositionStructure?,hasPayload: null == hasPayload ? _self.hasPayload : hasPayload // ignore: cast_nullable_to_non_nullable
as bool,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<InboundPayloadStructure>,
  ));
}
/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundPositionStructureCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $InboundPositionStructureCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [InboundStructure].
extension InboundStructurePatterns on InboundStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundStructure value)  $default,){
final _that = this;
switch (_that) {
case _InboundStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundStructure value)?  $default,){
final _that = this;
switch (_that) {
case _InboundStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasPosition,  InboundPositionStructure? position,  bool hasPayload,  List<InboundPayloadStructure> payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundStructure() when $default != null:
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasPosition,  InboundPositionStructure? position,  bool hasPayload,  List<InboundPayloadStructure> payload)  $default,) {final _that = this;
switch (_that) {
case _InboundStructure():
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasPosition,  InboundPositionStructure? position,  bool hasPayload,  List<InboundPayloadStructure> payload)?  $default,) {final _that = this;
switch (_that) {
case _InboundStructure() when $default != null:
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundStructure implements InboundStructure {
  const _InboundStructure({required this.hasPosition, required this.position, required this.hasPayload, required this.payload});
  factory _InboundStructure.fromJson(Map<String, dynamic> json) => _$InboundStructureFromJson(json);

/// [hasPosition] indicates if the payload includes a position.
@override final  bool hasPosition;
/// [position] is the structure of the position fields, present when [hasPosition] is `true`.
@override final  InboundPositionStructure? position;
/// [hasPayload] indicates if the payload includes custom fields.
@override final  bool hasPayload;
/// [payload] is the list of custom payload field definitions.
@override final  List<InboundPayloadStructure> payload;

/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundStructureCopyWith<_InboundStructure> get copyWith => __$InboundStructureCopyWithImpl<_InboundStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundStructureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboundStructure&&(identical(other.hasPosition, hasPosition) || other.hasPosition == hasPosition)&&(identical(other.position, position) || other.position == position)&&(identical(other.hasPayload, hasPayload) || other.hasPayload == hasPayload)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPosition,position,hasPayload,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'InboundStructure(hasPosition: $hasPosition, position: $position, hasPayload: $hasPayload, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$InboundStructureCopyWith<$Res> implements $InboundStructureCopyWith<$Res> {
  factory _$InboundStructureCopyWith(_InboundStructure value, $Res Function(_InboundStructure) _then) = __$InboundStructureCopyWithImpl;
@override @useResult
$Res call({
 bool hasPosition, InboundPositionStructure? position, bool hasPayload, List<InboundPayloadStructure> payload
});


@override $InboundPositionStructureCopyWith<$Res>? get position;

}
/// @nodoc
class __$InboundStructureCopyWithImpl<$Res>
    implements _$InboundStructureCopyWith<$Res> {
  __$InboundStructureCopyWithImpl(this._self, this._then);

  final _InboundStructure _self;
  final $Res Function(_InboundStructure) _then;

/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasPosition = null,Object? position = freezed,Object? hasPayload = null,Object? payload = null,}) {
  return _then(_InboundStructure(
hasPosition: null == hasPosition ? _self.hasPosition : hasPosition // ignore: cast_nullable_to_non_nullable
as bool,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as InboundPositionStructure?,hasPayload: null == hasPayload ? _self.hasPayload : hasPayload // ignore: cast_nullable_to_non_nullable
as bool,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<InboundPayloadStructure>,
  ));
}

/// Create a copy of InboundStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundPositionStructureCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $InboundPositionStructureCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// @nodoc
mixin _$InboundStructureInput {

/// [hasPosition] indicates if the payload includes a position.
 bool get hasPosition;/// [hasPosition] indicates if the payload includes a position.
 set hasPosition(bool value);/// [position] is the structure of the position fields, present when [hasPosition] is `true`.
 InboundPositionStructureInput? get position;/// [position] is the structure of the position fields, present when [hasPosition] is `true`.
 set position(InboundPositionStructureInput? value);/// [hasPayload] indicates if the payload includes custom fields.
 bool get hasPayload;/// [hasPayload] indicates if the payload includes custom fields.
 set hasPayload(bool value);/// [payload] is the list of custom payload field definitions.
 List<InboundPayloadStructureInput> get payload;/// [payload] is the list of custom payload field definitions.
 set payload(List<InboundPayloadStructureInput> value);
/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundStructureInputCopyWith<InboundStructureInput> get copyWith => _$InboundStructureInputCopyWithImpl<InboundStructureInput>(this as InboundStructureInput, _$identity);

  /// Serializes this InboundStructureInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'InboundStructureInput(hasPosition: $hasPosition, position: $position, hasPayload: $hasPayload, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $InboundStructureInputCopyWith<$Res>  {
  factory $InboundStructureInputCopyWith(InboundStructureInput value, $Res Function(InboundStructureInput) _then) = _$InboundStructureInputCopyWithImpl;
@useResult
$Res call({
 bool hasPosition, InboundPositionStructureInput? position, bool hasPayload, List<InboundPayloadStructureInput> payload
});


$InboundPositionStructureInputCopyWith<$Res>? get position;

}
/// @nodoc
class _$InboundStructureInputCopyWithImpl<$Res>
    implements $InboundStructureInputCopyWith<$Res> {
  _$InboundStructureInputCopyWithImpl(this._self, this._then);

  final InboundStructureInput _self;
  final $Res Function(InboundStructureInput) _then;

/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasPosition = null,Object? position = freezed,Object? hasPayload = null,Object? payload = null,}) {
  return _then(_self.copyWith(
hasPosition: null == hasPosition ? _self.hasPosition : hasPosition // ignore: cast_nullable_to_non_nullable
as bool,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as InboundPositionStructureInput?,hasPayload: null == hasPayload ? _self.hasPayload : hasPayload // ignore: cast_nullable_to_non_nullable
as bool,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<InboundPayloadStructureInput>,
  ));
}
/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundPositionStructureInputCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $InboundPositionStructureInputCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [InboundStructureInput].
extension InboundStructureInputPatterns on InboundStructureInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundStructureInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundStructureInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundStructureInput value)  $default,){
final _that = this;
switch (_that) {
case _InboundStructureInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundStructureInput value)?  $default,){
final _that = this;
switch (_that) {
case _InboundStructureInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasPosition,  InboundPositionStructureInput? position,  bool hasPayload,  List<InboundPayloadStructureInput> payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundStructureInput() when $default != null:
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasPosition,  InboundPositionStructureInput? position,  bool hasPayload,  List<InboundPayloadStructureInput> payload)  $default,) {final _that = this;
switch (_that) {
case _InboundStructureInput():
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasPosition,  InboundPositionStructureInput? position,  bool hasPayload,  List<InboundPayloadStructureInput> payload)?  $default,) {final _that = this;
switch (_that) {
case _InboundStructureInput() when $default != null:
return $default(_that.hasPosition,_that.position,_that.hasPayload,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundStructureInput implements InboundStructureInput {
   _InboundStructureInput({this.hasPosition = true, required this.position, this.hasPayload = false, this.payload = const []});
  factory _InboundStructureInput.fromJson(Map<String, dynamic> json) => _$InboundStructureInputFromJson(json);

/// [hasPosition] indicates if the payload includes a position.
@override@JsonKey()  bool hasPosition;
/// [position] is the structure of the position fields, present when [hasPosition] is `true`.
@override  InboundPositionStructureInput? position;
/// [hasPayload] indicates if the payload includes custom fields.
@override@JsonKey()  bool hasPayload;
/// [payload] is the list of custom payload field definitions.
@override@JsonKey()  List<InboundPayloadStructureInput> payload;

/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundStructureInputCopyWith<_InboundStructureInput> get copyWith => __$InboundStructureInputCopyWithImpl<_InboundStructureInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundStructureInputToJson(this, );
}



@override
String toString() {
  return 'InboundStructureInput(hasPosition: $hasPosition, position: $position, hasPayload: $hasPayload, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$InboundStructureInputCopyWith<$Res> implements $InboundStructureInputCopyWith<$Res> {
  factory _$InboundStructureInputCopyWith(_InboundStructureInput value, $Res Function(_InboundStructureInput) _then) = __$InboundStructureInputCopyWithImpl;
@override @useResult
$Res call({
 bool hasPosition, InboundPositionStructureInput? position, bool hasPayload, List<InboundPayloadStructureInput> payload
});


@override $InboundPositionStructureInputCopyWith<$Res>? get position;

}
/// @nodoc
class __$InboundStructureInputCopyWithImpl<$Res>
    implements _$InboundStructureInputCopyWith<$Res> {
  __$InboundStructureInputCopyWithImpl(this._self, this._then);

  final _InboundStructureInput _self;
  final $Res Function(_InboundStructureInput) _then;

/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasPosition = null,Object? position = freezed,Object? hasPayload = null,Object? payload = null,}) {
  return _then(_InboundStructureInput(
hasPosition: null == hasPosition ? _self.hasPosition : hasPosition // ignore: cast_nullable_to_non_nullable
as bool,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as InboundPositionStructureInput?,hasPayload: null == hasPayload ? _self.hasPayload : hasPayload // ignore: cast_nullable_to_non_nullable
as bool,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<InboundPayloadStructureInput>,
  ));
}

/// Create a copy of InboundStructureInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InboundPositionStructureInputCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $InboundPositionStructureInputCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// @nodoc
mixin _$InboundPositionStructure {

/// [latitude] indicates if the payload includes the latitude.
 bool get latitude;/// [longitude] indicates if the payload includes the longitude.
 bool get longitude;/// [altitude] indicates if the payload includes the altitude.
 bool get altitude;/// [speed] indicates if the payload includes the speed.
 bool get speed;/// [direction] indicates if the payload includes the direction.
 bool get direction;/// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
 bool get hdop;/// [satellites] indicates if the payload includes the satellites' quantity.
 bool get satellites;
/// Create a copy of InboundPositionStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundPositionStructureCopyWith<InboundPositionStructure> get copyWith => _$InboundPositionStructureCopyWithImpl<InboundPositionStructure>(this as InboundPositionStructure, _$identity);

  /// Serializes this InboundPositionStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboundPositionStructure&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.hdop, hdop) || other.hdop == hdop)&&(identical(other.satellites, satellites) || other.satellites == satellites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,speed,direction,hdop,satellites);

@override
String toString() {
  return 'InboundPositionStructure(latitude: $latitude, longitude: $longitude, altitude: $altitude, speed: $speed, direction: $direction, hdop: $hdop, satellites: $satellites)';
}


}

/// @nodoc
abstract mixin class $InboundPositionStructureCopyWith<$Res>  {
  factory $InboundPositionStructureCopyWith(InboundPositionStructure value, $Res Function(InboundPositionStructure) _then) = _$InboundPositionStructureCopyWithImpl;
@useResult
$Res call({
 bool latitude, bool longitude, bool altitude, bool speed, bool direction, bool hdop, bool satellites
});




}
/// @nodoc
class _$InboundPositionStructureCopyWithImpl<$Res>
    implements $InboundPositionStructureCopyWith<$Res> {
  _$InboundPositionStructureCopyWithImpl(this._self, this._then);

  final InboundPositionStructure _self;
  final $Res Function(InboundPositionStructure) _then;

/// Create a copy of InboundPositionStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = null,Object? speed = null,Object? direction = null,Object? hdop = null,Object? satellites = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as bool,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as bool,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as bool,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as bool,hdop: null == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as bool,satellites: null == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InboundPositionStructure].
extension InboundPositionStructurePatterns on InboundPositionStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundPositionStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundPositionStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundPositionStructure value)  $default,){
final _that = this;
switch (_that) {
case _InboundPositionStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundPositionStructure value)?  $default,){
final _that = this;
switch (_that) {
case _InboundPositionStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool latitude,  bool longitude,  bool altitude,  bool speed,  bool direction,  bool hdop,  bool satellites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundPositionStructure() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.hdop,_that.satellites);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool latitude,  bool longitude,  bool altitude,  bool speed,  bool direction,  bool hdop,  bool satellites)  $default,) {final _that = this;
switch (_that) {
case _InboundPositionStructure():
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.hdop,_that.satellites);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool latitude,  bool longitude,  bool altitude,  bool speed,  bool direction,  bool hdop,  bool satellites)?  $default,) {final _that = this;
switch (_that) {
case _InboundPositionStructure() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.speed,_that.direction,_that.hdop,_that.satellites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundPositionStructure implements InboundPositionStructure {
  const _InboundPositionStructure({required this.latitude, required this.longitude, required this.altitude, required this.speed, required this.direction, required this.hdop, required this.satellites});
  factory _InboundPositionStructure.fromJson(Map<String, dynamic> json) => _$InboundPositionStructureFromJson(json);

/// [latitude] indicates if the payload includes the latitude.
@override final  bool latitude;
/// [longitude] indicates if the payload includes the longitude.
@override final  bool longitude;
/// [altitude] indicates if the payload includes the altitude.
@override final  bool altitude;
/// [speed] indicates if the payload includes the speed.
@override final  bool speed;
/// [direction] indicates if the payload includes the direction.
@override final  bool direction;
/// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
@override final  bool hdop;
/// [satellites] indicates if the payload includes the satellites' quantity.
@override final  bool satellites;

/// Create a copy of InboundPositionStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundPositionStructureCopyWith<_InboundPositionStructure> get copyWith => __$InboundPositionStructureCopyWithImpl<_InboundPositionStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundPositionStructureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboundPositionStructure&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.hdop, hdop) || other.hdop == hdop)&&(identical(other.satellites, satellites) || other.satellites == satellites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,speed,direction,hdop,satellites);

@override
String toString() {
  return 'InboundPositionStructure(latitude: $latitude, longitude: $longitude, altitude: $altitude, speed: $speed, direction: $direction, hdop: $hdop, satellites: $satellites)';
}


}

/// @nodoc
abstract mixin class _$InboundPositionStructureCopyWith<$Res> implements $InboundPositionStructureCopyWith<$Res> {
  factory _$InboundPositionStructureCopyWith(_InboundPositionStructure value, $Res Function(_InboundPositionStructure) _then) = __$InboundPositionStructureCopyWithImpl;
@override @useResult
$Res call({
 bool latitude, bool longitude, bool altitude, bool speed, bool direction, bool hdop, bool satellites
});




}
/// @nodoc
class __$InboundPositionStructureCopyWithImpl<$Res>
    implements _$InboundPositionStructureCopyWith<$Res> {
  __$InboundPositionStructureCopyWithImpl(this._self, this._then);

  final _InboundPositionStructure _self;
  final $Res Function(_InboundPositionStructure) _then;

/// Create a copy of InboundPositionStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = null,Object? speed = null,Object? direction = null,Object? hdop = null,Object? satellites = null,}) {
  return _then(_InboundPositionStructure(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as bool,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as bool,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as bool,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as bool,hdop: null == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as bool,satellites: null == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InboundPositionStructureInput {

/// [latitude] indicates if the payload includes the latitude.
 bool get latitude;/// [latitude] indicates if the payload includes the latitude.
 set latitude(bool value);/// [longitude] indicates if the payload includes the longitude.
 bool get longitude;/// [longitude] indicates if the payload includes the longitude.
 set longitude(bool value);/// [speed] indicates if the payload includes the speed.
 bool get speed;/// [speed] indicates if the payload includes the speed.
 set speed(bool value);/// [direction] indicates if the payload includes the direction.
 bool get direction;/// [direction] indicates if the payload includes the direction.
 set direction(bool value);/// [altitude] indicates if the payload includes the altitude.
 bool get altitude;/// [altitude] indicates if the payload includes the altitude.
 set altitude(bool value);/// [satellites] indicates if the payload includes the satellites' quantity.
 bool get satellites;/// [satellites] indicates if the payload includes the satellites' quantity.
 set satellites(bool value);/// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
 bool get hdop;/// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
 set hdop(bool value);
/// Create a copy of InboundPositionStructureInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundPositionStructureInputCopyWith<InboundPositionStructureInput> get copyWith => _$InboundPositionStructureInputCopyWithImpl<InboundPositionStructureInput>(this as InboundPositionStructureInput, _$identity);

  /// Serializes this InboundPositionStructureInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'InboundPositionStructureInput(latitude: $latitude, longitude: $longitude, speed: $speed, direction: $direction, altitude: $altitude, satellites: $satellites, hdop: $hdop)';
}


}

/// @nodoc
abstract mixin class $InboundPositionStructureInputCopyWith<$Res>  {
  factory $InboundPositionStructureInputCopyWith(InboundPositionStructureInput value, $Res Function(InboundPositionStructureInput) _then) = _$InboundPositionStructureInputCopyWithImpl;
@useResult
$Res call({
 bool latitude, bool longitude, bool speed, bool direction, bool altitude, bool satellites, bool hdop
});




}
/// @nodoc
class _$InboundPositionStructureInputCopyWithImpl<$Res>
    implements $InboundPositionStructureInputCopyWith<$Res> {
  _$InboundPositionStructureInputCopyWithImpl(this._self, this._then);

  final InboundPositionStructureInput _self;
  final $Res Function(InboundPositionStructureInput) _then;

/// Create a copy of InboundPositionStructureInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? speed = null,Object? direction = null,Object? altitude = null,Object? satellites = null,Object? hdop = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as bool,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as bool,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as bool,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as bool,satellites: null == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as bool,hdop: null == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InboundPositionStructureInput].
extension InboundPositionStructureInputPatterns on InboundPositionStructureInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundPositionStructureInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundPositionStructureInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundPositionStructureInput value)  $default,){
final _that = this;
switch (_that) {
case _InboundPositionStructureInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundPositionStructureInput value)?  $default,){
final _that = this;
switch (_that) {
case _InboundPositionStructureInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool latitude,  bool longitude,  bool speed,  bool direction,  bool altitude,  bool satellites,  bool hdop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundPositionStructureInput() when $default != null:
return $default(_that.latitude,_that.longitude,_that.speed,_that.direction,_that.altitude,_that.satellites,_that.hdop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool latitude,  bool longitude,  bool speed,  bool direction,  bool altitude,  bool satellites,  bool hdop)  $default,) {final _that = this;
switch (_that) {
case _InboundPositionStructureInput():
return $default(_that.latitude,_that.longitude,_that.speed,_that.direction,_that.altitude,_that.satellites,_that.hdop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool latitude,  bool longitude,  bool speed,  bool direction,  bool altitude,  bool satellites,  bool hdop)?  $default,) {final _that = this;
switch (_that) {
case _InboundPositionStructureInput() when $default != null:
return $default(_that.latitude,_that.longitude,_that.speed,_that.direction,_that.altitude,_that.satellites,_that.hdop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundPositionStructureInput implements InboundPositionStructureInput {
   _InboundPositionStructureInput({this.latitude = true, this.longitude = true, this.speed = true, this.direction = true, this.altitude = true, this.satellites = true, this.hdop = true});
  factory _InboundPositionStructureInput.fromJson(Map<String, dynamic> json) => _$InboundPositionStructureInputFromJson(json);

/// [latitude] indicates if the payload includes the latitude.
@override@JsonKey()  bool latitude;
/// [longitude] indicates if the payload includes the longitude.
@override@JsonKey()  bool longitude;
/// [speed] indicates if the payload includes the speed.
@override@JsonKey()  bool speed;
/// [direction] indicates if the payload includes the direction.
@override@JsonKey()  bool direction;
/// [altitude] indicates if the payload includes the altitude.
@override@JsonKey()  bool altitude;
/// [satellites] indicates if the payload includes the satellites' quantity.
@override@JsonKey()  bool satellites;
/// [hdop] indicates if the payload includes the horizontal dilution of precision (HDOP).
@override@JsonKey()  bool hdop;

/// Create a copy of InboundPositionStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundPositionStructureInputCopyWith<_InboundPositionStructureInput> get copyWith => __$InboundPositionStructureInputCopyWithImpl<_InboundPositionStructureInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundPositionStructureInputToJson(this, );
}



@override
String toString() {
  return 'InboundPositionStructureInput(latitude: $latitude, longitude: $longitude, speed: $speed, direction: $direction, altitude: $altitude, satellites: $satellites, hdop: $hdop)';
}


}

/// @nodoc
abstract mixin class _$InboundPositionStructureInputCopyWith<$Res> implements $InboundPositionStructureInputCopyWith<$Res> {
  factory _$InboundPositionStructureInputCopyWith(_InboundPositionStructureInput value, $Res Function(_InboundPositionStructureInput) _then) = __$InboundPositionStructureInputCopyWithImpl;
@override @useResult
$Res call({
 bool latitude, bool longitude, bool speed, bool direction, bool altitude, bool satellites, bool hdop
});




}
/// @nodoc
class __$InboundPositionStructureInputCopyWithImpl<$Res>
    implements _$InboundPositionStructureInputCopyWith<$Res> {
  __$InboundPositionStructureInputCopyWithImpl(this._self, this._then);

  final _InboundPositionStructureInput _self;
  final $Res Function(_InboundPositionStructureInput) _then;

/// Create a copy of InboundPositionStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? speed = null,Object? direction = null,Object? altitude = null,Object? satellites = null,Object? hdop = null,}) {
  return _then(_InboundPositionStructureInput(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as bool,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as bool,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as bool,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as bool,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as bool,satellites: null == satellites ? _self.satellites : satellites // ignore: cast_nullable_to_non_nullable
as bool,hdop: null == hdop ? _self.hdop : hdop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InboundPayloadStructure {

/// [field] is the name of the payload field.
 String get field;/// [type] is the data type of the payload field.
@InboundPayloadStructureTypeConverter() InboundPayloadStructureType get type;
/// Create a copy of InboundPayloadStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundPayloadStructureCopyWith<InboundPayloadStructure> get copyWith => _$InboundPayloadStructureCopyWithImpl<InboundPayloadStructure>(this as InboundPayloadStructure, _$identity);

  /// Serializes this InboundPayloadStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboundPayloadStructure&&(identical(other.field, field) || other.field == field)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,type);

@override
String toString() {
  return 'InboundPayloadStructure(field: $field, type: $type)';
}


}

/// @nodoc
abstract mixin class $InboundPayloadStructureCopyWith<$Res>  {
  factory $InboundPayloadStructureCopyWith(InboundPayloadStructure value, $Res Function(InboundPayloadStructure) _then) = _$InboundPayloadStructureCopyWithImpl;
@useResult
$Res call({
 String field,@InboundPayloadStructureTypeConverter() InboundPayloadStructureType type
});




}
/// @nodoc
class _$InboundPayloadStructureCopyWithImpl<$Res>
    implements $InboundPayloadStructureCopyWith<$Res> {
  _$InboundPayloadStructureCopyWithImpl(this._self, this._then);

  final InboundPayloadStructure _self;
  final $Res Function(InboundPayloadStructure) _then;

/// Create a copy of InboundPayloadStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? type = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InboundPayloadStructureType,
  ));
}

}


/// Adds pattern-matching-related methods to [InboundPayloadStructure].
extension InboundPayloadStructurePatterns on InboundPayloadStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundPayloadStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundPayloadStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundPayloadStructure value)  $default,){
final _that = this;
switch (_that) {
case _InboundPayloadStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundPayloadStructure value)?  $default,){
final _that = this;
switch (_that) {
case _InboundPayloadStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundPayloadStructure() when $default != null:
return $default(_that.field,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)  $default,) {final _that = this;
switch (_that) {
case _InboundPayloadStructure():
return $default(_that.field,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)?  $default,) {final _that = this;
switch (_that) {
case _InboundPayloadStructure() when $default != null:
return $default(_that.field,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundPayloadStructure implements InboundPayloadStructure {
  const _InboundPayloadStructure({required this.field, @InboundPayloadStructureTypeConverter() required this.type});
  factory _InboundPayloadStructure.fromJson(Map<String, dynamic> json) => _$InboundPayloadStructureFromJson(json);

/// [field] is the name of the payload field.
@override final  String field;
/// [type] is the data type of the payload field.
@override@InboundPayloadStructureTypeConverter() final  InboundPayloadStructureType type;

/// Create a copy of InboundPayloadStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundPayloadStructureCopyWith<_InboundPayloadStructure> get copyWith => __$InboundPayloadStructureCopyWithImpl<_InboundPayloadStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundPayloadStructureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboundPayloadStructure&&(identical(other.field, field) || other.field == field)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,type);

@override
String toString() {
  return 'InboundPayloadStructure(field: $field, type: $type)';
}


}

/// @nodoc
abstract mixin class _$InboundPayloadStructureCopyWith<$Res> implements $InboundPayloadStructureCopyWith<$Res> {
  factory _$InboundPayloadStructureCopyWith(_InboundPayloadStructure value, $Res Function(_InboundPayloadStructure) _then) = __$InboundPayloadStructureCopyWithImpl;
@override @useResult
$Res call({
 String field,@InboundPayloadStructureTypeConverter() InboundPayloadStructureType type
});




}
/// @nodoc
class __$InboundPayloadStructureCopyWithImpl<$Res>
    implements _$InboundPayloadStructureCopyWith<$Res> {
  __$InboundPayloadStructureCopyWithImpl(this._self, this._then);

  final _InboundPayloadStructure _self;
  final $Res Function(_InboundPayloadStructure) _then;

/// Create a copy of InboundPayloadStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? type = null,}) {
  return _then(_InboundPayloadStructure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InboundPayloadStructureType,
  ));
}


}


/// @nodoc
mixin _$InboundPayloadStructureInput {

/// [field] is the name of the payload field.
 String get field;/// [field] is the name of the payload field.
 set field(String value);/// [type] is the data type of the payload field.
@InboundPayloadStructureTypeConverter() InboundPayloadStructureType get type;/// [type] is the data type of the payload field.
@InboundPayloadStructureTypeConverter() set type(InboundPayloadStructureType value);
/// Create a copy of InboundPayloadStructureInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundPayloadStructureInputCopyWith<InboundPayloadStructureInput> get copyWith => _$InboundPayloadStructureInputCopyWithImpl<InboundPayloadStructureInput>(this as InboundPayloadStructureInput, _$identity);

  /// Serializes this InboundPayloadStructureInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'InboundPayloadStructureInput(field: $field, type: $type)';
}


}

/// @nodoc
abstract mixin class $InboundPayloadStructureInputCopyWith<$Res>  {
  factory $InboundPayloadStructureInputCopyWith(InboundPayloadStructureInput value, $Res Function(InboundPayloadStructureInput) _then) = _$InboundPayloadStructureInputCopyWithImpl;
@useResult
$Res call({
 String field,@InboundPayloadStructureTypeConverter() InboundPayloadStructureType type
});




}
/// @nodoc
class _$InboundPayloadStructureInputCopyWithImpl<$Res>
    implements $InboundPayloadStructureInputCopyWith<$Res> {
  _$InboundPayloadStructureInputCopyWithImpl(this._self, this._then);

  final InboundPayloadStructureInput _self;
  final $Res Function(InboundPayloadStructureInput) _then;

/// Create a copy of InboundPayloadStructureInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? type = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InboundPayloadStructureType,
  ));
}

}


/// Adds pattern-matching-related methods to [InboundPayloadStructureInput].
extension InboundPayloadStructureInputPatterns on InboundPayloadStructureInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundPayloadStructureInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundPayloadStructureInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundPayloadStructureInput value)  $default,){
final _that = this;
switch (_that) {
case _InboundPayloadStructureInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundPayloadStructureInput value)?  $default,){
final _that = this;
switch (_that) {
case _InboundPayloadStructureInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundPayloadStructureInput() when $default != null:
return $default(_that.field,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)  $default,) {final _that = this;
switch (_that) {
case _InboundPayloadStructureInput():
return $default(_that.field,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field, @InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type)?  $default,) {final _that = this;
switch (_that) {
case _InboundPayloadStructureInput() when $default != null:
return $default(_that.field,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundPayloadStructureInput implements InboundPayloadStructureInput {
   _InboundPayloadStructureInput({this.field = '', @InboundPayloadStructureTypeConverter() this.type = InboundPayloadStructureType.string});
  factory _InboundPayloadStructureInput.fromJson(Map<String, dynamic> json) => _$InboundPayloadStructureInputFromJson(json);

/// [field] is the name of the payload field.
@override@JsonKey()  String field;
/// [type] is the data type of the payload field.
@override@JsonKey()@InboundPayloadStructureTypeConverter()  InboundPayloadStructureType type;

/// Create a copy of InboundPayloadStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundPayloadStructureInputCopyWith<_InboundPayloadStructureInput> get copyWith => __$InboundPayloadStructureInputCopyWithImpl<_InboundPayloadStructureInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundPayloadStructureInputToJson(this, );
}



@override
String toString() {
  return 'InboundPayloadStructureInput(field: $field, type: $type)';
}


}

/// @nodoc
abstract mixin class _$InboundPayloadStructureInputCopyWith<$Res> implements $InboundPayloadStructureInputCopyWith<$Res> {
  factory _$InboundPayloadStructureInputCopyWith(_InboundPayloadStructureInput value, $Res Function(_InboundPayloadStructureInput) _then) = __$InboundPayloadStructureInputCopyWithImpl;
@override @useResult
$Res call({
 String field,@InboundPayloadStructureTypeConverter() InboundPayloadStructureType type
});




}
/// @nodoc
class __$InboundPayloadStructureInputCopyWithImpl<$Res>
    implements _$InboundPayloadStructureInputCopyWith<$Res> {
  __$InboundPayloadStructureInputCopyWithImpl(this._self, this._then);

  final _InboundPayloadStructureInput _self;
  final $Res Function(_InboundPayloadStructureInput) _then;

/// Create a copy of InboundPayloadStructureInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? type = null,}) {
  return _then(_InboundPayloadStructureInput(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InboundPayloadStructureType,
  ));
}


}

// dart format on
