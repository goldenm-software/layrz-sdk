// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vision_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisionProfile {

/// Unique identifier of the profile.
 String get id;/// Name of the profile.
 String get name;/// ID of the protocol used by this profile.
 String? get protocolId;/// The protocol used by this profile.
 VisionProtocol? get protocol;/// The configuration of the profile.
 Map<String, dynamic>? get config;/// The list of granted access entries for this vision profile.
 List<Access>? get access;/// The last measurement of the profile, or null if there is no
/// measurement yet.
 VisionGaugeResult? get lastMeasurement;
/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionProfileCopyWith<VisionProfile> get copyWith => _$VisionProfileCopyWithImpl<VisionProfile>(this as VisionProfile, _$identity);

  /// Serializes this VisionProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisionProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&const DeepCollectionEquality().equals(other.config, config)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.lastMeasurement, lastMeasurement) || other.lastMeasurement == lastMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,protocolId,protocol,const DeepCollectionEquality().hash(config),const DeepCollectionEquality().hash(access),lastMeasurement);

@override
String toString() {
  return 'VisionProfile(id: $id, name: $name, protocolId: $protocolId, protocol: $protocol, config: $config, access: $access, lastMeasurement: $lastMeasurement)';
}


}

/// @nodoc
abstract mixin class $VisionProfileCopyWith<$Res>  {
  factory $VisionProfileCopyWith(VisionProfile value, $Res Function(VisionProfile) _then) = _$VisionProfileCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? protocolId, VisionProtocol? protocol, Map<String, dynamic>? config, List<Access>? access, VisionGaugeResult? lastMeasurement
});


$VisionProtocolCopyWith<$Res>? get protocol;$VisionGaugeResultCopyWith<$Res>? get lastMeasurement;

}
/// @nodoc
class _$VisionProfileCopyWithImpl<$Res>
    implements $VisionProfileCopyWith<$Res> {
  _$VisionProfileCopyWithImpl(this._self, this._then);

  final VisionProfile _self;
  final $Res Function(VisionProfile) _then;

/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? protocolId = freezed,Object? protocol = freezed,Object? config = freezed,Object? access = freezed,Object? lastMeasurement = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as VisionProtocol?,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,lastMeasurement: freezed == lastMeasurement ? _self.lastMeasurement : lastMeasurement // ignore: cast_nullable_to_non_nullable
as VisionGaugeResult?,
  ));
}
/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $VisionProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionGaugeResultCopyWith<$Res>? get lastMeasurement {
    if (_self.lastMeasurement == null) {
    return null;
  }

  return $VisionGaugeResultCopyWith<$Res>(_self.lastMeasurement!, (value) {
    return _then(_self.copyWith(lastMeasurement: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisionProfile].
extension VisionProfilePatterns on VisionProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionProfile value)  $default,){
final _that = this;
switch (_that) {
case _VisionProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionProfile value)?  $default,){
final _that = this;
switch (_that) {
case _VisionProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? protocolId,  VisionProtocol? protocol,  Map<String, dynamic>? config,  List<Access>? access,  VisionGaugeResult? lastMeasurement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionProfile() when $default != null:
return $default(_that.id,_that.name,_that.protocolId,_that.protocol,_that.config,_that.access,_that.lastMeasurement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? protocolId,  VisionProtocol? protocol,  Map<String, dynamic>? config,  List<Access>? access,  VisionGaugeResult? lastMeasurement)  $default,) {final _that = this;
switch (_that) {
case _VisionProfile():
return $default(_that.id,_that.name,_that.protocolId,_that.protocol,_that.config,_that.access,_that.lastMeasurement);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? protocolId,  VisionProtocol? protocol,  Map<String, dynamic>? config,  List<Access>? access,  VisionGaugeResult? lastMeasurement)?  $default,) {final _that = this;
switch (_that) {
case _VisionProfile() when $default != null:
return $default(_that.id,_that.name,_that.protocolId,_that.protocol,_that.config,_that.access,_that.lastMeasurement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionProfile implements VisionProfile {
  const _VisionProfile({required this.id, required this.name, this.protocolId, this.protocol, this.config, this.access, this.lastMeasurement});
  factory _VisionProfile.fromJson(Map<String, dynamic> json) => _$VisionProfileFromJson(json);

/// Unique identifier of the profile.
@override final  String id;
/// Name of the profile.
@override final  String name;
/// ID of the protocol used by this profile.
@override final  String? protocolId;
/// The protocol used by this profile.
@override final  VisionProtocol? protocol;
/// The configuration of the profile.
@override final  Map<String, dynamic>? config;
/// The list of granted access entries for this vision profile.
@override final  List<Access>? access;
/// The last measurement of the profile, or null if there is no
/// measurement yet.
@override final  VisionGaugeResult? lastMeasurement;

/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionProfileCopyWith<_VisionProfile> get copyWith => __$VisionProfileCopyWithImpl<_VisionProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisionProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&const DeepCollectionEquality().equals(other.config, config)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.lastMeasurement, lastMeasurement) || other.lastMeasurement == lastMeasurement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,protocolId,protocol,const DeepCollectionEquality().hash(config),const DeepCollectionEquality().hash(access),lastMeasurement);

@override
String toString() {
  return 'VisionProfile(id: $id, name: $name, protocolId: $protocolId, protocol: $protocol, config: $config, access: $access, lastMeasurement: $lastMeasurement)';
}


}

/// @nodoc
abstract mixin class _$VisionProfileCopyWith<$Res> implements $VisionProfileCopyWith<$Res> {
  factory _$VisionProfileCopyWith(_VisionProfile value, $Res Function(_VisionProfile) _then) = __$VisionProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? protocolId, VisionProtocol? protocol, Map<String, dynamic>? config, List<Access>? access, VisionGaugeResult? lastMeasurement
});


@override $VisionProtocolCopyWith<$Res>? get protocol;@override $VisionGaugeResultCopyWith<$Res>? get lastMeasurement;

}
/// @nodoc
class __$VisionProfileCopyWithImpl<$Res>
    implements _$VisionProfileCopyWith<$Res> {
  __$VisionProfileCopyWithImpl(this._self, this._then);

  final _VisionProfile _self;
  final $Res Function(_VisionProfile) _then;

/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? protocolId = freezed,Object? protocol = freezed,Object? config = freezed,Object? access = freezed,Object? lastMeasurement = freezed,}) {
  return _then(_VisionProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as VisionProtocol?,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,lastMeasurement: freezed == lastMeasurement ? _self.lastMeasurement : lastMeasurement // ignore: cast_nullable_to_non_nullable
as VisionGaugeResult?,
  ));
}

