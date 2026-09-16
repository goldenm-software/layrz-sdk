// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outbound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OutboundProtocol {

/// [id] is the protocol ID, this ID is unique for each protocol.
 String get id;/// [name] is the name of the protocol.
/// This name is a translation key, so, check the translation messages to get the name,
/// the key is composed by `protocols.outbound.{name}`.
 String get name;/// [color] is the color assigned to the protocol.
@ColorConverter() Color get color;/// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
 bool get isEnabled;/// [categoriesIds] is the list of categories IDs that the protocol belongs to.
 List<String> get categoriesIds;/// [hasFtp] indicates if the protocol has support for FTP.
 bool? get hasFtp;/// [isConsumpted] indicates if the protocol is consumpted.
 bool? get isConsumpted;/// [requiredFields] is the list of required fields for the protocol.
 List<CredentialField> get requiredFields;/// [dynamicIcon] is the icon of the inbound protocol.
/// This is the new schema of the icon
 Avatar? get dynamicIcon;/// [usage] is the usage of the protocol. This field shuld be only used to show the popularity of the protocol.
/// For marketing purposes.
 int? get usage;
/// Create a copy of OutboundProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundProtocolCopyWith<OutboundProtocol> get copyWith => _$OutboundProtocolCopyWithImpl<OutboundProtocol>(this as OutboundProtocol, _$identity);

  /// Serializes this OutboundProtocol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutboundProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.hasFtp, hasFtp) || other.hasFtp == hasFtp)&&(identical(other.isConsumpted, isConsumpted) || other.isConsumpted == isConsumpted)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(categoriesIds),hasFtp,isConsumpted,const DeepCollectionEquality().hash(requiredFields),dynamicIcon,usage);

@override
String toString() {
  return 'OutboundProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, categoriesIds: $categoriesIds, hasFtp: $hasFtp, isConsumpted: $isConsumpted, requiredFields: $requiredFields, dynamicIcon: $dynamicIcon, usage: $usage)';
}


}

/// @nodoc
abstract mixin class $OutboundProtocolCopyWith<$Res>  {
  factory $OutboundProtocolCopyWith(OutboundProtocol value, $Res Function(OutboundProtocol) _then) = _$OutboundProtocolCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<String> categoriesIds, bool? hasFtp, bool? isConsumpted, List<CredentialField> requiredFields, Avatar? dynamicIcon, int? usage
});


$AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$OutboundProtocolCopyWithImpl<$Res>
    implements $OutboundProtocolCopyWith<$Res> {
  _$OutboundProtocolCopyWithImpl(this._self, this._then);

  final OutboundProtocol _self;
  final $Res Function(OutboundProtocol) _then;

/// Create a copy of OutboundProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? categoriesIds = null,Object? hasFtp = freezed,Object? isConsumpted = freezed,Object? requiredFields = null,Object? dynamicIcon = freezed,Object? usage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,categoriesIds: null == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>,hasFtp: freezed == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool?,isConsumpted: freezed == isConsumpted ? _self.isConsumpted : isConsumpted // ignore: cast_nullable_to_non_nullable
as bool?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of OutboundProtocol
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


/// Adds pattern-matching-related methods to [OutboundProtocol].
extension OutboundProtocolPatterns on OutboundProtocol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundProtocol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundProtocol value)  $default,){
final _that = this;
switch (_that) {
case _OutboundProtocol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundProtocol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<String> categoriesIds,  bool? hasFtp,  bool? isConsumpted,  List<CredentialField> requiredFields,  Avatar? dynamicIcon,  int? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon,_that.usage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<String> categoriesIds,  bool? hasFtp,  bool? isConsumpted,  List<CredentialField> requiredFields,  Avatar? dynamicIcon,  int? usage)  $default,) {final _that = this;
switch (_that) {
case _OutboundProtocol():
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon,_that.usage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled,  List<String> categoriesIds,  bool? hasFtp,  bool? isConsumpted,  List<CredentialField> requiredFields,  Avatar? dynamicIcon,  int? usage)?  $default,) {final _that = this;
switch (_that) {
case _OutboundProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutboundProtocol extends OutboundProtocol {
  const _OutboundProtocol({required this.id, required this.name, @ColorConverter() required this.color, required this.isEnabled, this.categoriesIds = const [], this.hasFtp, this.isConsumpted, this.requiredFields = const [], this.dynamicIcon, this.usage}): super._();
  factory _OutboundProtocol.fromJson(Map<String, dynamic> json) => _$OutboundProtocolFromJson(json);

/// [id] is the protocol ID, this ID is unique for each protocol.
@override final  String id;
/// [name] is the name of the protocol.
/// This name is a translation key, so, check the translation messages to get the name,
/// the key is composed by `protocols.outbound.{name}`.
@override final  String name;
/// [color] is the color assigned to the protocol.
@override@ColorConverter() final  Color color;
/// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
@override final  bool isEnabled;
/// [categoriesIds] is the list of categories IDs that the protocol belongs to.
@override@JsonKey() final  List<String> categoriesIds;
/// [hasFtp] indicates if the protocol has support for FTP.
@override final  bool? hasFtp;
/// [isConsumpted] indicates if the protocol is consumpted.
@override final  bool? isConsumpted;
/// [requiredFields] is the list of required fields for the protocol.
@override@JsonKey() final  List<CredentialField> requiredFields;
/// [dynamicIcon] is the icon of the inbound protocol.
/// This is the new schema of the icon
@override final  Avatar? dynamicIcon;
/// [usage] is the usage of the protocol. This field shuld be only used to show the popularity of the protocol.
/// For marketing purposes.
@override final  int? usage;

/// Create a copy of OutboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundProtocolCopyWith<_OutboundProtocol> get copyWith => __$OutboundProtocolCopyWithImpl<_OutboundProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutboundProtocolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutboundProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.hasFtp, hasFtp) || other.hasFtp == hasFtp)&&(identical(other.isConsumpted, isConsumpted) || other.isConsumpted == isConsumpted)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,isEnabled,const DeepCollectionEquality().hash(categoriesIds),hasFtp,isConsumpted,const DeepCollectionEquality().hash(requiredFields),dynamicIcon,usage);

@override
String toString() {
  return 'OutboundProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, categoriesIds: $categoriesIds, hasFtp: $hasFtp, isConsumpted: $isConsumpted, requiredFields: $requiredFields, dynamicIcon: $dynamicIcon, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$OutboundProtocolCopyWith<$Res> implements $OutboundProtocolCopyWith<$Res> {
  factory _$OutboundProtocolCopyWith(_OutboundProtocol value, $Res Function(_OutboundProtocol) _then) = __$OutboundProtocolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled, List<String> categoriesIds, bool? hasFtp, bool? isConsumpted, List<CredentialField> requiredFields, Avatar? dynamicIcon, int? usage
});


@override $AvatarCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$OutboundProtocolCopyWithImpl<$Res>
    implements _$OutboundProtocolCopyWith<$Res> {
  __$OutboundProtocolCopyWithImpl(this._self, this._then);

  final _OutboundProtocol _self;
  final $Res Function(_OutboundProtocol) _then;

/// Create a copy of OutboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? categoriesIds = null,Object? hasFtp = freezed,Object? isConsumpted = freezed,Object? requiredFields = null,Object? dynamicIcon = freezed,Object? usage = freezed,}) {
  return _then(_OutboundProtocol(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,categoriesIds: null == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>,hasFtp: freezed == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool?,isConsumpted: freezed == isConsumpted ? _self.isConsumpted : isConsumpted // ignore: cast_nullable_to_non_nullable
as bool?,requiredFields: null == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OutboundProtocol
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
mixin _$OutboundProtocolInput {

/// [id] is the protocol ID, ignore it if you are creating a new protocol.
 String? get id;/// [id] is the protocol ID, ignore it if you are creating a new protocol.
 set id(String? value);/// [name] is the name of the protocol.
 String? get name;/// [name] is the name of the protocol.
 set name(String? value);/// [color] is the color assigned to the protocol.
@ColorOrNullConverter() Color? get color;/// [color] is the color assigned to the protocol.
@ColorOrNullConverter() set color(Color? value);/// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
 bool? get isEnabled;/// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
 set isEnabled(bool? value);/// [categoriesIds] is the list of categories IDs that the protocol belongs to.
 List<String>? get categoriesIds;/// [categoriesIds] is the list of categories IDs that the protocol belongs to.
 set categoriesIds(List<String>? value);/// [hasFtp] indicates if the protocol has support for FTP. Defaults to `false`.
 bool get hasFtp;/// [hasFtp] indicates if the protocol has support for FTP. Defaults to `false`.
 set hasFtp(bool value);/// [isConsumpted] indicates if the protocol is consumpted. Defaults to `false`.
 bool get isConsumpted;/// [isConsumpted] indicates if the protocol is consumpted. Defaults to `false`.
 set isConsumpted(bool value);/// [requiredFields] is the list of required fields for the protocol.
 List<CredentialField>? get requiredFields;/// [requiredFields] is the list of required fields for the protocol.
 set requiredFields(List<CredentialField>? value);/// [dynamicIcon] is the icon of the outbound protocol. This is the new schema of the icon.
 AvatarInput? get dynamicIcon;/// [dynamicIcon] is the icon of the outbound protocol. This is the new schema of the icon.
 set dynamicIcon(AvatarInput? value);
/// Create a copy of OutboundProtocolInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundProtocolInputCopyWith<OutboundProtocolInput> get copyWith => _$OutboundProtocolInputCopyWithImpl<OutboundProtocolInput>(this as OutboundProtocolInput, _$identity);

  /// Serializes this OutboundProtocolInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'OutboundProtocolInput(id: $id, name: $name, color: $color, isEnabled: $isEnabled, categoriesIds: $categoriesIds, hasFtp: $hasFtp, isConsumpted: $isConsumpted, requiredFields: $requiredFields, dynamicIcon: $dynamicIcon)';
}


}

/// @nodoc
abstract mixin class $OutboundProtocolInputCopyWith<$Res>  {
  factory $OutboundProtocolInputCopyWith(OutboundProtocolInput value, $Res Function(OutboundProtocolInput) _then) = _$OutboundProtocolInputCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@ColorOrNullConverter() Color? color, bool? isEnabled, List<String>? categoriesIds, bool hasFtp, bool isConsumpted, List<CredentialField>? requiredFields, AvatarInput? dynamicIcon
});


$AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class _$OutboundProtocolInputCopyWithImpl<$Res>
    implements $OutboundProtocolInputCopyWith<$Res> {
  _$OutboundProtocolInputCopyWithImpl(this._self, this._then);

  final OutboundProtocolInput _self;
  final $Res Function(OutboundProtocolInput) _then;

/// Create a copy of OutboundProtocolInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? color = freezed,Object? isEnabled = freezed,Object? categoriesIds = freezed,Object? hasFtp = null,Object? isConsumpted = null,Object? requiredFields = freezed,Object? dynamicIcon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,categoriesIds: freezed == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,hasFtp: null == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool,isConsumpted: null == isConsumpted ? _self.isConsumpted : isConsumpted // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: freezed == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,
  ));
}
/// Create a copy of OutboundProtocolInput
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


/// Adds pattern-matching-related methods to [OutboundProtocolInput].
extension OutboundProtocolInputPatterns on OutboundProtocolInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundProtocolInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundProtocolInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundProtocolInput value)  $default,){
final _that = this;
switch (_that) {
case _OutboundProtocolInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundProtocolInput value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundProtocolInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @ColorOrNullConverter()  Color? color,  bool? isEnabled,  List<String>? categoriesIds,  bool hasFtp,  bool isConsumpted,  List<CredentialField>? requiredFields,  AvatarInput? dynamicIcon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @ColorOrNullConverter()  Color? color,  bool? isEnabled,  List<String>? categoriesIds,  bool hasFtp,  bool isConsumpted,  List<CredentialField>? requiredFields,  AvatarInput? dynamicIcon)  $default,) {final _that = this;
switch (_that) {
case _OutboundProtocolInput():
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @ColorOrNullConverter()  Color? color,  bool? isEnabled,  List<String>? categoriesIds,  bool hasFtp,  bool isConsumpted,  List<CredentialField>? requiredFields,  AvatarInput? dynamicIcon)?  $default,) {final _that = this;
switch (_that) {
case _OutboundProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.categoriesIds,_that.hasFtp,_that.isConsumpted,_that.requiredFields,_that.dynamicIcon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutboundProtocolInput extends OutboundProtocolInput {
   _OutboundProtocolInput({this.id, this.name, @ColorOrNullConverter() this.color, this.isEnabled, this.categoriesIds, this.hasFtp = false, this.isConsumpted = false, this.requiredFields, this.dynamicIcon}): super._();
  factory _OutboundProtocolInput.fromJson(Map<String, dynamic> json) => _$OutboundProtocolInputFromJson(json);

/// [id] is the protocol ID, ignore it if you are creating a new protocol.
@override  String? id;
/// [name] is the name of the protocol.
@override  String? name;
/// [color] is the color assigned to the protocol.
@override@ColorOrNullConverter()  Color? color;
/// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
@override  bool? isEnabled;
/// [categoriesIds] is the list of categories IDs that the protocol belongs to.
@override  List<String>? categoriesIds;
/// [hasFtp] indicates if the protocol has support for FTP. Defaults to `false`.
@override@JsonKey()  bool hasFtp;
/// [isConsumpted] indicates if the protocol is consumpted. Defaults to `false`.
@override@JsonKey()  bool isConsumpted;
/// [requiredFields] is the list of required fields for the protocol.
@override  List<CredentialField>? requiredFields;
/// [dynamicIcon] is the icon of the outbound protocol. This is the new schema of the icon.
@override  AvatarInput? dynamicIcon;

/// Create a copy of OutboundProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundProtocolInputCopyWith<_OutboundProtocolInput> get copyWith => __$OutboundProtocolInputCopyWithImpl<_OutboundProtocolInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutboundProtocolInputToJson(this, );
}



@override
String toString() {
  return 'OutboundProtocolInput(id: $id, name: $name, color: $color, isEnabled: $isEnabled, categoriesIds: $categoriesIds, hasFtp: $hasFtp, isConsumpted: $isConsumpted, requiredFields: $requiredFields, dynamicIcon: $dynamicIcon)';
}


}

/// @nodoc
abstract mixin class _$OutboundProtocolInputCopyWith<$Res> implements $OutboundProtocolInputCopyWith<$Res> {
  factory _$OutboundProtocolInputCopyWith(_OutboundProtocolInput value, $Res Function(_OutboundProtocolInput) _then) = __$OutboundProtocolInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@ColorOrNullConverter() Color? color, bool? isEnabled, List<String>? categoriesIds, bool hasFtp, bool isConsumpted, List<CredentialField>? requiredFields, AvatarInput? dynamicIcon
});


