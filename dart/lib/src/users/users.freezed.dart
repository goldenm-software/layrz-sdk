// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordInput {

/// [currentPassword] is the current password of the user.
 String get currentPassword;/// [currentPassword] is the current password of the user.
 set currentPassword(String value);/// [newPassword] is the new password to set.
 String get newPassword;/// [newPassword] is the new password to set.
 set newPassword(String value);/// [newPasswordConfirmation] is the confirmation of [newPassword].
 String get newPasswordConfirmation;/// [newPasswordConfirmation] is the confirmation of [newPassword].
 set newPasswordConfirmation(String value);
/// Create a copy of PasswordInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordInputCopyWith<PasswordInput> get copyWith => _$PasswordInputCopyWithImpl<PasswordInput>(this as PasswordInput, _$identity);

  /// Serializes this PasswordInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'PasswordInput(currentPassword: $currentPassword, newPassword: $newPassword, newPasswordConfirmation: $newPasswordConfirmation)';
}


}

/// @nodoc
abstract mixin class $PasswordInputCopyWith<$Res>  {
  factory $PasswordInputCopyWith(PasswordInput value, $Res Function(PasswordInput) _then) = _$PasswordInputCopyWithImpl;
@useResult
$Res call({
 String currentPassword, String newPassword, String newPasswordConfirmation
});




}
/// @nodoc
class _$PasswordInputCopyWithImpl<$Res>
    implements $PasswordInputCopyWith<$Res> {
  _$PasswordInputCopyWithImpl(this._self, this._then);

  final PasswordInput _self;
  final $Res Function(PasswordInput) _then;

/// Create a copy of PasswordInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPassword = null,Object? newPassword = null,Object? newPasswordConfirmation = null,}) {
  return _then(_self.copyWith(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,newPasswordConfirmation: null == newPasswordConfirmation ? _self.newPasswordConfirmation : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PasswordInput].
extension PasswordInputPatterns on PasswordInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasswordInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasswordInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasswordInput value)  $default,){
final _that = this;
switch (_that) {
case _PasswordInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasswordInput value)?  $default,){
final _that = this;
switch (_that) {
case _PasswordInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String currentPassword,  String newPassword,  String newPasswordConfirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasswordInput() when $default != null:
return $default(_that.currentPassword,_that.newPassword,_that.newPasswordConfirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String currentPassword,  String newPassword,  String newPasswordConfirmation)  $default,) {final _that = this;
switch (_that) {
case _PasswordInput():
return $default(_that.currentPassword,_that.newPassword,_that.newPasswordConfirmation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String currentPassword,  String newPassword,  String newPasswordConfirmation)?  $default,) {final _that = this;
switch (_that) {
case _PasswordInput() when $default != null:
return $default(_that.currentPassword,_that.newPassword,_that.newPasswordConfirmation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PasswordInput implements PasswordInput {
   _PasswordInput({this.currentPassword = '', this.newPassword = '', this.newPasswordConfirmation = ''});
  factory _PasswordInput.fromJson(Map<String, dynamic> json) => _$PasswordInputFromJson(json);

/// [currentPassword] is the current password of the user.
@override@JsonKey()  String currentPassword;
/// [newPassword] is the new password to set.
@override@JsonKey()  String newPassword;
/// [newPasswordConfirmation] is the confirmation of [newPassword].
@override@JsonKey()  String newPasswordConfirmation;

/// Create a copy of PasswordInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordInputCopyWith<_PasswordInput> get copyWith => __$PasswordInputCopyWithImpl<_PasswordInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordInputToJson(this, );
}



@override
String toString() {
  return 'PasswordInput(currentPassword: $currentPassword, newPassword: $newPassword, newPasswordConfirmation: $newPasswordConfirmation)';
}


}

/// @nodoc
abstract mixin class _$PasswordInputCopyWith<$Res> implements $PasswordInputCopyWith<$Res> {
  factory _$PasswordInputCopyWith(_PasswordInput value, $Res Function(_PasswordInput) _then) = __$PasswordInputCopyWithImpl;
@override @useResult
$Res call({
 String currentPassword, String newPassword, String newPasswordConfirmation
});




}
/// @nodoc
class __$PasswordInputCopyWithImpl<$Res>
    implements _$PasswordInputCopyWith<$Res> {
  __$PasswordInputCopyWithImpl(this._self, this._then);

  final _PasswordInput _self;
  final $Res Function(_PasswordInput) _then;

/// Create a copy of PasswordInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? newPassword = null,Object? newPasswordConfirmation = null,}) {
  return _then(_PasswordInput(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,newPasswordConfirmation: null == newPasswordConfirmation ? _self.newPasswordConfirmation : newPasswordConfirmation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProfileInput {

/// [name] is the display name of the user.
 String get name;/// [name] is the display name of the user.
 set name(String value);/// [email] is the email address of the user.
 String get email;/// [email] is the email address of the user.
 set email(String value);/// [username] is the username of the user.
 String get username;/// [username] is the username of the user.
 set username(String value);/// [dynamicAvatar] is the dynamic avatar configuration of the user.
 AvatarInput? get dynamicAvatar;/// [dynamicAvatar] is the dynamic avatar configuration of the user.
 set dynamicAvatar(AvatarInput? value);
/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInputCopyWith<ProfileInput> get copyWith => _$ProfileInputCopyWithImpl<ProfileInput>(this as ProfileInput, _$identity);

  /// Serializes this ProfileInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ProfileInput(name: $name, email: $email, username: $username, dynamicAvatar: $dynamicAvatar)';
}


}

/// @nodoc
abstract mixin class $ProfileInputCopyWith<$Res>  {
  factory $ProfileInputCopyWith(ProfileInput value, $Res Function(ProfileInput) _then) = _$ProfileInputCopyWithImpl;
@useResult
$Res call({
 String name, String email, String username, AvatarInput? dynamicAvatar
});


$AvatarInputCopyWith<$Res>? get dynamicAvatar;

}
/// @nodoc
class _$ProfileInputCopyWithImpl<$Res>
    implements $ProfileInputCopyWith<$Res> {
  _$ProfileInputCopyWithImpl(this._self, this._then);

  final ProfileInput _self;
  final $Res Function(ProfileInput) _then;

/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? username = null,Object? dynamicAvatar = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as AvatarInput?,
  ));
}
/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileInput].
extension ProfileInputPatterns on ProfileInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileInput value)  $default,){
final _that = this;
switch (_that) {
case _ProfileInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileInput value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String username,  AvatarInput? dynamicAvatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.dynamicAvatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String username,  AvatarInput? dynamicAvatar)  $default,) {final _that = this;
switch (_that) {
case _ProfileInput():
return $default(_that.name,_that.email,_that.username,_that.dynamicAvatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String username,  AvatarInput? dynamicAvatar)?  $default,) {final _that = this;
switch (_that) {
case _ProfileInput() when $default != null:
return $default(_that.name,_that.email,_that.username,_that.dynamicAvatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileInput implements ProfileInput {
   _ProfileInput({this.name = '', this.email = '', this.username = '', this.dynamicAvatar});
  factory _ProfileInput.fromJson(Map<String, dynamic> json) => _$ProfileInputFromJson(json);

/// [name] is the display name of the user.
@override@JsonKey()  String name;
/// [email] is the email address of the user.
@override@JsonKey()  String email;
/// [username] is the username of the user.
@override@JsonKey()  String username;
/// [dynamicAvatar] is the dynamic avatar configuration of the user.
@override  AvatarInput? dynamicAvatar;

/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileInputCopyWith<_ProfileInput> get copyWith => __$ProfileInputCopyWithImpl<_ProfileInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileInputToJson(this, );
}



@override
String toString() {
  return 'ProfileInput(name: $name, email: $email, username: $username, dynamicAvatar: $dynamicAvatar)';
}


}

/// @nodoc
abstract mixin class _$ProfileInputCopyWith<$Res> implements $ProfileInputCopyWith<$Res> {
  factory _$ProfileInputCopyWith(_ProfileInput value, $Res Function(_ProfileInput) _then) = __$ProfileInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String username, AvatarInput? dynamicAvatar
});


@override $AvatarInputCopyWith<$Res>? get dynamicAvatar;

}
/// @nodoc
class __$ProfileInputCopyWithImpl<$Res>
    implements _$ProfileInputCopyWith<$Res> {
  __$ProfileInputCopyWithImpl(this._self, this._then);

  final _ProfileInput _self;
  final $Res Function(_ProfileInput) _then;

/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? username = null,Object? dynamicAvatar = freezed,}) {
  return _then(_ProfileInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as AvatarInput?,
  ));
}

