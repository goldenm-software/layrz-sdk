// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_shortcut.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LinkShortcut {

/// Unique identifier for this link shortcut.
 String get id;/// The short code used to reach this shortcut.
 String get code;/// The destination URL this shortcut redirects to, or null if not set.
 String? get redirectTo;/// The [Employee] who created this shortcut, or null if not available.
 Employee? get creator;/// The unique identifier of the [Employee] who created this shortcut, or
/// null if not available.
 String? get creatorId;
/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkShortcutCopyWith<LinkShortcut> get copyWith => _$LinkShortcutCopyWithImpl<LinkShortcut>(this as LinkShortcut, _$identity);

  /// Serializes this LinkShortcut to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkShortcut&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,redirectTo,creator,creatorId);

@override
String toString() {
  return 'LinkShortcut(id: $id, code: $code, redirectTo: $redirectTo, creator: $creator, creatorId: $creatorId)';
}


}

/// @nodoc
abstract mixin class $LinkShortcutCopyWith<$Res>  {
  factory $LinkShortcutCopyWith(LinkShortcut value, $Res Function(LinkShortcut) _then) = _$LinkShortcutCopyWithImpl;
@useResult
$Res call({
 String id, String code, String? redirectTo, Employee? creator, String? creatorId
});


$EmployeeCopyWith<$Res>? get creator;

}
/// @nodoc
class _$LinkShortcutCopyWithImpl<$Res>
    implements $LinkShortcutCopyWith<$Res> {
  _$LinkShortcutCopyWithImpl(this._self, this._then);

  final LinkShortcut _self;
  final $Res Function(LinkShortcut) _then;

/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? redirectTo = freezed,Object? creator = freezed,Object? creatorId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Employee?,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get creator {
    if (_self.creator == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.creator!, (value) {
    return _then(_self.copyWith(creator: value));
  });
}
}


