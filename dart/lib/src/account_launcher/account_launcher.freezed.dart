// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_launcher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneratorTemplateInput {

/// The new user's full name. Used only when [isNewUser] is `true`.
 String get name;/// The new user's full name. Used only when [isNewUser] is `true`.
 set name(String value);/// The new user's email. Used only when [isNewUser] is `true`.
 String get email;/// The new user's email. Used only when [isNewUser] is `true`.
 set email(String value);/// The new user's username. Used only when [isNewUser] is `true`.
 String get username;/// The new user's username. Used only when [isNewUser] is `true`.
 set username(String value);/// The id of the first inbound protocol to use as a cycle.
 String? get cycle1;/// The id of the first inbound protocol to use as a cycle.
 set cycle1(String? value);/// The id of the second inbound protocol to use as a cycle.
 String? get cycle2;/// The id of the second inbound protocol to use as a cycle.
 set cycle2(String? value);/// The id of the third inbound protocol to use as a cycle.
 String? get cycle3;/// The id of the third inbound protocol to use as a cycle.
 set cycle3(String? value);/// The language id for the launched account.
 String get languageId;/// The language id for the launched account.
 set languageId(String value);/// Whether to create a new user, as opposed to reusing [userId].
 bool get isNewUser;/// Whether to create a new user, as opposed to reusing [userId].
 set isNewUser(bool value);/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
 String? get userId;/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
 set userId(String? value);
/// Create a copy of GeneratorTemplateInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratorTemplateInputCopyWith<GeneratorTemplateInput> get copyWith => _$GeneratorTemplateInputCopyWithImpl<GeneratorTemplateInput>(this as GeneratorTemplateInput, _$identity);

  /// Serializes this GeneratorTemplateInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'GeneratorTemplateInput(name: $name, email: $email, username: $username, cycle1: $cycle1, cycle2: $cycle2, cycle3: $cycle3, languageId: $languageId, isNewUser: $isNewUser, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GeneratorTemplateInputCopyWith<$Res>  {
  factory $GeneratorTemplateInputCopyWith(GeneratorTemplateInput value, $Res Function(GeneratorTemplateInput) _then) = _$GeneratorTemplateInputCopyWithImpl;
