// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MfaInput {

/// The [MfaMethod] selected by the user, or null if not yet selected.
 MfaMethod? get method;/// The [MfaMethod] selected by the user, or null if not yet selected.
 set method(MfaMethod? value);/// The MFA verification token (e.g., a 6-digit TOTP code or backup code),
/// or null if not submitted.
 String? get token;/// The MFA verification token (e.g., a 6-digit TOTP code or backup code),
/// or null if not submitted.
 set token(String? value);/// Flag indicating whether an MFA request is currently in progress.
/// Defaults to false.
 bool get isRequesting;/// Flag indicating whether an MFA request is currently in progress.
/// Defaults to false.
 set isRequesting(bool value);
/// Create a copy of MfaInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfaInputCopyWith<MfaInput> get copyWith => _$MfaInputCopyWithImpl<MfaInput>(this as MfaInput, _$identity);

  /// Serializes this MfaInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'MfaInput(method: $method, token: $token, isRequesting: $isRequesting)';
}


}

/// @nodoc
abstract mixin class $MfaInputCopyWith<$Res>  {
  factory $MfaInputCopyWith(MfaInput value, $Res Function(MfaInput) _then) = _$MfaInputCopyWithImpl;
@useResult
$Res call({
 MfaMethod? method, String? token, bool isRequesting
});




}
/// @nodoc
class _$MfaInputCopyWithImpl<$Res>
    implements $MfaInputCopyWith<$Res> {
  _$MfaInputCopyWithImpl(this._self, this._then);

  final MfaInput _self;
  final $Res Function(MfaInput) _then;

/// Create a copy of MfaInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = freezed,Object? token = freezed,Object? isRequesting = null,}) {
  return _then(_self.copyWith(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as MfaMethod?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isRequesting: null == isRequesting ? _self.isRequesting : isRequesting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MfaInput].
extension MfaInputPatterns on MfaInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MfaInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MfaInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MfaInput value)  $default,){
final _that = this;
switch (_that) {
case _MfaInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MfaInput value)?  $default,){
final _that = this;
switch (_that) {
case _MfaInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MfaMethod? method,  String? token,  bool isRequesting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MfaInput() when $default != null:
return $default(_that.method,_that.token,_that.isRequesting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MfaMethod? method,  String? token,  bool isRequesting)  $default,) {final _that = this;
switch (_that) {
case _MfaInput():
return $default(_that.method,_that.token,_that.isRequesting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MfaMethod? method,  String? token,  bool isRequesting)?  $default,) {final _that = this;
switch (_that) {
case _MfaInput() when $default != null:
return $default(_that.method,_that.token,_that.isRequesting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MfaInput implements MfaInput {
   _MfaInput({this.method, this.token, this.isRequesting = false});
  factory _MfaInput.fromJson(Map<String, dynamic> json) => _$MfaInputFromJson(json);

/// The [MfaMethod] selected by the user, or null if not yet selected.
@override  MfaMethod? method;
/// The MFA verification token (e.g., a 6-digit TOTP code or backup code),
/// or null if not submitted.
@override  String? token;
/// Flag indicating whether an MFA request is currently in progress.
/// Defaults to false.
@override@JsonKey()  bool isRequesting;

/// Create a copy of MfaInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MfaInputCopyWith<_MfaInput> get copyWith => __$MfaInputCopyWithImpl<_MfaInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MfaInputToJson(this, );
}



@override
String toString() {
  return 'MfaInput(method: $method, token: $token, isRequesting: $isRequesting)';
}


}

/// @nodoc
abstract mixin class _$MfaInputCopyWith<$Res> implements $MfaInputCopyWith<$Res> {
  factory _$MfaInputCopyWith(_MfaInput value, $Res Function(_MfaInput) _then) = __$MfaInputCopyWithImpl;
@override @useResult
$Res call({
 MfaMethod? method, String? token, bool isRequesting
});




}
/// @nodoc
class __$MfaInputCopyWithImpl<$Res>
    implements _$MfaInputCopyWith<$Res> {
  __$MfaInputCopyWithImpl(this._self, this._then);

  final _MfaInput _self;
  final $Res Function(_MfaInput) _then;

/// Create a copy of MfaInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = freezed,Object? token = freezed,Object? isRequesting = null,}) {
  return _then(_MfaInput(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as MfaMethod?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isRequesting: null == isRequesting ? _self.isRequesting : isRequesting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Passkey {

/// The unique credential identifier, used to reference this passkey during
/// authentication.
 String get id;/// The Relying Party identifier (origin/app domain) for which this
/// credential was registered.
 String get appId;/// The [AppPlatform] on which this passkey is stored (e.g., [AppPlatform.ios],
/// [AppPlatform.android], [AppPlatform.macos]).
 AppPlatform get platform;
/// Create a copy of Passkey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasskeyCopyWith<Passkey> get copyWith => _$PasskeyCopyWithImpl<Passkey>(this as Passkey, _$identity);

  /// Serializes this Passkey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Passkey&&(identical(other.id, id) || other.id == id)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appId,platform);

@override
String toString() {
  return 'Passkey(id: $id, appId: $appId, platform: $platform)';
}


}

/// @nodoc
abstract mixin class $PasskeyCopyWith<$Res>  {
  factory $PasskeyCopyWith(Passkey value, $Res Function(Passkey) _then) = _$PasskeyCopyWithImpl;
@useResult
$Res call({
 String id, String appId, AppPlatform platform
});




}
/// @nodoc
class _$PasskeyCopyWithImpl<$Res>
    implements $PasskeyCopyWith<$Res> {
  _$PasskeyCopyWithImpl(this._self, this._then);

  final Passkey _self;
  final $Res Function(Passkey) _then;

/// Create a copy of Passkey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? appId = null,Object? platform = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as AppPlatform,
  ));
}

}


/// Adds pattern-matching-related methods to [Passkey].
extension PasskeyPatterns on Passkey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Passkey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Passkey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Passkey value)  $default,){
final _that = this;
switch (_that) {
case _Passkey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Passkey value)?  $default,){
final _that = this;
switch (_that) {
case _Passkey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String appId,  AppPlatform platform)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Passkey() when $default != null:
return $default(_that.id,_that.appId,_that.platform);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String appId,  AppPlatform platform)  $default,) {final _that = this;
switch (_that) {
case _Passkey():
return $default(_that.id,_that.appId,_that.platform);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String appId,  AppPlatform platform)?  $default,) {final _that = this;
switch (_that) {
case _Passkey() when $default != null:
return $default(_that.id,_that.appId,_that.platform);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Passkey implements Passkey {
   _Passkey({required this.id, required this.appId, required this.platform});
  factory _Passkey.fromJson(Map<String, dynamic> json) => _$PasskeyFromJson(json);

/// The unique credential identifier, used to reference this passkey during
/// authentication.
@override final  String id;
/// The Relying Party identifier (origin/app domain) for which this
/// credential was registered.
@override final  String appId;
/// The [AppPlatform] on which this passkey is stored (e.g., [AppPlatform.ios],
/// [AppPlatform.android], [AppPlatform.macos]).
@override final  AppPlatform platform;

/// Create a copy of Passkey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasskeyCopyWith<_Passkey> get copyWith => __$PasskeyCopyWithImpl<_Passkey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasskeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Passkey&&(identical(other.id, id) || other.id == id)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.platform, platform) || other.platform == platform));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,appId,platform);

@override
String toString() {
  return 'Passkey(id: $id, appId: $appId, platform: $platform)';
}


}

/// @nodoc
abstract mixin class _$PasskeyCopyWith<$Res> implements $PasskeyCopyWith<$Res> {
  factory _$PasskeyCopyWith(_Passkey value, $Res Function(_Passkey) _then) = __$PasskeyCopyWithImpl;
@override @useResult
$Res call({
 String id, String appId, AppPlatform platform
});




}
/// @nodoc
class __$PasskeyCopyWithImpl<$Res>
    implements _$PasskeyCopyWith<$Res> {
  __$PasskeyCopyWithImpl(this._self, this._then);

  final _Passkey _self;
  final $Res Function(_Passkey) _then;

/// Create a copy of Passkey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? appId = null,Object? platform = null,}) {
  return _then(_Passkey(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,appId: null == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as AppPlatform,
  ));
}


}

// dart format on