/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $VisionProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of VisionProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisionGaugeResultCopyWith<$Res>? get lastMeasurement {
    if (_self.lastMeasurement == null) {
    return null;
  }

  return $VisionGaugeResultCopyWith<$Res>(_self.lastMeasurement!, (value) {
    return _then(_self.copyWith(lastMeasurement: value));
  });
}
}


/// @nodoc
mixin _$VisionProtocol {

/// [id] is the ID of the entity. This ID is unique.
 String get id;/// [name] is the protocol name.
 String get name;/// [color] is the color of the protocol.
@ColorConverter() Color get color;/// [isEnabled] is the current status of the protocol.
 bool get isEnabled;/// [requiredFields] is the list of required fields for the protocol.
 List<CredentialField> get requiredFields;/// [usage] is the usage of the protocol. This field should be only used to show the
/// popularity of the protocol. For marketing purposes.
 int? get usage;/// [dynamicIcon] is the icon of the protocol.
 Avatar? get dynamicIcon;
/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionProtocolCopyWith<VisionProtocol> get copyWith => _$VisionProtocolCopyWithImpl<VisionProtocol>(this as VisionProtocol, _$identity);

  /// Serializes this VisionProtocol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisionProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(requiredFields),usage,dynamicIcon);

@override
String toString() {
  return 'VisionProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, requiredFields: $requiredFields, usage: $usage, dynamicIcon: $dynamicIcon)';
}


}

/// @nodoc
abstract mixin class $VisionProtocolCopyWith<$Res>  {
  factory $VisionProtocolCopyWith(VisionProtocol value, $Res Function(VisionProtocol) _then) = _$VisionProtocolCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<CredentialField> requiredFields, int? usage, Avatar? dynamicIcon
});


$AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$VisionProtocolCopyWithImpl<$Res>
    implements $VisionProtocolCopyWith<$Res> {
  _$VisionProtocolCopyWithImpl(this._self, this._then);

  final VisionProtocol _self;
  final $Res Function(VisionProtocol) _then;

/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? requiredFields = null,Object? usage = freezed,Object? dynamicIcon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,
  ));
}
/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisionProtocol].
extension VisionProtocolPatterns on VisionProtocol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionProtocol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionProtocol value)  $default,){
final _that = this;
switch (_that) {
case _VisionProtocol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _VisionProtocol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields,  int? usage,  Avatar? dynamicIcon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields,_that.usage,_that.dynamicIcon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields,  int? usage,  Avatar? dynamicIcon)  $default,) {final _that = this;
switch (_that) {
case _VisionProtocol():
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields,_that.usage,_that.dynamicIcon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<CredentialField> requiredFields,  int? usage,  Avatar? dynamicIcon)?  $default,) {final _that = this;
switch (_that) {
case _VisionProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.requiredFields,_that.usage,_that.dynamicIcon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionProtocol implements VisionProtocol {
  const _VisionProtocol({required this.id, required this.name, @ColorConverter() required this.color, required this.isEnabled, this.requiredFields = const [], this.usage, this.dynamicIcon});
  factory _VisionProtocol.fromJson(Map<String, dynamic> json) => _$VisionProtocolFromJson(json);

/// [id] is the ID of the entity. This ID is unique.
@override final  String id;
/// [name] is the protocol name.
@override final  String name;
/// [color] is the color of the protocol.
@override@ColorConverter() final  Color color;
/// [isEnabled] is the current status of the protocol.
@override final  bool isEnabled;
/// [requiredFields] is the list of required fields for the protocol.
@override@JsonKey() final  List<CredentialField> requiredFields;
/// [usage] is the usage of the protocol. This field should be only used to show the
/// popularity of the protocol. For marketing purposes.
@override final  int? usage;
/// [dynamicIcon] is the icon of the protocol.
@override final  Avatar? dynamicIcon;

/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionProtocolCopyWith<_VisionProtocol> get copyWith => __$VisionProtocolCopyWithImpl<_VisionProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionProtocolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisionProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(requiredFields),usage,dynamicIcon);

@override
String toString() {
  return 'VisionProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, requiredFields: $requiredFields, usage: $usage, dynamicIcon: $dynamicIcon)';
}


}

/// @nodoc
abstract mixin class _$VisionProtocolCopyWith<$Res> implements $VisionProtocolCopyWith<$Res> {
  factory _$VisionProtocolCopyWith(_VisionProtocol value, $Res Function(_VisionProtocol) _then) = __$VisionProtocolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<CredentialField> requiredFields, int? usage, Avatar? dynamicIcon
});


@override $AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$VisionProtocolCopyWithImpl<$Res>
    implements _$VisionProtocolCopyWith<$Res> {
  __$VisionProtocolCopyWithImpl(this._self, this._then);

  final _VisionProtocol _self;
  final $Res Function(_VisionProtocol) _then;

/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? requiredFields = null,Object? usage = freezed,Object? dynamicIcon = freezed,}) {
  return _then(_VisionProtocol(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,
  ));
}

/// Create a copy of VisionProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}
}


