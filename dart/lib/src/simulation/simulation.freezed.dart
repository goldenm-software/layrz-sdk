// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimulationCycle {

/// [id] is the unique identifier of the cycle
 String get id;/// [name] is the name of the cycle
 String get name;/// [steps] is the number of steps of the cycle
 int get steps;/// [fileUri] is the URI of the file that contains the cycle
 String? get fileUri;
/// Create a copy of SimulationCycle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimulationCycleCopyWith<SimulationCycle> get copyWith => _$SimulationCycleCopyWithImpl<SimulationCycle>(this as SimulationCycle, _$identity);

  /// Serializes this SimulationCycle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimulationCycle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.steps, steps) || other.steps == steps)&&(identical(other.fileUri, fileUri) || other.fileUri == fileUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,steps,fileUri);

@override
String toString() {
  return 'SimulationCycle(id: $id, name: $name, steps: $steps, fileUri: $fileUri)';
}


}

/// @nodoc
abstract mixin class $SimulationCycleCopyWith<$Res>  {
  factory $SimulationCycleCopyWith(SimulationCycle value, $Res Function(SimulationCycle) _then) = _$SimulationCycleCopyWithImpl;
@useResult
$Res call({
 String id, String name, int steps, String? fileUri
});




}
/// @nodoc
class _$SimulationCycleCopyWithImpl<$Res>
    implements $SimulationCycleCopyWith<$Res> {
  _$SimulationCycleCopyWithImpl(this._self, this._then);

  final SimulationCycle _self;
  final $Res Function(SimulationCycle) _then;

/// Create a copy of SimulationCycle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? steps = null,Object? fileUri = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as int,fileUri: freezed == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SimulationCycle].
extension SimulationCyclePatterns on SimulationCycle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimulationCycle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimulationCycle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimulationCycle value)  $default,){
final _that = this;
switch (_that) {
case _SimulationCycle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimulationCycle value)?  $default,){
final _that = this;
switch (_that) {
case _SimulationCycle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int steps,  String? fileUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimulationCycle() when $default != null:
return $default(_that.id,_that.name,_that.steps,_that.fileUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int steps,  String? fileUri)  $default,) {final _that = this;
switch (_that) {
case _SimulationCycle():
return $default(_that.id,_that.name,_that.steps,_that.fileUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int steps,  String? fileUri)?  $default,) {final _that = this;
switch (_that) {
case _SimulationCycle() when $default != null:
return $default(_that.id,_that.name,_that.steps,_that.fileUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimulationCycle extends SimulationCycle {
  const _SimulationCycle({required this.id, required this.name, required this.steps, this.fileUri}): super._();
  factory _SimulationCycle.fromJson(Map<String, dynamic> json) => _$SimulationCycleFromJson(json);

/// [id] is the unique identifier of the cycle
@override final  String id;
/// [name] is the name of the cycle
@override final  String name;
/// [steps] is the number of steps of the cycle
@override final  int steps;
/// [fileUri] is the URI of the file that contains the cycle
@override final  String? fileUri;

/// Create a copy of SimulationCycle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimulationCycleCopyWith<_SimulationCycle> get copyWith => __$SimulationCycleCopyWithImpl<_SimulationCycle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimulationCycleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimulationCycle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.steps, steps) || other.steps == steps)&&(identical(other.fileUri, fileUri) || other.fileUri == fileUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,steps,fileUri);

@override
String toString() {
  return 'SimulationCycle(id: $id, name: $name, steps: $steps, fileUri: $fileUri)';
}


}

/// @nodoc
abstract mixin class _$SimulationCycleCopyWith<$Res> implements $SimulationCycleCopyWith<$Res> {
  factory _$SimulationCycleCopyWith(_SimulationCycle value, $Res Function(_SimulationCycle) _then) = __$SimulationCycleCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int steps, String? fileUri
});




}
/// @nodoc
class __$SimulationCycleCopyWithImpl<$Res>
    implements _$SimulationCycleCopyWith<$Res> {
  __$SimulationCycleCopyWithImpl(this._self, this._then);

  final _SimulationCycle _self;
  final $Res Function(_SimulationCycle) _then;

/// Create a copy of SimulationCycle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? steps = null,Object? fileUri = freezed,}) {
  return _then(_SimulationCycle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as int,fileUri: freezed == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SimulationCycleInput {

/// Unique identifier for this cycle, or null when creating a new one.
 String? get id;/// Unique identifier for this cycle, or null when creating a new one.
 set id(String? value);/// Human-readable name of the cycle. Defaults to an empty string.
 String get name;/// Human-readable name of the cycle. Defaults to an empty string.
 set name(String value);/// The URI of the file that contains the cycle, or a Base64 payload to
/// upload a new file.
 String? get fileUri;/// The URI of the file that contains the cycle, or a Base64 payload to
/// upload a new file.
 set fileUri(String? value);
/// Create a copy of SimulationCycleInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimulationCycleInputCopyWith<SimulationCycleInput> get copyWith => _$SimulationCycleInputCopyWithImpl<SimulationCycleInput>(this as SimulationCycleInput, _$identity);

  /// Serializes this SimulationCycleInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'SimulationCycleInput(id: $id, name: $name, fileUri: $fileUri)';
}


}

/// @nodoc
abstract mixin class $SimulationCycleInputCopyWith<$Res>  {
  factory $SimulationCycleInputCopyWith(SimulationCycleInput value, $Res Function(SimulationCycleInput) _then) = _$SimulationCycleInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String? fileUri
});




}
/// @nodoc
class _$SimulationCycleInputCopyWithImpl<$Res>
    implements $SimulationCycleInputCopyWith<$Res> {
  _$SimulationCycleInputCopyWithImpl(this._self, this._then);

  final SimulationCycleInput _self;
  final $Res Function(SimulationCycleInput) _then;

/// Create a copy of SimulationCycleInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? fileUri = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fileUri: freezed == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SimulationCycleInput].
extension SimulationCycleInputPatterns on SimulationCycleInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimulationCycleInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimulationCycleInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimulationCycleInput value)  $default,){
final _that = this;
switch (_that) {
case _SimulationCycleInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimulationCycleInput value)?  $default,){
final _that = this;
switch (_that) {
case _SimulationCycleInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String? fileUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimulationCycleInput() when $default != null:
return $default(_that.id,_that.name,_that.fileUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String? fileUri)  $default,) {final _that = this;
switch (_that) {
case _SimulationCycleInput():
return $default(_that.id,_that.name,_that.fileUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String? fileUri)?  $default,) {final _that = this;
switch (_that) {
case _SimulationCycleInput() when $default != null:
return $default(_that.id,_that.name,_that.fileUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimulationCycleInput extends SimulationCycleInput {
   _SimulationCycleInput({this.id, this.name = '', this.fileUri}): super._();
  factory _SimulationCycleInput.fromJson(Map<String, dynamic> json) => _$SimulationCycleInputFromJson(json);

/// Unique identifier for this cycle, or null when creating a new one.
@override  String? id;
/// Human-readable name of the cycle. Defaults to an empty string.
@override@JsonKey()  String name;
/// The URI of the file that contains the cycle, or a Base64 payload to
/// upload a new file.
@override  String? fileUri;

/// Create a copy of SimulationCycleInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimulationCycleInputCopyWith<_SimulationCycleInput> get copyWith => __$SimulationCycleInputCopyWithImpl<_SimulationCycleInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimulationCycleInputToJson(this, );
}



@override
String toString() {
  return 'SimulationCycleInput(id: $id, name: $name, fileUri: $fileUri)';
}


}

/// @nodoc
abstract mixin class _$SimulationCycleInputCopyWith<$Res> implements $SimulationCycleInputCopyWith<$Res> {
  factory _$SimulationCycleInputCopyWith(_SimulationCycleInput value, $Res Function(_SimulationCycleInput) _then) = __$SimulationCycleInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String? fileUri
});




}
/// @nodoc
class __$SimulationCycleInputCopyWithImpl<$Res>
    implements _$SimulationCycleInputCopyWith<$Res> {
  __$SimulationCycleInputCopyWithImpl(this._self, this._then);

  final _SimulationCycleInput _self;
  final $Res Function(_SimulationCycleInput) _then;

/// Create a copy of SimulationCycleInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? fileUri = freezed,}) {
  return _then(_SimulationCycleInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fileUri: freezed == fileUri ? _self.fileUri : fileUri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
