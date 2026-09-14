// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Preset {

/// Is the ID.
 String get id;/// Is the name, only used as reference.
 String get name;/// Is the maximum valid time of the preset.
@TimestampOrNullConverter() DateTime? get validBefore;/// Indicates if the preset is expired or not.
 bool get isExpired;/// Is the list of associated triggers.
 List<Trigger>? get triggers;/// Is the list of IDs of the associated triggers.
 List<String>? get triggersIds;/// Is the comment to place on the case when the preset is applied.
 String? get comment;/// Is the list of granted access.
 List<Access>? get access;
/// Create a copy of Preset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetCopyWith<Preset> get copyWith => _$PresetCopyWithImpl<Preset>(this as Preset, _$identity);

  /// Serializes this Preset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Preset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.validBefore, validBefore) || other.validBefore == validBefore)&&(identical(other.isExpired, isExpired) || other.isExpired == isExpired)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,validBefore,isExpired,const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),comment,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'Preset(id: $id, name: $name, validBefore: $validBefore, isExpired: $isExpired, triggers: $triggers, triggersIds: $triggersIds, comment: $comment, access: $access)';
}


}

/// @nodoc
abstract mixin class $PresetCopyWith<$Res>  {
  factory $PresetCopyWith(Preset value, $Res Function(Preset) _then) = _$PresetCopyWithImpl;
@useResult
$Res call({
 String id, String name,@TimestampOrNullConverter() DateTime? validBefore, bool isExpired, List<Trigger>? triggers, List<String>? triggersIds, String? comment, List<Access>? access
});




}
/// @nodoc
class _$PresetCopyWithImpl<$Res>
    implements $PresetCopyWith<$Res> {
  _$PresetCopyWithImpl(this._self, this._then);

  final Preset _self;
  final $Res Function(Preset) _then;

/// Create a copy of Preset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? validBefore = freezed,Object? isExpired = null,Object? triggers = freezed,Object? triggersIds = freezed,Object? comment = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,validBefore: freezed == validBefore ? _self.validBefore : validBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,isExpired: null == isExpired ? _self.isExpired : isExpired // ignore: cast_nullable_to_non_nullable
as bool,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Preset].
extension PresetPatterns on Preset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Preset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Preset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Preset value)  $default,){
final _that = this;
switch (_that) {
case _Preset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Preset value)?  $default,){
final _that = this;
switch (_that) {
case _Preset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @TimestampOrNullConverter()  DateTime? validBefore,  bool isExpired,  List<Trigger>? triggers,  List<String>? triggersIds,  String? comment,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Preset() when $default != null:
return $default(_that.id,_that.name,_that.validBefore,_that.isExpired,_that.triggers,_that.triggersIds,_that.comment,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @TimestampOrNullConverter()  DateTime? validBefore,  bool isExpired,  List<Trigger>? triggers,  List<String>? triggersIds,  String? comment,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _Preset():
return $default(_that.id,_that.name,_that.validBefore,_that.isExpired,_that.triggers,_that.triggersIds,_that.comment,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @TimestampOrNullConverter()  DateTime? validBefore,  bool isExpired,  List<Trigger>? triggers,  List<String>? triggersIds,  String? comment,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _Preset() when $default != null:
return $default(_that.id,_that.name,_that.validBefore,_that.isExpired,_that.triggers,_that.triggersIds,_that.comment,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Preset implements Preset {
  const _Preset({required this.id, required this.name, @TimestampOrNullConverter() this.validBefore, this.isExpired = true, this.triggers, this.triggersIds, this.comment, this.access});
  factory _Preset.fromJson(Map<String, dynamic> json) => _$PresetFromJson(json);

/// Is the ID.
@override final  String id;
/// Is the name, only used as reference.
@override final  String name;
/// Is the maximum valid time of the preset.
@override@TimestampOrNullConverter() final  DateTime? validBefore;
/// Indicates if the preset is expired or not.
@override@JsonKey() final  bool isExpired;
/// Is the list of associated triggers.
@override final  List<Trigger>? triggers;
/// Is the list of IDs of the associated triggers.
@override final  List<String>? triggersIds;
/// Is the comment to place on the case when the preset is applied.
@override final  String? comment;
/// Is the list of granted access.
@override final  List<Access>? access;

/// Create a copy of Preset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetCopyWith<_Preset> get copyWith => __$PresetCopyWithImpl<_Preset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Preset&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.validBefore, validBefore) || other.validBefore == validBefore)&&(identical(other.isExpired, isExpired) || other.isExpired == isExpired)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,validBefore,isExpired,const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),comment,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'Preset(id: $id, name: $name, validBefore: $validBefore, isExpired: $isExpired, triggers: $triggers, triggersIds: $triggersIds, comment: $comment, access: $access)';
}


}

/// @nodoc
abstract mixin class _$PresetCopyWith<$Res> implements $PresetCopyWith<$Res> {
  factory _$PresetCopyWith(_Preset value, $Res Function(_Preset) _then) = __$PresetCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@TimestampOrNullConverter() DateTime? validBefore, bool isExpired, List<Trigger>? triggers, List<String>? triggersIds, String? comment, List<Access>? access
});




}
/// @nodoc
class __$PresetCopyWithImpl<$Res>
    implements _$PresetCopyWith<$Res> {
  __$PresetCopyWithImpl(this._self, this._then);

  final _Preset _self;
  final $Res Function(_Preset) _then;

/// Create a copy of Preset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? validBefore = freezed,Object? isExpired = null,Object? triggers = freezed,Object? triggersIds = freezed,Object? comment = freezed,Object? access = freezed,}) {
  return _then(_Preset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,validBefore: freezed == validBefore ? _self.validBefore : validBefore // ignore: cast_nullable_to_non_nullable
as DateTime?,isExpired: null == isExpired ? _self.isExpired : isExpired // ignore: cast_nullable_to_non_nullable
as bool,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}


}

// dart format on
