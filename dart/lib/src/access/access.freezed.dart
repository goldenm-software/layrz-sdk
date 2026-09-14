// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Access {

/// Unique identifier for this access grant.
 String get id;/// Human-readable label for this access grant.
 String? get label;/// Whether the grantee has read permission.
 bool? get read;/// Whether the grantee has write permission.
 bool? get write;/// Whether the grantee has manage permission.
 bool? get manage;/// The ID of the entity this access grant applies to.
 String? get objectId;/// The ID of the user this access grant applies to.
 String get userId;/// The user this access grant applies to.
 User? get user;/// The platform module this access grant applies to.
@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule get module;
/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessCopyWith<Access> get copyWith => _$AccessCopyWithImpl<Access>(this as Access, _$identity);

  /// Serializes this Access to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Access&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.read, read) || other.read == read)&&(identical(other.write, write) || other.write == write)&&(identical(other.manage, manage) || other.manage == manage)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.module, module) || other.module == module));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,read,write,manage,objectId,userId,user,module);

@override
String toString() {
  return 'Access(id: $id, label: $label, read: $read, write: $write, manage: $manage, objectId: $objectId, userId: $userId, user: $user, module: $module)';
}


}

/// @nodoc
abstract mixin class $AccessCopyWith<$Res>  {
  factory $AccessCopyWith(Access value, $Res Function(Access) _then) = _$AccessCopyWithImpl;
@useResult
$Res call({
 String id, String? label, bool? read, bool? write, bool? manage, String? objectId, String userId, User? user,@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule module
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$AccessCopyWithImpl<$Res>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._self, this._then);

  final Access _self;
  final $Res Function(Access) _then;

/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = freezed,Object? read = freezed,Object? write = freezed,Object? manage = freezed,Object? objectId = freezed,Object? userId = null,Object? user = freezed,Object? module = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,write: freezed == write ? _self.write : write // ignore: cast_nullable_to_non_nullable
as bool?,manage: freezed == manage ? _self.manage : manage // ignore: cast_nullable_to_non_nullable
as bool?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as AccessModule,
  ));
}
/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Access].
extension AccessPatterns on Access {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Access value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Access() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Access value)  $default,){
final _that = this;
switch (_that) {
case _Access():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Access value)?  $default,){
final _that = this;
switch (_that) {
case _Access() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? label,  bool? read,  bool? write,  bool? manage,  String? objectId,  String userId,  User? user, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Access() when $default != null:
return $default(_that.id,_that.label,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.user,_that.module);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? label,  bool? read,  bool? write,  bool? manage,  String? objectId,  String userId,  User? user, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)  $default,) {final _that = this;
switch (_that) {
case _Access():
return $default(_that.id,_that.label,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.user,_that.module);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? label,  bool? read,  bool? write,  bool? manage,  String? objectId,  String userId,  User? user, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)?  $default,) {final _that = this;
switch (_that) {
case _Access() when $default != null:
return $default(_that.id,_that.label,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.user,_that.module);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Access extends Access {
  const _Access({required this.id, this.label, this.read, this.write, this.manage, this.objectId, required this.userId, this.user, @JsonKey(unknownEnumValue: AccessModule.unknown) required this.module}): super._();
  factory _Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);

/// Unique identifier for this access grant.
@override final  String id;
/// Human-readable label for this access grant.
@override final  String? label;
/// Whether the grantee has read permission.
@override final  bool? read;
/// Whether the grantee has write permission.
@override final  bool? write;
/// Whether the grantee has manage permission.
@override final  bool? manage;
/// The ID of the entity this access grant applies to.
@override final  String? objectId;
/// The ID of the user this access grant applies to.
@override final  String userId;
/// The user this access grant applies to.
@override final  User? user;
/// The platform module this access grant applies to.
@override@JsonKey(unknownEnumValue: AccessModule.unknown) final  AccessModule module;

/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessCopyWith<_Access> get copyWith => __$AccessCopyWithImpl<_Access>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Access&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.read, read) || other.read == read)&&(identical(other.write, write) || other.write == write)&&(identical(other.manage, manage) || other.manage == manage)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.module, module) || other.module == module));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,read,write,manage,objectId,userId,user,module);

@override
String toString() {
  return 'Access(id: $id, label: $label, read: $read, write: $write, manage: $manage, objectId: $objectId, userId: $userId, user: $user, module: $module)';
}


}

/// @nodoc
abstract mixin class _$AccessCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$AccessCopyWith(_Access value, $Res Function(_Access) _then) = __$AccessCopyWithImpl;
@override @useResult
$Res call({
 String id, String? label, bool? read, bool? write, bool? manage, String? objectId, String userId, User? user,@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule module
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$AccessCopyWithImpl<$Res>
    implements _$AccessCopyWith<$Res> {
  __$AccessCopyWithImpl(this._self, this._then);

  final _Access _self;
  final $Res Function(_Access) _then;

/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = freezed,Object? read = freezed,Object? write = freezed,Object? manage = freezed,Object? objectId = freezed,Object? userId = null,Object? user = freezed,Object? module = null,}) {
  return _then(_Access(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool?,write: freezed == write ? _self.write : write // ignore: cast_nullable_to_non_nullable
as bool?,manage: freezed == manage ? _self.manage : manage // ignore: cast_nullable_to_non_nullable
as bool?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as AccessModule,
  ));
}

/// Create a copy of Access
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$AccessInput {

/// Unique identifier for this access grant, or null when creating a new
/// one.
 String? get id;/// Unique identifier for this access grant, or null when creating a new
/// one.
 set id(String? value);/// Whether the grantee has read permission. Defaults to false.
 bool get read;/// Whether the grantee has read permission. Defaults to false.
 set read(bool value);/// Whether the grantee has write permission. Defaults to false.
 bool get write;/// Whether the grantee has write permission. Defaults to false.
 set write(bool value);/// Whether the grantee has manage permission. Defaults to false.
 bool get manage;/// Whether the grantee has manage permission. Defaults to false.
 set manage(bool value);/// The ID of the entity this access grant applies to.
 String? get objectId;/// The ID of the entity this access grant applies to.
 set objectId(String? value);/// The ID of the user this access grant applies to.
 String? get userId;/// The ID of the user this access grant applies to.
 set userId(String? value);/// The platform module this access grant applies to.
@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule get module;/// The platform module this access grant applies to.
@JsonKey(unknownEnumValue: AccessModule.unknown) set module(AccessModule value);
/// Create a copy of AccessInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessInputCopyWith<AccessInput> get copyWith => _$AccessInputCopyWithImpl<AccessInput>(this as AccessInput, _$identity);

  /// Serializes this AccessInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'AccessInput(id: $id, read: $read, write: $write, manage: $manage, objectId: $objectId, userId: $userId, module: $module)';
}


}

