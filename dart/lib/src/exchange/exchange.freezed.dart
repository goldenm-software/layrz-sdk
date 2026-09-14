// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExchangeProtocol {

/// Is the protocol ID, unique for each protocol.
 String get id;/// Is the name of the protocol. This name is a translation key, so check the translation
/// messages to get the display name; the key is composed as `protocols.exchange.{name}`.
 String get name;/// Is the color assigned to the protocol.
@ColorConverter() Color get color;/// Is the icon of the protocol, in its new schema.
 Avatar? get dynamicIcon;/// Is the list of required fields for the protocol. Defaults to an empty list.
 List<CredentialField> get requiredFields;/// Indicates if the protocol is enabled and available for use, or disabled and not
/// available for use.
 bool get isEnabled;/// Indicates if the protocol requires a Flespi token to work.
 bool? get requiresFlespiToken;/// Is the ACL for the Flespi token generation.
 List<FlespiAcl>? get flespiAcl;/// Is the usage of the protocol. This field should only be used to show the popularity of
/// the protocol, for marketing purposes.
 int? get usage;/// Indicates if the protocol requires assets to work.
 bool? get requiresAssets;/// Indicates if the protocol requires geofences to work.
 bool? get requiresGeofences;
/// Create a copy of ExchangeProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeProtocolCopyWith<ExchangeProtocol> get copyWith => _$ExchangeProtocolCopyWithImpl<ExchangeProtocol>(this as ExchangeProtocol, _$identity);

  /// Serializes this ExchangeProtocol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.requiresFlespiToken, requiresFlespiToken) || other.requiresFlespiToken == requiresFlespiToken)&&const DeepCollectionEquality().equals(other.flespiAcl, flespiAcl)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.requiresAssets, requiresAssets) || other.requiresAssets == requiresAssets)&&(identical(other.requiresGeofences, requiresGeofences) || other.requiresGeofences == requiresGeofences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,dynamicIcon,const DeepCollectionEquality().hash(requiredFields),isEnabled,requiresFlespiToken,const DeepCollectionEquality().hash(flespiAcl),usage,requiresAssets,requiresGeofences);

@override
String toString() {
  return 'ExchangeProtocol(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, usage: $usage, requiresAssets: $requiresAssets, requiresGeofences: $requiresGeofences)';
}


}

/// @nodoc
abstract mixin class $ExchangeProtocolCopyWith<$Res>  {
  factory $ExchangeProtocolCopyWith(ExchangeProtocol value, $Res Function(ExchangeProtocol) _then) = _$ExchangeProtocolCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, Avatar? dynamicIcon, List<CredentialField> requiredFields, bool isEnabled, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, int? usage, bool? requiresAssets, bool? requiresGeofences
});


$AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$ExchangeProtocolCopyWithImpl<$Res>
    implements $ExchangeProtocolCopyWith<$Res> {
  _$ExchangeProtocolCopyWithImpl(this._self, this._then);

  final ExchangeProtocol _self;
  final $Res Function(ExchangeProtocol) _then;

/// Create a copy of ExchangeProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = null,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? usage = freezed,Object? requiresAssets = freezed,Object? requiresGeofences = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,requiresAssets: freezed == requiresAssets ? _self.requiresAssets : requiresAssets // ignore: cast_nullable_to_non_nullable
as bool?,requiresGeofences: freezed == requiresGeofences ? _self.requiresGeofences : requiresGeofences // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ExchangeProtocol
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


/// Adds pattern-matching-related methods to [ExchangeProtocol].
extension ExchangeProtocolPatterns on ExchangeProtocol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeProtocol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeProtocol value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeProtocol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeProtocol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  int? usage,  bool? requiresAssets,  bool? requiresGeofences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.usage,_that.requiresAssets,_that.requiresGeofences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  int? usage,  bool? requiresAssets,  bool? requiresGeofences)  $default,) {final _that = this;
switch (_that) {
case _ExchangeProtocol():
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.usage,_that.requiresAssets,_that.requiresGeofences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<CredentialField> requiredFields,  bool isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  int? usage,  bool? requiresAssets,  bool? requiresGeofences)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.usage,_that.requiresAssets,_that.requiresGeofences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeProtocol extends ExchangeProtocol {
  const _ExchangeProtocol({required this.id, required this.name, @ColorConverter() required this.color, this.dynamicIcon, this.requiredFields = const [], required this.isEnabled, this.requiresFlespiToken, this.flespiAcl, this.usage, this.requiresAssets, this.requiresGeofences}): super._();
  factory _ExchangeProtocol.fromJson(Map<String, dynamic> json) => _$ExchangeProtocolFromJson(json);

/// Is the protocol ID, unique for each protocol.
@override final  String id;
/// Is the name of the protocol. This name is a translation key, so check the translation
/// messages to get the display name; the key is composed as `protocols.exchange.{name}`.
@override final  String name;
/// Is the color assigned to the protocol.
@override@ColorConverter() final  Color color;
/// Is the icon of the protocol, in its new schema.
@override final  Avatar? dynamicIcon;
/// Is the list of required fields for the protocol. Defaults to an empty list.
@override@JsonKey() final  List<CredentialField> requiredFields;
/// Indicates if the protocol is enabled and available for use, or disabled and not
/// available for use.
@override final  bool isEnabled;
/// Indicates if the protocol requires a Flespi token to work.
@override final  bool? requiresFlespiToken;
/// Is the ACL for the Flespi token generation.
@override final  List<FlespiAcl>? flespiAcl;
/// Is the usage of the protocol. This field should only be used to show the popularity of
/// the protocol, for marketing purposes.
@override final  int? usage;
/// Indicates if the protocol requires assets to work.
@override final  bool? requiresAssets;
/// Indicates if the protocol requires geofences to work.
@override final  bool? requiresGeofences;

/// Create a copy of ExchangeProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeProtocolCopyWith<_ExchangeProtocol> get copyWith => __$ExchangeProtocolCopyWithImpl<_ExchangeProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeProtocolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.requiresFlespiToken, requiresFlespiToken) || other.requiresFlespiToken == requiresFlespiToken)&&const DeepCollectionEquality().equals(other.flespiAcl, flespiAcl)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.requiresAssets, requiresAssets) || other.requiresAssets == requiresAssets)&&(identical(other.requiresGeofences, requiresGeofences) || other.requiresGeofences == requiresGeofences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,dynamicIcon,const DeepCollectionEquality().hash(requiredFields),isEnabled,requiresFlespiToken,const DeepCollectionEquality().hash(flespiAcl),usage,requiresAssets,requiresGeofences);

@override
String toString() {
  return 'ExchangeProtocol(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, usage: $usage, requiresAssets: $requiresAssets, requiresGeofences: $requiresGeofences)';
}


}

/// @nodoc
abstract mixin class _$ExchangeProtocolCopyWith<$Res> implements $ExchangeProtocolCopyWith<$Res> {
  factory _$ExchangeProtocolCopyWith(_ExchangeProtocol value, $Res Function(_ExchangeProtocol) _then) = __$ExchangeProtocolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, Avatar? dynamicIcon, List<CredentialField> requiredFields, bool isEnabled, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, int? usage, bool? requiresAssets, bool? requiresGeofences
});