@override $AvatarInputCopyWith<$Res>? get dynamicIcon;

}
/// @nodoc
class __$OutboundProtocolInputCopyWithImpl<$Res>
    implements _$OutboundProtocolInputCopyWith<$Res> {
  __$OutboundProtocolInputCopyWithImpl(this._self, this._then);

  final _OutboundProtocolInput _self;
  final $Res Function(_OutboundProtocolInput) _then;

/// Create a copy of OutboundProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? color = freezed,Object? isEnabled = freezed,Object? categoriesIds = freezed,Object? hasFtp = null,Object? isConsumpted = null,Object? requiredFields = freezed,Object? dynamicIcon = freezed,}) {
  return _then(_OutboundProtocolInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,categoriesIds: freezed == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,hasFtp: null == hasFtp ? _self.hasFtp : hasFtp // ignore: cast_nullable_to_non_nullable
as bool,isConsumpted: null == isConsumpted ? _self.isConsumpted : isConsumpted // ignore: cast_nullable_to_non_nullable
as bool,requiredFields: freezed == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as AvatarInput?,
  ));
}

/// Create a copy of OutboundProtocolInput
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
mixin _$OutboundService {

/// [id] is the ID of the entity. This ID is unique.
 String get id;/// [name] is the assigned service name, cannot be translated for other languages.
 String get name;/// [credentials] is the credential object, check the documentation for more information.
 Map<String, dynamic>? get credentials;/// [protocol] is the protocol entity.
 OutboundProtocol? get protocol;/// [protocolId] is the protocol ID.
 String? get protocolId;/// [isEnabled] is the current transmission status.
 bool? get isEnabled;/// [structure] is the structure of the outbound protocol, only used for Omega REST outbound protocol.
 List<OutboundStructure>? get structure;/// [token] is the token to authenticate the request, only used for Alpha REST inbound protocol.
 String? get token;/// [assetsIds] is the assets IDs linked to the service.
 List<String>? get assetsIds;/// [assets] is the assets linked to the service.
 List<Asset>? get assets;/// [groupsIds] is the groups (tags) IDs linked to the service.
 List<String>? get groupsIds;/// [groups] is the groups (tags) linked to the service.
 List<Tag>? get groups;/// [access] is a list of custom access permissions.
 List<Access>? get access;/// [metrics] is the metrics object.
 OutboundMetrics? get metrics;/// [atsModel] is the ATS Stream Model, only used for ATS Stream Outbound protocol.
@JsonKey(unknownEnumValue: AtsStreamModel.exit) AtsStreamModel? get atsModel;
/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundServiceCopyWith<OutboundService> get copyWith => _$OutboundServiceCopyWithImpl<OutboundService>(this as OutboundService, _$identity);

  /// Serializes this OutboundService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutboundService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.structure, structure)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.groupsIds, groupsIds)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.atsModel, atsModel) || other.atsModel == atsModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),protocol,protocolId,isEnabled,const DeepCollectionEquality().hash(structure),token,const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(groupsIds),const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(access),metrics,atsModel);

@override
String toString() {
  return 'OutboundService(id: $id, name: $name, credentials: $credentials, protocol: $protocol, protocolId: $protocolId, isEnabled: $isEnabled, structure: $structure, token: $token, assetsIds: $assetsIds, assets: $assets, groupsIds: $groupsIds, groups: $groups, access: $access, metrics: $metrics, atsModel: $atsModel)';
}


}