/// Create a copy of ProfileInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}
}


/// @nodoc
mixin _$User {

/// The user ID.
 String get id;/// The user name.
 String get name;/// The user token.
 Token? get token;/// The parent ID.
 String? get parentId;/// The user email.
 String? get email;/// The username.
 String? get username;/// The user avatar.
 Avatar? get dynamicAvatar;/// The list of references IDs.
 List<String>? get referencesIds;/// The list of references.
 List<Reference>? get references;/// The user category.
 Category? get category;/// The user category ID.
 String? get categoryId;/// The MQTT token.
@Deprecated('Use mqttConfig instead') String? get mqttToken;/// The MQTT configuration.
 RealtimeMqttConfig? get mqttConfig;/// The list of granted access.
 List<Access>? get access;/// The list of custom fields.
 List<CustomField>? get customFields;/// The platform auth.
 String get platformAuth;/// The list of childs.
 List<User> get childs;/// The list of tags IDs.
 List<String>? get tagsIds;/// The list of tags.
 List<Tag>? get tags;/// The plan ID.
 String? get planId;/// The list of allowed apps.
 List<RegisteredApp>? get allowedApps;/// The list of assets IDs.
/// This field is only for `Mappit` use.
 List<String>? get mappitAssetsIds;/// The list of secondary routes IDs.
/// This field is only for `Mappit` use.
 List<String>? get mappitSecondaryRoutesIds;/// The list of assets.
/// This field is only for `Mappit` use.
 List<Asset>? get mappitAssets;/// The number of days allowed to access historical data.
/// This field is only for `Mappit` use.
 int? get historicalDaysAllowed;/// The Mappit external account ID.
/// This field is only for `Mappit` use.
 String? get mappitExternalAccountId;/// The Mappit external account.
/// This field is only for `Mappit` use.
 ExternalAccount? get mappitExternalAccount;/// Whether MFA is enabled.
 bool get mfaEnabled;/// The list of MFA methods.
 List<MfaMethod> get mfaMethods;/// The Tenvio address.
 String? get tenvioAddress;/// The Tenvio phone.
 String? get tenvioPhone;/// The Tenvio latitude.
 double? get tenvioLatitude;/// The Tenvio longitude.
 double? get tenvioLongitude;/// Whether the Tenvio address is a Plus Code.
 bool? get tenvioAddressIsPlusCode;/// The date when the account was suspended.
@TimestampOrNullConverter() DateTime? get suspendedAt;/// The list of the IDs of the hwModels that already shown the
/// animations.
 List<String> get hwModelsAnimationsIds;/// The Brickhouse permission tier for access level of a user.
 BHSPermissionTier? get brickhousePermissionTier;/// The Brickhouse permission tier ID for access level of a user.
 String? get brickhousePermissionTierId;/// The Brickhouse user role.
@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? get brickhouseRole;/// The SDM code.
 String? get sdmCode;/// Whether the user is locked.
 bool get isLocked;/// Whether the user's account is suspended.
 bool get isSuspended;/// Whether the user has a payment warning.
 bool get hasPaymentWarning;/// The billing plan.
 BillingPlan? get billingPlan;/// Whether the user's password is expired and needs to be changed.
 bool? get isPasswordExpired;/// The user preferences.
 UserPreferences? get preferences;/// The list of passkeys registered for the user.
 List<Passkey> get passkeys;/// Whether the user has GPS insurance, for the BHS use case.
 bool? get hasGpsInsurance;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.token, token) || other.token == token)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.dynamicAvatar, dynamicAvatar) || other.dynamicAvatar == dynamicAvatar)&&const DeepCollectionEquality().equals(other.referencesIds, referencesIds)&&const DeepCollectionEquality().equals(other.references, references)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.mqttToken, mqttToken) || other.mqttToken == mqttToken)&&(identical(other.mqttConfig, mqttConfig) || other.mqttConfig == mqttConfig)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&(identical(other.platformAuth, platformAuth) || other.platformAuth == platformAuth)&&const DeepCollectionEquality().equals(other.childs, childs)&&const DeepCollectionEquality().equals(other.tagsIds, tagsIds)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.planId, planId) || other.planId == planId)&&const DeepCollectionEquality().equals(other.allowedApps, allowedApps)&&const DeepCollectionEquality().equals(other.mappitAssetsIds, mappitAssetsIds)&&const DeepCollectionEquality().equals(other.mappitSecondaryRoutesIds, mappitSecondaryRoutesIds)&&const DeepCollectionEquality().equals(other.mappitAssets, mappitAssets)&&(identical(other.historicalDaysAllowed, historicalDaysAllowed) || other.historicalDaysAllowed == historicalDaysAllowed)&&(identical(other.mappitExternalAccountId, mappitExternalAccountId) || other.mappitExternalAccountId == mappitExternalAccountId)&&(identical(other.mappitExternalAccount, mappitExternalAccount) || other.mappitExternalAccount == mappitExternalAccount)&&(identical(other.mfaEnabled, mfaEnabled) || other.mfaEnabled == mfaEnabled)&&const DeepCollectionEquality().equals(other.mfaMethods, mfaMethods)&&(identical(other.tenvioAddress, tenvioAddress) || other.tenvioAddress == tenvioAddress)&&(identical(other.tenvioPhone, tenvioPhone) || other.tenvioPhone == tenvioPhone)&&(identical(other.tenvioLatitude, tenvioLatitude) || other.tenvioLatitude == tenvioLatitude)&&(identical(other.tenvioLongitude, tenvioLongitude) || other.tenvioLongitude == tenvioLongitude)&&(identical(other.tenvioAddressIsPlusCode, tenvioAddressIsPlusCode) || other.tenvioAddressIsPlusCode == tenvioAddressIsPlusCode)&&(identical(other.suspendedAt, suspendedAt) || other.suspendedAt == suspendedAt)&&const DeepCollectionEquality().equals(other.hwModelsAnimationsIds, hwModelsAnimationsIds)&&(identical(other.brickhousePermissionTier, brickhousePermissionTier) || other.brickhousePermissionTier == brickhousePermissionTier)&&(identical(other.brickhousePermissionTierId, brickhousePermissionTierId) || other.brickhousePermissionTierId == brickhousePermissionTierId)&&(identical(other.brickhouseRole, brickhouseRole) || other.brickhouseRole == brickhouseRole)&&(identical(other.sdmCode, sdmCode) || other.sdmCode == sdmCode)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.hasPaymentWarning, hasPaymentWarning) || other.hasPaymentWarning == hasPaymentWarning)&&(identical(other.billingPlan, billingPlan) || other.billingPlan == billingPlan)&&(identical(other.isPasswordExpired, isPasswordExpired) || other.isPasswordExpired == isPasswordExpired)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&const DeepCollectionEquality().equals(other.passkeys, passkeys)&&(identical(other.hasGpsInsurance, hasGpsInsurance) || other.hasGpsInsurance == hasGpsInsurance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,token,parentId,email,username,dynamicAvatar,const DeepCollectionEquality().hash(referencesIds),const DeepCollectionEquality().hash(references),category,categoryId,mqttToken,mqttConfig,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(customFields),platformAuth,const DeepCollectionEquality().hash(childs),const DeepCollectionEquality().hash(tagsIds),const DeepCollectionEquality().hash(tags),planId,const DeepCollectionEquality().hash(allowedApps),const DeepCollectionEquality().hash(mappitAssetsIds),const DeepCollectionEquality().hash(mappitSecondaryRoutesIds),const DeepCollectionEquality().hash(mappitAssets),historicalDaysAllowed,mappitExternalAccountId,mappitExternalAccount,mfaEnabled,const DeepCollectionEquality().hash(mfaMethods),tenvioAddress,tenvioPhone,tenvioLatitude,tenvioLongitude,tenvioAddressIsPlusCode,suspendedAt,const DeepCollectionEquality().hash(hwModelsAnimationsIds),brickhousePermissionTier,brickhousePermissionTierId,brickhouseRole,sdmCode,isLocked,isSuspended,hasPaymentWarning,billingPlan,isPasswordExpired,preferences,const DeepCollectionEquality().hash(passkeys),hasGpsInsurance]);

