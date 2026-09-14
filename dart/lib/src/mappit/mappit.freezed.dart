// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mappit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MappitLaborHour {

/// [id] represents the labor hour ID.
 String get id;/// [weekday] represents the labor hour weekday.
@JsonKey(unknownEnumValue: Weekday.monday) Weekday get weekday;/// [administrative] represents the labor hour administrative time.
@DurationConverter() Duration get administrative;/// [f2f] represents the labor hour face-to-face time.
@DurationConverter() Duration get f2f;/// [other] represents the labor hour other time.
@DurationConverter() Duration get other;
/// Create a copy of MappitLaborHour
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MappitLaborHourCopyWith<MappitLaborHour> get copyWith => _$MappitLaborHourCopyWithImpl<MappitLaborHour>(this as MappitLaborHour, _$identity);

  /// Serializes this MappitLaborHour to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MappitLaborHour&&(identical(other.id, id) || other.id == id)&&(identical(other.weekday, weekday) || other.weekday == weekday)&&(identical(other.administrative, administrative) || other.administrative == administrative)&&(identical(other.f2f, f2f) || other.f2f == f2f)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weekday,administrative,f2f,other);

@override
String toString() {
  return 'MappitLaborHour(id: $id, weekday: $weekday, administrative: $administrative, f2f: $f2f, other: $other)';
}


}

