// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExternalAccount {

/// [id] is the unique database identifier for this external account.
 String get id;/// [name] is the display name for this external account connection.
 String get name;/// [credentials] contains the authentication credentials (API keys, tokens, etc.) for the external service.
///
/// The structure of this map depends on the requirements of the [source].
 Map<String, dynamic>? get credentials;/// [source] is the external platform/protocol this account connects to.
 ExternalSource? get source;/// [sourceId] is the reference to the `ExternalSource` identifier.
 String? get sourceId;/// [access] is the list of access permissions configured for this external account.
 List<Access>? get access;/// [devices] is the list of devices that have been imported from this external account.
 List<Device>? get devices;/// [ownerId] is the identifier of the user that owns this external account.
 String? get ownerId;/// [sourceName] is the display name of the [source], exposed directly by the API.
 String? get sourceName;
/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalAccountCopyWith<ExternalAccount> get copyWith => _$ExternalAccountCopyWithImpl<ExternalAccount>(this as ExternalAccount, _$identity);

  /// Serializes this ExternalAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternalAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.devices, devices)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),source,sourceId,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(devices),ownerId,sourceName);

@override
String toString() {
  return 'ExternalAccount(id: $id, name: $name, credentials: $credentials, source: $source, sourceId: $sourceId, access: $access, devices: $devices, ownerId: $ownerId, sourceName: $sourceName)';
}


}

/// @nodoc
abstract mixin class $ExternalAccountCopyWith<$Res>  {
  factory $ExternalAccountCopyWith(ExternalAccount value, $Res Function(ExternalAccount) _then) = _$ExternalAccountCopyWithImpl;
@useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, ExternalSource? source, String? sourceId, List<Access>? access, List<Device>? devices, String? ownerId, String? sourceName
});


$ExternalSourceCopyWith<$Res>? get source;

}
/// @nodoc
class _$ExternalAccountCopyWithImpl<$Res>
    implements $ExternalAccountCopyWith<$Res> {
  _$ExternalAccountCopyWithImpl(this._self, this._then);

  final ExternalAccount _self;
  final $Res Function(ExternalAccount) _then;

/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? source = freezed,Object? sourceId = freezed,Object? access = freezed,Object? devices = freezed,Object? ownerId = freezed,Object? sourceName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ExternalSource?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,devices: freezed == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<Device>?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,sourceName: freezed == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalSourceCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $ExternalSourceCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExternalAccount].
extension ExternalAccountPatterns on ExternalAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExternalAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExternalAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExternalAccount value)  $default,){
final _that = this;
switch (_that) {
case _ExternalAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExternalAccount value)?  $default,){
final _that = this;
switch (_that) {
case _ExternalAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  ExternalSource? source,  String? sourceId,  List<Access>? access,  List<Device>? devices,  String? ownerId,  String? sourceName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExternalAccount() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.source,_that.sourceId,_that.access,_that.devices,_that.ownerId,_that.sourceName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  ExternalSource? source,  String? sourceId,  List<Access>? access,  List<Device>? devices,  String? ownerId,  String? sourceName)  $default,) {final _that = this;
switch (_that) {
case _ExternalAccount():
return $default(_that.id,_that.name,_that.credentials,_that.source,_that.sourceId,_that.access,_that.devices,_that.ownerId,_that.sourceName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Map<String, dynamic>? credentials,  ExternalSource? source,  String? sourceId,  List<Access>? access,  List<Device>? devices,  String? ownerId,  String? sourceName)?  $default,) {final _that = this;
switch (_that) {
case _ExternalAccount() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.source,_that.sourceId,_that.access,_that.devices,_that.ownerId,_that.sourceName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExternalAccount implements ExternalAccount {
  const _ExternalAccount({required this.id, required this.name, this.credentials, this.source, this.sourceId, this.access, this.devices, this.ownerId, this.sourceName});
  factory _ExternalAccount.fromJson(Map<String, dynamic> json) => _$ExternalAccountFromJson(json);

/// [id] is the unique database identifier for this external account.
@override final  String id;
/// [name] is the display name for this external account connection.
@override final  String name;
/// [credentials] contains the authentication credentials (API keys, tokens, etc.) for the external service.
///
/// The structure of this map depends on the requirements of the [source].
@override final  Map<String, dynamic>? credentials;
/// [source] is the external platform/protocol this account connects to.
@override final  ExternalSource? source;
/// [sourceId] is the reference to the `ExternalSource` identifier.
@override final  String? sourceId;
/// [access] is the list of access permissions configured for this external account.
@override final  List<Access>? access;
/// [devices] is the list of devices that have been imported from this external account.
@override final  List<Device>? devices;
/// [ownerId] is the identifier of the user that owns this external account.
@override final  String? ownerId;
/// [sourceName] is the display name of the [source], exposed directly by the API.
@override final  String? sourceName;

/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExternalAccountCopyWith<_ExternalAccount> get copyWith => __$ExternalAccountCopyWithImpl<_ExternalAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExternalAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExternalAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.source, source) || other.source == source)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.devices, devices)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),source,sourceId,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(devices),ownerId,sourceName);

