// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FtpAccount {

/// Is the host of the FTP account.
 String? get host;/// Is the port of the FTP account.
 int? get port;/// Is the username of the FTP account.
 String? get username;/// Is the password of the FTP account.
 String? get password;
/// Create a copy of FtpAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FtpAccountCopyWith<FtpAccount> get copyWith => _$FtpAccountCopyWithImpl<FtpAccount>(this as FtpAccount, _$identity);

  /// Serializes this FtpAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FtpAccount&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,host,port,username,password);

@override
String toString() {
  return 'FtpAccount(host: $host, port: $port, username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $FtpAccountCopyWith<$Res>  {
  factory $FtpAccountCopyWith(FtpAccount value, $Res Function(FtpAccount) _then) = _$FtpAccountCopyWithImpl;
@useResult
$Res call({
 String? host, int? port, String? username, String? password
});




}
/// @nodoc
class _$FtpAccountCopyWithImpl<$Res>
    implements $FtpAccountCopyWith<$Res> {
  _$FtpAccountCopyWithImpl(this._self, this._then);

  final FtpAccount _self;
  final $Res Function(FtpAccount) _then;

/// Create a copy of FtpAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = freezed,Object? port = freezed,Object? username = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FtpAccount].
extension FtpAccountPatterns on FtpAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FtpAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FtpAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FtpAccount value)  $default,){
final _that = this;
switch (_that) {
case _FtpAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FtpAccount value)?  $default,){
final _that = this;
switch (_that) {
case _FtpAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? host,  int? port,  String? username,  String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FtpAccount() when $default != null:
return $default(_that.host,_that.port,_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? host,  int? port,  String? username,  String? password)  $default,) {final _that = this;
switch (_that) {
case _FtpAccount():
return $default(_that.host,_that.port,_that.username,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? host,  int? port,  String? username,  String? password)?  $default,) {final _that = this;
switch (_that) {
case _FtpAccount() when $default != null:
return $default(_that.host,_that.port,_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FtpAccount implements FtpAccount {
  const _FtpAccount({this.host, this.port, this.username, this.password});
  factory _FtpAccount.fromJson(Map<String, dynamic> json) => _$FtpAccountFromJson(json);

/// Is the host of the FTP account.
@override final  String? host;
/// Is the port of the FTP account.
@override final  int? port;
/// Is the username of the FTP account.
@override final  String? username;
/// Is the password of the FTP account.
@override final  String? password;

/// Create a copy of FtpAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FtpAccountCopyWith<_FtpAccount> get copyWith => __$FtpAccountCopyWithImpl<_FtpAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FtpAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FtpAccount&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,host,port,username,password);

@override
String toString() {
  return 'FtpAccount(host: $host, port: $port, username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$FtpAccountCopyWith<$Res> implements $FtpAccountCopyWith<$Res> {
  factory _$FtpAccountCopyWith(_FtpAccount value, $Res Function(_FtpAccount) _then) = __$FtpAccountCopyWithImpl;
@override @useResult
$Res call({
 String? host, int? port, String? username, String? password
});




}
/// @nodoc
class __$FtpAccountCopyWithImpl<$Res>
    implements _$FtpAccountCopyWith<$Res> {
  __$FtpAccountCopyWithImpl(this._self, this._then);

  final _FtpAccount _self;
  final $Res Function(_FtpAccount) _then;

/// Create a copy of FtpAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = freezed,Object? port = freezed,Object? username = freezed,Object? password = freezed,}) {
  return _then(_FtpAccount(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Algorithm {

/// Is the unique identifier of the algorithm.
 String get id;/// Is the name of the algorithm.
 String get name;/// Is the color assigned to the algorithm.
@ColorConverter() Color get color;/// Is the icon assigned to the algorithm.
@IconOrNullConverter() MdiRemapIcon? get icon;/// Indicates if the algorithm is enabled and available for use, or disabled and not
/// available for use.
 bool get isEnabled;/// Is the list of category IDs the algorithm belongs to. Defaults to an empty list.
 List<String> get categoriesIds;/// Indicates if the algorithm can be used in sensors. Defaults to `false`.
 bool get canBeInSensors;/// Indicates if the algorithm supports HTTP. Defaults to `false`.
 bool get hasHttp;/// Indicates if the algorithm supports FTP. Defaults to `false`.
 bool get hasFtp;/// Is the list of required fields for the algorithm. Defaults to an empty list.
 List<CredentialField> get requiredFields;/// Is the usage of the algorithm. This field should only be used to show the popularity of
/// the algorithm, for marketing purposes.
 int? get usage;
/// Create a copy of Algorithm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlgorithmCopyWith<Algorithm> get copyWith => _$AlgorithmCopyWithImpl<Algorithm>(this as Algorithm, _$identity);

  /// Serializes this Algorithm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Algorithm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.canBeInSensors, canBeInSensors) || other.canBeInSensors == canBeInSensors)&&(identical(other.hasHttp, hasHttp) || other.hasHttp == hasHttp)&&(identical(other.hasFtp, hasFtp) || other.hasFtp == hasFtp)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,icon,isEnabled,const DeepCollectionEquality().hash(categoriesIds),canBeInSensors,hasHttp,hasFtp,const DeepCollectionEquality().hash(requiredFields),usage);

@override
String toString() {
  return 'Algorithm(id: $id, name: $name, color: $color, icon: $icon, isEnabled: $isEnabled, categoriesIds: $categoriesIds, canBeInSensors: $canBeInSensors, hasHttp: $hasHttp, hasFtp: $hasFtp, requiredFields: $requiredFields, usage: $usage)';
}


}

/// @nodoc
abstract mixin class $AlgorithmCopyWith<$Res>  {
  factory $AlgorithmCopyWith(Algorithm value, $Res Function(Algorithm) _then) = _$AlgorithmCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color,@IconOrNullConverter() MdiRemapIcon? icon, bool isEnabled, List<String> categoriesIds, bool canBeInSensors, bool hasHttp, bool hasFtp, List<CredentialField> requiredFields, int? usage
});




}
/// @nodoc
class _$AlgorithmCopyWithImpl<$Res>
    implements $AlgorithmCopyWith<$Res> {
  _$AlgorithmCopyWithImpl(this._self, this._then);

  final Algorithm _self;
  final $Res Function(Algorithm) _then;

/// Create a copy of Algorithm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? icon = freezed,Object? isEnabled = null,Object? categoriesIds = null,Object? canBeInSensors = null,Object? hasHttp = null,Object? hasFtp = null,Object? requiredFields = null,Object? usage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,categoriesIds: null == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>,canBeInSensors: null == canBeInSensors ? _self.canBeInSensors : canBeInSensors // ignore: cast_nullable_to_non_nullable
as bool,hasHttp: null == hasHttp ? _self.hasHttp : hasHttp // ignore: cast_nullable_to_non_nullable
as bool,hasFtp: null == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Algorithm].
extension AlgorithmPatterns on Algorithm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Algorithm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Algorithm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Algorithm value)  $default,){
final _that = this;
switch (_that) {
case _Algorithm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Algorithm value)?  $default,){
final _that = this;
switch (_that) {
case _Algorithm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color, @IconOrNullConverter()  MdiRemapIcon? icon,  bool isEnabled,  List<String> categoriesIds,  bool canBeInSensors,  bool hasHttp,  bool hasFtp,  List<CredentialField> requiredFields,  int? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Algorithm() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.icon,_that.isEnabled,_that.categoriesIds,_that.canBeInSensors,_that.hasHttp,_that.hasFtp,_that.requiredFields,_that.usage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color, @IconOrNullConverter()  MdiRemapIcon? icon,  bool isEnabled,  List<String> categoriesIds,  bool canBeInSensors,  bool hasHttp,  bool hasFtp,  List<CredentialField> requiredFields,  int? usage)  $default,) {final _that = this;
switch (_that) {
case _Algorithm():
return $default(_that.id,_that.name,_that.color,_that.icon,_that.isEnabled,_that.categoriesIds,_that.canBeInSensors,_that.hasHttp,_that.hasFtp,_that.requiredFields,_that.usage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color, @IconOrNullConverter()  MdiRemapIcon? icon,  bool isEnabled,  List<String> categoriesIds,  bool canBeInSensors,  bool hasHttp,  bool hasFtp,  List<CredentialField> requiredFields,  int? usage)?  $default,) {final _that = this;
switch (_that) {
case _Algorithm() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.icon,_that.isEnabled,_that.categoriesIds,_that.canBeInSensors,_that.hasHttp,_that.hasFtp,_that.requiredFields,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Algorithm implements Algorithm {
  const _Algorithm({required this.id, required this.name, @ColorConverter() required this.color, @IconOrNullConverter() this.icon, required this.isEnabled, this.categoriesIds = const [], this.canBeInSensors = false, this.hasHttp = false, this.hasFtp = false, this.requiredFields = const [], this.usage});
  factory _Algorithm.fromJson(Map<String, dynamic> json) => _$AlgorithmFromJson(json);

/// Is the unique identifier of the algorithm.
@override final  String id;
/// Is the name of the algorithm.
@override final  String name;
/// Is the color assigned to the algorithm.
@override@ColorConverter() final  Color color;
/// Is the icon assigned to the algorithm.
@override@IconOrNullConverter() final  MdiRemapIcon? icon;
/// Indicates if the algorithm is enabled and available for use, or disabled and not
/// available for use.
@override final  bool isEnabled;
/// Is the list of category IDs the algorithm belongs to. Defaults to an empty list.
@override@JsonKey() final  List<String> categoriesIds;
/// Indicates if the algorithm can be used in sensors. Defaults to `false`.
@override@JsonKey() final  bool canBeInSensors;
/// Indicates if the algorithm supports HTTP. Defaults to `false`.
@override@JsonKey() final  bool hasHttp;
/// Indicates if the algorithm supports FTP. Defaults to `false`.
@override@JsonKey() final  bool hasFtp;
/// Is the list of required fields for the algorithm. Defaults to an empty list.
@override@JsonKey() final  List<CredentialField> requiredFields;
/// Is the usage of the algorithm. This field should only be used to show the popularity of
/// the algorithm, for marketing purposes.
@override final  int? usage;

/// Create a copy of Algorithm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlgorithmCopyWith<_Algorithm> get copyWith => __$AlgorithmCopyWithImpl<_Algorithm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlgorithmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Algorithm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.canBeInSensors, canBeInSensors) || other.canBeInSensors == canBeInSensors)&&(identical(other.hasHttp, hasHttp) || other.hasHttp == hasHttp)&&(identical(other.hasFtp, hasFtp) || other.hasFtp == hasFtp)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,icon,isEnabled,const DeepCollectionEquality().hash(categoriesIds),canBeInSensors,hasHttp,hasFtp,const DeepCollectionEquality().hash(requiredFields),usage);

@override
String toString() {
  return 'Algorithm(id: $id, name: $name, color: $color, icon: $icon, isEnabled: $isEnabled, categoriesIds: $categoriesIds, canBeInSensors: $canBeInSensors, hasHttp: $hasHttp, hasFtp: $hasFtp, requiredFields: $requiredFields, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$AlgorithmCopyWith<$Res> implements $AlgorithmCopyWith<$Res> {
  factory _$AlgorithmCopyWith(_Algorithm value, $Res Function(_Algorithm) _then) = __$AlgorithmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color,@IconOrNullConverter() MdiRemapIcon? icon, bool isEnabled, List<String> categoriesIds, bool canBeInSensors, bool hasHttp, bool hasFtp, List<CredentialField> requiredFields, int? usage
});




}
/// @nodoc
class __$AlgorithmCopyWithImpl<$Res>
    implements _$AlgorithmCopyWith<$Res> {
  __$AlgorithmCopyWithImpl(this._self, this._then);

  final _Algorithm _self;
  final $Res Function(_Algorithm) _then;

/// Create a copy of Algorithm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? icon = freezed,Object? isEnabled = null,Object? categoriesIds = null,Object? canBeInSensors = null,Object? hasHttp = null,Object? hasFtp = null,Object? requiredFields = null,Object? usage = freezed,}) {
  return _then(_Algorithm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,categoriesIds: null == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>,canBeInSensors: null == canBeInSensors ? _self.canBeInSensors : canBeInSensors // ignore: cast_nullable_to_non_nullable
as bool,hasHttp: null == hasHttp ? _self.hasHttp : hasHttp // ignore: cast_nullable_to_non_nullable
as bool,hasFtp: null == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LayrzFunction {

/// Is the unique identifier of the function.
 String get id;/// Is the name of the function.
 String get name;/// Is the unique identifier of the algorithm.
 String? get algorithmId;/// Is the algorithm of the function.
 Algorithm? get algorithm;/// Is the minimum time of the function, defined in minutes.
 double? get maximumTime;/// Is the minutes delta of the function, defined in minutes.
 double? get minutesDelta;/// Is the external identifiers of the function.
 List<String>? get externalIdentifiers;/// Is the token of the function.
 String? get token;/// Is the credentials of the function.
 Map<String, dynamic>? get credentials;/// Is the FTP account of the function.
 FtpAccount? get ftp;/// Is the group (tag) IDs of the function.
 List<String>? get groupsIds;/// Is the groups (tags) of the function.
 List<Tag>? get groups;/// Is the asset IDs of the function.
 List<String>? get assetsIds;/// Is the assets of the function.
 List<Asset>? get assets;/// Is the access of the function.
 List<Access>? get access;
/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayrzFunctionCopyWith<LayrzFunction> get copyWith => _$LayrzFunctionCopyWithImpl<LayrzFunction>(this as LayrzFunction, _$identity);

  /// Serializes this LayrzFunction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayrzFunction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.maximumTime, maximumTime) || other.maximumTime == maximumTime)&&(identical(other.minutesDelta, minutesDelta) || other.minutesDelta == minutesDelta)&&const DeepCollectionEquality().equals(other.externalIdentifiers, externalIdentifiers)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.ftp, ftp) || other.ftp == ftp)&&const DeepCollectionEquality().equals(other.groupsIds, groupsIds)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,algorithmId,algorithm,maximumTime,minutesDelta,const DeepCollectionEquality().hash(externalIdentifiers),token,const DeepCollectionEquality().hash(credentials),ftp,const DeepCollectionEquality().hash(groupsIds),const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'LayrzFunction(id: $id, name: $name, algorithmId: $algorithmId, algorithm: $algorithm, maximumTime: $maximumTime, minutesDelta: $minutesDelta, externalIdentifiers: $externalIdentifiers, token: $token, credentials: $credentials, ftp: $ftp, groupsIds: $groupsIds, groups: $groups, assetsIds: $assetsIds, assets: $assets, access: $access)';
}


}

/// @nodoc
abstract mixin class $LayrzFunctionCopyWith<$Res>  {
  factory $LayrzFunctionCopyWith(LayrzFunction value, $Res Function(LayrzFunction) _then) = _$LayrzFunctionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? algorithmId, Algorithm? algorithm, double? maximumTime, double? minutesDelta, List<String>? externalIdentifiers, String? token, Map<String, dynamic>? credentials, FtpAccount? ftp, List<String>? groupsIds, List<Tag>? groups, List<String>? assetsIds, List<Asset>? assets, List<Access>? access
});


$AlgorithmCopyWith<$Res>? get algorithm;$FtpAccountCopyWith<$Res>? get ftp;

}
/// @nodoc
class _$LayrzFunctionCopyWithImpl<$Res>
    implements $LayrzFunctionCopyWith<$Res> {
  _$LayrzFunctionCopyWithImpl(this._self, this._then);

  final LayrzFunction _self;
  final $Res Function(LayrzFunction) _then;

/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? algorithmId = freezed,Object? algorithm = freezed,Object? maximumTime = freezed,Object? minutesDelta = freezed,Object? externalIdentifiers = freezed,Object? token = freezed,Object? credentials = freezed,Object? ftp = freezed,Object? groupsIds = freezed,Object? groups = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,algorithmId: freezed == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as String?,algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as Algorithm?,maximumTime: freezed == maximumTime ? _self.maximumTime : maximumTime // ignore: cast_nullable_to_non_nullable
as double?,minutesDelta: freezed == minutesDelta ? _self.minutesDelta : minutesDelta // ignore: cast_nullable_to_non_nullable
as double?,externalIdentifiers: freezed == externalIdentifiers ? _self.externalIdentifiers : externalIdentifiers // ignore: cast_nullable_to_non_nullable
as List<String>?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ftp: freezed == ftp ? _self.ftp : ftp // ignore: cast_nullable_to_non_nullable
as FtpAccount?,groupsIds: freezed == groupsIds ? _self.groupsIds : groupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}
/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlgorithmCopyWith<$Res>? get algorithm {
    if (_self.algorithm == null) {
    return null;
  }

  return $AlgorithmCopyWith<$Res>(_self.algorithm!, (value) {
    return _then(_self.copyWith(algorithm: value));
  });
}/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FtpAccountCopyWith<$Res>? get ftp {
    if (_self.ftp == null) {
    return null;
  }

  return $FtpAccountCopyWith<$Res>(_self.ftp!, (value) {
    return _then(_self.copyWith(ftp: value));
  });
}
}


/// Adds pattern-matching-related methods to [LayrzFunction].
extension LayrzFunctionPatterns on LayrzFunction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayrzFunction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayrzFunction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayrzFunction value)  $default,){
final _that = this;
switch (_that) {
case _LayrzFunction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayrzFunction value)?  $default,){
final _that = this;
switch (_that) {
case _LayrzFunction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? algorithmId,  Algorithm? algorithm,  double? maximumTime,  double? minutesDelta,  List<String>? externalIdentifiers,  String? token,  Map<String, dynamic>? credentials,  FtpAccount? ftp,  List<String>? groupsIds,  List<Tag>? groups,  List<String>? assetsIds,  List<Asset>? assets,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayrzFunction() when $default != null:
return $default(_that.id,_that.name,_that.algorithmId,_that.algorithm,_that.maximumTime,_that.minutesDelta,_that.externalIdentifiers,_that.token,_that.credentials,_that.ftp,_that.groupsIds,_that.groups,_that.assetsIds,_that.assets,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? algorithmId,  Algorithm? algorithm,  double? maximumTime,  double? minutesDelta,  List<String>? externalIdentifiers,  String? token,  Map<String, dynamic>? credentials,  FtpAccount? ftp,  List<String>? groupsIds,  List<Tag>? groups,  List<String>? assetsIds,  List<Asset>? assets,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _LayrzFunction():
return $default(_that.id,_that.name,_that.algorithmId,_that.algorithm,_that.maximumTime,_that.minutesDelta,_that.externalIdentifiers,_that.token,_that.credentials,_that.ftp,_that.groupsIds,_that.groups,_that.assetsIds,_that.assets,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? algorithmId,  Algorithm? algorithm,  double? maximumTime,  double? minutesDelta,  List<String>? externalIdentifiers,  String? token,  Map<String, dynamic>? credentials,  FtpAccount? ftp,  List<String>? groupsIds,  List<Tag>? groups,  List<String>? assetsIds,  List<Asset>? assets,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _LayrzFunction() when $default != null:
return $default(_that.id,_that.name,_that.algorithmId,_that.algorithm,_that.maximumTime,_that.minutesDelta,_that.externalIdentifiers,_that.token,_that.credentials,_that.ftp,_that.groupsIds,_that.groups,_that.assetsIds,_that.assets,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LayrzFunction implements LayrzFunction {
  const _LayrzFunction({required this.id, required this.name, this.algorithmId, this.algorithm, this.maximumTime, this.minutesDelta, this.externalIdentifiers, this.token, this.credentials, this.ftp, this.groupsIds, this.groups, this.assetsIds, this.assets, this.access});
  factory _LayrzFunction.fromJson(Map<String, dynamic> json) => _$LayrzFunctionFromJson(json);

/// Is the unique identifier of the function.
@override final  String id;
/// Is the name of the function.
@override final  String name;
/// Is the unique identifier of the algorithm.
@override final  String? algorithmId;
/// Is the algorithm of the function.
@override final  Algorithm? algorithm;
/// Is the minimum time of the function, defined in minutes.
@override final  double? maximumTime;
/// Is the minutes delta of the function, defined in minutes.
@override final  double? minutesDelta;
/// Is the external identifiers of the function.
@override final  List<String>? externalIdentifiers;
/// Is the token of the function.
@override final  String? token;
/// Is the credentials of the function.
@override final  Map<String, dynamic>? credentials;
/// Is the FTP account of the function.
@override final  FtpAccount? ftp;
/// Is the group (tag) IDs of the function.
@override final  List<String>? groupsIds;
/// Is the groups (tags) of the function.
@override final  List<Tag>? groups;
/// Is the asset IDs of the function.
@override final  List<String>? assetsIds;
/// Is the assets of the function.
@override final  List<Asset>? assets;
/// Is the access of the function.
@override final  List<Access>? access;

/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayrzFunctionCopyWith<_LayrzFunction> get copyWith => __$LayrzFunctionCopyWithImpl<_LayrzFunction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LayrzFunctionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LayrzFunction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.algorithmId, algorithmId) || other.algorithmId == algorithmId)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.maximumTime, maximumTime) || other.maximumTime == maximumTime)&&(identical(other.minutesDelta, minutesDelta) || other.minutesDelta == minutesDelta)&&const DeepCollectionEquality().equals(other.externalIdentifiers, externalIdentifiers)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.ftp, ftp) || other.ftp == ftp)&&const DeepCollectionEquality().equals(other.groupsIds, groupsIds)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,algorithmId,algorithm,maximumTime,minutesDelta,const DeepCollectionEquality().hash(externalIdentifiers),token,const DeepCollectionEquality().hash(credentials),ftp,const DeepCollectionEquality().hash(groupsIds),const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'LayrzFunction(id: $id, name: $name, algorithmId: $algorithmId, algorithm: $algorithm, maximumTime: $maximumTime, minutesDelta: $minutesDelta, externalIdentifiers: $externalIdentifiers, token: $token, credentials: $credentials, ftp: $ftp, groupsIds: $groupsIds, groups: $groups, assetsIds: $assetsIds, assets: $assets, access: $access)';
}


}

/// @nodoc
abstract mixin class _$LayrzFunctionCopyWith<$Res> implements $LayrzFunctionCopyWith<$Res> {
  factory _$LayrzFunctionCopyWith(_LayrzFunction value, $Res Function(_LayrzFunction) _then) = __$LayrzFunctionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? algorithmId, Algorithm? algorithm, double? maximumTime, double? minutesDelta, List<String>? externalIdentifiers, String? token, Map<String, dynamic>? credentials, FtpAccount? ftp, List<String>? groupsIds, List<Tag>? groups, List<String>? assetsIds, List<Asset>? assets, List<Access>? access
});