/// Adds pattern-matching-related methods to [LinkShortcut].
extension LinkShortcutPatterns on LinkShortcut {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkShortcut value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkShortcut() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkShortcut value)  $default,){
final _that = this;
switch (_that) {
case _LinkShortcut():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkShortcut value)?  $default,){
final _that = this;
switch (_that) {
case _LinkShortcut() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code,  String? redirectTo,  Employee? creator,  String? creatorId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkShortcut() when $default != null:
return $default(_that.id,_that.code,_that.redirectTo,_that.creator,_that.creatorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code,  String? redirectTo,  Employee? creator,  String? creatorId)  $default,) {final _that = this;
switch (_that) {
case _LinkShortcut():
return $default(_that.id,_that.code,_that.redirectTo,_that.creator,_that.creatorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code,  String? redirectTo,  Employee? creator,  String? creatorId)?  $default,) {final _that = this;
switch (_that) {
case _LinkShortcut() when $default != null:
return $default(_that.id,_that.code,_that.redirectTo,_that.creator,_that.creatorId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkShortcut extends LinkShortcut {
  const _LinkShortcut({required this.id, required this.code, this.redirectTo, this.creator, this.creatorId}): super._();
  factory _LinkShortcut.fromJson(Map<String, dynamic> json) => _$LinkShortcutFromJson(json);

/// Unique identifier for this link shortcut.
@override final  String id;
/// The short code used to reach this shortcut.
@override final  String code;
/// The destination URL this shortcut redirects to, or null if not set.
@override final  String? redirectTo;
/// The [Employee] who created this shortcut, or null if not available.
@override final  Employee? creator;
/// The unique identifier of the [Employee] who created this shortcut, or
/// null if not available.
@override final  String? creatorId;

/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkShortcutCopyWith<_LinkShortcut> get copyWith => __$LinkShortcutCopyWithImpl<_LinkShortcut>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkShortcutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkShortcut&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,redirectTo,creator,creatorId);

@override
String toString() {
  return 'LinkShortcut(id: $id, code: $code, redirectTo: $redirectTo, creator: $creator, creatorId: $creatorId)';
}


}

/// @nodoc
abstract mixin class _$LinkShortcutCopyWith<$Res> implements $LinkShortcutCopyWith<$Res> {
  factory _$LinkShortcutCopyWith(_LinkShortcut value, $Res Function(_LinkShortcut) _then) = __$LinkShortcutCopyWithImpl;
@override @useResult
$Res call({
 String id, String code, String? redirectTo, Employee? creator, String? creatorId
});


@override $EmployeeCopyWith<$Res>? get creator;

}
/// @nodoc
class __$LinkShortcutCopyWithImpl<$Res>
    implements _$LinkShortcutCopyWith<$Res> {
  __$LinkShortcutCopyWithImpl(this._self, this._then);

  final _LinkShortcut _self;
  final $Res Function(_LinkShortcut) _then;

/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? redirectTo = freezed,Object? creator = freezed,Object? creatorId = freezed,}) {
  return _then(_LinkShortcut(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,creator: freezed == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as Employee?,creatorId: freezed == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LinkShortcut
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get creator {
    if (_self.creator == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.creator!, (value) {
    return _then(_self.copyWith(creator: value));
  });
}
}


/// @nodoc
mixin _$LinkShortcutInput {

/// Unique identifier for this link shortcut, or null when creating a new
/// one.
 String? get id;/// Unique identifier for this link shortcut, or null when creating a new
/// one.
 set id(String? value);/// The short code used to reach this shortcut. Defaults to an empty
/// string.
 String get code;/// The short code used to reach this shortcut. Defaults to an empty
/// string.
 set code(String value);/// The destination URL this shortcut redirects to, or null if not set.
 String? get redirectTo;/// The destination URL this shortcut redirects to, or null if not set.
 set redirectTo(String? value);
/// Create a copy of LinkShortcutInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkShortcutInputCopyWith<LinkShortcutInput> get copyWith => _$LinkShortcutInputCopyWithImpl<LinkShortcutInput>(this as LinkShortcutInput, _$identity);

  /// Serializes this LinkShortcutInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'LinkShortcutInput(id: $id, code: $code, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class $LinkShortcutInputCopyWith<$Res>  {
  factory $LinkShortcutInputCopyWith(LinkShortcutInput value, $Res Function(LinkShortcutInput) _then) = _$LinkShortcutInputCopyWithImpl;
@useResult
$Res call({
 String? id, String code, String? redirectTo
});




}
/// @nodoc
class _$LinkShortcutInputCopyWithImpl<$Res>
    implements $LinkShortcutInputCopyWith<$Res> {
  _$LinkShortcutInputCopyWithImpl(this._self, this._then);

  final LinkShortcutInput _self;
  final $Res Function(LinkShortcutInput) _then;

/// Create a copy of LinkShortcutInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = null,Object? redirectTo = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkShortcutInput].
extension LinkShortcutInputPatterns on LinkShortcutInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkShortcutInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkShortcutInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkShortcutInput value)  $default,){
final _that = this;
switch (_that) {
case _LinkShortcutInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkShortcutInput value)?  $default,){
final _that = this;
switch (_that) {
case _LinkShortcutInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String code,  String? redirectTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkShortcutInput() when $default != null:
return $default(_that.id,_that.code,_that.redirectTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String code,  String? redirectTo)  $default,) {final _that = this;
switch (_that) {
case _LinkShortcutInput():
return $default(_that.id,_that.code,_that.redirectTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String code,  String? redirectTo)?  $default,) {final _that = this;
switch (_that) {
case _LinkShortcutInput() when $default != null:
return $default(_that.id,_that.code,_that.redirectTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkShortcutInput extends LinkShortcutInput {
   _LinkShortcutInput({this.id, this.code = '', this.redirectTo}): super._();
  factory _LinkShortcutInput.fromJson(Map<String, dynamic> json) => _$LinkShortcutInputFromJson(json);

/// Unique identifier for this link shortcut, or null when creating a new
/// one.
@override  String? id;
/// The short code used to reach this shortcut. Defaults to an empty
/// string.
@override@JsonKey()  String code;
/// The destination URL this shortcut redirects to, or null if not set.
@override  String? redirectTo;

/// Create a copy of LinkShortcutInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkShortcutInputCopyWith<_LinkShortcutInput> get copyWith => __$LinkShortcutInputCopyWithImpl<_LinkShortcutInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkShortcutInputToJson(this, );
}



@override
String toString() {
  return 'LinkShortcutInput(id: $id, code: $code, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class _$LinkShortcutInputCopyWith<$Res> implements $LinkShortcutInputCopyWith<$Res> {
  factory _$LinkShortcutInputCopyWith(_LinkShortcutInput value, $Res Function(_LinkShortcutInput) _then) = __$LinkShortcutInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String code, String? redirectTo
});




}
/// @nodoc
class __$LinkShortcutInputCopyWithImpl<$Res>
    implements _$LinkShortcutInputCopyWith<$Res> {
  __$LinkShortcutInputCopyWithImpl(this._self, this._then);

  final _LinkShortcutInput _self;
  final $Res Function(_LinkShortcutInput) _then;

/// Create a copy of LinkShortcutInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = null,Object? redirectTo = freezed,}) {
  return _then(_LinkShortcutInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