/// @nodoc
abstract mixin class $OutboundServiceCopyWith<$Res>  {
  factory $OutboundServiceCopyWith(OutboundService value, $Res Function(OutboundService) _then) = _$OutboundServiceCopyWithImpl;
@useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, OutboundProtocol? protocol, String? protocolId, bool? isEnabled, List<OutboundStructure>? structure, String? token, List<String>? assetsIds, List<Asset>? assets, List<String>? groupsIds, List<Tag>? groups, List<Access>? access, OutboundMetrics? metrics,@JsonKey(unknownEnumValue: AtsStreamModel.exit) AtsStreamModel? atsModel
});


$OutboundProtocolCopyWith<$Res>? get protocol;$OutboundMetricsCopyWith<$Res>? get metrics;

}
/// @nodoc
class _$OutboundServiceCopyWithImpl<$Res>
    implements $OutboundServiceCopyWith<$Res> {
  _$OutboundServiceCopyWithImpl(this._self, this._then);

  final OutboundService _self;
  final $Res Function(OutboundService) _then;

/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? protocol = freezed,Object? protocolId = freezed,Object? isEnabled = freezed,Object? structure = freezed,Object? token = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? groupsIds = freezed,Object? groups = freezed,Object? access = freezed,Object? metrics = freezed,Object? atsModel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as OutboundProtocol?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<OutboundStructure>?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,groupsIds: freezed == groupsIds ? _self.groupsIds : groupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as OutboundMetrics?,atsModel: freezed == atsModel ? _self.atsModel : atsModel // ignore: cast_nullable_to_non_nullable
as AtsStreamModel?,
  ));
}
/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $OutboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutboundMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $OutboundMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// Adds pattern-matching-related methods to [OutboundService].
extension OutboundServicePatterns on OutboundService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundService value)  $default,){
final _that = this;
switch (_that) {
case _OutboundService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundService value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  OutboundProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<OutboundStructure>? structure,  String? token,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? groupsIds,  List<Tag>? groups,  List<Access>? access,  OutboundMetrics? metrics, @JsonKey(unknownEnumValue: AtsStreamModel.exit)  AtsStreamModel? atsModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundService() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.structure,_that.token,_that.assetsIds,_that.assets,_that.groupsIds,_that.groups,_that.access,_that.metrics,_that.atsModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  Map<String, dynamic>? credentials,  OutboundProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<OutboundStructure>? structure,  String? token,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? groupsIds,  List<Tag>? groups,  List<Access>? access,  OutboundMetrics? metrics, @JsonKey(unknownEnumValue: AtsStreamModel.exit)  AtsStreamModel? atsModel)  $default,) {final _that = this;
switch (_that) {
case _OutboundService():
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.structure,_that.token,_that.assetsIds,_that.assets,_that.groupsIds,_that.groups,_that.access,_that.metrics,_that.atsModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  Map<String, dynamic>? credentials,  OutboundProtocol? protocol,  String? protocolId,  bool? isEnabled,  List<OutboundStructure>? structure,  String? token,  List<String>? assetsIds,  List<Asset>? assets,  List<String>? groupsIds,  List<Tag>? groups,  List<Access>? access,  OutboundMetrics? metrics, @JsonKey(unknownEnumValue: AtsStreamModel.exit)  AtsStreamModel? atsModel)?  $default,) {final _that = this;
switch (_that) {
case _OutboundService() when $default != null:
return $default(_that.id,_that.name,_that.credentials,_that.protocol,_that.protocolId,_that.isEnabled,_that.structure,_that.token,_that.assetsIds,_that.assets,_that.groupsIds,_that.groups,_that.access,_that.metrics,_that.atsModel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutboundService implements OutboundService {
  const _OutboundService({required this.id, required this.name, this.credentials, this.protocol, this.protocolId, this.isEnabled, this.structure, this.token, this.assetsIds, this.assets, this.groupsIds, this.groups, this.access, this.metrics, @JsonKey(unknownEnumValue: AtsStreamModel.exit) this.atsModel});
  factory _OutboundService.fromJson(Map<String, dynamic> json) => _$OutboundServiceFromJson(json);

/// [id] is the ID of the entity. This ID is unique.
@override final  String id;
/// [name] is the assigned service name, cannot be translated for other languages.
@override final  String name;
/// [credentials] is the credential object, check the documentation for more information.
@override final  Map<String, dynamic>? credentials;
/// [protocol] is the protocol entity.
@override final  OutboundProtocol? protocol;
/// [protocolId] is the protocol ID.
@override final  String? protocolId;
/// [isEnabled] is the current transmission status.
@override final  bool? isEnabled;
/// [structure] is the structure of the outbound protocol, only used for Omega REST outbound protocol.
@override final  List<OutboundStructure>? structure;
/// [token] is the token to authenticate the request, only used for Alpha REST inbound protocol.
@override final  String? token;
/// [assetsIds] is the assets IDs linked to the service.
@override final  List<String>? assetsIds;
/// [assets] is the assets linked to the service.
@override final  List<Asset>? assets;
/// [groupsIds] is the groups (tags) IDs linked to the service.
@override final  List<String>? groupsIds;
/// [groups] is the groups (tags) linked to the service.
@override final  List<Tag>? groups;
/// [access] is a list of custom access permissions.
@override final  List<Access>? access;
/// [metrics] is the metrics object.
@override final  OutboundMetrics? metrics;
/// [atsModel] is the ATS Stream Model, only used for ATS Stream Outbound protocol.
@override@JsonKey(unknownEnumValue: AtsStreamModel.exit) final  AtsStreamModel? atsModel;

/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundServiceCopyWith<_OutboundService> get copyWith => __$OutboundServiceCopyWithImpl<_OutboundService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutboundServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutboundService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.credentials, credentials)&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&const DeepCollectionEquality().equals(other.structure, structure)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.groupsIds, groupsIds)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.atsModel, atsModel) || other.atsModel == atsModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(credentials),protocol,protocolId,isEnabled,const DeepCollectionEquality().hash(structure),token,const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(groupsIds),const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(access),metrics,atsModel);

