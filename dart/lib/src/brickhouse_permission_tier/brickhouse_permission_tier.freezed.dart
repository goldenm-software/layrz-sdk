// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brickhouse_permission_tier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BHSPermissionTier {

/// Unique identifier for this permission tier.
 String get id;/// Human-readable name of the permission tier.
 String get name;/// The numeric level of this permission tier.
 int get tierLevel;/// The billing period this permission tier is invoiced under.
 BrickhouseBillingPeriod? get billingPeriod;/// A human-readable description of this permission tier.
 String? get description;/// Arbitrary custom properties associated with this permission tier.
 Map<String, dynamic>? get customProperties;/// The list of users assigned to this permission tier.
 List<User>? get users;/// The list of granted access entries for this permission tier.
 List<Access>? get access;
/// Create a copy of BHSPermissionTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BHSPermissionTierCopyWith<BHSPermissionTier> get copyWith => _$BHSPermissionTierCopyWithImpl<BHSPermissionTier>(this as BHSPermissionTier, _$identity);

  /// Serializes this BHSPermissionTier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BHSPermissionTier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tierLevel, tierLevel) || other.tierLevel == tierLevel)&&(identical(other.billingPeriod, billingPeriod) || other.billingPeriod == billingPeriod)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.customProperties, customProperties)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,tierLevel,billingPeriod,description,const DeepCollectionEquality().hash(customProperties),const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'BHSPermissionTier(id: $id, name: $name, tierLevel: $tierLevel, billingPeriod: $billingPeriod, description: $description, customProperties: $customProperties, users: $users, access: $access)';
}


}