/// @nodoc
abstract mixin class $MappitLaborHourCopyWith<$Res>  {
  factory $MappitLaborHourCopyWith(MappitLaborHour value, $Res Function(MappitLaborHour) _then) = _$MappitLaborHourCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: Weekday.monday) Weekday weekday,@DurationConverter() Duration administrative,@DurationConverter() Duration f2f,@DurationConverter() Duration other
});




}
/// @nodoc
class _$MappitLaborHourCopyWithImpl<$Res>
    implements $MappitLaborHourCopyWith<$Res> {
  _$MappitLaborHourCopyWithImpl(this._self, this._then);

  final MappitLaborHour _self;
  final $Res Function(MappitLaborHour) _then;

/// Create a copy of MappitLaborHour
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? weekday = null,Object? administrative = null,Object? f2f = null,Object? other = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as Weekday,administrative: null == administrative ? _self.administrative : administrative // ignore: cast_nullable_to_non_nullable
as Duration,f2f: null == f2f ? _self.f2f : f2f // ignore: cast_nullable_to_non_nullable
as Duration,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [MappitLaborHour].
extension MappitLaborHourPatterns on MappitLaborHour {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MappitLaborHour value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MappitLaborHour() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MappitLaborHour value)  $default,){
final _that = this;
switch (_that) {
case _MappitLaborHour():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MappitLaborHour value)?  $default,){
final _that = this;
switch (_that) {
case _MappitLaborHour() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MappitLaborHour() when $default != null:
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)  $default,) {final _that = this;
switch (_that) {
case _MappitLaborHour():
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)?  $default,) {final _that = this;
switch (_that) {
case _MappitLaborHour() when $default != null:
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MappitLaborHour implements MappitLaborHour {
  const _MappitLaborHour({required this.id, @JsonKey(unknownEnumValue: Weekday.monday) required this.weekday, @DurationConverter() required this.administrative, @DurationConverter() required this.f2f, @DurationConverter() required this.other});
  factory _MappitLaborHour.fromJson(Map<String, dynamic> json) => _$MappitLaborHourFromJson(json);

/// [id] represents the labor hour ID.
@override final  String id;
/// [weekday] represents the labor hour weekday.
@override@JsonKey(unknownEnumValue: Weekday.monday) final  Weekday weekday;
/// [administrative] represents the labor hour administrative time.
@override@DurationConverter() final  Duration administrative;
/// [f2f] represents the labor hour face-to-face time.
@override@DurationConverter() final  Duration f2f;
/// [other] represents the labor hour other time.
@override@DurationConverter() final  Duration other;

/// Create a copy of MappitLaborHour
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MappitLaborHourCopyWith<_MappitLaborHour> get copyWith => __$MappitLaborHourCopyWithImpl<_MappitLaborHour>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MappitLaborHourToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MappitLaborHour&&(identical(other.id, id) || other.id == id)&&(identical(other.weekday, weekday) || other.weekday == weekday)&&(identical(other.administrative, administrative) || other.administrative == administrative)&&(identical(other.f2f, f2f) || other.f2f == f2f)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weekday,administrative,f2f,other);

@override
String toString() {
  return 'MappitLaborHour(id: $id, weekday: $weekday, administrative: $administrative, f2f: $f2f, other: $other)';
}


}

/// @nodoc
abstract mixin class _$MappitLaborHourCopyWith<$Res> implements $MappitLaborHourCopyWith<$Res> {
  factory _$MappitLaborHourCopyWith(_MappitLaborHour value, $Res Function(_MappitLaborHour) _then) = __$MappitLaborHourCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: Weekday.monday) Weekday weekday,@DurationConverter() Duration administrative,@DurationConverter() Duration f2f,@DurationConverter() Duration other
});




}
/// @nodoc
class __$MappitLaborHourCopyWithImpl<$Res>
    implements _$MappitLaborHourCopyWith<$Res> {
  __$MappitLaborHourCopyWithImpl(this._self, this._then);

  final _MappitLaborHour _self;
  final $Res Function(_MappitLaborHour) _then;

/// Create a copy of MappitLaborHour
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekday = null,Object? administrative = null,Object? f2f = null,Object? other = null,}) {
  return _then(_MappitLaborHour(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as Weekday,administrative: null == administrative ? _self.administrative : administrative // ignore: cast_nullable_to_non_nullable
as Duration,f2f: null == f2f ? _self.f2f : f2f // ignore: cast_nullable_to_non_nullable
as Duration,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}


/// @nodoc
mixin _$MappitLaborHourInput {

/// [id] represents the labor hour ID, or null when creating a new one.
 String? get id;/// [id] represents the labor hour ID, or null when creating a new one.
 set id(String? value);/// [weekday] represents the labor hour weekday.
@JsonKey(unknownEnumValue: Weekday.monday) Weekday get weekday;/// [weekday] represents the labor hour weekday.
@JsonKey(unknownEnumValue: Weekday.monday) set weekday(Weekday value);/// [administrative] represents the labor hour administrative time. Defaults to zero.
@DurationConverter() Duration get administrative;/// [administrative] represents the labor hour administrative time. Defaults to zero.
@DurationConverter() set administrative(Duration value);/// [f2f] represents the labor hour face-to-face time. Defaults to zero.
@DurationConverter() Duration get f2f;/// [f2f] represents the labor hour face-to-face time. Defaults to zero.
@DurationConverter() set f2f(Duration value);/// [other] represents the labor hour other time. Defaults to zero.
@DurationConverter() Duration get other;/// [other] represents the labor hour other time. Defaults to zero.
@DurationConverter() set other(Duration value);
/// Create a copy of MappitLaborHourInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MappitLaborHourInputCopyWith<MappitLaborHourInput> get copyWith => _$MappitLaborHourInputCopyWithImpl<MappitLaborHourInput>(this as MappitLaborHourInput, _$identity);

  /// Serializes this MappitLaborHourInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'MappitLaborHourInput(id: $id, weekday: $weekday, administrative: $administrative, f2f: $f2f, other: $other)';
}


}

/// @nodoc
abstract mixin class $MappitLaborHourInputCopyWith<$Res>  {
  factory $MappitLaborHourInputCopyWith(MappitLaborHourInput value, $Res Function(MappitLaborHourInput) _then) = _$MappitLaborHourInputCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(unknownEnumValue: Weekday.monday) Weekday weekday,@DurationConverter() Duration administrative,@DurationConverter() Duration f2f,@DurationConverter() Duration other
});




}
/// @nodoc
class _$MappitLaborHourInputCopyWithImpl<$Res>
    implements $MappitLaborHourInputCopyWith<$Res> {
  _$MappitLaborHourInputCopyWithImpl(this._self, this._then);

  final MappitLaborHourInput _self;
  final $Res Function(MappitLaborHourInput) _then;

/// Create a copy of MappitLaborHourInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? weekday = null,Object? administrative = null,Object? f2f = null,Object? other = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as Weekday,administrative: null == administrative ? _self.administrative : administrative // ignore: cast_nullable_to_non_nullable
as Duration,f2f: null == f2f ? _self.f2f : f2f // ignore: cast_nullable_to_non_nullable
as Duration,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [MappitLaborHourInput].
extension MappitLaborHourInputPatterns on MappitLaborHourInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MappitLaborHourInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MappitLaborHourInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MappitLaborHourInput value)  $default,){
final _that = this;
switch (_that) {
case _MappitLaborHourInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MappitLaborHourInput value)?  $default,){
final _that = this;
switch (_that) {
case _MappitLaborHourInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MappitLaborHourInput() when $default != null:
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)  $default,) {final _that = this;
switch (_that) {
case _MappitLaborHourInput():
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday, @DurationConverter()  Duration administrative, @DurationConverter()  Duration f2f, @DurationConverter()  Duration other)?  $default,) {final _that = this;
switch (_that) {
case _MappitLaborHourInput() when $default != null:
return $default(_that.id,_that.weekday,_that.administrative,_that.f2f,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MappitLaborHourInput implements MappitLaborHourInput {
   _MappitLaborHourInput({this.id, @JsonKey(unknownEnumValue: Weekday.monday) required this.weekday, @DurationConverter() this.administrative = const Duration(minutes: 0), @DurationConverter() this.f2f = const Duration(minutes: 0), @DurationConverter() this.other = const Duration(minutes: 0)});
  factory _MappitLaborHourInput.fromJson(Map<String, dynamic> json) => _$MappitLaborHourInputFromJson(json);

/// [id] represents the labor hour ID, or null when creating a new one.
@override  String? id;
/// [weekday] represents the labor hour weekday.
@override@JsonKey(unknownEnumValue: Weekday.monday)  Weekday weekday;
/// [administrative] represents the labor hour administrative time. Defaults to zero.
@override@JsonKey()@DurationConverter()  Duration administrative;
/// [f2f] represents the labor hour face-to-face time. Defaults to zero.
@override@JsonKey()@DurationConverter()  Duration f2f;
/// [other] represents the labor hour other time. Defaults to zero.
@override@JsonKey()@DurationConverter()  Duration other;

/// Create a copy of MappitLaborHourInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MappitLaborHourInputCopyWith<_MappitLaborHourInput> get copyWith => __$MappitLaborHourInputCopyWithImpl<_MappitLaborHourInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MappitLaborHourInputToJson(this, );
}



@override
String toString() {
  return 'MappitLaborHourInput(id: $id, weekday: $weekday, administrative: $administrative, f2f: $f2f, other: $other)';
}


}

/// @nodoc
abstract mixin class _$MappitLaborHourInputCopyWith<$Res> implements $MappitLaborHourInputCopyWith<$Res> {
  factory _$MappitLaborHourInputCopyWith(_MappitLaborHourInput value, $Res Function(_MappitLaborHourInput) _then) = __$MappitLaborHourInputCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(unknownEnumValue: Weekday.monday) Weekday weekday,@DurationConverter() Duration administrative,@DurationConverter() Duration f2f,@DurationConverter() Duration other
});




}
/// @nodoc
class __$MappitLaborHourInputCopyWithImpl<$Res>
    implements _$MappitLaborHourInputCopyWith<$Res> {
  __$MappitLaborHourInputCopyWithImpl(this._self, this._then);

  final _MappitLaborHourInput _self;
  final $Res Function(_MappitLaborHourInput) _then;

/// Create a copy of MappitLaborHourInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? weekday = null,Object? administrative = null,Object? f2f = null,Object? other = null,}) {
  return _then(_MappitLaborHourInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as Weekday,administrative: null == administrative ? _self.administrative : administrative // ignore: cast_nullable_to_non_nullable
as Duration,f2f: null == f2f ? _self.f2f : f2f // ignore: cast_nullable_to_non_nullable
as Duration,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}


/// @nodoc
mixin _$MappitRouteLinkingHistory {

/// [currentSeller] represents the current seller of the route. If this field comes null, means
/// is a unlink.
 Asset? get currentSeller;/// [currentSellerId] represents the current seller ID of the route. If this field comes null,
/// means is a unlink.
 String? get currentSellerId;/// [performedBy] represents the user that performed the operation of link or unlink.
/// If this field comes null, the relation was soft-deleted (e.g. the user was removed);
/// [performedById] still holds the plain ID of who performed the operation.
 User? get performedBy;/// [performedById] represents the user ID that performed the operation of link or unlink.
 String get performedById;/// [performedAt] is the timestamp of the operation.
@TimestampConverter() DateTime get performedAt;
/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MappitRouteLinkingHistoryCopyWith<MappitRouteLinkingHistory> get copyWith => _$MappitRouteLinkingHistoryCopyWithImpl<MappitRouteLinkingHistory>(this as MappitRouteLinkingHistory, _$identity);

  /// Serializes this MappitRouteLinkingHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MappitRouteLinkingHistory&&(identical(other.currentSeller, currentSeller) || other.currentSeller == currentSeller)&&(identical(other.currentSellerId, currentSellerId) || other.currentSellerId == currentSellerId)&&(identical(other.performedBy, performedBy) || other.performedBy == performedBy)&&(identical(other.performedById, performedById) || other.performedById == performedById)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentSeller,currentSellerId,performedBy,performedById,performedAt);

@override
String toString() {
  return 'MappitRouteLinkingHistory(currentSeller: $currentSeller, currentSellerId: $currentSellerId, performedBy: $performedBy, performedById: $performedById, performedAt: $performedAt)';
}


}

/// @nodoc
abstract mixin class $MappitRouteLinkingHistoryCopyWith<$Res>  {
  factory $MappitRouteLinkingHistoryCopyWith(MappitRouteLinkingHistory value, $Res Function(MappitRouteLinkingHistory) _then) = _$MappitRouteLinkingHistoryCopyWithImpl;
@useResult
$Res call({
 Asset? currentSeller, String? currentSellerId, User? performedBy, String performedById,@TimestampConverter() DateTime performedAt
});


$AssetCopyWith<$Res>? get currentSeller;$UserCopyWith<$Res>? get performedBy;

}
/// @nodoc
class _$MappitRouteLinkingHistoryCopyWithImpl<$Res>
    implements $MappitRouteLinkingHistoryCopyWith<$Res> {
  _$MappitRouteLinkingHistoryCopyWithImpl(this._self, this._then);

  final MappitRouteLinkingHistory _self;
  final $Res Function(MappitRouteLinkingHistory) _then;

/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentSeller = freezed,Object? currentSellerId = freezed,Object? performedBy = freezed,Object? performedById = null,Object? performedAt = null,}) {
  return _then(_self.copyWith(
currentSeller: freezed == currentSeller ? _self.currentSeller : currentSeller // ignore: cast_nullable_to_non_nullable
as Asset?,currentSellerId: freezed == currentSellerId ? _self.currentSellerId : currentSellerId // ignore: cast_nullable_to_non_nullable
as String?,performedBy: freezed == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as User?,performedById: null == performedById ? _self.performedById : performedById // ignore: cast_nullable_to_non_nullable
as String,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get currentSeller {
    if (_self.currentSeller == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.currentSeller!, (value) {
    return _then(_self.copyWith(currentSeller: value));
  });
}/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get performedBy {
    if (_self.performedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.performedBy!, (value) {
    return _then(_self.copyWith(performedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [MappitRouteLinkingHistory].
extension MappitRouteLinkingHistoryPatterns on MappitRouteLinkingHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MappitRouteLinkingHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MappitRouteLinkingHistory value)  $default,){
final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MappitRouteLinkingHistory value)?  $default,){
final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Asset? currentSeller,  String? currentSellerId,  User? performedBy,  String performedById, @TimestampConverter()  DateTime performedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory() when $default != null:
return $default(_that.currentSeller,_that.currentSellerId,_that.performedBy,_that.performedById,_that.performedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Asset? currentSeller,  String? currentSellerId,  User? performedBy,  String performedById, @TimestampConverter()  DateTime performedAt)  $default,) {final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory():
return $default(_that.currentSeller,_that.currentSellerId,_that.performedBy,_that.performedById,_that.performedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Asset? currentSeller,  String? currentSellerId,  User? performedBy,  String performedById, @TimestampConverter()  DateTime performedAt)?  $default,) {final _that = this;
switch (_that) {
case _MappitRouteLinkingHistory() when $default != null:
return $default(_that.currentSeller,_that.currentSellerId,_that.performedBy,_that.performedById,_that.performedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MappitRouteLinkingHistory implements MappitRouteLinkingHistory {
  const _MappitRouteLinkingHistory({this.currentSeller, this.currentSellerId, this.performedBy, required this.performedById, @TimestampConverter() required this.performedAt});
  factory _MappitRouteLinkingHistory.fromJson(Map<String, dynamic> json) => _$MappitRouteLinkingHistoryFromJson(json);

/// [currentSeller] represents the current seller of the route. If this field comes null, means
/// is a unlink.
@override final  Asset? currentSeller;
/// [currentSellerId] represents the current seller ID of the route. If this field comes null,
/// means is a unlink.
@override final  String? currentSellerId;
/// [performedBy] represents the user that performed the operation of link or unlink.
/// If this field comes null, the relation was soft-deleted (e.g. the user was removed);
/// [performedById] still holds the plain ID of who performed the operation.
@override final  User? performedBy;
/// [performedById] represents the user ID that performed the operation of link or unlink.
@override final  String performedById;
/// [performedAt] is the timestamp of the operation.
@override@TimestampConverter() final  DateTime performedAt;

/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MappitRouteLinkingHistoryCopyWith<_MappitRouteLinkingHistory> get copyWith => __$MappitRouteLinkingHistoryCopyWithImpl<_MappitRouteLinkingHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MappitRouteLinkingHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MappitRouteLinkingHistory&&(identical(other.currentSeller, currentSeller) || other.currentSeller == currentSeller)&&(identical(other.currentSellerId, currentSellerId) || other.currentSellerId == currentSellerId)&&(identical(other.performedBy, performedBy) || other.performedBy == performedBy)&&(identical(other.performedById, performedById) || other.performedById == performedById)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentSeller,currentSellerId,performedBy,performedById,performedAt);

@override
String toString() {
  return 'MappitRouteLinkingHistory(currentSeller: $currentSeller, currentSellerId: $currentSellerId, performedBy: $performedBy, performedById: $performedById, performedAt: $performedAt)';
}


}

/// @nodoc
abstract mixin class _$MappitRouteLinkingHistoryCopyWith<$Res> implements $MappitRouteLinkingHistoryCopyWith<$Res> {
  factory _$MappitRouteLinkingHistoryCopyWith(_MappitRouteLinkingHistory value, $Res Function(_MappitRouteLinkingHistory) _then) = __$MappitRouteLinkingHistoryCopyWithImpl;
@override @useResult
$Res call({
 Asset? currentSeller, String? currentSellerId, User? performedBy, String performedById,@TimestampConverter() DateTime performedAt
});


@override $AssetCopyWith<$Res>? get currentSeller;@override $UserCopyWith<$Res>? get performedBy;

}
/// @nodoc
class __$MappitRouteLinkingHistoryCopyWithImpl<$Res>
    implements _$MappitRouteLinkingHistoryCopyWith<$Res> {
  __$MappitRouteLinkingHistoryCopyWithImpl(this._self, this._then);

  final _MappitRouteLinkingHistory _self;
  final $Res Function(_MappitRouteLinkingHistory) _then;

/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentSeller = freezed,Object? currentSellerId = freezed,Object? performedBy = freezed,Object? performedById = null,Object? performedAt = null,}) {
  return _then(_MappitRouteLinkingHistory(
currentSeller: freezed == currentSeller ? _self.currentSeller : currentSeller // ignore: cast_nullable_to_non_nullable
as Asset?,currentSellerId: freezed == currentSellerId ? _self.currentSellerId : currentSellerId // ignore: cast_nullable_to_non_nullable
as String?,performedBy: freezed == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as User?,performedById: null == performedById ? _self.performedById : performedById // ignore: cast_nullable_to_non_nullable
as String,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get currentSeller {
    if (_self.currentSeller == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.currentSeller!, (value) {
    return _then(_self.copyWith(currentSeller: value));
  });
}/// Create a copy of MappitRouteLinkingHistory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get performedBy {
    if (_self.performedBy == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.performedBy!, (value) {
    return _then(_self.copyWith(performedBy: value));
  });
}
}


/// @nodoc
mixin _$MappitRoute {

/// [id] represents the route ID.
 String get id;/// [name] represents the route name.
 String get name;/// [currentSeller] represents the current seller of the route.
 Asset? get currentSeller;/// [currentSellerId] represents the current seller ID of the route.
 String? get currentSellerId;/// [geofences] represents the geofences linked to the route.
 List<Geofence>? get geofences;/// [geofencesIds] represents the geofences IDs linked to the route.
 List<String>? get geofencesIds;/// [assignmentsHistory] is the history of the link and unlink operations of this route.
 List<MappitRouteLinkingHistory>? get assignmentsHistory;/// [ownerId] refers to the owner of the route.
 String? get ownerId;/// [owner] refers to the owner of the route.
 User? get owner;/// [secondarySellers] represents the secondary sellers of the route.
 List<Asset>? get secondarySellers;/// [secondarySellersIds] represents the secondary sellers IDs of the route.
 List<String>? get secondarySellersIds;
/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MappitRouteCopyWith<MappitRoute> get copyWith => _$MappitRouteCopyWithImpl<MappitRoute>(this as MappitRoute, _$identity);

  /// Serializes this MappitRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MappitRoute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currentSeller, currentSeller) || other.currentSeller == currentSeller)&&(identical(other.currentSellerId, currentSellerId) || other.currentSellerId == currentSellerId)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.assignmentsHistory, assignmentsHistory)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.secondarySellers, secondarySellers)&&const DeepCollectionEquality().equals(other.secondarySellersIds, secondarySellersIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,currentSeller,currentSellerId,const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(assignmentsHistory),ownerId,owner,const DeepCollectionEquality().hash(secondarySellers),const DeepCollectionEquality().hash(secondarySellersIds));

@override
String toString() {
  return 'MappitRoute(id: $id, name: $name, currentSeller: $currentSeller, currentSellerId: $currentSellerId, geofences: $geofences, geofencesIds: $geofencesIds, assignmentsHistory: $assignmentsHistory, ownerId: $ownerId, owner: $owner, secondarySellers: $secondarySellers, secondarySellersIds: $secondarySellersIds)';
}


}

/// @nodoc
abstract mixin class $MappitRouteCopyWith<$Res>  {
  factory $MappitRouteCopyWith(MappitRoute value, $Res Function(MappitRoute) _then) = _$MappitRouteCopyWithImpl;
@useResult
$Res call({
 String id, String name, Asset? currentSeller, String? currentSellerId, List<Geofence>? geofences, List<String>? geofencesIds, List<MappitRouteLinkingHistory>? assignmentsHistory, String? ownerId, User? owner, List<Asset>? secondarySellers, List<String>? secondarySellersIds
});


$AssetCopyWith<$Res>? get currentSeller;$UserCopyWith<$Res>? get owner;

}
/// @nodoc
class _$MappitRouteCopyWithImpl<$Res>
    implements $MappitRouteCopyWith<$Res> {
  _$MappitRouteCopyWithImpl(this._self, this._then);

  final MappitRoute _self;
  final $Res Function(MappitRoute) _then;

/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? currentSeller = freezed,Object? currentSellerId = freezed,Object? geofences = freezed,Object? geofencesIds = freezed,Object? assignmentsHistory = freezed,Object? ownerId = freezed,Object? owner = freezed,Object? secondarySellers = freezed,Object? secondarySellersIds = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currentSeller: freezed == currentSeller ? _self.currentSeller : currentSeller // ignore: cast_nullable_to_non_nullable
as Asset?,currentSellerId: freezed == currentSellerId ? _self.currentSellerId : currentSellerId // ignore: cast_nullable_to_non_nullable
as String?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assignmentsHistory: freezed == assignmentsHistory ? _self.assignmentsHistory : assignmentsHistory // ignore: cast_nullable_to_non_nullable
as List<MappitRouteLinkingHistory>?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,secondarySellers: freezed == secondarySellers ? _self.secondarySellers : secondarySellers // ignore: cast_nullable_to_non_nullable
as List<Asset>?,secondarySellersIds: freezed == secondarySellersIds ? _self.secondarySellersIds : secondarySellersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get currentSeller {
    if (_self.currentSeller == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.currentSeller!, (value) {
    return _then(_self.copyWith(currentSeller: value));
  });
}/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [MappitRoute].
extension MappitRoutePatterns on MappitRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MappitRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MappitRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MappitRoute value)  $default,){
final _that = this;
switch (_that) {
case _MappitRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MappitRoute value)?  $default,){
final _that = this;
switch (_that) {
case _MappitRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Asset? currentSeller,  String? currentSellerId,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<MappitRouteLinkingHistory>? assignmentsHistory,  String? ownerId,  User? owner,  List<Asset>? secondarySellers,  List<String>? secondarySellersIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MappitRoute() when $default != null:
return $default(_that.id,_that.name,_that.currentSeller,_that.currentSellerId,_that.geofences,_that.geofencesIds,_that.assignmentsHistory,_that.ownerId,_that.owner,_that.secondarySellers,_that.secondarySellersIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Asset? currentSeller,  String? currentSellerId,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<MappitRouteLinkingHistory>? assignmentsHistory,  String? ownerId,  User? owner,  List<Asset>? secondarySellers,  List<String>? secondarySellersIds)  $default,) {final _that = this;
switch (_that) {
case _MappitRoute():
return $default(_that.id,_that.name,_that.currentSeller,_that.currentSellerId,_that.geofences,_that.geofencesIds,_that.assignmentsHistory,_that.ownerId,_that.owner,_that.secondarySellers,_that.secondarySellersIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Asset? currentSeller,  String? currentSellerId,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<MappitRouteLinkingHistory>? assignmentsHistory,  String? ownerId,  User? owner,  List<Asset>? secondarySellers,  List<String>? secondarySellersIds)?  $default,) {final _that = this;
switch (_that) {
case _MappitRoute() when $default != null:
return $default(_that.id,_that.name,_that.currentSeller,_that.currentSellerId,_that.geofences,_that.geofencesIds,_that.assignmentsHistory,_that.ownerId,_that.owner,_that.secondarySellers,_that.secondarySellersIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MappitRoute implements MappitRoute {
  const _MappitRoute({required this.id, required this.name, this.currentSeller, this.currentSellerId, this.geofences, this.geofencesIds, this.assignmentsHistory, this.ownerId, this.owner, this.secondarySellers, this.secondarySellersIds});
  factory _MappitRoute.fromJson(Map<String, dynamic> json) => _$MappitRouteFromJson(json);

/// [id] represents the route ID.
@override final  String id;
/// [name] represents the route name.
@override final  String name;
/// [currentSeller] represents the current seller of the route.
@override final  Asset? currentSeller;
/// [currentSellerId] represents the current seller ID of the route.
@override final  String? currentSellerId;
/// [geofences] represents the geofences linked to the route.
@override final  List<Geofence>? geofences;
/// [geofencesIds] represents the geofences IDs linked to the route.
@override final  List<String>? geofencesIds;
/// [assignmentsHistory] is the history of the link and unlink operations of this route.
@override final  List<MappitRouteLinkingHistory>? assignmentsHistory;
/// [ownerId] refers to the owner of the route.
@override final  String? ownerId;
/// [owner] refers to the owner of the route.
@override final  User? owner;
/// [secondarySellers] represents the secondary sellers of the route.
@override final  List<Asset>? secondarySellers;
/// [secondarySellersIds] represents the secondary sellers IDs of the route.
@override final  List<String>? secondarySellersIds;

/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MappitRouteCopyWith<_MappitRoute> get copyWith => __$MappitRouteCopyWithImpl<_MappitRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MappitRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MappitRoute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currentSeller, currentSeller) || other.currentSeller == currentSeller)&&(identical(other.currentSellerId, currentSellerId) || other.currentSellerId == currentSellerId)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.assignmentsHistory, assignmentsHistory)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.secondarySellers, secondarySellers)&&const DeepCollectionEquality().equals(other.secondarySellersIds, secondarySellersIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,currentSeller,currentSellerId,const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(assignmentsHistory),ownerId,owner,const DeepCollectionEquality().hash(secondarySellers),const DeepCollectionEquality().hash(secondarySellersIds));

@override
String toString() {
  return 'MappitRoute(id: $id, name: $name, currentSeller: $currentSeller, currentSellerId: $currentSellerId, geofences: $geofences, geofencesIds: $geofencesIds, assignmentsHistory: $assignmentsHistory, ownerId: $ownerId, owner: $owner, secondarySellers: $secondarySellers, secondarySellersIds: $secondarySellersIds)';
}


}

/// @nodoc
abstract mixin class _$MappitRouteCopyWith<$Res> implements $MappitRouteCopyWith<$Res> {
  factory _$MappitRouteCopyWith(_MappitRoute value, $Res Function(_MappitRoute) _then) = __$MappitRouteCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Asset? currentSeller, String? currentSellerId, List<Geofence>? geofences, List<String>? geofencesIds, List<MappitRouteLinkingHistory>? assignmentsHistory, String? ownerId, User? owner, List<Asset>? secondarySellers, List<String>? secondarySellersIds
});


@override $AssetCopyWith<$Res>? get currentSeller;@override $UserCopyWith<$Res>? get owner;

}
/// @nodoc
class __$MappitRouteCopyWithImpl<$Res>
    implements _$MappitRouteCopyWith<$Res> {
  __$MappitRouteCopyWithImpl(this._self, this._then);

  final _MappitRoute _self;
  final $Res Function(_MappitRoute) _then;

/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? currentSeller = freezed,Object? currentSellerId = freezed,Object? geofences = freezed,Object? geofencesIds = freezed,Object? assignmentsHistory = freezed,Object? ownerId = freezed,Object? owner = freezed,Object? secondarySellers = freezed,Object? secondarySellersIds = freezed,}) {
  return _then(_MappitRoute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currentSeller: freezed == currentSeller ? _self.currentSeller : currentSeller // ignore: cast_nullable_to_non_nullable
as Asset?,currentSellerId: freezed == currentSellerId ? _self.currentSellerId : currentSellerId // ignore: cast_nullable_to_non_nullable
as String?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assignmentsHistory: freezed == assignmentsHistory ? _self.assignmentsHistory : assignmentsHistory // ignore: cast_nullable_to_non_nullable
as List<MappitRouteLinkingHistory>?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,secondarySellers: freezed == secondarySellers ? _self.secondarySellers : secondarySellers // ignore: cast_nullable_to_non_nullable
as List<Asset>?,secondarySellersIds: freezed == secondarySellersIds ? _self.secondarySellersIds : secondarySellersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get currentSeller {
    if (_self.currentSeller == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.currentSeller!, (value) {
    return _then(_self.copyWith(currentSeller: value));
  });
}/// Create a copy of MappitRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