@override
String toString() {
  return 'OutboundService(id: $id, name: $name, credentials: $credentials, protocol: $protocol, protocolId: $protocolId, isEnabled: $isEnabled, structure: $structure, token: $token, assetsIds: $assetsIds, assets: $assets, groupsIds: $groupsIds, groups: $groups, access: $access, metrics: $metrics, atsModel: $atsModel)';
}


}

/// @nodoc
abstract mixin class _$OutboundServiceCopyWith<$Res> implements $OutboundServiceCopyWith<$Res> {
  factory _$OutboundServiceCopyWith(_OutboundService value, $Res Function(_OutboundService) _then) = __$OutboundServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, Map<String, dynamic>? credentials, OutboundProtocol? protocol, String? protocolId, bool? isEnabled, List<OutboundStructure>? structure, String? token, List<String>? assetsIds, List<Asset>? assets, List<String>? groupsIds, List<Tag>? groups, List<Access>? access, OutboundMetrics? metrics,@JsonKey(unknownEnumValue: AtsStreamModel.exit) AtsStreamModel? atsModel
});


@override $OutboundProtocolCopyWith<$Res>? get protocol;@override $OutboundMetricsCopyWith<$Res>? get metrics;

}
/// @nodoc
class __$OutboundServiceCopyWithImpl<$Res>
    implements _$OutboundServiceCopyWith<$Res> {
  __$OutboundServiceCopyWithImpl(this._self, this._then);

  final _OutboundService _self;
  final $Res Function(_OutboundService) _then;

/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? credentials = freezed,Object? protocol = freezed,Object? protocolId = freezed,Object? isEnabled = freezed,Object? structure = freezed,Object? token = freezed,Object? assetsIds = freezed,Object? assets = freezed,Object? groupsIds = freezed,Object? groups = freezed,Object? access = freezed,Object? metrics = freezed,Object? atsModel = freezed,}) {
  return _then(_OutboundService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,credentials: freezed == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,protocol: freezed == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as OutboundProtocol?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: freezed == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool?,structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<OutboundStructure>?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,groupsIds: freezed == groupsIds ? _self.groupsIds : groupsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,groups: freezed == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Tag>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as OutboundMetrics?,atsModel: freezed == atsModel ? _self.atsModel : atsModel // ignore: cast_nullable_to_non_nullable
as AtsStreamModel?,
  ));
}

