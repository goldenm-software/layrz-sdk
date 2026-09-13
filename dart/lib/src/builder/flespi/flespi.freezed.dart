// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flespi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlespiAcl {

/// [uri] is the URI of the ACL.
@FlespiUriConverter() FlespiUri get uri;/// [topic] is the topic of the ACL.
/// This field is only used when the [uri] is [FlespiUri.mqtt].
 String? get topic;/// [actions] is the list of actions allowed for the ACL.
/// This field is only used when the [uri] is [FlespiUri.mqtt].
@FlespiActionConverter() List<FlespiAction>? get actions;/// [methods] is the list of methods allowed for the ACL.
@FlespiMethodConverter() List<FlespiMethod>? get methods;/// [ids] is the list of IDs allowed for the ACL.
/// Due to a freezed restrictions, we cannot support `all` as a value for this field.
 List<String>? get ids;/// [submodules] is the list of submodules allowed for the ACL.
/// This field is only used when the [uri] is not [FlespiUri.mqtt].
 List<FlespiSubmoduleConfig>? get submodules;
/// Create a copy of FlespiAcl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlespiAclCopyWith<FlespiAcl> get copyWith => _$FlespiAclCopyWithImpl<FlespiAcl>(this as FlespiAcl, _$identity);

  /// Serializes this FlespiAcl to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlespiAcl&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.topic, topic) || other.topic == topic)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.methods, methods)&&const DeepCollectionEquality().equals(other.ids, ids)&&const DeepCollectionEquality().equals(other.submodules, submodules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri,topic,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(methods),const DeepCollectionEquality().hash(ids),const DeepCollectionEquality().hash(submodules));

@override
String toString() {
  return 'FlespiAcl(uri: $uri, topic: $topic, actions: $actions, methods: $methods, ids: $ids, submodules: $submodules)';
}


}