/// @nodoc
abstract mixin class $AccessInputCopyWith<$Res>  {
  factory $AccessInputCopyWith(AccessInput value, $Res Function(AccessInput) _then) = _$AccessInputCopyWithImpl;
@useResult
$Res call({
 String? id, bool read, bool write, bool manage, String? objectId, String? userId,@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule module
});




}
/// @nodoc
class _$AccessInputCopyWithImpl<$Res>
    implements $AccessInputCopyWith<$Res> {
  _$AccessInputCopyWithImpl(this._self, this._then);

  final AccessInput _self;
  final $Res Function(AccessInput) _then;

/// Create a copy of AccessInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? read = null,Object? write = null,Object? manage = null,Object? objectId = freezed,Object? userId = freezed,Object? module = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,write: null == write ? _self.write : write // ignore: cast_nullable_to_non_nullable
as bool,manage: null == manage ? _self.manage : manage // ignore: cast_nullable_to_non_nullable
as bool,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as AccessModule,
  ));
}

}


/// Adds pattern-matching-related methods to [AccessInput].
extension AccessInputPatterns on AccessInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccessInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccessInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccessInput value)  $default,){
final _that = this;
switch (_that) {
case _AccessInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccessInput value)?  $default,){
final _that = this;
switch (_that) {
case _AccessInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool read,  bool write,  bool manage,  String? objectId,  String? userId, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccessInput() when $default != null:
return $default(_that.id,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.module);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool read,  bool write,  bool manage,  String? objectId,  String? userId, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)  $default,) {final _that = this;
switch (_that) {
case _AccessInput():
return $default(_that.id,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.module);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool read,  bool write,  bool manage,  String? objectId,  String? userId, @JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module)?  $default,) {final _that = this;
switch (_that) {
case _AccessInput() when $default != null:
return $default(_that.id,_that.read,_that.write,_that.manage,_that.objectId,_that.userId,_that.module);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccessInput extends AccessInput {
   _AccessInput({this.id, this.read = false, this.write = false, this.manage = false, this.objectId, this.userId, @JsonKey(unknownEnumValue: AccessModule.unknown) required this.module}): super._();
  factory _AccessInput.fromJson(Map<String, dynamic> json) => _$AccessInputFromJson(json);

/// Unique identifier for this access grant, or null when creating a new
/// one.
@override  String? id;
/// Whether the grantee has read permission. Defaults to false.
@override@JsonKey()  bool read;
/// Whether the grantee has write permission. Defaults to false.
@override@JsonKey()  bool write;
/// Whether the grantee has manage permission. Defaults to false.
@override@JsonKey()  bool manage;
/// The ID of the entity this access grant applies to.
@override  String? objectId;
/// The ID of the user this access grant applies to.
@override  String? userId;
/// The platform module this access grant applies to.
@override@JsonKey(unknownEnumValue: AccessModule.unknown)  AccessModule module;

/// Create a copy of AccessInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessInputCopyWith<_AccessInput> get copyWith => __$AccessInputCopyWithImpl<_AccessInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessInputToJson(this, );
}



@override
String toString() {
  return 'AccessInput(id: $id, read: $read, write: $write, manage: $manage, objectId: $objectId, userId: $userId, module: $module)';
}


}

/// @nodoc
abstract mixin class _$AccessInputCopyWith<$Res> implements $AccessInputCopyWith<$Res> {
  factory _$AccessInputCopyWith(_AccessInput value, $Res Function(_AccessInput) _then) = __$AccessInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool read, bool write, bool manage, String? objectId, String? userId,@JsonKey(unknownEnumValue: AccessModule.unknown) AccessModule module
});




}
/// @nodoc
class __$AccessInputCopyWithImpl<$Res>
    implements _$AccessInputCopyWith<$Res> {
  __$AccessInputCopyWithImpl(this._self, this._then);

  final _AccessInput _self;
  final $Res Function(_AccessInput) _then;

/// Create a copy of AccessInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? read = null,Object? write = null,Object? manage = null,Object? objectId = freezed,Object? userId = freezed,Object? module = null,}) {
  return _then(_AccessInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,write: null == write ? _self.write : write // ignore: cast_nullable_to_non_nullable
as bool,manage: null == manage ? _self.manage : manage // ignore: cast_nullable_to_non_nullable
as bool,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as AccessModule,
  ));
}


}

// dart format on