@override $AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$ExchangeProtocolCopyWithImpl<$Res>
    implements _$ExchangeProtocolCopyWith<$Res> {
  __$ExchangeProtocolCopyWithImpl(this._self, this._then);

  final _ExchangeProtocol _self;
  final $Res Function(_ExchangeProtocol) _then;

/// Create a copy of ExchangeProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = null,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? usage = freezed,Object? requiresAssets = freezed,Object? requiresGeofences = freezed,}) {
  return _then(_ExchangeProtocol(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,requiresAssets: freezed == requiresAssets ? _self.requiresAssets : requiresAssets // ignore: cast_nullable_to_non_nullable
as bool?,requiresGeofences: freezed == requiresGeofences ? _self.requiresGeofences : requiresGeofences // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ExchangeProtocol
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
mixin _$ExchangeProtocolInput {

/// Unique identifier for this protocol, or null when creating a new one.
 String? get id;/// Unique identifier for this protocol, or null when creating a new one.
 set id(String? value);/// Name of the protocol. This name is a translation key, so check the
/// translation messages to get the display name. Defaults to an empty
/// string.
 String get name;/// Name of the protocol. This name is a translation key, so check the
/// translation messages to get the display name. Defaults to an empty
/// string.
 set name(String value);/// Color assigned to the protocol, either a hex color or a named color
/// token. Defaults to `'primary'`.
 String get color;/// Color assigned to the protocol, either a hex color or a named color
/// token. Defaults to `'primary'`.
 set color(String value);/// Dynamic icon of the protocol, in its new schema.
 AvatarInput? get dynamicIcon;/// Dynamic icon of the protocol, in its new schema.
 set dynamicIcon(AvatarInput? value);/// List of required configuration fields for the protocol. Defaults to
/// an empty list.
 List<CredentialField> get requiredFields;/// List of required configuration fields for the protocol. Defaults to
/// an empty list.
 set requiredFields(List<CredentialField> value);/// Indicates if the protocol is enabled and available for use, or
/// disabled and not available for use.
 bool? get isEnabled;/// Indicates if the protocol is enabled and available for use, or
/// disabled and not available for use.
 set isEnabled(bool? value);/// Indicates if the protocol requires a Flespi token to work.
 bool? get requiresFlespiToken;/// Indicates if the protocol requires a Flespi token to work.
 set requiresFlespiToken(bool? value);/// Flespi ACLs for the protocol.
 List<FlespiAcl>? get flespiAcl;/// Flespi ACLs for the protocol.
 set flespiAcl(List<FlespiAcl>? value);/// Indicates if the protocol requires assets to work. Defaults to false.
 bool get requiresAssets;/// Indicates if the protocol requires assets to work. Defaults to false.
 set requiresAssets(bool value);/// Indicates if the protocol requires geofences to work. Defaults to
/// false.
 bool get requiresGeofences;/// Indicates if the protocol requires geofences to work. Defaults to
/// false.
 set requiresGeofences(bool value);
/// Create a copy of ExchangeProtocolInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeProtocolInputCopyWith<ExchangeProtocolInput> get copyWith => _$ExchangeProtocolInputCopyWithImpl<ExchangeProtocolInput>(this as ExchangeProtocolInput, _$identity);

  /// Serializes this ExchangeProtocolInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ExchangeProtocolInput(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, requiresAssets: $requiresAssets, requiresGeofences: $requiresGeofences)';
}


}

/// @nodoc
abstract mixin class $ExchangeProtocolInputCopyWith<$Res>  {
  factory $ExchangeProtocolInputCopyWith(ExchangeProtocolInput value, $Res Function(ExchangeProtocolInput) _then) = _$ExchangeProtocolInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String color, AvatarInput? dynamicIcon, List<CredentialField> requiredFields, bool? isEnabled, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, bool requiresAssets, bool requiresGeofences
});


$AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$ExchangeProtocolInputCopyWithImpl<$Res>
    implements $ExchangeProtocolInputCopyWith<$Res> {
  _$ExchangeProtocolInputCopyWithImpl(this._self, this._then);

  final ExchangeProtocolInput _self;
  final $Res Function(ExchangeProtocolInput) _then;

/// Create a copy of ExchangeProtocolInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = freezed,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? requiresAssets = null,Object? requiresGeofences = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,requiresAssets: null == requiresAssets ? _self.requiresAssets : requiresAssets // ignore: cast_nullable_to_non_nullable
as bool,requiresGeofences: null == requiresGeofences ? _self.requiresGeofences : requiresGeofences // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ExchangeProtocolInput
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


/// Adds pattern-matching-related methods to [ExchangeProtocolInput].
extension ExchangeProtocolInputPatterns on ExchangeProtocolInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeProtocolInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeProtocolInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeProtocolInput value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeProtocolInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeProtocolInput value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeProtocolInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool? isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  bool requiresAssets,  bool requiresGeofences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.requiresAssets,_that.requiresGeofences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool? isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  bool requiresAssets,  bool requiresGeofences)  $default,) {final _that = this;
switch (_that) {
case _ExchangeProtocolInput():
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.requiresAssets,_that.requiresGeofences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String color,  AvatarInput? dynamicIcon,  List<CredentialField> requiredFields,  bool? isEnabled,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  bool requiresAssets,  bool requiresGeofences)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.requiredFields,_that.isEnabled,_that.requiresFlespiToken,_that.flespiAcl,_that.requiresAssets,_that.requiresGeofences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeProtocolInput extends ExchangeProtocolInput {
   _ExchangeProtocolInput({this.id, this.name = '', this.color = 'primary', this.dynamicIcon, this.requiredFields = const [], this.isEnabled, this.requiresFlespiToken, this.flespiAcl, this.requiresAssets = false, this.requiresGeofences = false}): super._();
  factory _ExchangeProtocolInput.fromJson(Map<String, dynamic> json) => _$ExchangeProtocolInputFromJson(json);

/// Unique identifier for this protocol, or null when creating a new one.
@override  String? id;
/// Name of the protocol. This name is a translation key, so check the
/// translation messages to get the display name. Defaults to an empty
/// string.
@override@JsonKey()  String name;
/// Color assigned to the protocol, either a hex color or a named color
/// token. Defaults to `'primary'`.
@override@JsonKey()  String color;
/// Dynamic icon of the protocol, in its new schema.
@override  AvatarInput? dynamicIcon;
/// List of required configuration fields for the protocol. Defaults to
/// an empty list.
@override@JsonKey()  List<CredentialField> requiredFields;
/// Indicates if the protocol is enabled and available for use, or
/// disabled and not available for use.
@override  bool? isEnabled;
/// Indicates if the protocol requires a Flespi token to work.
@override  bool? requiresFlespiToken;
/// Flespi ACLs for the protocol.
@override  List<FlespiAcl>? flespiAcl;
/// Indicates if the protocol requires assets to work. Defaults to false.
@override@JsonKey()  bool requiresAssets;
/// Indicates if the protocol requires geofences to work. Defaults to
/// false.
@override@JsonKey()  bool requiresGeofences;

/// Create a copy of ExchangeProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeProtocolInputCopyWith<_ExchangeProtocolInput> get copyWith => __$ExchangeProtocolInputCopyWithImpl<_ExchangeProtocolInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeProtocolInputToJson(this, );
}



@override
String toString() {
  return 'ExchangeProtocolInput(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, requiredFields: $requiredFields, isEnabled: $isEnabled, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, requiresAssets: $requiresAssets, requiresGeofences: $requiresGeofences)';
}


}