@override $AlgorithmCopyWith<$Res>? get algorithm;@override $FtpAccountCopyWith<$Res>? get ftp;

}
/// @nodoc
class __$LayrzFunctionCopyWithImpl<$Res>
    implements _$LayrzFunctionCopyWith<$Res> {
  __$LayrzFunctionCopyWithImpl(this._self, this._then);

  final _LayrzFunction _self;
  final $Res Function(_LayrzFunction) _then;

/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? algorithmId = freezed,Object? algorithm = freezed,Object? maximumTime = freezed,Object? minutesDelta = freezed,Object? externalIdentifiers = freezed,Object? token = freezed,Object? credentials = freezed,Object? ftp = freezed,Object? groupsIds = freezed,Object? groups = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? access = freezed,}) {
  return _then(_LayrzFunction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,algorithmId: freezed == algorithmId ? _self.algorithmId : algorithmId // ignore: cast_nullable_to_non_nullable
as String?,algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as Algorithm?,maximumTime: freezed == maximumTime ? _self.maximumTime : maximumTime // ignore: cast_nullable_to_non_nullable
as double?,minutesDelta: freezed == minutesDelta ? _self.minutesDelta : minutesDelta // ignore: cast_nullable_to_non_nullable
as double?,externalIdentifiers: freezed == externalIdentifiers ? _self.externalIdentifiers : externalIdentifiers // ignore: cast_nullable_to_non_nullable
as List<String>?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,ftp: freezed == ftp ? _self.ftp : ftp // ignore: cast_nullable_to_non_nullable
as FtpAccount?,groupsIds: freezed == groupsIds ? _self.groupsIds : groupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlgorithmCopyWith<$Res>? get algorithm {
    if (_self.algorithm == null) {
    return null;
  }

  return $AlgorithmCopyWith<$Res>(_self.algorithm!, (value) {
    return _then(_self.copyWith(algorithm: value));
  });
}/// Create a copy of LayrzFunction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FtpAccountCopyWith<$Res>? get ftp {
    if (_self.ftp == null) {
    return null;
  }

  return $FtpAccountCopyWith<$Res>(_self.ftp!, (value) {
    return _then(_self.copyWith(ftp: value));
  });
}
}

// dart format on