@override
String toString() {
  return 'ExternalAccount(id: $id, name: $name, credentials: $credentials, source: $source, sourceId: $sourceId, access: $access, devices: $devices, ownerId: $ownerId, sourceName: $sourceName)';
}


}

/// @nodoc
abstract mixin class _$ExternalAccountCopyWith<$Res> implements $ExternalAccountCopyWith<$Res> {
  factory _$ExternalAccountCopyWith(_ExternalAccount value, $Res Function(_ExternalAccount) _then) = __$ExternalAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, ExternalSource? source, String? sourceId, List<Access>? access, List<Device>? devices, String? ownerId, String? sourceName
});


@override $ExternalSourceCopyWith<$Res>? get source;

}
/// @nodoc
class __$ExternalAccountCopyWithImpl<$Res>
    implements _$ExternalAccountCopyWith<$Res> {
  __$ExternalAccountCopyWithImpl(this._self, this._then);

  final _ExternalAccount _self;
  final $Res Function(_ExternalAccount) _then;

/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? source = freezed,Object? sourceId = freezed,Object? access = freezed,Object? devices = freezed,Object? ownerId = freezed,Object? sourceName = freezed,}) {
  return _then(_ExternalAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ExternalSource?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,devices: freezed == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<Device>?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,sourceName: freezed == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ExternalAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalSourceCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $ExternalSourceCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// @nodoc
mixin _$ExternalAccountInput {

/// [id] is the database identifier when updating an existing account. Null when creating a new one.
 String? get id;/// [id] is the database identifier when updating an existing account. Null when creating a new one.
 set id(String? value);/// [name] is the display name for the external account connection.
 String get name;/// [name] is the display name for the external account connection.
 set name(String value);/// [credentials] contains the authentication credentials required by the external service.
///
/// The required fields depend on the selected [sourceId].
 Map<String, dynamic> get credentials;/// [credentials] contains the authentication credentials required by the external service.
///
/// The required fields depend on the selected [sourceId].
 set credentials(Map<String, dynamic> value);/// [sourceId] is the identifier of the external source/protocol to connect to.
 String? get sourceId;/// [sourceId] is the identifier of the external source/protocol to connect to.
 set sourceId(String? value);
/// Create a copy of ExternalAccountInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalAccountInputCopyWith<ExternalAccountInput> get copyWith => _$ExternalAccountInputCopyWithImpl<ExternalAccountInput>(this as ExternalAccountInput, _$identity);

  /// Serializes this ExternalAccountInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ExternalAccountInput(id: $id, name: $name, credentials: $credentials, sourceId: $sourceId)';
}


}

/// @nodoc
abstract mixin class $ExternalAccountInputCopyWith<$Res>  {
  factory $ExternalAccountInputCopyWith(ExternalAccountInput value, $Res Function(ExternalAccountInput) _then) = _$ExternalAccountInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, Map<String, dynamic> credentials, String? sourceId
});




}
/// @nodoc
class _$ExternalAccountInputCopyWithImpl<$Res>
    implements $ExternalAccountInputCopyWith<$Res> {
  _$ExternalAccountInputCopyWithImpl(this._self, this._then);

  final ExternalAccountInput _self;
  final $Res Function(ExternalAccountInput) _then;

/// Create a copy of ExternalAccountInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? credentials = null,Object? sourceId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExternalAccountInput].
extension ExternalAccountInputPatterns on ExternalAccountInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExternalAccountInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExternalAccountInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExternalAccountInput value)  $default,){
final _that = this;
switch (_that) {
case _ExternalAccountInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExternalAccountInput value)?  $default,){
final _that = this;
switch (_that) {
case _ExternalAccountInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  Map<String, dynamic> credentials,  String? sourceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExternalAccountInput() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.sourceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  Map<String, dynamic> credentials,  String? sourceId)  $default,) {final _that = this;
switch (_that) {
case _ExternalAccountInput():
return $default(_that.id,_that.name,_that.credentials,_that.sourceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  Map<String, dynamic> credentials,  String? sourceId)?  $default,) {final _that = this;
switch (_that) {
case _ExternalAccountInput() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.sourceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExternalAccountInput extends ExternalAccountInput {
   _ExternalAccountInput({this.id, this.name = '', this.credentials = const {}, this.sourceId}): super._();
  factory _ExternalAccountInput.fromJson(Map<String, dynamic> json) => _$ExternalAccountInputFromJson(json);

/// [id] is the database identifier when updating an existing account. Null when creating a new one.
@override  String? id;
/// [name] is the display name for the external account connection.
@override@JsonKey()  String name;
/// [credentials] contains the authentication credentials required by the external service.
///
/// The required fields depend on the selected [sourceId].
@override@JsonKey()  Map<String, dynamic> credentials;
/// [sourceId] is the identifier of the external source/protocol to connect to.
@override  String? sourceId;

/// Create a copy of ExternalAccountInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExternalAccountInputCopyWith<_ExternalAccountInput> get copyWith => __$ExternalAccountInputCopyWithImpl<_ExternalAccountInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExternalAccountInputToJson(this, );
}



@override
String toString() {
  return 'ExternalAccountInput(id: $id, name: $name, credentials: $credentials, sourceId: $sourceId)';
}


}

/// @nodoc
abstract mixin class _$ExternalAccountInputCopyWith<$Res> implements $ExternalAccountInputCopyWith<$Res> {
  factory _$ExternalAccountInputCopyWith(_ExternalAccountInput value, $Res Function(_ExternalAccountInput) _then) = __$ExternalAccountInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, Map<String, dynamic> credentials, String? sourceId
});




}
/// @nodoc
class __$ExternalAccountInputCopyWithImpl<$Res>
    implements _$ExternalAccountInputCopyWith<$Res> {
  __$ExternalAccountInputCopyWithImpl(this._self, this._then);

  final _ExternalAccountInput _self;
  final $Res Function(_ExternalAccountInput) _then;

/// Create a copy of ExternalAccountInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? credentials = null,Object? sourceId = freezed,}) {
  return _then(_ExternalAccountInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExternalSource {

/// [id] is the unique database identifier for this external source.
 String get id;/// [name] is the display name of the external source/protocol.
 String get name;/// [color] is the brand or theme color associated with this external source.
@ColorConverter() Color get color;/// [isEnabled] indicates whether this external source is currently active and available for use.
 bool get isEnabled;/// [requiredFields] is the list of credential fields required to authenticate with this external source.
 List<CredentialField> get requiredFields;
/// Create a copy of ExternalSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalSourceCopyWith<ExternalSource> get copyWith => _$ExternalSourceCopyWithImpl<ExternalSource>(this as ExternalSource, _$identity);

  /// Serializes this ExternalSource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternalSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(requiredFields));

@override
String toString() {
  return 'ExternalSource(id: $id, name: $name, color: $color, isEnabled: $isEnabled, requiredFields: $requiredFields)';
}


}

/// @nodoc
abstract mixin class $ExternalSourceCopyWith<$Res>  {
  factory $ExternalSourceCopyWith(ExternalSource value, $Res Function(ExternalSource) _then) = _$ExternalSourceCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<CredentialField> requiredFields
});




}
/// @nodoc
class _$ExternalSourceCopyWithImpl<$Res>
    implements $ExternalSourceCopyWith<$Res> {
  _$ExternalSourceCopyWithImpl(this._self, this._then);

  final ExternalSource _self;
  final $Res Function(ExternalSource) _then;

/// Create a copy of ExternalSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? requiredFields = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExternalSource].
extension ExternalSourcePatterns on ExternalSource {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExternalSource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExternalSource() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExternalSource value)  $default,){
final _that = this;
switch (_that) {
case _ExternalSource():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExternalSource value)?  $default,){
final _that = this;
switch (_that) {
case _ExternalSource() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExternalSource() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields)  $default,) {final _that = this;
switch (_that) {
case _ExternalSource():
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields)?  $default,) {final _that = this;
switch (_that) {
case _ExternalSource() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExternalSource extends ExternalSource {
  const _ExternalSource({required this.id, required this.name, @ColorConverter() required this.color, required this.isEnabled, this.requiredFields = const []}): super._();
  factory _ExternalSource.fromJson(Map<String, dynamic> json) => _$ExternalSourceFromJson(json);

/// [id] is the unique database identifier for this external source.
@override final  String id;
/// [name] is the display name of the external source/protocol.
@override final  String name;
/// [color] is the brand or theme color associated with this external source.
@override@ColorConverter() final  Color color;
/// [isEnabled] indicates whether this external source is currently active and available for use.
@override final  bool isEnabled;
/// [requiredFields] is the list of credential fields required to authenticate with this external source.
@override@JsonKey() final  List<CredentialField> requiredFields;

/// Create a copy of ExternalSource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExternalSourceCopyWith<_ExternalSource> get copyWith => __$ExternalSourceCopyWithImpl<_ExternalSource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExternalSourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExternalSource&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(requiredFields));

@override
String toString() {
  return 'ExternalSource(id: $id, name: $name, color: $color, isEnabled: $isEnabled, requiredFields: $requiredFields)';
}


}

/// @nodoc
abstract mixin class _$ExternalSourceCopyWith<$Res> implements $ExternalSourceCopyWith<$Res> {
  factory _$ExternalSourceCopyWith(_ExternalSource value, $Res Function(_ExternalSource) _then) = __$ExternalSourceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<CredentialField> requiredFields
});




}
/// @nodoc
class __$ExternalSourceCopyWithImpl<$Res>
    implements _$ExternalSourceCopyWith<$Res> {
  __$ExternalSourceCopyWithImpl(this._self, this._then);

  final _ExternalSource _self;
  final $Res Function(_ExternalSource) _then;

/// Create a copy of ExternalSource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? requiredFields = null,}) {
  return _then(_ExternalSource(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,
  ));
}


}