@override
String toString() {
  return 'User(id: $id, name: $name, token: $token, parentId: $parentId, email: $email, username: $username, dynamicAvatar: $dynamicAvatar, referencesIds: $referencesIds, references: $references, category: $category, categoryId: $categoryId, mqttToken: $mqttToken, mqttConfig: $mqttConfig, access: $access, customFields: $customFields, platformAuth: $platformAuth, childs: $childs, tagsIds: $tagsIds, tags: $tags, planId: $planId, allowedApps: $allowedApps, mappitAssetsIds: $mappitAssetsIds, mappitSecondaryRoutesIds: $mappitSecondaryRoutesIds, mappitAssets: $mappitAssets, historicalDaysAllowed: $historicalDaysAllowed, mappitExternalAccountId: $mappitExternalAccountId, mappitExternalAccount: $mappitExternalAccount, mfaEnabled: $mfaEnabled, mfaMethods: $mfaMethods, tenvioAddress: $tenvioAddress, tenvioPhone: $tenvioPhone, tenvioLatitude: $tenvioLatitude, tenvioLongitude: $tenvioLongitude, tenvioAddressIsPlusCode: $tenvioAddressIsPlusCode, suspendedAt: $suspendedAt, hwModelsAnimationsIds: $hwModelsAnimationsIds, brickhousePermissionTier: $brickhousePermissionTier, brickhousePermissionTierId: $brickhousePermissionTierId, brickhouseRole: $brickhouseRole, sdmCode: $sdmCode, isLocked: $isLocked, isSuspended: $isSuspended, hasPaymentWarning: $hasPaymentWarning, billingPlan: $billingPlan, isPasswordExpired: $isPasswordExpired, preferences: $preferences, passkeys: $passkeys, hasGpsInsurance: $hasGpsInsurance)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String name, Token? token, String? parentId, String? email, String? username, Avatar? dynamicAvatar, List<String>? referencesIds, List<Reference>? references, Category? category, String? categoryId,@Deprecated('Use mqttConfig instead') String? mqttToken, RealtimeMqttConfig? mqttConfig, List<Access>? access, List<CustomField>? customFields, String platformAuth, List<User> childs, List<String>? tagsIds, List<Tag>? tags, String? planId, List<RegisteredApp>? allowedApps, List<String>? mappitAssetsIds, List<String>? mappitSecondaryRoutesIds, List<Asset>? mappitAssets, int? historicalDaysAllowed, String? mappitExternalAccountId, ExternalAccount? mappitExternalAccount, bool mfaEnabled, List<MfaMethod> mfaMethods, String? tenvioAddress, String? tenvioPhone, double? tenvioLatitude, double? tenvioLongitude, bool? tenvioAddressIsPlusCode,@TimestampOrNullConverter() DateTime? suspendedAt, List<String> hwModelsAnimationsIds, BHSPermissionTier? brickhousePermissionTier, String? brickhousePermissionTierId,@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole, String? sdmCode, bool isLocked, bool isSuspended, bool hasPaymentWarning, BillingPlan? billingPlan, bool? isPasswordExpired, UserPreferences? preferences, List<Passkey> passkeys, bool? hasGpsInsurance
});


