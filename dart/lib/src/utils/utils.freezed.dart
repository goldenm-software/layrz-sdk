// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'utils.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParamData {

/// The new value of the parameter being updated.
/// Can be any type (int, double, String, bool, etc.).
 dynamic get value;/// A timestamp indicating when the parameter was last updated.
/// Serialized to/from JSON using [TimestampConverter].
@TimestampConverter() DateTime? get updatedAt;
/// Create a copy of ParamData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParamDataCopyWith<ParamData> get copyWith => _$ParamDataCopyWithImpl<ParamData>(this as ParamData, _$identity);

  /// Serializes this ParamData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParamData&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),updatedAt);

@override
String toString() {
  return 'ParamData(value: $value, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ParamDataCopyWith<$Res>  {
  factory $ParamDataCopyWith(ParamData value, $Res Function(ParamData) _then) = _$ParamDataCopyWithImpl;
@useResult
$Res call({
 dynamic value,@TimestampConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$ParamDataCopyWithImpl<$Res>
    implements $ParamDataCopyWith<$Res> {
  _$ParamDataCopyWithImpl(this._self, this._then);

  final ParamData _self;
  final $Res Function(ParamData) _then;

/// Create a copy of ParamData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParamData].
extension ParamDataPatterns on ParamData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParamData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParamData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParamData value)  $default,){
final _that = this;
switch (_that) {
case _ParamData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParamData value)?  $default,){
final _that = this;
switch (_that) {
case _ParamData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic value, @TimestampConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParamData() when $default != null:
return $default(_that.value,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic value, @TimestampConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ParamData():
return $default(_that.value,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic value, @TimestampConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ParamData() when $default != null:
return $default(_that.value,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParamData implements ParamData {
  const _ParamData({this.value, @TimestampConverter() this.updatedAt});
  factory _ParamData.fromJson(Map<String, dynamic> json) => _$ParamDataFromJson(json);

/// The new value of the parameter being updated.
/// Can be any type (int, double, String, bool, etc.).
@override final  dynamic value;
/// A timestamp indicating when the parameter was last updated.
/// Serialized to/from JSON using [TimestampConverter].
@override@TimestampConverter() final  DateTime? updatedAt;

/// Create a copy of ParamData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParamDataCopyWith<_ParamData> get copyWith => __$ParamDataCopyWithImpl<_ParamData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParamDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParamData&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),updatedAt);

@override
String toString() {
  return 'ParamData(value: $value, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ParamDataCopyWith<$Res> implements $ParamDataCopyWith<$Res> {
  factory _$ParamDataCopyWith(_ParamData value, $Res Function(_ParamData) _then) = __$ParamDataCopyWithImpl;
@override @useResult
$Res call({
 dynamic value,@TimestampConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$ParamDataCopyWithImpl<$Res>
    implements _$ParamDataCopyWith<$Res> {
  __$ParamDataCopyWithImpl(this._self, this._then);

  final _ParamData _self;
  final $Res Function(_ParamData) _then;

/// Create a copy of ParamData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? updatedAt = freezed,}) {
  return _then(_ParamData(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