/// @nodoc
abstract mixin class $FlespiAclCopyWith<$Res>  {
  factory $FlespiAclCopyWith(FlespiAcl value, $Res Function(FlespiAcl) _then) = _$FlespiAclCopyWithImpl;
@useResult
$Res call({
@FlespiUriConverter() FlespiUri uri, String? topic,@FlespiActionConverter() List<FlespiAction>? actions,@FlespiMethodConverter() List<FlespiMethod>? methods, List<String>? ids, List<FlespiSubmoduleConfig>? submodules
});




}
/// @nodoc
class _$FlespiAclCopyWithImpl<$Res>
    implements $FlespiAclCopyWith<$Res> {
  _$FlespiAclCopyWithImpl(this._self, this._then);

  final FlespiAcl _self;
  final $Res Function(FlespiAcl) _then;

/// Create a copy of FlespiAcl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = null,Object? topic = freezed,Object? actions = freezed,Object? methods = freezed,Object? ids = freezed,Object? submodules = freezed,}) {
  return _then(_self.copyWith(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as FlespiUri,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<FlespiAction>?,methods: freezed == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<FlespiMethod>?,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,submodules: freezed == submodules ? _self.submodules : submodules // ignore: cast_nullable_to_non_nullable
as List<FlespiSubmoduleConfig>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlespiAcl].
extension FlespiAclPatterns on FlespiAcl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlespiAcl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlespiAcl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlespiAcl value)  $default,){
final _that = this;
switch (_that) {
case _FlespiAcl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlespiAcl value)?  $default,){
final _that = this;
switch (_that) {
case _FlespiAcl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@FlespiUriConverter()  FlespiUri uri,  String? topic, @FlespiActionConverter()  List<FlespiAction>? actions, @FlespiMethodConverter()  List<FlespiMethod>? methods,  List<String>? ids,  List<FlespiSubmoduleConfig>? submodules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlespiAcl() when $default != null:
return $default(_that.uri,_that.topic,_that.actions,_that.methods,_that.ids,_that.submodules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@FlespiUriConverter()  FlespiUri uri,  String? topic, @FlespiActionConverter()  List<FlespiAction>? actions, @FlespiMethodConverter()  List<FlespiMethod>? methods,  List<String>? ids,  List<FlespiSubmoduleConfig>? submodules)  $default,) {final _that = this;
switch (_that) {
case _FlespiAcl():
return $default(_that.uri,_that.topic,_that.actions,_that.methods,_that.ids,_that.submodules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@FlespiUriConverter()  FlespiUri uri,  String? topic, @FlespiActionConverter()  List<FlespiAction>? actions, @FlespiMethodConverter()  List<FlespiMethod>? methods,  List<String>? ids,  List<FlespiSubmoduleConfig>? submodules)?  $default,) {final _that = this;
switch (_that) {
case _FlespiAcl() when $default != null:
return $default(_that.uri,_that.topic,_that.actions,_that.methods,_that.ids,_that.submodules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlespiAcl extends FlespiAcl {
  const _FlespiAcl({@FlespiUriConverter() required this.uri, this.topic, @FlespiActionConverter() this.actions, @FlespiMethodConverter() this.methods, this.ids, this.submodules}): super._();
  factory _FlespiAcl.fromJson(Map<String, dynamic> json) => _$FlespiAclFromJson(json);

/// [uri] is the URI of the ACL.
@override@FlespiUriConverter() final  FlespiUri uri;
/// [topic] is the topic of the ACL.
/// This field is only used when the [uri] is [FlespiUri.mqtt].
@override final  String? topic;
/// [actions] is the list of actions allowed for the ACL.
/// This field is only used when the [uri] is [FlespiUri.mqtt].
@override@FlespiActionConverter() final  List<FlespiAction>? actions;
/// [methods] is the list of methods allowed for the ACL.
@override@FlespiMethodConverter() final  List<FlespiMethod>? methods;
/// [ids] is the list of IDs allowed for the ACL.
/// Due to a freezed restrictions, we cannot support `all` as a value for this field.
@override final  List<String>? ids;
/// [submodules] is the list of submodules allowed for the ACL.
/// This field is only used when the [uri] is not [FlespiUri.mqtt].
@override final  List<FlespiSubmoduleConfig>? submodules;

/// Create a copy of FlespiAcl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlespiAclCopyWith<_FlespiAcl> get copyWith => __$FlespiAclCopyWithImpl<_FlespiAcl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlespiAclToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlespiAcl&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.topic, topic) || other.topic == topic)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.methods, methods)&&const DeepCollectionEquality().equals(other.ids, ids)&&const DeepCollectionEquality().equals(other.submodules, submodules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri,topic,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(methods),const DeepCollectionEquality().hash(ids),const DeepCollectionEquality().hash(submodules));

@override
String toString() {
  return 'FlespiAcl(uri: $uri, topic: $topic, actions: $actions, methods: $methods, ids: $ids, submodules: $submodules)';
}


}

/// @nodoc
abstract mixin class _$FlespiAclCopyWith<$Res> implements $FlespiAclCopyWith<$Res> {
  factory _$FlespiAclCopyWith(_FlespiAcl value, $Res Function(_FlespiAcl) _then) = __$FlespiAclCopyWithImpl;
@override @useResult
$Res call({
@FlespiUriConverter() FlespiUri uri, String? topic,@FlespiActionConverter() List<FlespiAction>? actions,@FlespiMethodConverter() List<FlespiMethod>? methods, List<String>? ids, List<FlespiSubmoduleConfig>? submodules
});




}
/// @nodoc
class __$FlespiAclCopyWithImpl<$Res>
    implements _$FlespiAclCopyWith<$Res> {
  __$FlespiAclCopyWithImpl(this._self, this._then);

  final _FlespiAcl _self;
  final $Res Function(_FlespiAcl) _then;

/// Create a copy of FlespiAcl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = null,Object? topic = freezed,Object? actions = freezed,Object? methods = freezed,Object? ids = freezed,Object? submodules = freezed,}) {
  return _then(_FlespiAcl(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as FlespiUri,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<FlespiAction>?,methods: freezed == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<FlespiMethod>?,ids: freezed == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>?,submodules: freezed == submodules ? _self.submodules : submodules // ignore: cast_nullable_to_non_nullable
as List<FlespiSubmoduleConfig>?,
  ));
}


}


/// @nodoc
mixin _$FlespiSubmoduleConfig {

/// [submodule] is the submodule of the configuration.
@FlespiSubmoduleConverter() FlespiSubmodule get name;/// [methods] is the list of methods allowed for the submodule.
@FlespiMethodConverter() List<FlespiMethod> get methods;
/// Create a copy of FlespiSubmoduleConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlespiSubmoduleConfigCopyWith<FlespiSubmoduleConfig> get copyWith => _$FlespiSubmoduleConfigCopyWithImpl<FlespiSubmoduleConfig>(this as FlespiSubmoduleConfig, _$identity);

  /// Serializes this FlespiSubmoduleConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlespiSubmoduleConfig&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.methods, methods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(methods));

@override
String toString() {
  return 'FlespiSubmoduleConfig(name: $name, methods: $methods)';
}


}

/// @nodoc
abstract mixin class $FlespiSubmoduleConfigCopyWith<$Res>  {
  factory $FlespiSubmoduleConfigCopyWith(FlespiSubmoduleConfig value, $Res Function(FlespiSubmoduleConfig) _then) = _$FlespiSubmoduleConfigCopyWithImpl;
@useResult
$Res call({
@FlespiSubmoduleConverter() FlespiSubmodule name,@FlespiMethodConverter() List<FlespiMethod> methods
});




}
/// @nodoc
class _$FlespiSubmoduleConfigCopyWithImpl<$Res>
    implements $FlespiSubmoduleConfigCopyWith<$Res> {
  _$FlespiSubmoduleConfigCopyWithImpl(this._self, this._then);

  final FlespiSubmoduleConfig _self;
  final $Res Function(FlespiSubmoduleConfig) _then;

/// Create a copy of FlespiSubmoduleConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? methods = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FlespiSubmodule,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<FlespiMethod>,
  ));
}

}


/// Adds pattern-matching-related methods to [FlespiSubmoduleConfig].
extension FlespiSubmoduleConfigPatterns on FlespiSubmoduleConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlespiSubmoduleConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlespiSubmoduleConfig value)  $default,){
final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlespiSubmoduleConfig value)?  $default,){
final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@FlespiSubmoduleConverter()  FlespiSubmodule name, @FlespiMethodConverter()  List<FlespiMethod> methods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig() when $default != null:
return $default(_that.name,_that.methods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@FlespiSubmoduleConverter()  FlespiSubmodule name, @FlespiMethodConverter()  List<FlespiMethod> methods)  $default,) {final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig():
return $default(_that.name,_that.methods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@FlespiSubmoduleConverter()  FlespiSubmodule name, @FlespiMethodConverter()  List<FlespiMethod> methods)?  $default,) {final _that = this;
switch (_that) {
case _FlespiSubmoduleConfig() when $default != null:
return $default(_that.name,_that.methods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlespiSubmoduleConfig extends FlespiSubmoduleConfig {
  const _FlespiSubmoduleConfig({@FlespiSubmoduleConverter() required this.name, @FlespiMethodConverter() this.methods = const []}): super._();
  factory _FlespiSubmoduleConfig.fromJson(Map<String, dynamic> json) => _$FlespiSubmoduleConfigFromJson(json);

/// [submodule] is the submodule of the configuration.
@override@FlespiSubmoduleConverter() final  FlespiSubmodule name;
/// [methods] is the list of methods allowed for the submodule.
@override@JsonKey()@FlespiMethodConverter() final  List<FlespiMethod> methods;

/// Create a copy of FlespiSubmoduleConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlespiSubmoduleConfigCopyWith<_FlespiSubmoduleConfig> get copyWith => __$FlespiSubmoduleConfigCopyWithImpl<_FlespiSubmoduleConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlespiSubmoduleConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlespiSubmoduleConfig&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.methods, methods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(methods));

@override
String toString() {
  return 'FlespiSubmoduleConfig(name: $name, methods: $methods)';
}


}

/// @nodoc
abstract mixin class _$FlespiSubmoduleConfigCopyWith<$Res> implements $FlespiSubmoduleConfigCopyWith<$Res> {
  factory _$FlespiSubmoduleConfigCopyWith(_FlespiSubmoduleConfig value, $Res Function(_FlespiSubmoduleConfig) _then) = __$FlespiSubmoduleConfigCopyWithImpl;
@override @useResult
$Res call({
@FlespiSubmoduleConverter() FlespiSubmodule name,@FlespiMethodConverter() List<FlespiMethod> methods
});




}
/// @nodoc
class __$FlespiSubmoduleConfigCopyWithImpl<$Res>
    implements _$FlespiSubmoduleConfigCopyWith<$Res> {
  __$FlespiSubmoduleConfigCopyWithImpl(this._self, this._then);

  final _FlespiSubmoduleConfig _self;
  final $Res Function(_FlespiSubmoduleConfig) _then;

/// Create a copy of FlespiSubmoduleConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? methods = null,}) {
  return _then(_FlespiSubmoduleConfig(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FlespiSubmodule,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<FlespiMethod>,
  ));
}


}

// dart format on