/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutboundProtocolCopyWith<$Res>? get protocol {
    if (_self.protocol == null) {
    return null;
  }

  return $OutboundProtocolCopyWith<$Res>(_self.protocol!, (value) {
    return _then(_self.copyWith(protocol: value));
  });
}/// Create a copy of OutboundService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OutboundMetricsCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $OutboundMetricsCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}


/// @nodoc
mixin _$OutboundStructure {

/// [field] is the name of the destination field.
 String get field;/// [type] is the [OutboundStructureType] of the field, as its wire string value.
 String get type;/// [value] is the value or source expression mapped to [field].
 String get value;/// [source] is the source collection to iterate, only used when [type] is `json.array`.
/// ATAK protocol only.
 String? get source;/// [nested] is the nested structure entries, only used when [type] is `json` or `json.array`.
/// ATAK protocol only.
 List<OutboundStructure> get nested;
/// Create a copy of OutboundStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundStructureCopyWith<OutboundStructure> get copyWith => _$OutboundStructureCopyWithImpl<OutboundStructure>(this as OutboundStructure, _$identity);

  /// Serializes this OutboundStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutboundStructure&&(identical(other.field, field) || other.field == field)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.nested, nested));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,type,value,source,const DeepCollectionEquality().hash(nested));

@override
String toString() {
  return 'OutboundStructure(field: $field, type: $type, value: $value, source: $source, nested: $nested)';
}


}