$TokenCopyWith<$Res>? get token;$AvatarCopyWith<$Res>? get dynamicAvatar;$CategoryCopyWith<$Res>? get category;$RealtimeMqttConfigCopyWith<$Res>? get mqttConfig;$ExternalAccountCopyWith<$Res>? get mappitExternalAccount;$BHSPermissionTierCopyWith<$Res>? get brickhousePermissionTier;$BillingPlanCopyWith<$Res>? get billingPlan;$UserPreferencesCopyWith<$Res>? get preferences;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? token = freezed,Object? parentId = freezed,Object? email = freezed,Object? username = freezed,Object? dynamicAvatar = freezed,Object? referencesIds = freezed,Object? references = freezed,Object? category = freezed,Object? categoryId = freezed,Object? mqttToken = freezed,Object? mqttConfig = freezed,Object? access = freezed,Object? customFields = freezed,Object? platformAuth = null,Object? childs = null,Object? tagsIds = freezed,Object? tags = freezed,Object? planId = freezed,Object? allowedApps = freezed,Object? mappitAssetsIds = freezed,Object? mappitSecondaryRoutesIds = freezed,Object? mappitAssets = freezed,Object? historicalDaysAllowed = freezed,Object? mappitExternalAccountId = freezed,Object? mappitExternalAccount = freezed,Object? mfaEnabled = null,Object? mfaMethods = null,Object? tenvioAddress = freezed,Object? tenvioPhone = freezed,Object? tenvioLatitude = freezed,Object? tenvioLongitude = freezed,Object? tenvioAddressIsPlusCode = freezed,Object? suspendedAt = freezed,Object? hwModelsAnimationsIds = null,Object? brickhousePermissionTier = freezed,Object? brickhousePermissionTierId = freezed,Object? brickhouseRole = freezed,Object? sdmCode = freezed,Object? isLocked = null,Object? isSuspended = null,Object? hasPaymentWarning = null,Object? billingPlan = freezed,Object? isPasswordExpired = freezed,Object? preferences = freezed,Object? passkeys = null,Object? hasGpsInsurance = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as Avatar?,referencesIds: freezed == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,references: freezed == references ? _self.references : references // ignore: cast_nullable_to_non_nullable
as List<Reference>?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,mqttToken: freezed == mqttToken ? _self.mqttToken : mqttToken // ignore: cast_nullable_to_non_nullable
as String?,mqttConfig: freezed == mqttConfig ? _self.mqttConfig : mqttConfig // ignore: cast_nullable_to_non_nullable
as RealtimeMqttConfig?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,platformAuth: null == platformAuth ? _self.platformAuth : platformAuth // ignore: cast_nullable_to_non_nullable
as String,childs: null == childs ? _self.childs : childs // ignore: cast_nullable_to_non_nullable
as List<User>,tagsIds: freezed == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String?,allowedApps: freezed == allowedApps ? _self.allowedApps : allowedApps // ignore: cast_nullable_to_non_nullable
as List<RegisteredApp>?,mappitAssetsIds: freezed == mappitAssetsIds ? _self.mappitAssetsIds : mappitAssetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitSecondaryRoutesIds: freezed == mappitSecondaryRoutesIds ? _self.mappitSecondaryRoutesIds : mappitSecondaryRoutesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitAssets: freezed == mappitAssets ? _self.mappitAssets : mappitAssets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,historicalDaysAllowed: freezed == historicalDaysAllowed ? _self.historicalDaysAllowed : historicalDaysAllowed // ignore: cast_nullable_to_non_nullable
as int?,mappitExternalAccountId: freezed == mappitExternalAccountId ? _self.mappitExternalAccountId : mappitExternalAccountId // ignore: cast_nullable_to_non_nullable
as String?,mappitExternalAccount: freezed == mappitExternalAccount ? _self.mappitExternalAccount : mappitExternalAccount // ignore: cast_nullable_to_non_nullable
as ExternalAccount?,mfaEnabled: null == mfaEnabled ? _self.mfaEnabled : mfaEnabled // ignore: cast_nullable_to_non_nullable
as bool,mfaMethods: null == mfaMethods ? _self.mfaMethods : mfaMethods // ignore: cast_nullable_to_non_nullable
as List<MfaMethod>,tenvioAddress: freezed == tenvioAddress ? _self.tenvioAddress : tenvioAddress // ignore: cast_nullable_to_non_nullable
as String?,tenvioPhone: freezed == tenvioPhone ? _self.tenvioPhone : tenvioPhone // ignore: cast_nullable_to_non_nullable
as String?,tenvioLatitude: freezed == tenvioLatitude ? _self.tenvioLatitude : tenvioLatitude // ignore: cast_nullable_to_non_nullable
as double?,tenvioLongitude: freezed == tenvioLongitude ? _self.tenvioLongitude : tenvioLongitude // ignore: cast_nullable_to_non_nullable
as double?,tenvioAddressIsPlusCode: freezed == tenvioAddressIsPlusCode ? _self.tenvioAddressIsPlusCode : tenvioAddressIsPlusCode // ignore: cast_nullable_to_non_nullable
as bool?,suspendedAt: freezed == suspendedAt ? _self.suspendedAt : suspendedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,hwModelsAnimationsIds: null == hwModelsAnimationsIds ? _self.hwModelsAnimationsIds : hwModelsAnimationsIds // ignore: cast_nullable_to_non_nullable
as List<String>,brickhousePermissionTier: freezed == brickhousePermissionTier ? _self.brickhousePermissionTier : brickhousePermissionTier // ignore: cast_nullable_to_non_nullable
as BHSPermissionTier?,brickhousePermissionTierId: freezed == brickhousePermissionTierId ? _self.brickhousePermissionTierId : brickhousePermissionTierId // ignore: cast_nullable_to_non_nullable
as String?,brickhouseRole: freezed == brickhouseRole ? _self.brickhouseRole : brickhouseRole // ignore: cast_nullable_to_non_nullable
as BrickhouseUserRole?,sdmCode: freezed == sdmCode ? _self.sdmCode : sdmCode // ignore: cast_nullable_to_non_nullable
as String?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,isSuspended: null == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool,hasPaymentWarning: null == hasPaymentWarning ? _self.hasPaymentWarning : hasPaymentWarning // ignore: cast_nullable_to_non_nullable
as bool,billingPlan: freezed == billingPlan ? _self.billingPlan : billingPlan // ignore: cast_nullable_to_non_nullable
as BillingPlan?,isPasswordExpired: freezed == isPasswordExpired ? _self.isPasswordExpired : isPasswordExpired // ignore: cast_nullable_to_non_nullable
as bool?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,passkeys: null == passkeys ? _self.passkeys : passkeys // ignore: cast_nullable_to_non_nullable
as List<Passkey>,hasGpsInsurance: freezed == hasGpsInsurance ? _self.hasGpsInsurance : hasGpsInsurance // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RealtimeMqttConfigCopyWith<$Res>? get mqttConfig {
    if (_self.mqttConfig == null) {
    return null;
  }

  return $RealtimeMqttConfigCopyWith<$Res>(_self.mqttConfig!, (value) {
    return _then(_self.copyWith(mqttConfig: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalAccountCopyWith<$Res>? get mappitExternalAccount {
    if (_self.mappitExternalAccount == null) {
    return null;
  }

  return $ExternalAccountCopyWith<$Res>(_self.mappitExternalAccount!, (value) {
    return _then(_self.copyWith(mappitExternalAccount: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BHSPermissionTierCopyWith<$Res>? get brickhousePermissionTier {
    if (_self.brickhousePermissionTier == null) {
    return null;
  }

  return $BHSPermissionTierCopyWith<$Res>(_self.brickhousePermissionTier!, (value) {
    return _then(_self.copyWith(brickhousePermissionTier: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingPlanCopyWith<$Res>? get billingPlan {
    if (_self.billingPlan == null) {
    return null;
  }

  return $BillingPlanCopyWith<$Res>(_self.billingPlan!, (value) {
    return _then(_self.copyWith(billingPlan: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Token? token,  String? parentId,  String? email,  String? username,  Avatar? dynamicAvatar,  List<String>? referencesIds,  List<Reference>? references,  Category? category,  String? categoryId, @Deprecated('Use mqttConfig instead')  String? mqttToken,  RealtimeMqttConfig? mqttConfig,  List<Access>? access,  List<CustomField>? customFields,  String platformAuth,  List<User> childs,  List<String>? tagsIds,  List<Tag>? tags,  String? planId,  List<RegisteredApp>? allowedApps,  List<String>? mappitAssetsIds,  List<String>? mappitSecondaryRoutesIds,  List<Asset>? mappitAssets,  int? historicalDaysAllowed,  String? mappitExternalAccountId,  ExternalAccount? mappitExternalAccount,  bool mfaEnabled,  List<MfaMethod> mfaMethods,  String? tenvioAddress,  String? tenvioPhone,  double? tenvioLatitude,  double? tenvioLongitude,  bool? tenvioAddressIsPlusCode, @TimestampOrNullConverter()  DateTime? suspendedAt,  List<String> hwModelsAnimationsIds,  BHSPermissionTier? brickhousePermissionTier,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  bool isLocked,  bool isSuspended,  bool hasPaymentWarning,  BillingPlan? billingPlan,  bool? isPasswordExpired,  UserPreferences? preferences,  List<Passkey> passkeys,  bool? hasGpsInsurance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.token,_that.parentId,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.references,_that.category,_that.categoryId,_that.mqttToken,_that.mqttConfig,_that.access,_that.customFields,_that.platformAuth,_that.childs,_that.tagsIds,_that.tags,_that.planId,_that.allowedApps,_that.mappitAssetsIds,_that.mappitSecondaryRoutesIds,_that.mappitAssets,_that.historicalDaysAllowed,_that.mappitExternalAccountId,_that.mappitExternalAccount,_that.mfaEnabled,_that.mfaMethods,_that.tenvioAddress,_that.tenvioPhone,_that.tenvioLatitude,_that.tenvioLongitude,_that.tenvioAddressIsPlusCode,_that.suspendedAt,_that.hwModelsAnimationsIds,_that.brickhousePermissionTier,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.isLocked,_that.isSuspended,_that.hasPaymentWarning,_that.billingPlan,_that.isPasswordExpired,_that.preferences,_that.passkeys,_that.hasGpsInsurance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Token? token,  String? parentId,  String? email,  String? username,  Avatar? dynamicAvatar,  List<String>? referencesIds,  List<Reference>? references,  Category? category,  String? categoryId, @Deprecated('Use mqttConfig instead')  String? mqttToken,  RealtimeMqttConfig? mqttConfig,  List<Access>? access,  List<CustomField>? customFields,  String platformAuth,  List<User> childs,  List<String>? tagsIds,  List<Tag>? tags,  String? planId,  List<RegisteredApp>? allowedApps,  List<String>? mappitAssetsIds,  List<String>? mappitSecondaryRoutesIds,  List<Asset>? mappitAssets,  int? historicalDaysAllowed,  String? mappitExternalAccountId,  ExternalAccount? mappitExternalAccount,  bool mfaEnabled,  List<MfaMethod> mfaMethods,  String? tenvioAddress,  String? tenvioPhone,  double? tenvioLatitude,  double? tenvioLongitude,  bool? tenvioAddressIsPlusCode, @TimestampOrNullConverter()  DateTime? suspendedAt,  List<String> hwModelsAnimationsIds,  BHSPermissionTier? brickhousePermissionTier,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  bool isLocked,  bool isSuspended,  bool hasPaymentWarning,  BillingPlan? billingPlan,  bool? isPasswordExpired,  UserPreferences? preferences,  List<Passkey> passkeys,  bool? hasGpsInsurance)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.token,_that.parentId,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.references,_that.category,_that.categoryId,_that.mqttToken,_that.mqttConfig,_that.access,_that.customFields,_that.platformAuth,_that.childs,_that.tagsIds,_that.tags,_that.planId,_that.allowedApps,_that.mappitAssetsIds,_that.mappitSecondaryRoutesIds,_that.mappitAssets,_that.historicalDaysAllowed,_that.mappitExternalAccountId,_that.mappitExternalAccount,_that.mfaEnabled,_that.mfaMethods,_that.tenvioAddress,_that.tenvioPhone,_that.tenvioLatitude,_that.tenvioLongitude,_that.tenvioAddressIsPlusCode,_that.suspendedAt,_that.hwModelsAnimationsIds,_that.brickhousePermissionTier,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.isLocked,_that.isSuspended,_that.hasPaymentWarning,_that.billingPlan,_that.isPasswordExpired,_that.preferences,_that.passkeys,_that.hasGpsInsurance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Token? token,  String? parentId,  String? email,  String? username,  Avatar? dynamicAvatar,  List<String>? referencesIds,  List<Reference>? references,  Category? category,  String? categoryId, @Deprecated('Use mqttConfig instead')  String? mqttToken,  RealtimeMqttConfig? mqttConfig,  List<Access>? access,  List<CustomField>? customFields,  String platformAuth,  List<User> childs,  List<String>? tagsIds,  List<Tag>? tags,  String? planId,  List<RegisteredApp>? allowedApps,  List<String>? mappitAssetsIds,  List<String>? mappitSecondaryRoutesIds,  List<Asset>? mappitAssets,  int? historicalDaysAllowed,  String? mappitExternalAccountId,  ExternalAccount? mappitExternalAccount,  bool mfaEnabled,  List<MfaMethod> mfaMethods,  String? tenvioAddress,  String? tenvioPhone,  double? tenvioLatitude,  double? tenvioLongitude,  bool? tenvioAddressIsPlusCode, @TimestampOrNullConverter()  DateTime? suspendedAt,  List<String> hwModelsAnimationsIds,  BHSPermissionTier? brickhousePermissionTier,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  bool isLocked,  bool isSuspended,  bool hasPaymentWarning,  BillingPlan? billingPlan,  bool? isPasswordExpired,  UserPreferences? preferences,  List<Passkey> passkeys,  bool? hasGpsInsurance)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.token,_that.parentId,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.references,_that.category,_that.categoryId,_that.mqttToken,_that.mqttConfig,_that.access,_that.customFields,_that.platformAuth,_that.childs,_that.tagsIds,_that.tags,_that.planId,_that.allowedApps,_that.mappitAssetsIds,_that.mappitSecondaryRoutesIds,_that.mappitAssets,_that.historicalDaysAllowed,_that.mappitExternalAccountId,_that.mappitExternalAccount,_that.mfaEnabled,_that.mfaMethods,_that.tenvioAddress,_that.tenvioPhone,_that.tenvioLatitude,_that.tenvioLongitude,_that.tenvioAddressIsPlusCode,_that.suspendedAt,_that.hwModelsAnimationsIds,_that.brickhousePermissionTier,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.isLocked,_that.isSuspended,_that.hasPaymentWarning,_that.billingPlan,_that.isPasswordExpired,_that.preferences,_that.passkeys,_that.hasGpsInsurance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
  const _User({required this.id, required this.name, this.token, this.parentId, this.email, this.username, this.dynamicAvatar, this.referencesIds, this.references, this.category, this.categoryId, @Deprecated('Use mqttConfig instead') this.mqttToken, this.mqttConfig, this.access, this.customFields, this.platformAuth = "", this.childs = const [], this.tagsIds, this.tags, this.planId, this.allowedApps, this.mappitAssetsIds, this.mappitSecondaryRoutesIds, this.mappitAssets, this.historicalDaysAllowed, this.mappitExternalAccountId, this.mappitExternalAccount, this.mfaEnabled = false, this.mfaMethods = const [], this.tenvioAddress, this.tenvioPhone, this.tenvioLatitude, this.tenvioLongitude, this.tenvioAddressIsPlusCode, @TimestampOrNullConverter() this.suspendedAt, this.hwModelsAnimationsIds = const [], this.brickhousePermissionTier, this.brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) this.brickhouseRole, this.sdmCode, this.isLocked = false, this.isSuspended = false, this.hasPaymentWarning = false, this.billingPlan, this.isPasswordExpired, this.preferences, this.passkeys = const [], this.hasGpsInsurance}): super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

/// The user ID.
@override final  String id;
/// The user name.
@override final  String name;
/// The user token.
@override final  Token? token;
/// The parent ID.
@override final  String? parentId;
/// The user email.
@override final  String? email;
/// The username.
@override final  String? username;
/// The user avatar.
@override final  Avatar? dynamicAvatar;
/// The list of references IDs.
@override final  List<String>? referencesIds;
/// The list of references.
@override final  List<Reference>? references;
/// The user category.
@override final  Category? category;
/// The user category ID.
@override final  String? categoryId;
/// The MQTT token.
@override@Deprecated('Use mqttConfig instead') final  String? mqttToken;
/// The MQTT configuration.
@override final  RealtimeMqttConfig? mqttConfig;
/// The list of granted access.
@override final  List<Access>? access;
/// The list of custom fields.
@override final  List<CustomField>? customFields;
/// The platform auth.
@override@JsonKey() final  String platformAuth;
/// The list of childs.
@override@JsonKey() final  List<User> childs;
/// The list of tags IDs.
@override final  List<String>? tagsIds;
/// The list of tags.
@override final  List<Tag>? tags;
/// The plan ID.
@override final  String? planId;
/// The list of allowed apps.
@override final  List<RegisteredApp>? allowedApps;
/// The list of assets IDs.
/// This field is only for `Mappit` use.
@override final  List<String>? mappitAssetsIds;
/// The list of secondary routes IDs.
/// This field is only for `Mappit` use.
@override final  List<String>? mappitSecondaryRoutesIds;
/// The list of assets.
/// This field is only for `Mappit` use.
@override final  List<Asset>? mappitAssets;
/// The number of days allowed to access historical data.
/// This field is only for `Mappit` use.
@override final  int? historicalDaysAllowed;
/// The Mappit external account ID.
/// This field is only for `Mappit` use.
@override final  String? mappitExternalAccountId;
/// The Mappit external account.
/// This field is only for `Mappit` use.
@override final  ExternalAccount? mappitExternalAccount;
/// Whether MFA is enabled.
@override@JsonKey() final  bool mfaEnabled;
/// The list of MFA methods.
@override@JsonKey() final  List<MfaMethod> mfaMethods;
/// The Tenvio address.
@override final  String? tenvioAddress;
/// The Tenvio phone.
@override final  String? tenvioPhone;
/// The Tenvio latitude.
@override final  double? tenvioLatitude;
/// The Tenvio longitude.
@override final  double? tenvioLongitude;
/// Whether the Tenvio address is a Plus Code.
@override final  bool? tenvioAddressIsPlusCode;
/// The date when the account was suspended.
@override@TimestampOrNullConverter() final  DateTime? suspendedAt;
/// The list of the IDs of the hwModels that already shown the
/// animations.
@override@JsonKey() final  List<String> hwModelsAnimationsIds;
/// The Brickhouse permission tier for access level of a user.
@override final  BHSPermissionTier? brickhousePermissionTier;
/// The Brickhouse permission tier ID for access level of a user.
@override final  String? brickhousePermissionTierId;
/// The Brickhouse user role.
@override@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) final  BrickhouseUserRole? brickhouseRole;
/// The SDM code.
@override final  String? sdmCode;
/// Whether the user is locked.
@override@JsonKey() final  bool isLocked;
/// Whether the user's account is suspended.
@override@JsonKey() final  bool isSuspended;
/// Whether the user has a payment warning.
@override@JsonKey() final  bool hasPaymentWarning;
/// The billing plan.
@override final  BillingPlan? billingPlan;
/// Whether the user's password is expired and needs to be changed.
@override final  bool? isPasswordExpired;
/// The user preferences.
@override final  UserPreferences? preferences;
/// The list of passkeys registered for the user.
@override@JsonKey() final  List<Passkey> passkeys;
/// Whether the user has GPS insurance, for the BHS use case.
@override final  bool? hasGpsInsurance;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.token, token) || other.token == token)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.dynamicAvatar, dynamicAvatar) || other.dynamicAvatar == dynamicAvatar)&&const DeepCollectionEquality().equals(other.referencesIds, referencesIds)&&const DeepCollectionEquality().equals(other.references, references)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.mqttToken, mqttToken) || other.mqttToken == mqttToken)&&(identical(other.mqttConfig, mqttConfig) || other.mqttConfig == mqttConfig)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&(identical(other.platformAuth, platformAuth) || other.platformAuth == platformAuth)&&const DeepCollectionEquality().equals(other.childs, childs)&&const DeepCollectionEquality().equals(other.tagsIds, tagsIds)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.planId, planId) || other.planId == planId)&&const DeepCollectionEquality().equals(other.allowedApps, allowedApps)&&const DeepCollectionEquality().equals(other.mappitAssetsIds, mappitAssetsIds)&&const DeepCollectionEquality().equals(other.mappitSecondaryRoutesIds, mappitSecondaryRoutesIds)&&const DeepCollectionEquality().equals(other.mappitAssets, mappitAssets)&&(identical(other.historicalDaysAllowed, historicalDaysAllowed) || other.historicalDaysAllowed == historicalDaysAllowed)&&(identical(other.mappitExternalAccountId, mappitExternalAccountId) || other.mappitExternalAccountId == mappitExternalAccountId)&&(identical(other.mappitExternalAccount, mappitExternalAccount) || other.mappitExternalAccount == mappitExternalAccount)&&(identical(other.mfaEnabled, mfaEnabled) || other.mfaEnabled == mfaEnabled)&&const DeepCollectionEquality().equals(other.mfaMethods, mfaMethods)&&(identical(other.tenvioAddress, tenvioAddress) || other.tenvioAddress == tenvioAddress)&&(identical(other.tenvioPhone, tenvioPhone) || other.tenvioPhone == tenvioPhone)&&(identical(other.tenvioLatitude, tenvioLatitude) || other.tenvioLatitude == tenvioLatitude)&&(identical(other.tenvioLongitude, tenvioLongitude) || other.tenvioLongitude == tenvioLongitude)&&(identical(other.tenvioAddressIsPlusCode, tenvioAddressIsPlusCode) || other.tenvioAddressIsPlusCode == tenvioAddressIsPlusCode)&&(identical(other.suspendedAt, suspendedAt) || other.suspendedAt == suspendedAt)&&const DeepCollectionEquality().equals(other.hwModelsAnimationsIds, hwModelsAnimationsIds)&&(identical(other.brickhousePermissionTier, brickhousePermissionTier) || other.brickhousePermissionTier == brickhousePermissionTier)&&(identical(other.brickhousePermissionTierId, brickhousePermissionTierId) || other.brickhousePermissionTierId == brickhousePermissionTierId)&&(identical(other.brickhouseRole, brickhouseRole) || other.brickhouseRole == brickhouseRole)&&(identical(other.sdmCode, sdmCode) || other.sdmCode == sdmCode)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.hasPaymentWarning, hasPaymentWarning) || other.hasPaymentWarning == hasPaymentWarning)&&(identical(other.billingPlan, billingPlan) || other.billingPlan == billingPlan)&&(identical(other.isPasswordExpired, isPasswordExpired) || other.isPasswordExpired == isPasswordExpired)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&const DeepCollectionEquality().equals(other.passkeys, passkeys)&&(identical(other.hasGpsInsurance, hasGpsInsurance) || other.hasGpsInsurance == hasGpsInsurance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,token,parentId,email,username,dynamicAvatar,const DeepCollectionEquality().hash(referencesIds),const DeepCollectionEquality().hash(references),category,categoryId,mqttToken,mqttConfig,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(customFields),platformAuth,const DeepCollectionEquality().hash(childs),const DeepCollectionEquality().hash(tagsIds),const DeepCollectionEquality().hash(tags),planId,const DeepCollectionEquality().hash(allowedApps),const DeepCollectionEquality().hash(mappitAssetsIds),const DeepCollectionEquality().hash(mappitSecondaryRoutesIds),const DeepCollectionEquality().hash(mappitAssets),historicalDaysAllowed,mappitExternalAccountId,mappitExternalAccount,mfaEnabled,const DeepCollectionEquality().hash(mfaMethods),tenvioAddress,tenvioPhone,tenvioLatitude,tenvioLongitude,tenvioAddressIsPlusCode,suspendedAt,const DeepCollectionEquality().hash(hwModelsAnimationsIds),brickhousePermissionTier,brickhousePermissionTierId,brickhouseRole,sdmCode,isLocked,isSuspended,hasPaymentWarning,billingPlan,isPasswordExpired,preferences,const DeepCollectionEquality().hash(passkeys),hasGpsInsurance]);

@override
String toString() {
  return 'User(id: $id, name: $name, token: $token, parentId: $parentId, email: $email, username: $username, dynamicAvatar: $dynamicAvatar, referencesIds: $referencesIds, references: $references, category: $category, categoryId: $categoryId, mqttToken: $mqttToken, mqttConfig: $mqttConfig, access: $access, customFields: $customFields, platformAuth: $platformAuth, childs: $childs, tagsIds: $tagsIds, tags: $tags, planId: $planId, allowedApps: $allowedApps, mappitAssetsIds: $mappitAssetsIds, mappitSecondaryRoutesIds: $mappitSecondaryRoutesIds, mappitAssets: $mappitAssets, historicalDaysAllowed: $historicalDaysAllowed, mappitExternalAccountId: $mappitExternalAccountId, mappitExternalAccount: $mappitExternalAccount, mfaEnabled: $mfaEnabled, mfaMethods: $mfaMethods, tenvioAddress: $tenvioAddress, tenvioPhone: $tenvioPhone, tenvioLatitude: $tenvioLatitude, tenvioLongitude: $tenvioLongitude, tenvioAddressIsPlusCode: $tenvioAddressIsPlusCode, suspendedAt: $suspendedAt, hwModelsAnimationsIds: $hwModelsAnimationsIds, brickhousePermissionTier: $brickhousePermissionTier, brickhousePermissionTierId: $brickhousePermissionTierId, brickhouseRole: $brickhouseRole, sdmCode: $sdmCode, isLocked: $isLocked, isSuspended: $isSuspended, hasPaymentWarning: $hasPaymentWarning, billingPlan: $billingPlan, isPasswordExpired: $isPasswordExpired, preferences: $preferences, passkeys: $passkeys, hasGpsInsurance: $hasGpsInsurance)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Token? token, String? parentId, String? email, String? username, Avatar? dynamicAvatar, List<String>? referencesIds, List<Reference>? references, Category? category, String? categoryId,@Deprecated('Use mqttConfig instead') String? mqttToken, RealtimeMqttConfig? mqttConfig, List<Access>? access, List<CustomField>? customFields, String platformAuth, List<User> childs, List<String>? tagsIds, List<Tag>? tags, String? planId, List<RegisteredApp>? allowedApps, List<String>? mappitAssetsIds, List<String>? mappitSecondaryRoutesIds, List<Asset>? mappitAssets, int? historicalDaysAllowed, String? mappitExternalAccountId, ExternalAccount? mappitExternalAccount, bool mfaEnabled, List<MfaMethod> mfaMethods, String? tenvioAddress, String? tenvioPhone, double? tenvioLatitude, double? tenvioLongitude, bool? tenvioAddressIsPlusCode,@TimestampOrNullConverter() DateTime? suspendedAt, List<String> hwModelsAnimationsIds, BHSPermissionTier? brickhousePermissionTier, String? brickhousePermissionTierId,@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole, String? sdmCode, bool isLocked, bool isSuspended, bool hasPaymentWarning, BillingPlan? billingPlan, bool? isPasswordExpired, UserPreferences? preferences, List<Passkey> passkeys, bool? hasGpsInsurance
});


@override $TokenCopyWith<$Res>? get token;@override $AvatarCopyWith<$Res>? get dynamicAvatar;@override $CategoryCopyWith<$Res>? get category;@override $RealtimeMqttConfigCopyWith<$Res>? get mqttConfig;@override $ExternalAccountCopyWith<$Res>? get mappitExternalAccount;@override $BHSPermissionTierCopyWith<$Res>? get brickhousePermissionTier;@override $BillingPlanCopyWith<$Res>? get billingPlan;@override $UserPreferencesCopyWith<$Res>? get preferences;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? token = freezed,Object? parentId = freezed,Object? email = freezed,Object? username = freezed,Object? dynamicAvatar = freezed,Object? referencesIds = freezed,Object? references = freezed,Object? category = freezed,Object? categoryId = freezed,Object? mqttToken = freezed,Object? mqttConfig = freezed,Object? access = freezed,Object? customFields = freezed,Object? platformAuth = null,Object? childs = null,Object? tagsIds = freezed,Object? tags = freezed,Object? planId = freezed,Object? allowedApps = freezed,Object? mappitAssetsIds = freezed,Object? mappitSecondaryRoutesIds = freezed,Object? mappitAssets = freezed,Object? historicalDaysAllowed = freezed,Object? mappitExternalAccountId = freezed,Object? mappitExternalAccount = freezed,Object? mfaEnabled = null,Object? mfaMethods = null,Object? tenvioAddress = freezed,Object? tenvioPhone = freezed,Object? tenvioLatitude = freezed,Object? tenvioLongitude = freezed,Object? tenvioAddressIsPlusCode = freezed,Object? suspendedAt = freezed,Object? hwModelsAnimationsIds = null,Object? brickhousePermissionTier = freezed,Object? brickhousePermissionTierId = freezed,Object? brickhouseRole = freezed,Object? sdmCode = freezed,Object? isLocked = null,Object? isSuspended = null,Object? hasPaymentWarning = null,Object? billingPlan = freezed,Object? isPasswordExpired = freezed,Object? preferences = freezed,Object? passkeys = null,Object? hasGpsInsurance = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as Avatar?,referencesIds: freezed == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,references: freezed == references ? _self.references : references // ignore: cast_nullable_to_non_nullable
as List<Reference>?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,mqttToken: freezed == mqttToken ? _self.mqttToken : mqttToken // ignore: cast_nullable_to_non_nullable
as String?,mqttConfig: freezed == mqttConfig ? _self.mqttConfig : mqttConfig // ignore: cast_nullable_to_non_nullable
as RealtimeMqttConfig?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,platformAuth: null == platformAuth ? _self.platformAuth : platformAuth // ignore: cast_nullable_to_non_nullable
as String,childs: null == childs ? _self.childs : childs // ignore: cast_nullable_to_non_nullable
as List<User>,tagsIds: freezed == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String?,allowedApps: freezed == allowedApps ? _self.allowedApps : allowedApps // ignore: cast_nullable_to_non_nullable
as List<RegisteredApp>?,mappitAssetsIds: freezed == mappitAssetsIds ? _self.mappitAssetsIds : mappitAssetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitSecondaryRoutesIds: freezed == mappitSecondaryRoutesIds ? _self.mappitSecondaryRoutesIds : mappitSecondaryRoutesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitAssets: freezed == mappitAssets ? _self.mappitAssets : mappitAssets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,historicalDaysAllowed: freezed == historicalDaysAllowed ? _self.historicalDaysAllowed : historicalDaysAllowed // ignore: cast_nullable_to_non_nullable
as int?,mappitExternalAccountId: freezed == mappitExternalAccountId ? _self.mappitExternalAccountId : mappitExternalAccountId // ignore: cast_nullable_to_non_nullable
as String?,mappitExternalAccount: freezed == mappitExternalAccount ? _self.mappitExternalAccount : mappitExternalAccount // ignore: cast_nullable_to_non_nullable
as ExternalAccount?,mfaEnabled: null == mfaEnabled ? _self.mfaEnabled : mfaEnabled // ignore: cast_nullable_to_non_nullable
as bool,mfaMethods: null == mfaMethods ? _self.mfaMethods : mfaMethods // ignore: cast_nullable_to_non_nullable
as List<MfaMethod>,tenvioAddress: freezed == tenvioAddress ? _self.tenvioAddress : tenvioAddress // ignore: cast_nullable_to_non_nullable
as String?,tenvioPhone: freezed == tenvioPhone ? _self.tenvioPhone : tenvioPhone // ignore: cast_nullable_to_non_nullable
as String?,tenvioLatitude: freezed == tenvioLatitude ? _self.tenvioLatitude : tenvioLatitude // ignore: cast_nullable_to_non_nullable
as double?,tenvioLongitude: freezed == tenvioLongitude ? _self.tenvioLongitude : tenvioLongitude // ignore: cast_nullable_to_non_nullable
as double?,tenvioAddressIsPlusCode: freezed == tenvioAddressIsPlusCode ? _self.tenvioAddressIsPlusCode : tenvioAddressIsPlusCode // ignore: cast_nullable_to_non_nullable
as bool?,suspendedAt: freezed == suspendedAt ? _self.suspendedAt : suspendedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,hwModelsAnimationsIds: null == hwModelsAnimationsIds ? _self.hwModelsAnimationsIds : hwModelsAnimationsIds // ignore: cast_nullable_to_non_nullable
as List<String>,brickhousePermissionTier: freezed == brickhousePermissionTier ? _self.brickhousePermissionTier : brickhousePermissionTier // ignore: cast_nullable_to_non_nullable
as BHSPermissionTier?,brickhousePermissionTierId: freezed == brickhousePermissionTierId ? _self.brickhousePermissionTierId : brickhousePermissionTierId // ignore: cast_nullable_to_non_nullable
as String?,brickhouseRole: freezed == brickhouseRole ? _self.brickhouseRole : brickhouseRole // ignore: cast_nullable_to_non_nullable
as BrickhouseUserRole?,sdmCode: freezed == sdmCode ? _self.sdmCode : sdmCode // ignore: cast_nullable_to_non_nullable
as String?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,isSuspended: null == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool,hasPaymentWarning: null == hasPaymentWarning ? _self.hasPaymentWarning : hasPaymentWarning // ignore: cast_nullable_to_non_nullable
as bool,billingPlan: freezed == billingPlan ? _self.billingPlan : billingPlan // ignore: cast_nullable_to_non_nullable
as BillingPlan?,isPasswordExpired: freezed == isPasswordExpired ? _self.isPasswordExpired : isPasswordExpired // ignore: cast_nullable_to_non_nullable
as bool?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,passkeys: null == passkeys ? _self.passkeys : passkeys // ignore: cast_nullable_to_non_nullable
as List<Passkey>,hasGpsInsurance: freezed == hasGpsInsurance ? _self.hasGpsInsurance : hasGpsInsurance // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RealtimeMqttConfigCopyWith<$Res>? get mqttConfig {
    if (_self.mqttConfig == null) {
    return null;
  }

  return $RealtimeMqttConfigCopyWith<$Res>(_self.mqttConfig!, (value) {
    return _then(_self.copyWith(mqttConfig: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalAccountCopyWith<$Res>? get mappitExternalAccount {
    if (_self.mappitExternalAccount == null) {
    return null;
  }

  return $ExternalAccountCopyWith<$Res>(_self.mappitExternalAccount!, (value) {
    return _then(_self.copyWith(mappitExternalAccount: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BHSPermissionTierCopyWith<$Res>? get brickhousePermissionTier {
    if (_self.brickhousePermissionTier == null) {
    return null;
  }

  return $BHSPermissionTierCopyWith<$Res>(_self.brickhousePermissionTier!, (value) {
    return _then(_self.copyWith(brickhousePermissionTier: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingPlanCopyWith<$Res>? get billingPlan {
    if (_self.billingPlan == null) {
    return null;
  }

  return $BillingPlanCopyWith<$Res>(_self.billingPlan!, (value) {
    return _then(_self.copyWith(billingPlan: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// @nodoc
mixin _$UserInput {

/// The user ID. When creating a new user, this value should be null.
 String? get id;/// The user ID. When creating a new user, this value should be null.
 set id(String? value);/// The user name.
 String get name;/// The user name.
 set name(String value);/// The user email.
 String get email;/// The user email.
 set email(String value);/// The username.
 String get username;/// The username.
 set username(String value);/// The user avatar.
 AvatarInput? get dynamicAvatar;/// The user avatar.
 set dynamicAvatar(AvatarInput? value);/// The list of references IDs.
 List<String> get referencesIds;/// The list of references IDs.
 set referencesIds(List<String> value);/// The user category ID.
 String? get categoryId;/// The user category ID.
 set categoryId(String? value);/// The list of custom fields.
 List<CustomField> get customFields;/// The list of custom fields.
 set customFields(List<CustomField> value);/// The list of tags IDs.
 List<String> get tagsIds;/// The list of tags IDs.
 set tagsIds(List<String> value);/// The list of assets IDs.
/// This field is only for `Mappit` use.
 List<String> get mappitAssetsIds;/// The list of assets IDs.
/// This field is only for `Mappit` use.
 set mappitAssetsIds(List<String> value);/// The number of days allowed to access historical data.
/// This field is only for `Mappit` use.
 int get historicalDaysAllowed;/// The number of days allowed to access historical data.
/// This field is only for `Mappit` use.
 set historicalDaysAllowed(int value);/// The Brickhouse permission tier ID for access level of a user.
 String? get brickhousePermissionTierId;/// The Brickhouse permission tier ID for access level of a user.
 set brickhousePermissionTierId(String? value);/// The Brickhouse user role.
@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? get brickhouseRole;/// The Brickhouse user role.
@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) set brickhouseRole(BrickhouseUserRole? value);/// The SDM code.
 String? get sdmCode;/// The SDM code.
 set sdmCode(String? value);/// The default password, if allowed by the form.
 String? get password;/// The default password, if allowed by the form.
 set password(String? value);/// The user preferences.
 UserPreferencesInput? get preferences;/// The user preferences.
 set preferences(UserPreferencesInput? value);
/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInputCopyWith<UserInput> get copyWith => _$UserInputCopyWithImpl<UserInput>(this as UserInput, _$identity);

  /// Serializes this UserInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'UserInput(id: $id, name: $name, email: $email, username: $username, dynamicAvatar: $dynamicAvatar, referencesIds: $referencesIds, categoryId: $categoryId, customFields: $customFields, tagsIds: $tagsIds, mappitAssetsIds: $mappitAssetsIds, historicalDaysAllowed: $historicalDaysAllowed, brickhousePermissionTierId: $brickhousePermissionTierId, brickhouseRole: $brickhouseRole, sdmCode: $sdmCode, password: $password, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $UserInputCopyWith<$Res>  {
  factory $UserInputCopyWith(UserInput value, $Res Function(UserInput) _then) = _$UserInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String email, String username, AvatarInput? dynamicAvatar, List<String> referencesIds, String? categoryId, List<CustomField> customFields, List<String> tagsIds, List<String> mappitAssetsIds, int historicalDaysAllowed, String? brickhousePermissionTierId,@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole, String? sdmCode, String? password, UserPreferencesInput? preferences
});


$AvatarInputCopyWith<$Res>? get dynamicAvatar;$UserPreferencesInputCopyWith<$Res>? get preferences;

}
/// @nodoc
class _$UserInputCopyWithImpl<$Res>
    implements $UserInputCopyWith<$Res> {
  _$UserInputCopyWithImpl(this._self, this._then);

  final UserInput _self;
  final $Res Function(UserInput) _then;

/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? email = null,Object? username = null,Object? dynamicAvatar = freezed,Object? referencesIds = null,Object? categoryId = freezed,Object? customFields = null,Object? tagsIds = null,Object? mappitAssetsIds = null,Object? historicalDaysAllowed = null,Object? brickhousePermissionTierId = freezed,Object? brickhouseRole = freezed,Object? sdmCode = freezed,Object? password = freezed,Object? preferences = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as AvatarInput?,referencesIds: null == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,customFields: null == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,tagsIds: null == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>,mappitAssetsIds: null == mappitAssetsIds ? _self.mappitAssetsIds : mappitAssetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,historicalDaysAllowed: null == historicalDaysAllowed ? _self.historicalDaysAllowed : historicalDaysAllowed // ignore: cast_nullable_to_non_nullable
as int,brickhousePermissionTierId: freezed == brickhousePermissionTierId ? _self.brickhousePermissionTierId : brickhousePermissionTierId // ignore: cast_nullable_to_non_nullable
as String?,brickhouseRole: freezed == brickhouseRole ? _self.brickhouseRole : brickhouseRole // ignore: cast_nullable_to_non_nullable
as BrickhouseUserRole?,sdmCode: freezed == sdmCode ? _self.sdmCode : sdmCode // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferencesInput?,
  ));
}
/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesInputCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesInputCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserInput].
extension UserInputPatterns on UserInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInput value)  $default,){
final _that = this;
switch (_that) {
case _UserInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInput value)?  $default,){
final _that = this;
switch (_that) {
case _UserInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String email,  String username,  AvatarInput? dynamicAvatar,  List<String> referencesIds,  String? categoryId,  List<CustomField> customFields,  List<String> tagsIds,  List<String> mappitAssetsIds,  int historicalDaysAllowed,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  String? password,  UserPreferencesInput? preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInput() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.categoryId,_that.customFields,_that.tagsIds,_that.mappitAssetsIds,_that.historicalDaysAllowed,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.password,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String email,  String username,  AvatarInput? dynamicAvatar,  List<String> referencesIds,  String? categoryId,  List<CustomField> customFields,  List<String> tagsIds,  List<String> mappitAssetsIds,  int historicalDaysAllowed,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  String? password,  UserPreferencesInput? preferences)  $default,) {final _that = this;
switch (_that) {
case _UserInput():
return $default(_that.id,_that.name,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.categoryId,_that.customFields,_that.tagsIds,_that.mappitAssetsIds,_that.historicalDaysAllowed,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.password,_that.preferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String email,  String username,  AvatarInput? dynamicAvatar,  List<String> referencesIds,  String? categoryId,  List<CustomField> customFields,  List<String> tagsIds,  List<String> mappitAssetsIds,  int historicalDaysAllowed,  String? brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole,  String? sdmCode,  String? password,  UserPreferencesInput? preferences)?  $default,) {final _that = this;
switch (_that) {
case _UserInput() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.username,_that.dynamicAvatar,_that.referencesIds,_that.categoryId,_that.customFields,_that.tagsIds,_that.mappitAssetsIds,_that.historicalDaysAllowed,_that.brickhousePermissionTierId,_that.brickhouseRole,_that.sdmCode,_that.password,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInput extends UserInput {
   _UserInput({this.id, this.name = '', this.email = '', this.username = '', this.dynamicAvatar, this.referencesIds = const [], this.categoryId, this.customFields = const [], this.tagsIds = const [], this.mappitAssetsIds = const [], this.historicalDaysAllowed = 1, this.brickhousePermissionTierId, @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) this.brickhouseRole, this.sdmCode, this.password, this.preferences}): super._();
  factory _UserInput.fromJson(Map<String, dynamic> json) => _$UserInputFromJson(json);

/// The user ID. When creating a new user, this value should be null.
@override  String? id;
/// The user name.
@override@JsonKey()  String name;
/// The user email.
@override@JsonKey()  String email;
/// The username.
@override@JsonKey()  String username;
/// The user avatar.
@override  AvatarInput? dynamicAvatar;
/// The list of references IDs.
@override@JsonKey()  List<String> referencesIds;
/// The user category ID.
@override  String? categoryId;
/// The list of custom fields.
@override@JsonKey()  List<CustomField> customFields;
/// The list of tags IDs.
@override@JsonKey()  List<String> tagsIds;
/// The list of assets IDs.
/// This field is only for `Mappit` use.
@override@JsonKey()  List<String> mappitAssetsIds;
/// The number of days allowed to access historical data.
/// This field is only for `Mappit` use.
@override@JsonKey()  int historicalDaysAllowed;
/// The Brickhouse permission tier ID for access level of a user.
@override  String? brickhousePermissionTierId;
/// The Brickhouse user role.
@override@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown)  BrickhouseUserRole? brickhouseRole;
/// The SDM code.
@override  String? sdmCode;
/// The default password, if allowed by the form.
@override  String? password;
/// The user preferences.
@override  UserPreferencesInput? preferences;

/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInputCopyWith<_UserInput> get copyWith => __$UserInputCopyWithImpl<_UserInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInputToJson(this, );
}



@override
String toString() {
  return 'UserInput(id: $id, name: $name, email: $email, username: $username, dynamicAvatar: $dynamicAvatar, referencesIds: $referencesIds, categoryId: $categoryId, customFields: $customFields, tagsIds: $tagsIds, mappitAssetsIds: $mappitAssetsIds, historicalDaysAllowed: $historicalDaysAllowed, brickhousePermissionTierId: $brickhousePermissionTierId, brickhouseRole: $brickhouseRole, sdmCode: $sdmCode, password: $password, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$UserInputCopyWith<$Res> implements $UserInputCopyWith<$Res> {
  factory _$UserInputCopyWith(_UserInput value, $Res Function(_UserInput) _then) = __$UserInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String email, String username, AvatarInput? dynamicAvatar, List<String> referencesIds, String? categoryId, List<CustomField> customFields, List<String> tagsIds, List<String> mappitAssetsIds, int historicalDaysAllowed, String? brickhousePermissionTierId,@JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole, String? sdmCode, String? password, UserPreferencesInput? preferences
});


@override $AvatarInputCopyWith<$Res>? get dynamicAvatar;@override $UserPreferencesInputCopyWith<$Res>? get preferences;

}
/// @nodoc
class __$UserInputCopyWithImpl<$Res>
    implements _$UserInputCopyWith<$Res> {
  __$UserInputCopyWithImpl(this._self, this._then);

  final _UserInput _self;
  final $Res Function(_UserInput) _then;

/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? email = null,Object? username = null,Object? dynamicAvatar = freezed,Object? referencesIds = null,Object? categoryId = freezed,Object? customFields = null,Object? tagsIds = null,Object? mappitAssetsIds = null,Object? historicalDaysAllowed = null,Object? brickhousePermissionTierId = freezed,Object? brickhouseRole = freezed,Object? sdmCode = freezed,Object? password = freezed,Object? preferences = freezed,}) {
  return _then(_UserInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as AvatarInput?,referencesIds: null == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,customFields: null == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>,tagsIds: null == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>,mappitAssetsIds: null == mappitAssetsIds ? _self.mappitAssetsIds : mappitAssetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,historicalDaysAllowed: null == historicalDaysAllowed ? _self.historicalDaysAllowed : historicalDaysAllowed // ignore: cast_nullable_to_non_nullable
as int,brickhousePermissionTierId: freezed == brickhousePermissionTierId ? _self.brickhousePermissionTierId : brickhousePermissionTierId // ignore: cast_nullable_to_non_nullable
as String?,brickhouseRole: freezed == brickhouseRole ? _self.brickhouseRole : brickhouseRole // ignore: cast_nullable_to_non_nullable
as BrickhouseUserRole?,sdmCode: freezed == sdmCode ? _self.sdmCode : sdmCode // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as UserPreferencesInput?,
  ));
}

/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}/// Create a copy of UserInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesInputCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $UserPreferencesInputCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

// dart format on