/// @nodoc
mixin _$VisionProtocolInput {

/// [id] ID of the protocol entity. This ID is unique.
 String? get id;/// [id] ID of the protocol entity. This ID is unique.
 set id(String? value);/// [name] Name of the protocol.
 String get name;/// [name] Name of the protocol.
 set name(String value);/// [color] Indicates the color assigned to the protocol.
@ColorConverter() Color get color;/// [color] Indicates the color assigned to the protocol.
@ColorConverter() set color(Color value);/// [dynamicIcon] is the icon of the protocol.
 AvatarInput? get dynamicIcon;/// [dynamicIcon] is the icon of the protocol.
 set dynamicIcon(AvatarInput? value);/// [requiredFields] is the list of required fields for the protocol.
 List<CredentialField> get requiredFields;/// [requiredFields] is the list of required fields for the protocol.
 set requiredFields(List<CredentialField> value);/// [isEnabled] is the current status of the protocol.
 bool get isEnabled;/// [isEnabled] is the current status of the protocol.
 set isEnabled(bool value);
/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionProtocolInputCopyWith<VisionProtocolInput> get copyWith => _$VisionProtocolInputCopyWithImpl<VisionProtocolInput>(this as VisionProtocolInput, _$identity);

  /// Serializes this VisionProtocolInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'VisionProtocolInput(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class $VisionProtocolInputCopyWith<$Res>  {
  factory $VisionProtocolInputCopyWith(VisionProtocolInput value, $Res Function(VisionProtocolInput) _then) = _$VisionProtocolInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name,@ColorConverter() Color color, AvatarInput? dynamicIcon, List<CredentialField> requiredFields, bool isEnabled
});


$AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$VisionProtocolInputCopyWithImpl<$Res>
    implements $VisionProtocolInputCopyWith<$Res> {
  _$VisionProtocolInputCopyWithImpl(this._self, this._then);

  final VisionProtocolInput _self;
  final $Res Function(VisionProtocolInput) _then;

/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisionProtocolInput].
extension VisionProtocolInputPatterns on VisionProtocolInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionProtocolInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionProtocolInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionProtocolInput value)  $default,){
final _that = this;
switch (_that) {
case _VisionProtocolInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionProtocolInput value)?  $default,){
final _that = this;
switch (_that) {
case _VisionProtocolInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name, @ColorConverter()  Color color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name, @ColorConverter()  Color color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled)  $default,) {final _that = this;
switch (_that) {
case _VisionProtocolInput():
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name, @ColorConverter()  Color color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled)?  $default,) {final _that = this;
switch (_that) {
case _VisionProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionProtocolInput extends VisionProtocolInput {
   _VisionProtocolInput({this.id, this.name = '', @ColorConverter() this.color = const Color(0xFF2196F3), this.dynamicIcon, this.requiredFields = const [], this.isEnabled = true}): super._();
  factory _VisionProtocolInput.fromJson(Map<String, dynamic> json) => _$VisionProtocolInputFromJson(json);

/// [id] ID of the protocol entity. This ID is unique.
@override  String? id;
/// [name] Name of the protocol.
@override@JsonKey()  String name;
/// [color] Indicates the color assigned to the protocol.
@override@JsonKey()@ColorConverter()  Color color;
/// [dynamicIcon] is the icon of the protocol.
@override  AvatarInput? dynamicIcon;
/// [requiredFields] is the list of required fields for the protocol.
@override@JsonKey()  List<CredentialField> requiredFields;
/// [isEnabled] is the current status of the protocol.
@override@JsonKey()  bool isEnabled;

/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionProtocolInputCopyWith<_VisionProtocolInput> get copyWith => __$VisionProtocolInputCopyWithImpl<_VisionProtocolInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionProtocolInputToJson(this, );
}



@override
String toString() {
  return 'VisionProtocolInput(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class _$VisionProtocolInputCopyWith<$Res> implements $VisionProtocolInputCopyWith<$Res> {
  factory _$VisionProtocolInputCopyWith(_VisionProtocolInput value, $Res Function(_VisionProtocolInput) _then) = __$VisionProtocolInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name,@ColorConverter() Color color, AvatarInput? dynamicIcon, List<CredentialField> requiredFields, bool isEnabled
});


@override $AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$VisionProtocolInputCopyWithImpl<$Res>
    implements _$VisionProtocolInputCopyWith<$Res> {
  __$VisionProtocolInputCopyWithImpl(this._self, this._then);

  final _VisionProtocolInput _self;
  final $Res Function(_VisionProtocolInput) _then;

/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = null,}) {
  return _then(_VisionProtocolInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of VisionProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarInputCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarInputCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}
}