/// @nodoc
mixin _$WialonAccount {

/// [wialonId] is the identifier of the account in the Wialon platform.
 String get wialonId;/// [name] is the display name of the account in the Wialon platform.
 String get name;
/// Create a copy of WialonAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WialonAccountCopyWith<WialonAccount> get copyWith => _$WialonAccountCopyWithImpl<WialonAccount>(this as WialonAccount, _$identity);

  /// Serializes this WialonAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WialonAccount&&(identical(other.wialonId, wialonId) || other.wialonId == wialonId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wialonId,name);

@override
String toString() {
  return 'WialonAccount(wialonId: $wialonId, name: $name)';
}


}

/// @nodoc
abstract mixin class $WialonAccountCopyWith<$Res>  {
  factory $WialonAccountCopyWith(WialonAccount value, $Res Function(WialonAccount) _then) = _$WialonAccountCopyWithImpl;
@useResult
$Res call({
 String wialonId, String name
});




}
/// @nodoc
class _$WialonAccountCopyWithImpl<$Res>
    implements $WialonAccountCopyWith<$Res> {
  _$WialonAccountCopyWithImpl(this._self, this._then);

  final WialonAccount _self;
  final $Res Function(WialonAccount) _then;

/// Create a copy of WialonAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wialonId = null,Object? name = null,}) {
  return _then(_self.copyWith(
wialonId: null == wialonId ? _self.wialonId : wialonId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WialonAccount].
extension WialonAccountPatterns on WialonAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WialonAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WialonAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WialonAccount value)  $default,){
final _that = this;
switch (_that) {
case _WialonAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WialonAccount value)?  $default,){
final _that = this;
switch (_that) {
case _WialonAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wialonId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WialonAccount() when $default != null:
return $default(_that.wialonId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wialonId,  String name)  $default,) {final _that = this;
switch (_that) {
case _WialonAccount():
return $default(_that.wialonId,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wialonId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _WialonAccount() when $default != null:
return $default(_that.wialonId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WialonAccount extends WialonAccount {
  const _WialonAccount({required this.wialonId, required this.name}): super._();
  factory _WialonAccount.fromJson(Map<String, dynamic> json) => _$WialonAccountFromJson(json);

/// [wialonId] is the identifier of the account in the Wialon platform.
@override final  String wialonId;
/// [name] is the display name of the account in the Wialon platform.
@override final  String name;

/// Create a copy of WialonAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WialonAccountCopyWith<_WialonAccount> get copyWith => __$WialonAccountCopyWithImpl<_WialonAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WialonAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WialonAccount&&(identical(other.wialonId, wialonId) || other.wialonId == wialonId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wialonId,name);

@override
String toString() {
  return 'WialonAccount(wialonId: $wialonId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$WialonAccountCopyWith<$Res> implements $WialonAccountCopyWith<$Res> {
  factory _$WialonAccountCopyWith(_WialonAccount value, $Res Function(_WialonAccount) _then) = __$WialonAccountCopyWithImpl;
@override @useResult
$Res call({
 String wialonId, String name
});




}
/// @nodoc
class __$WialonAccountCopyWithImpl<$Res>
    implements _$WialonAccountCopyWith<$Res> {
  __$WialonAccountCopyWithImpl(this._self, this._then);

  final _WialonAccount _self;
  final $Res Function(_WialonAccount) _then;

/// Create a copy of WialonAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wialonId = null,Object? name = null,}) {
  return _then(_WialonAccount(
wialonId: null == wialonId ? _self.wialonId : wialonId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WialonAccountsInput {

/// [externalAccountId] is the ID of the external account used to reach the Wialon platform.
 String get externalAccountId;/// [externalAccountId] is the ID of the external account used to reach the Wialon platform.
 set externalAccountId(String value);/// [wialonIds] is the list of Wialon account identifiers to import. Defaults to an empty list.
 List<String> get wialonIds;/// [wialonIds] is the list of Wialon account identifiers to import. Defaults to an empty list.
 set wialonIds(List<String> value);
/// Create a copy of WialonAccountsInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WialonAccountsInputCopyWith<WialonAccountsInput> get copyWith => _$WialonAccountsInputCopyWithImpl<WialonAccountsInput>(this as WialonAccountsInput, _$identity);

  /// Serializes this WialonAccountsInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'WialonAccountsInput(externalAccountId: $externalAccountId, wialonIds: $wialonIds)';
}


}

/// @nodoc
abstract mixin class $WialonAccountsInputCopyWith<$Res>  {
  factory $WialonAccountsInputCopyWith(WialonAccountsInput value, $Res Function(WialonAccountsInput) _then) = _$WialonAccountsInputCopyWithImpl;
@useResult
$Res call({
 String externalAccountId, List<String> wialonIds
});




}
/// @nodoc
class _$WialonAccountsInputCopyWithImpl<$Res>
    implements $WialonAccountsInputCopyWith<$Res> {
  _$WialonAccountsInputCopyWithImpl(this._self, this._then);

  final WialonAccountsInput _self;
  final $Res Function(WialonAccountsInput) _then;

/// Create a copy of WialonAccountsInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalAccountId = null,Object? wialonIds = null,}) {
  return _then(_self.copyWith(
externalAccountId: null == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String,wialonIds: null == wialonIds ? _self.wialonIds : wialonIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [WialonAccountsInput].
extension WialonAccountsInputPatterns on WialonAccountsInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WialonAccountsInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WialonAccountsInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WialonAccountsInput value)  $default,){
final _that = this;
switch (_that) {
case _WialonAccountsInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WialonAccountsInput value)?  $default,){
final _that = this;
switch (_that) {
case _WialonAccountsInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String externalAccountId,  List<String> wialonIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WialonAccountsInput() when $default != null:
return $default(_that.externalAccountId,_that.wialonIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String externalAccountId,  List<String> wialonIds)  $default,) {final _that = this;
switch (_that) {
case _WialonAccountsInput():
return $default(_that.externalAccountId,_that.wialonIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String externalAccountId,  List<String> wialonIds)?  $default,) {final _that = this;
switch (_that) {
case _WialonAccountsInput() when $default != null:
return $default(_that.externalAccountId,_that.wialonIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WialonAccountsInput extends WialonAccountsInput {
   _WialonAccountsInput({required this.externalAccountId, this.wialonIds = const []}): super._();
  factory _WialonAccountsInput.fromJson(Map<String, dynamic> json) => _$WialonAccountsInputFromJson(json);

/// [externalAccountId] is the ID of the external account used to reach the Wialon platform.
@override  String externalAccountId;
/// [wialonIds] is the list of Wialon account identifiers to import. Defaults to an empty list.
@override@JsonKey()  List<String> wialonIds;

/// Create a copy of WialonAccountsInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WialonAccountsInputCopyWith<_WialonAccountsInput> get copyWith => __$WialonAccountsInputCopyWithImpl<_WialonAccountsInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WialonAccountsInputToJson(this, );
}



@override
String toString() {
  return 'WialonAccountsInput(externalAccountId: $externalAccountId, wialonIds: $wialonIds)';
}


}

/// @nodoc
abstract mixin class _$WialonAccountsInputCopyWith<$Res> implements $WialonAccountsInputCopyWith<$Res> {
  factory _$WialonAccountsInputCopyWith(_WialonAccountsInput value, $Res Function(_WialonAccountsInput) _then) = __$WialonAccountsInputCopyWithImpl;
@override @useResult
$Res call({
 String externalAccountId, List<String> wialonIds
});




}
/// @nodoc
class __$WialonAccountsInputCopyWithImpl<$Res>
    implements _$WialonAccountsInputCopyWith<$Res> {
  __$WialonAccountsInputCopyWithImpl(this._self, this._then);

  final _WialonAccountsInput _self;
  final $Res Function(_WialonAccountsInput) _then;

/// Create a copy of WialonAccountsInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalAccountId = null,Object? wialonIds = null,}) {
  return _then(_WialonAccountsInput(
externalAccountId: null == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String,wialonIds: null == wialonIds ? _self.wialonIds : wialonIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