/// @nodoc
abstract mixin class _$ExchangeProtocolInputCopyWith<$Res> implements $ExchangeProtocolInputCopyWith<$Res> {
  factory _$ExchangeProtocolInputCopyWith(_ExchangeProtocolInput value, $Res Function(_ExchangeProtocolInput) _then) = __$ExchangeProtocolInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String color, AvatarInput? dynamicIcon, List<CredentialField> requiredFields, bool? isEnabled, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, bool requiresAssets, bool requiresGeofences
});


@override $AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$ExchangeProtocolInputCopyWithImpl<$Res>
    implements _$ExchangeProtocolInputCopyWith<$Res> {
  __$ExchangeProtocolInputCopyWithImpl(this._self, this._then);

  final _ExchangeProtocolInput _self;
  final $Res Function(_ExchangeProtocolInput) _then;

/// Create a copy of ExchangeProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? requiredFields = null,Object? isEnabled = freezed,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? requiresAssets = null,Object? requiresGeofences = null,}) {
  return _then(_ExchangeProtocolInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,requiresAssets: null == requiresAssets ? _self.requiresAssets : requiresAssets // ignore: cast_nullable_to_non_nullable
as bool,requiresGeofences: null == requiresGeofences ? _self.requiresGeofences : requiresGeofences // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ExchangeProtocolInput
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
mixin _$ExchangeService {

/// Is the ID of the entity. This ID is unique.
 String get id;/// Is the assigned service name, cannot be translated for other languages.
 String get name;/// Is the credentials object; check the documentation for more information.
 Map<String, dynamic>? get credentials;/// Is the protocol entity.
 ExchangeProtocol? get protocol;/// Is the protocol ID.
 String? get protocolId;/// Is the current transmission status.
 bool? get isEnabled;/// Is the asset IDs linked to the service.
 List<String>? get assetsIds;/// Is the assets linked to the service.
 List<Asset>? get assets;/// Is the groups (tags) IDs linked to the service.
 List<String>? get tagsIds;/// Is the groups (tags) linked to the service.
 List<Tag>? get tags;/// Is the list of custom access permissions.
 List<Access>? get access;/// Is the list of geofence IDs linked to the service.
 List<String>? get geofencesIds;/// Is the list of geofences linked to the service.
 List<Geofence>? get geofences;/// Is the list of tag IDs, as geofence groups, linked to the service.
 List<String>? get geofencesGroupsIds;/// Is the list of tags, as geofence groups, linked to the service.
 List<Tag>? get geofencesGroups;
/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeServiceCopyWith<ExchangeService> get copyWith => _$ExchangeServiceCopyWithImpl<ExchangeService>(this as ExchangeService, _$identity);

  /// Serializes this ExchangeService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.tagsIds, tagsIds)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesGroupsIds, geofencesGroupsIds)&&const DeepCollectionEquality().equals(other.geofencesGroups, geofencesGroups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),protocol,protocolId,isEnabled,const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(tagsIds),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesGroupsIds),const DeepCollectionEquality().hash(geofencesGroups));

@override
String toString() {
  return 'ExchangeService(id: $id, name: $name, credentials: $credentials, protocol: $protocol, protocolId: $protocolId, isEnabled: $isEnabled, assetsIds: $assetsIds, assets: $assets, tagsIds: $tagsIds, tags: $tags, access: $access, geofencesIds: $geofencesIds, geofences: $geofences, geofencesGroupsIds: $geofencesGroupsIds, geofencesGroups: $geofencesGroups)';
}


}

/// @nodoc
abstract mixin class $ExchangeServiceCopyWith<$Res>  {
  factory $ExchangeServiceCopyWith(ExchangeService value, $Res Function(ExchangeService) _then) = _$ExchangeServiceCopyWithImpl;
@useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, ExchangeProtocol? protocol, String? protocolId, bool? isEnabled, List<String>? assetsIds, List<Asset>? assets, List<String>? tagsIds, List<Tag>? tags, List<Access>? access, List<String>? geofencesIds, List<Geofence>? geofences, List<String>? geofencesGroupsIds, List<Tag>? geofencesGroups
});


$ExchangeProtocolCopyWith<$Res>? get protocol;

}
/// @nodoc
class _$ExchangeServiceCopyWithImpl<$Res>
    implements $ExchangeServiceCopyWith<$Res> {
  _$ExchangeServiceCopyWithImpl(this._self, this._then);

  final ExchangeService _self;
  final $Res Function(ExchangeService) _then;

/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? protocol = freezed,Object? protocolId = freezed,Object? isEnabled = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? tagsIds = freezed,Object? tags = freezed,Object? access = freezed,Object? geofencesIds = freezed,Object? geofences = freezed,Object? geofencesGroupsIds = freezed,Object? geofencesGroups = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as ExchangeProtocol?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,tagsIds: freezed == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesGroupsIds: freezed == geofencesGroupsIds ? _self.geofencesGroupsIds : geofencesGroupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofencesGroups: freezed == geofencesGroups ? _self.geofencesGroups : geofencesGroups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,
  ));
}
/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExchangeProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $ExchangeProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExchangeService].
extension ExchangeServicePatterns on ExchangeService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeService value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeService value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  ExchangeProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? tagsIds,  List<Tag>? tags,  List<Access>? access,  List<String>? geofencesIds,  List<Geofence>? geofences,  List<String>? geofencesGroupsIds,  List<Tag>? geofencesGroups)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeService() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.assetsIds,_that.assets,_that.tagsIds,_that.tags,_that.access,_that.geofencesIds,_that.geofences,_that.geofencesGroupsIds,_that.geofencesGroups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  ExchangeProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? tagsIds,  List<Tag>? tags,  List<Access>? access,  List<String>? geofencesIds,  List<Geofence>? geofences,  List<String>? geofencesGroupsIds,  List<Tag>? geofencesGroups)  $default,) {final _that = this;
switch (_that) {
case _ExchangeService():
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.assetsIds,_that.assets,_that.tagsIds,_that.tags,_that.access,_that.geofencesIds,_that.geofences,_that.geofencesGroupsIds,_that.geofencesGroups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Map<String, dynamic>? credentials,  ExchangeProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? tagsIds,  List<Tag>? tags,  List<Access>? access,  List<String>? geofencesIds,  List<Geofence>? geofences,  List<String>? geofencesGroupsIds,  List<Tag>? geofencesGroups)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeService() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.assetsIds,_that.assets,_that.tagsIds,_that.tags,_that.access,_that.geofencesIds,_that.geofences,_that.geofencesGroupsIds,_that.geofencesGroups);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeService implements ExchangeService {
  const _ExchangeService({required this.id, required this.name, this.credentials, this.protocol, this.protocolId, this.isEnabled, this.assetsIds, this.assets, this.tagsIds, this.tags, this.access, this.geofencesIds, this.geofences, this.geofencesGroupsIds, this.geofencesGroups});
  factory _ExchangeService.fromJson(Map<String, dynamic> json) => _$ExchangeServiceFromJson(json);

/// Is the ID of the entity. This ID is unique.
@override final  String id;
/// Is the assigned service name, cannot be translated for other languages.
@override final  String name;
/// Is the credentials object; check the documentation for more information.
@override final  Map<String, dynamic>? credentials;
/// Is the protocol entity.
@override final  ExchangeProtocol? protocol;
/// Is the protocol ID.
@override final  String? protocolId;
/// Is the current transmission status.
@override final  bool? isEnabled;
/// Is the asset IDs linked to the service.
@override final  List<String>? assetsIds;
/// Is the assets linked to the service.
@override final  List<Asset>? assets;
/// Is the groups (tags) IDs linked to the service.
@override final  List<String>? tagsIds;
/// Is the groups (tags) linked to the service.
@override final  List<Tag>? tags;
/// Is the list of custom access permissions.
@override final  List<Access>? access;
/// Is the list of geofence IDs linked to the service.
@override final  List<String>? geofencesIds;
/// Is the list of geofences linked to the service.
@override final  List<Geofence>? geofences;
/// Is the list of tag IDs, as geofence groups, linked to the service.
@override final  List<String>? geofencesGroupsIds;
/// Is the list of tags, as geofence groups, linked to the service.
@override final  List<Tag>? geofencesGroups;

/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeServiceCopyWith<_ExchangeService> get copyWith => __$ExchangeServiceCopyWithImpl<_ExchangeService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.tagsIds, tagsIds)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesGroupsIds, geofencesGroupsIds)&&const DeepCollectionEquality().equals(other.geofencesGroups, geofencesGroups));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),protocol,protocolId,isEnabled,const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(tagsIds),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesGroupsIds),const DeepCollectionEquality().hash(geofencesGroups));