/// @nodoc
mixin _$VisionGaugeResult {

/// [id] is the unique identifier of the measurement.
 String get id;/// [result] is the result of the measurement.
 double get result;/// [performedAt] is the date and time when the measurement was performed.
@TimestampConverter() DateTime get performedAt;
/// Create a copy of VisionGaugeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisionGaugeResultCopyWith<VisionGaugeResult> get copyWith => _$VisionGaugeResultCopyWithImpl<VisionGaugeResult>(this as VisionGaugeResult, _$identity);

  /// Serializes this VisionGaugeResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisionGaugeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.result, result) || other.result == result)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,result,performedAt);

@override
String toString() {
  return 'VisionGaugeResult(id: $id, result: $result, performedAt: $performedAt)';
}


}

/// @nodoc
abstract mixin class $VisionGaugeResultCopyWith<$Res>  {
  factory $VisionGaugeResultCopyWith(VisionGaugeResult value, $Res Function(VisionGaugeResult) _then) = _$VisionGaugeResultCopyWithImpl;
@useResult
$Res call({
 String id, double result,@TimestampConverter() DateTime performedAt
});




}
/// @nodoc
class _$VisionGaugeResultCopyWithImpl<$Res>
    implements $VisionGaugeResultCopyWith<$Res> {
  _$VisionGaugeResultCopyWithImpl(this._self, this._then);

  final VisionGaugeResult _self;
  final $Res Function(VisionGaugeResult) _then;

/// Create a copy of VisionGaugeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? result = null,Object? performedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as double,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [VisionGaugeResult].
extension VisionGaugeResultPatterns on VisionGaugeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisionGaugeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisionGaugeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisionGaugeResult value)  $default,){
final _that = this;
switch (_that) {
case _VisionGaugeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisionGaugeResult value)?  $default,){
final _that = this;
switch (_that) {
case _VisionGaugeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double result, @TimestampConverter()  DateTime performedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisionGaugeResult() when $default != null:
return $default(_that.id,_that.result,_that.performedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double result, @TimestampConverter()  DateTime performedAt)  $default,) {final _that = this;
switch (_that) {
case _VisionGaugeResult():
return $default(_that.id,_that.result,_that.performedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double result, @TimestampConverter()  DateTime performedAt)?  $default,) {final _that = this;
switch (_that) {
case _VisionGaugeResult() when $default != null:
return $default(_that.id,_that.result,_that.performedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisionGaugeResult implements VisionGaugeResult {
  const _VisionGaugeResult({required this.id, required this.result, @TimestampConverter() required this.performedAt});
  factory _VisionGaugeResult.fromJson(Map<String, dynamic> json) => _$VisionGaugeResultFromJson(json);

/// [id] is the unique identifier of the measurement.
@override final  String id;
/// [result] is the result of the measurement.
@override final  double result;
/// [performedAt] is the date and time when the measurement was performed.
@override@TimestampConverter() final  DateTime performedAt;

/// Create a copy of VisionGaugeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisionGaugeResultCopyWith<_VisionGaugeResult> get copyWith => __$VisionGaugeResultCopyWithImpl<_VisionGaugeResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisionGaugeResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisionGaugeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.result, result) || other.result == result)&&(identical(other.performedAt, performedAt) || other.performedAt == performedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,result,performedAt);

@override
String toString() {
  return 'VisionGaugeResult(id: $id, result: $result, performedAt: $performedAt)';
}


}

/// @nodoc
abstract mixin class _$VisionGaugeResultCopyWith<$Res> implements $VisionGaugeResultCopyWith<$Res> {
  factory _$VisionGaugeResultCopyWith(_VisionGaugeResult value, $Res Function(_VisionGaugeResult) _then) = __$VisionGaugeResultCopyWithImpl;
@override @useResult
$Res call({
 String id, double result,@TimestampConverter() DateTime performedAt
});




}
/// @nodoc
class __$VisionGaugeResultCopyWithImpl<$Res>
    implements _$VisionGaugeResultCopyWith<$Res> {
  __$VisionGaugeResultCopyWithImpl(this._self, this._then);

  final _VisionGaugeResult _self;
  final $Res Function(_VisionGaugeResult) _then;

/// Create a copy of VisionGaugeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? result = null,Object? performedAt = null,}) {
  return _then(_VisionGaugeResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as double,performedAt: null == performedAt ? _self.performedAt : performedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