/// @nodoc
abstract mixin class $OutboundStructureCopyWith<$Res>  {
  factory $OutboundStructureCopyWith(OutboundStructure value, $Res Function(OutboundStructure) _then) = _$OutboundStructureCopyWithImpl;
@useResult
$Res call({
 String field, String type, String value, String? source, List<OutboundStructure> nested
});




}
/// @nodoc
class _$OutboundStructureCopyWithImpl<$Res>
    implements $OutboundStructureCopyWith<$Res> {
  _$OutboundStructureCopyWithImpl(this._self, this._then);

  final OutboundStructure _self;
  final $Res Function(OutboundStructure) _then;

/// Create a copy of OutboundStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = null,Object? type = null,Object? value = null,Object? source = freezed,Object? nested = null,}) {
  return _then(_self.copyWith(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,nested: null == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<OutboundStructure>,
  ));
}

}


/// Adds pattern-matching-related methods to [OutboundStructure].
extension OutboundStructurePatterns on OutboundStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundStructure value)  $default,){
final _that = this;
switch (_that) {
case _OutboundStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundStructure value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String field,  String type,  String value,  String? source,  List<OutboundStructure> nested)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundStructure() when $default != null:
return $default(_that.field,_that.type,_that.value,_that.source,_that.nested);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String field,  String type,  String value,  String? source,  List<OutboundStructure> nested)  $default,) {final _that = this;
switch (_that) {
case _OutboundStructure():
return $default(_that.field,_that.type,_that.value,_that.source,_that.nested);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String field,  String type,  String value,  String? source,  List<OutboundStructure> nested)?  $default,) {final _that = this;
switch (_that) {
case _OutboundStructure() when $default != null:
return $default(_that.field,_that.type,_that.value,_that.source,_that.nested);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutboundStructure implements OutboundStructure {
  const _OutboundStructure({required this.field, required this.type, required this.value, this.source, this.nested = const []});
  factory _OutboundStructure.fromJson(Map<String, dynamic> json) => _$OutboundStructureFromJson(json);

/// [field] is the name of the destination field.
@override final  String field;
/// [type] is the [OutboundStructureType] of the field, as its wire string value.
@override final  String type;
/// [value] is the value or source expression mapped to [field].
@override final  String value;
/// [source] is the source collection to iterate, only used when [type] is `json.array`.
/// ATAK protocol only.
@override final  String? source;
/// [nested] is the nested structure entries, only used when [type] is `json` or `json.array`.
/// ATAK protocol only.
@override@JsonKey() final  List<OutboundStructure> nested;

/// Create a copy of OutboundStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundStructureCopyWith<_OutboundStructure> get copyWith => __$OutboundStructureCopyWithImpl<_OutboundStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutboundStructureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutboundStructure&&(identical(other.field, field) || other.field == field)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.nested, nested));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,type,value,source,const DeepCollectionEquality().hash(nested));

@override
String toString() {
  return 'OutboundStructure(field: $field, type: $type, value: $value, source: $source, nested: $nested)';
}


}

/// @nodoc
abstract mixin class _$OutboundStructureCopyWith<$Res> implements $OutboundStructureCopyWith<$Res> {
  factory _$OutboundStructureCopyWith(_OutboundStructure value, $Res Function(_OutboundStructure) _then) = __$OutboundStructureCopyWithImpl;
@override @useResult
$Res call({
 String field, String type, String value, String? source, List<OutboundStructure> nested
});




}
/// @nodoc
class __$OutboundStructureCopyWithImpl<$Res>
    implements _$OutboundStructureCopyWith<$Res> {
  __$OutboundStructureCopyWithImpl(this._self, this._then);

  final _OutboundStructure _self;
  final $Res Function(_OutboundStructure) _then;

/// Create a copy of OutboundStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = null,Object? type = null,Object? value = null,Object? source = freezed,Object? nested = null,}) {
  return _then(_OutboundStructure(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,nested: null == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<OutboundStructure>,
  ));
}


}


/// @nodoc
mixin _$OutboundMetrics {

/// [online] is the number of online devices.
 int get online;/// [hibernation] is the number of devices in hibernation.
 int get hibernation;/// [offline] is the number of offline devices.
 int get offline;/// [totalItems] is the total number of devices.
 int get totalItems;/// [statsLoading] indicates if the stats are loading.
 bool get statsLoading;
/// Create a copy of OutboundMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundMetricsCopyWith<OutboundMetrics> get copyWith => _$OutboundMetricsCopyWithImpl<OutboundMetrics>(this as OutboundMetrics, _$identity);

  /// Serializes this OutboundMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutboundMetrics&&(identical(other.online, online) || other.online == online)&&(identical(other.hibernation, hibernation) || other.hibernation == hibernation)&&(identical(other.offline, offline) || other.offline == offline)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.statsLoading, statsLoading) || other.statsLoading == statsLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,online,hibernation,offline,totalItems,statsLoading);

@override
String toString() {
  return 'OutboundMetrics(online: $online, hibernation: $hibernation, offline: $offline, totalItems: $totalItems, statsLoading: $statsLoading)';
}


}

/// @nodoc
abstract mixin class $OutboundMetricsCopyWith<$Res>  {
  factory $OutboundMetricsCopyWith(OutboundMetrics value, $Res Function(OutboundMetrics) _then) = _$OutboundMetricsCopyWithImpl;
@useResult
$Res call({
 int online, int hibernation, int offline, int totalItems, bool statsLoading
});




}
/// @nodoc
class _$OutboundMetricsCopyWithImpl<$Res>
    implements $OutboundMetricsCopyWith<$Res> {
  _$OutboundMetricsCopyWithImpl(this._self, this._then);

  final OutboundMetrics _self;
  final $Res Function(OutboundMetrics) _then;

/// Create a copy of OutboundMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? online = null,Object? hibernation = null,Object? offline = null,Object? totalItems = null,Object? statsLoading = null,}) {
  return _then(_self.copyWith(
online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as int,hibernation: null == hibernation ? _self.hibernation : hibernation // ignore: cast_nullable_to_non_nullable
as int,offline: null == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,statsLoading: null == statsLoading ? _self.statsLoading : statsLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OutboundMetrics].
extension OutboundMetricsPatterns on OutboundMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundMetrics value)  $default,){
final _that = this;
switch (_that) {
case _OutboundMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int online,  int hibernation,  int offline,  int totalItems,  bool statsLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundMetrics() when $default != null:
return $default(_that.online,_that.hibernation,_that.offline,_that.totalItems,_that.statsLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int online,  int hibernation,  int offline,  int totalItems,  bool statsLoading)  $default,) {final _that = this;
switch (_that) {
case _OutboundMetrics():
return $default(_that.online,_that.hibernation,_that.offline,_that.totalItems,_that.statsLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int online,  int hibernation,  int offline,  int totalItems,  bool statsLoading)?  $default,) {final _that = this;
switch (_that) {
case _OutboundMetrics() when $default != null:
return $default(_that.online,_that.hibernation,_that.offline,_that.totalItems,_that.statsLoading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutboundMetrics implements OutboundMetrics {
  const _OutboundMetrics({this.online = 0, this.hibernation = 0, this.offline = 0, this.totalItems = 0, this.statsLoading = true});
  factory _OutboundMetrics.fromJson(Map<String, dynamic> json) => _$OutboundMetricsFromJson(json);

/// [online] is the number of online devices.
@override@JsonKey() final  int online;
/// [hibernation] is the number of devices in hibernation.
@override@JsonKey() final  int hibernation;
/// [offline] is the number of offline devices.
@override@JsonKey() final  int offline;
/// [totalItems] is the total number of devices.
@override@JsonKey() final  int totalItems;
/// [statsLoading] indicates if the stats are loading.
@override@JsonKey() final  bool statsLoading;

/// Create a copy of OutboundMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundMetricsCopyWith<_OutboundMetrics> get copyWith => __$OutboundMetricsCopyWithImpl<_OutboundMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutboundMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutboundMetrics&&(identical(other.online, online) || other.online == online)&&(identical(other.hibernation, hibernation) || other.hibernation == hibernation)&&(identical(other.offline, offline) || other.offline == offline)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.statsLoading, statsLoading) || other.statsLoading == statsLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,online,hibernation,offline,totalItems,statsLoading);

@override
String toString() {
  return 'OutboundMetrics(online: $online, hibernation: $hibernation, offline: $offline, totalItems: $totalItems, statsLoading: $statsLoading)';
}


}

/// @nodoc
abstract mixin class _$OutboundMetricsCopyWith<$Res> implements $OutboundMetricsCopyWith<$Res> {
  factory _$OutboundMetricsCopyWith(_OutboundMetrics value, $Res Function(_OutboundMetrics) _then) = __$OutboundMetricsCopyWithImpl;
@override @useResult
$Res call({
 int online, int hibernation, int offline, int totalItems, bool statsLoading
});




}
/// @nodoc
class __$OutboundMetricsCopyWithImpl<$Res>
    implements _$OutboundMetricsCopyWith<$Res> {
  __$OutboundMetricsCopyWithImpl(this._self, this._then);

  final _OutboundMetrics _self;
  final $Res Function(_OutboundMetrics) _then;

/// Create a copy of OutboundMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? online = null,Object? hibernation = null,Object? offline = null,Object? totalItems = null,Object? statsLoading = null,}) {
  return _then(_OutboundMetrics(
online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as int,hibernation: null == hibernation ? _self.hibernation : hibernation // ignore: cast_nullable_to_non_nullable
as int,offline: null == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,statsLoading: null == statsLoading ? _self.statsLoading : statsLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