@override
String toString() {
  return 'ExchangeService(id: $id, name: $name, credentials: $credentials, protocol: $protocol, protocolId: $protocolId, isEnabled: $isEnabled, assetsIds: $assetsIds, assets: $assets, tagsIds: $tagsIds, tags: $tags, access: $access, geofencesIds: $geofencesIds, geofences: $geofences, geofencesGroupsIds: $geofencesGroupsIds, geofencesGroups: $geofencesGroups)';
}


}

/// @nodoc
abstract mixin class _$ExchangeServiceCopyWith<$Res> implements $ExchangeServiceCopyWith<$Res> {
  factory _$ExchangeServiceCopyWith(_ExchangeService value, $Res Function(_ExchangeService) _then) = __$ExchangeServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, ExchangeProtocol? protocol, String? protocolId, bool? isEnabled, List<String>? assetsIds, List<Asset>? assets, List<String>? tagsIds, List<Tag>? tags, List<Access>? access, List<String>? geofencesIds, List<Geofence>? geofences, List<String>? geofencesGroupsIds, List<Tag>? geofencesGroups
});


@override $ExchangeProtocolCopyWith<$Res>? get protocol;

}
/// @nodoc
class __$ExchangeServiceCopyWithImpl<$Res>
    implements _$ExchangeServiceCopyWith<$Res> {
  __$ExchangeServiceCopyWithImpl(this._self, this._then);

  final _ExchangeService _self;
  final $Res Function(_ExchangeService) _then;

/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? protocol = freezed,Object? protocolId = freezed,Object? isEnabled = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? tagsIds = freezed,Object? tags = freezed,Object? access = freezed,Object? geofencesIds = freezed,Object? geofences = freezed,Object? geofencesGroupsIds = freezed,Object? geofencesGroups = freezed,}) {
  return _then(_ExchangeService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as ExchangeProtocol?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,tagsIds: freezed == tagsIds ? _self.tagsIds : tagsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesGroupsIds: freezed == geofencesGroupsIds ? _self.geofencesGroupsIds : geofencesGroupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofencesGroups: freezed == geofencesGroups ? _self.geofencesGroups : geofencesGroups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,
  ));
}

/// Create a copy of ExchangeService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExchangeProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $ExchangeProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}
}

// dart format on