/// @nodoc
abstract mixin class $BHSPermissionTierCopyWith<$Res>  {
  factory $BHSPermissionTierCopyWith(BHSPermissionTier value, $Res Function(BHSPermissionTier) _then) = _$BHSPermissionTierCopyWithImpl;
@useResult
$Res call({
 String id, String name, int tierLevel, BrickhouseBillingPeriod? billingPeriod, String? description, Map<String, dynamic>? customProperties, List<User>? users, List<Access>? access
});




}
/// @nodoc
class _$BHSPermissionTierCopyWithImpl<$Res>
    implements $BHSPermissionTierCopyWith<$Res> {
  _$BHSPermissionTierCopyWithImpl(this._self, this._then);

  final BHSPermissionTier _self;
  final $Res Function(BHSPermissionTier) _then;

/// Create a copy of BHSPermissionTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? tierLevel = null,Object? billingPeriod = freezed,Object? description = freezed,Object? customProperties = freezed,Object? users = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tierLevel: null == tierLevel ? _self.tierLevel : tierLevel // ignore: cast_nullable_to_non_nullable
as int,billingPeriod: freezed == billingPeriod ? _self.billingPeriod : billingPeriod // ignore: cast_nullable_to_non_nullable
as BrickhouseBillingPeriod?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,customProperties: freezed == customProperties ? _self.customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BHSPermissionTier].
extension BHSPermissionTierPatterns on BHSPermissionTier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BHSPermissionTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BHSPermissionTier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BHSPermissionTier value)  $default,){
final _that = this;
switch (_that) {
case _BHSPermissionTier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BHSPermissionTier value)?  $default,){
final _that = this;
switch (_that) {
case _BHSPermissionTier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int tierLevel,  BrickhouseBillingPeriod? billingPeriod,  String? description,  Map<String, dynamic>? customProperties,  List<User>? users,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BHSPermissionTier() when $default != null:
return $default(_that.id,_that.name,_that.tierLevel,_that.billingPeriod,_that.description,_that.customProperties,_that.users,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int tierLevel,  BrickhouseBillingPeriod? billingPeriod,  String? description,  Map<String, dynamic>? customProperties,  List<User>? users,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _BHSPermissionTier():
return $default(_that.id,_that.name,_that.tierLevel,_that.billingPeriod,_that.description,_that.customProperties,_that.users,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int tierLevel,  BrickhouseBillingPeriod? billingPeriod,  String? description,  Map<String, dynamic>? customProperties,  List<User>? users,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _BHSPermissionTier() when $default != null:
return $default(_that.id,_that.name,_that.tierLevel,_that.billingPeriod,_that.description,_that.customProperties,_that.users,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BHSPermissionTier implements BHSPermissionTier {
  const _BHSPermissionTier({required this.id, required this.name, required this.tierLevel, this.billingPeriod, this.description, this.customProperties, this.users, this.access});
  factory _BHSPermissionTier.fromJson(Map<String, dynamic> json) => _$BHSPermissionTierFromJson(json);

/// Unique identifier for this permission tier.
@override final  String id;
/// Human-readable name of the permission tier.
@override final  String name;
/// The numeric level of this permission tier.
@override final  int tierLevel;
/// The billing period this permission tier is invoiced under.
@override final  BrickhouseBillingPeriod? billingPeriod;
/// A human-readable description of this permission tier.
@override final  String? description;
/// Arbitrary custom properties associated with this permission tier.
@override final  Map<String, dynamic>? customProperties;
/// The list of users assigned to this permission tier.
@override final  List<User>? users;
/// The list of granted access entries for this permission tier.
@override final  List<Access>? access;

/// Create a copy of BHSPermissionTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BHSPermissionTierCopyWith<_BHSPermissionTier> get copyWith => __$BHSPermissionTierCopyWithImpl<_BHSPermissionTier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BHSPermissionTierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BHSPermissionTier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tierLevel, tierLevel) || other.tierLevel == tierLevel)&&(identical(other.billingPeriod, billingPeriod) || other.billingPeriod == billingPeriod)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.customProperties, customProperties)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,tierLevel,billingPeriod,description,const DeepCollectionEquality().hash(customProperties),const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'BHSPermissionTier(id: $id, name: $name, tierLevel: $tierLevel, billingPeriod: $billingPeriod, description: $description, customProperties: $customProperties, users: $users, access: $access)';
}


}

/// @nodoc
abstract mixin class _$BHSPermissionTierCopyWith<$Res> implements $BHSPermissionTierCopyWith<$Res> {
  factory _$BHSPermissionTierCopyWith(_BHSPermissionTier value, $Res Function(_BHSPermissionTier) _then) = __$BHSPermissionTierCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int tierLevel, BrickhouseBillingPeriod? billingPeriod, String? description, Map<String, dynamic>? customProperties, List<User>? users, List<Access>? access
});




}
/// @nodoc
class __$BHSPermissionTierCopyWithImpl<$Res>
    implements _$BHSPermissionTierCopyWith<$Res> {
  __$BHSPermissionTierCopyWithImpl(this._self, this._then);

  final _BHSPermissionTier _self;
  final $Res Function(_BHSPermissionTier) _then;

/// Create a copy of BHSPermissionTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? tierLevel = null,Object? billingPeriod = freezed,Object? description = freezed,Object? customProperties = freezed,Object? users = freezed,Object? access = freezed,}) {
  return _then(_BHSPermissionTier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tierLevel: null == tierLevel ? _self.tierLevel : tierLevel // ignore: cast_nullable_to_non_nullable
as int,billingPeriod: freezed == billingPeriod ? _self.billingPeriod : billingPeriod // ignore: cast_nullable_to_non_nullable
as BrickhouseBillingPeriod?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,customProperties: freezed == customProperties ? _self.customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}


}


/// @nodoc
mixin _$BHSPermissionTierInput {

/// Unique identifier for this permission tier. Null when creating a
/// new tier.
 String? get id;/// Unique identifier for this permission tier. Null when creating a
/// new tier.
 set id(String? value);/// Human-readable name of the permission tier.
 String? get name;/// Human-readable name of the permission tier.
 set name(String? value);/// A human-readable description of this permission tier.
 String? get description;/// A human-readable description of this permission tier.
 set description(String? value);/// The billing period this permission tier is invoiced under.
 BrickhouseBillingPeriod? get billingPeriod;/// The billing period this permission tier is invoiced under.
 set billingPeriod(BrickhouseBillingPeriod? value);/// The numeric level of this permission tier.
 int get tierLevel;/// The numeric level of this permission tier.
 set tierLevel(int value);/// Arbitrary custom properties associated with this permission tier.
 Map<String, dynamic>? get customProperties;/// Arbitrary custom properties associated with this permission tier.
 set customProperties(Map<String, dynamic>? value);
/// Create a copy of BHSPermissionTierInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BHSPermissionTierInputCopyWith<BHSPermissionTierInput> get copyWith => _$BHSPermissionTierInputCopyWithImpl<BHSPermissionTierInput>(this as BHSPermissionTierInput, _$identity);

  /// Serializes this BHSPermissionTierInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'BHSPermissionTierInput(id: $id, name: $name, description: $description, billingPeriod: $billingPeriod, tierLevel: $tierLevel, customProperties: $customProperties)';
}


}

/// @nodoc
abstract mixin class $BHSPermissionTierInputCopyWith<$Res>  {
  factory $BHSPermissionTierInputCopyWith(BHSPermissionTierInput value, $Res Function(BHSPermissionTierInput) _then) = _$BHSPermissionTierInputCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, BrickhouseBillingPeriod? billingPeriod, int tierLevel, Map<String, dynamic>? customProperties
});




}
/// @nodoc
class _$BHSPermissionTierInputCopyWithImpl<$Res>
    implements $BHSPermissionTierInputCopyWith<$Res> {
  _$BHSPermissionTierInputCopyWithImpl(this._self, this._then);

  final BHSPermissionTierInput _self;
  final $Res Function(BHSPermissionTierInput) _then;

/// Create a copy of BHSPermissionTierInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? billingPeriod = freezed,Object? tierLevel = null,Object? customProperties = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,billingPeriod: freezed == billingPeriod ? _self.billingPeriod : billingPeriod // ignore: cast_nullable_to_non_nullable
as BrickhouseBillingPeriod?,tierLevel: null == tierLevel ? _self.tierLevel : tierLevel // ignore: cast_nullable_to_non_nullable
as int,customProperties: freezed == customProperties ? _self.customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BHSPermissionTierInput].
extension BHSPermissionTierInputPatterns on BHSPermissionTierInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BHSPermissionTierInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BHSPermissionTierInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BHSPermissionTierInput value)  $default,){
final _that = this;
switch (_that) {
case _BHSPermissionTierInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BHSPermissionTierInput value)?  $default,){
final _that = this;
switch (_that) {
case _BHSPermissionTierInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  BrickhouseBillingPeriod? billingPeriod,  int tierLevel,  Map<String, dynamic>? customProperties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BHSPermissionTierInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.billingPeriod,_that.tierLevel,_that.customProperties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  BrickhouseBillingPeriod? billingPeriod,  int tierLevel,  Map<String, dynamic>? customProperties)  $default,) {final _that = this;
switch (_that) {
case _BHSPermissionTierInput():
return $default(_that.id,_that.name,_that.description,_that.billingPeriod,_that.tierLevel,_that.customProperties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  BrickhouseBillingPeriod? billingPeriod,  int tierLevel,  Map<String, dynamic>? customProperties)?  $default,) {final _that = this;
switch (_that) {
case _BHSPermissionTierInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.billingPeriod,_that.tierLevel,_that.customProperties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BHSPermissionTierInput implements BHSPermissionTierInput {
   _BHSPermissionTierInput({this.id, this.name, this.description, this.billingPeriod, this.tierLevel = 1, this.customProperties});
  factory _BHSPermissionTierInput.fromJson(Map<String, dynamic> json) => _$BHSPermissionTierInputFromJson(json);

/// Unique identifier for this permission tier. Null when creating a
/// new tier.
@override  String? id;
/// Human-readable name of the permission tier.
@override  String? name;
/// A human-readable description of this permission tier.
@override  String? description;
/// The billing period this permission tier is invoiced under.
@override  BrickhouseBillingPeriod? billingPeriod;
/// The numeric level of this permission tier.
@override@JsonKey()  int tierLevel;
/// Arbitrary custom properties associated with this permission tier.
@override  Map<String, dynamic>? customProperties;

/// Create a copy of BHSPermissionTierInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BHSPermissionTierInputCopyWith<_BHSPermissionTierInput> get copyWith => __$BHSPermissionTierInputCopyWithImpl<_BHSPermissionTierInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BHSPermissionTierInputToJson(this, );
}



@override
String toString() {
  return 'BHSPermissionTierInput(id: $id, name: $name, description: $description, billingPeriod: $billingPeriod, tierLevel: $tierLevel, customProperties: $customProperties)';
}


}

/// @nodoc
abstract mixin class _$BHSPermissionTierInputCopyWith<$Res> implements $BHSPermissionTierInputCopyWith<$Res> {
  factory _$BHSPermissionTierInputCopyWith(_BHSPermissionTierInput value, $Res Function(_BHSPermissionTierInput) _then) = __$BHSPermissionTierInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, BrickhouseBillingPeriod? billingPeriod, int tierLevel, Map<String, dynamic>? customProperties
});




}
/// @nodoc
class __$BHSPermissionTierInputCopyWithImpl<$Res>
    implements _$BHSPermissionTierInputCopyWith<$Res> {
  __$BHSPermissionTierInputCopyWithImpl(this._self, this._then);

  final _BHSPermissionTierInput _self;
  final $Res Function(_BHSPermissionTierInput) _then;

/// Create a copy of BHSPermissionTierInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? billingPeriod = freezed,Object? tierLevel = null,Object? customProperties = freezed,}) {
  return _then(_BHSPermissionTierInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,billingPeriod: freezed == billingPeriod ? _self.billingPeriod : billingPeriod // ignore: cast_nullable_to_non_nullable
as BrickhouseBillingPeriod?,tierLevel: null == tierLevel ? _self.tierLevel : tierLevel // ignore: cast_nullable_to_non_nullable
as int,customProperties: freezed == customProperties ? _self.customProperties : customProperties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