@useResult
$Res call({
 String name, String email, String username, String? cycle1, String? cycle2, String? cycle3, String languageId, bool isNewUser, String? userId
});




}
/// @nodoc
class _$GeneratorTemplateInputCopyWithImpl<$Res>
    implements $GeneratorTemplateInputCopyWith<$Res> {
  _$GeneratorTemplateInputCopyWithImpl(this._self, this._then);

  final GeneratorTemplateInput _self;
  final $Res Function(GeneratorTemplateInput) _then;

/// Create a copy of GeneratorTemplateInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? username = null,Object? cycle1 = freezed,Object? cycle2 = freezed,Object? cycle3 = freezed,Object? languageId = null,Object? isNewUser = null,Object? userId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,cycle1: freezed == cycle1 ? _self.cycle1 : cycle1 // ignore: cast_nullable_to_non_nullable
as String?,cycle2: freezed == cycle2 ? _self.cycle2 : cycle2 // ignore: cast_nullable_to_non_nullable
as String?,cycle3: freezed == cycle3 ? _self.cycle3 : cycle3 // ignore: cast_nullable_to_non_nullable
as String?,languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneratorTemplateInput].
extension GeneratorTemplateInputPatterns on GeneratorTemplateInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratorTemplateInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratorTemplateInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratorTemplateInput value)  $default,){
final _that = this;
switch (_that) {
case _GeneratorTemplateInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratorTemplateInput value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratorTemplateInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String username,  String? cycle1,  String? cycle2,  String? cycle3,  String languageId,  bool isNewUser,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratorTemplateInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.cycle1,_that.cycle2,_that.cycle3,_that.languageId,_that.isNewUser,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String username,  String? cycle1,  String? cycle2,  String? cycle3,  String languageId,  bool isNewUser,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _GeneratorTemplateInput():
return $default(_that.name,_that.email,_that.username,_that.cycle1,_that.cycle2,_that.cycle3,_that.languageId,_that.isNewUser,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String username,  String? cycle1,  String? cycle2,  String? cycle3,  String languageId,  bool isNewUser,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _GeneratorTemplateInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.cycle1,_that.cycle2,_that.cycle3,_that.languageId,_that.isNewUser,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneratorTemplateInput implements GeneratorTemplateInput {
   _GeneratorTemplateInput({this.name = '', this.email = '', this.username = '', this.cycle1, this.cycle2, this.cycle3, this.languageId = '2', this.isNewUser = true, this.userId});
  factory _GeneratorTemplateInput.fromJson(Map<String, dynamic> json) => _$GeneratorTemplateInputFromJson(json);

/// The new user's full name. Used only when [isNewUser] is `true`.
@override@JsonKey()  String name;
/// The new user's email. Used only when [isNewUser] is `true`.
@override@JsonKey()  String email;
/// The new user's username. Used only when [isNewUser] is `true`.
@override@JsonKey()  String username;
/// The id of the first inbound protocol to use as a cycle.
@override  String? cycle1;
/// The id of the second inbound protocol to use as a cycle.
@override  String? cycle2;
/// The id of the third inbound protocol to use as a cycle.
@override  String? cycle3;
/// The language id for the launched account.
@override@JsonKey()  String languageId;
/// Whether to create a new user, as opposed to reusing [userId].
@override@JsonKey()  bool isNewUser;
/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
@override  String? userId;

/// Create a copy of GeneratorTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratorTemplateInputCopyWith<_GeneratorTemplateInput> get copyWith => __$GeneratorTemplateInputCopyWithImpl<_GeneratorTemplateInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratorTemplateInputToJson(this, );
}



@override
String toString() {
  return 'GeneratorTemplateInput(name: $name, email: $email, username: $username, cycle1: $cycle1, cycle2: $cycle2, cycle3: $cycle3, languageId: $languageId, isNewUser: $isNewUser, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GeneratorTemplateInputCopyWith<$Res> implements $GeneratorTemplateInputCopyWith<$Res> {
  factory _$GeneratorTemplateInputCopyWith(_GeneratorTemplateInput value, $Res Function(_GeneratorTemplateInput) _then) = __$GeneratorTemplateInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String username, String? cycle1, String? cycle2, String? cycle3, String languageId, bool isNewUser, String? userId
});




}
/// @nodoc
class __$GeneratorTemplateInputCopyWithImpl<$Res>
    implements _$GeneratorTemplateInputCopyWith<$Res> {
  __$GeneratorTemplateInputCopyWithImpl(this._self, this._then);

  final _GeneratorTemplateInput _self;
  final $Res Function(_GeneratorTemplateInput) _then;

/// Create a copy of GeneratorTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? username = null,Object? cycle1 = freezed,Object? cycle2 = freezed,Object? cycle3 = freezed,Object? languageId = null,Object? isNewUser = null,Object? userId = freezed,}) {
  return _then(_GeneratorTemplateInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,cycle1: freezed == cycle1 ? _self.cycle1 : cycle1 // ignore: cast_nullable_to_non_nullable
as String?,cycle2: freezed == cycle2 ? _self.cycle2 : cycle2 // ignore: cast_nullable_to_non_nullable
as String?,cycle3: freezed == cycle3 ? _self.cycle3 : cycle3 // ignore: cast_nullable_to_non_nullable
as String?,languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BusTemplateInput {

/// The new user's full name. Used only when [isNewUser] is `true`.
 String get name;/// The new user's full name. Used only when [isNewUser] is `true`.
 set name(String value);/// The new user's email. Used only when [isNewUser] is `true`.
 String get email;/// The new user's email. Used only when [isNewUser] is `true`.
 set email(String value);/// The new user's username. Used only when [isNewUser] is `true`.
 String get username;/// The new user's username. Used only when [isNewUser] is `true`.
 set username(String value);/// The language id for the launched account.
 String get languageId;/// The language id for the launched account.
 set languageId(String value);/// Whether to create a new user, as opposed to reusing [userId].
 bool get isNewUser;/// Whether to create a new user, as opposed to reusing [userId].
 set isNewUser(bool value);/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
 String? get userId;/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
 set userId(String? value);
/// Create a copy of BusTemplateInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusTemplateInputCopyWith<BusTemplateInput> get copyWith => _$BusTemplateInputCopyWithImpl<BusTemplateInput>(this as BusTemplateInput, _$identity);

  /// Serializes this BusTemplateInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'BusTemplateInput(name: $name, email: $email, username: $username, languageId: $languageId, isNewUser: $isNewUser, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $BusTemplateInputCopyWith<$Res>  {
  factory $BusTemplateInputCopyWith(BusTemplateInput value, $Res Function(BusTemplateInput) _then) = _$BusTemplateInputCopyWithImpl;
@useResult
$Res call({
 String name, String email, String username, String languageId, bool isNewUser, String? userId
});




}
/// @nodoc
class _$BusTemplateInputCopyWithImpl<$Res>
    implements $BusTemplateInputCopyWith<$Res> {
  _$BusTemplateInputCopyWithImpl(this._self, this._then);

  final BusTemplateInput _self;
  final $Res Function(BusTemplateInput) _then;

/// Create a copy of BusTemplateInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? username = null,Object? languageId = null,Object? isNewUser = null,Object? userId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BusTemplateInput].
extension BusTemplateInputPatterns on BusTemplateInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusTemplateInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusTemplateInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusTemplateInput value)  $default,){
final _that = this;
switch (_that) {
case _BusTemplateInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusTemplateInput value)?  $default,){
final _that = this;
switch (_that) {
case _BusTemplateInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String username,  String languageId,  bool isNewUser,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusTemplateInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.languageId,_that.isNewUser,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String username,  String languageId,  bool isNewUser,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _BusTemplateInput():
return $default(_that.name,_that.email,_that.username,_that.languageId,_that.isNewUser,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String username,  String languageId,  bool isNewUser,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _BusTemplateInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.languageId,_that.isNewUser,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusTemplateInput implements BusTemplateInput {
   _BusTemplateInput({this.name = '', this.email = '', this.username = '', this.languageId = '2', this.isNewUser = true, this.userId});
  factory _BusTemplateInput.fromJson(Map<String, dynamic> json) => _$BusTemplateInputFromJson(json);

/// The new user's full name. Used only when [isNewUser] is `true`.
@override@JsonKey()  String name;
/// The new user's email. Used only when [isNewUser] is `true`.
@override@JsonKey()  String email;
/// The new user's username. Used only when [isNewUser] is `true`.
@override@JsonKey()  String username;
/// The language id for the launched account.
@override@JsonKey()  String languageId;
/// Whether to create a new user, as opposed to reusing [userId].
@override@JsonKey()  bool isNewUser;
/// The id of the existing user to launch into. Used only when
/// [isNewUser] is `false`.
@override  String? userId;

/// Create a copy of BusTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusTemplateInputCopyWith<_BusTemplateInput> get copyWith => __$BusTemplateInputCopyWithImpl<_BusTemplateInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusTemplateInputToJson(this, );
}



@override
String toString() {
  return 'BusTemplateInput(name: $name, email: $email, username: $username, languageId: $languageId, isNewUser: $isNewUser, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$BusTemplateInputCopyWith<$Res> implements $BusTemplateInputCopyWith<$Res> {
  factory _$BusTemplateInputCopyWith(_BusTemplateInput value, $Res Function(_BusTemplateInput) _then) = __$BusTemplateInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String username, String languageId, bool isNewUser, String? userId
});




}
/// @nodoc
class __$BusTemplateInputCopyWithImpl<$Res>
    implements _$BusTemplateInputCopyWith<$Res> {
  __$BusTemplateInputCopyWithImpl(this._self, this._then);

  final _BusTemplateInput _self;
  final $Res Function(_BusTemplateInput) _then;

/// Create a copy of BusTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? username = null,Object? languageId = null,Object? isNewUser = null,Object? userId = freezed,}) {
  return _then(_BusTemplateInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
