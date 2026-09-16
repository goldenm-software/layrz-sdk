// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportTemplate {

/// Is the report template ID.
 String get id;/// Is the report template name.
 String get name;/// Is the structure of the report template, as an ordered list of pages.
 List<ReportTemplatePage>? get structure;/// Is the report template linked assets.
 List<Asset>? get assets;/// Is the report template linked assets' IDs.
 List<String>? get assetsIds;/// Is the report template linked outbound services.
 List<OutboundService>? get outboundServices;/// Is the report template linked outbound services' IDs.
 List<String>? get outboundServicesIds;/// Controls the access of this entity.
 List<Access>? get access;
/// Create a copy of ReportTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplateCopyWith<ReportTemplate> get copyWith => _$ReportTemplateCopyWithImpl<ReportTemplate>(this as ReportTemplate, _$identity);

  /// Serializes this ReportTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.structure, structure)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(structure),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'ReportTemplate(id: $id, name: $name, structure: $structure, assets: $assets, assetsIds: $assetsIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, access: $access)';
}


}

/// @nodoc
abstract mixin class $ReportTemplateCopyWith<$Res>  {
  factory $ReportTemplateCopyWith(ReportTemplate value, $Res Function(ReportTemplate) _then) = _$ReportTemplateCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<ReportTemplatePage>? structure, List<Asset>? assets, List<String>? assetsIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Access>? access
});




}
/// @nodoc
class _$ReportTemplateCopyWithImpl<$Res>
    implements $ReportTemplateCopyWith<$Res> {
  _$ReportTemplateCopyWithImpl(this._self, this._then);

  final ReportTemplate _self;
  final $Res Function(ReportTemplate) _then;

/// Create a copy of ReportTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? structure = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<ReportTemplatePage>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplate].
extension ReportTemplatePatterns on ReportTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplate value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<ReportTemplatePage>? structure,  List<Asset>? assets,  List<String>? assetsIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplate() when $default != null:
return $default(_that.id,_that.name,_that.structure,_that.assets,_that.assetsIds,_that.outboundServices,_that.outboundServicesIds,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<ReportTemplatePage>? structure,  List<Asset>? assets,  List<String>? assetsIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplate():
return $default(_that.id,_that.name,_that.structure,_that.assets,_that.assetsIds,_that.outboundServices,_that.outboundServicesIds,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<ReportTemplatePage>? structure,  List<Asset>? assets,  List<String>? assetsIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplate() when $default != null:
return $default(_that.id,_that.name,_that.structure,_that.assets,_that.assetsIds,_that.outboundServices,_that.outboundServicesIds,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplate extends ReportTemplate {
  const _ReportTemplate({required this.id, required this.name, this.structure, this.assets, this.assetsIds, this.outboundServices, this.outboundServicesIds, this.access}): super._();
  factory _ReportTemplate.fromJson(Map<String, dynamic> json) => _$ReportTemplateFromJson(json);

/// Is the report template ID.
@override final  String id;
/// Is the report template name.
@override final  String name;
/// Is the structure of the report template, as an ordered list of pages.
@override final  List<ReportTemplatePage>? structure;
/// Is the report template linked assets.
@override final  List<Asset>? assets;
/// Is the report template linked assets' IDs.
@override final  List<String>? assetsIds;
/// Is the report template linked outbound services.
@override final  List<OutboundService>? outboundServices;
/// Is the report template linked outbound services' IDs.
@override final  List<String>? outboundServicesIds;
/// Controls the access of this entity.
@override final  List<Access>? access;

/// Create a copy of ReportTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplateCopyWith<_ReportTemplate> get copyWith => __$ReportTemplateCopyWithImpl<_ReportTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.structure, structure)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(structure),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'ReportTemplate(id: $id, name: $name, structure: $structure, assets: $assets, assetsIds: $assetsIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, access: $access)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplateCopyWith<$Res> implements $ReportTemplateCopyWith<$Res> {
  factory _$ReportTemplateCopyWith(_ReportTemplate value, $Res Function(_ReportTemplate) _then) = __$ReportTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<ReportTemplatePage>? structure, List<Asset>? assets, List<String>? assetsIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Access>? access
});




}
/// @nodoc
class __$ReportTemplateCopyWithImpl<$Res>
    implements _$ReportTemplateCopyWith<$Res> {
  __$ReportTemplateCopyWithImpl(this._self, this._then);

  final _ReportTemplate _self;
  final $Res Function(_ReportTemplate) _then;

/// Create a copy of ReportTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? structure = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? access = freezed,}) {
  return _then(_ReportTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,structure: freezed == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<ReportTemplatePage>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}


}


/// @nodoc
mixin _$ReportTemplateInput {

/// Is the report template ID, or null when creating a new one.
 String? get id;/// Is the report template ID, or null when creating a new one.
 set id(String? value);/// Is the report template name. Defaults to an empty string.
 String get name;/// Is the report template name. Defaults to an empty string.
 set name(String value);/// Is the report template linked assets' IDs. Defaults to an empty list.
 List<String> get assetsIds;/// Is the report template linked assets' IDs. Defaults to an empty list.
 set assetsIds(List<String> value);/// Is the report template linked outbound services' IDs. Defaults to an empty list.
 List<String> get outboundServicesIds;/// Is the report template linked outbound services' IDs. Defaults to an empty list.
 set outboundServicesIds(List<String> value);/// Is the structure of the report template, as an ordered list of pages. Defaults to an
/// empty list.
 List<ReportTemplatePageInput> get structure;/// Is the structure of the report template, as an ordered list of pages. Defaults to an
/// empty list.
 set structure(List<ReportTemplatePageInput> value);
/// Create a copy of ReportTemplateInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplateInputCopyWith<ReportTemplateInput> get copyWith => _$ReportTemplateInputCopyWithImpl<ReportTemplateInput>(this as ReportTemplateInput, _$identity);

  /// Serializes this ReportTemplateInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportTemplateInput(id: $id, name: $name, assetsIds: $assetsIds, outboundServicesIds: $outboundServicesIds, structure: $structure)';
}


}

/// @nodoc
abstract mixin class $ReportTemplateInputCopyWith<$Res>  {
  factory $ReportTemplateInputCopyWith(ReportTemplateInput value, $Res Function(ReportTemplateInput) _then) = _$ReportTemplateInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, List<String> assetsIds, List<String> outboundServicesIds, List<ReportTemplatePageInput> structure
});




}
/// @nodoc
class _$ReportTemplateInputCopyWithImpl<$Res>
    implements $ReportTemplateInputCopyWith<$Res> {
  _$ReportTemplateInputCopyWithImpl(this._self, this._then);

  final ReportTemplateInput _self;
  final $Res Function(ReportTemplateInput) _then;

/// Create a copy of ReportTemplateInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? assetsIds = null,Object? outboundServicesIds = null,Object? structure = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,structure: null == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<ReportTemplatePageInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplateInput].
extension ReportTemplateInputPatterns on ReportTemplateInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplateInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplateInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplateInput value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplateInput value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  List<String> assetsIds,  List<String> outboundServicesIds,  List<ReportTemplatePageInput> structure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplateInput() when $default != null:
return $default(_that.id,_that.name,_that.assetsIds,_that.outboundServicesIds,_that.structure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  List<String> assetsIds,  List<String> outboundServicesIds,  List<ReportTemplatePageInput> structure)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateInput():
return $default(_that.id,_that.name,_that.assetsIds,_that.outboundServicesIds,_that.structure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  List<String> assetsIds,  List<String> outboundServicesIds,  List<ReportTemplatePageInput> structure)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateInput() when $default != null:
return $default(_that.id,_that.name,_that.assetsIds,_that.outboundServicesIds,_that.structure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplateInput extends ReportTemplateInput {
   _ReportTemplateInput({this.id, this.name = '', this.assetsIds = const [], this.outboundServicesIds = const [], this.structure = const []}): super._();
  factory _ReportTemplateInput.fromJson(Map<String, dynamic> json) => _$ReportTemplateInputFromJson(json);

/// Is the report template ID, or null when creating a new one.
@override  String? id;
/// Is the report template name. Defaults to an empty string.
@override@JsonKey()  String name;
/// Is the report template linked assets' IDs. Defaults to an empty list.
@override@JsonKey()  List<String> assetsIds;
/// Is the report template linked outbound services' IDs. Defaults to an empty list.
@override@JsonKey()  List<String> outboundServicesIds;
/// Is the structure of the report template, as an ordered list of pages. Defaults to an
/// empty list.
@override@JsonKey()  List<ReportTemplatePageInput> structure;

/// Create a copy of ReportTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplateInputCopyWith<_ReportTemplateInput> get copyWith => __$ReportTemplateInputCopyWithImpl<_ReportTemplateInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplateInputToJson(this, );
}



@override
String toString() {
  return 'ReportTemplateInput(id: $id, name: $name, assetsIds: $assetsIds, outboundServicesIds: $outboundServicesIds, structure: $structure)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplateInputCopyWith<$Res> implements $ReportTemplateInputCopyWith<$Res> {
  factory _$ReportTemplateInputCopyWith(_ReportTemplateInput value, $Res Function(_ReportTemplateInput) _then) = __$ReportTemplateInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, List<String> assetsIds, List<String> outboundServicesIds, List<ReportTemplatePageInput> structure
});




}
/// @nodoc
class __$ReportTemplateInputCopyWithImpl<$Res>
    implements _$ReportTemplateInputCopyWith<$Res> {
  __$ReportTemplateInputCopyWithImpl(this._self, this._then);

  final _ReportTemplateInput _self;
  final $Res Function(_ReportTemplateInput) _then;

/// Create a copy of ReportTemplateInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? assetsIds = null,Object? outboundServicesIds = null,Object? structure = null,}) {
  return _then(_ReportTemplateInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,structure: null == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<ReportTemplatePageInput>,
  ));
}


}


/// @nodoc
mixin _$ReportTemplatePage {

/// Is the page title.
 String get title;/// Is the page source.
@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource get source;/// Is the algorithm used to generate the page data.
@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm get algorithm;/// Is the page data, aka the columns. Only used when [algorithm] is [ReportAlgorithm.auto].
 List<ReportTemplateCol>? get cols;/// Is the script in Python used to generate the page data. Only used when [algorithm] is
/// [ReportAlgorithm.python].
 String? get script;
/// Create a copy of ReportTemplatePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplatePageCopyWith<ReportTemplatePage> get copyWith => _$ReportTemplatePageCopyWithImpl<ReportTemplatePage>(this as ReportTemplatePage, _$identity);

  /// Serializes this ReportTemplatePage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportTemplatePage&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&const DeepCollectionEquality().equals(other.cols, cols)&&(identical(other.script, script) || other.script == script));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,algorithm,const DeepCollectionEquality().hash(cols),script);

@override
String toString() {
  return 'ReportTemplatePage(title: $title, source: $source, algorithm: $algorithm, cols: $cols, script: $script)';
}


}

/// @nodoc
abstract mixin class $ReportTemplatePageCopyWith<$Res>  {
  factory $ReportTemplatePageCopyWith(ReportTemplatePage value, $Res Function(ReportTemplatePage) _then) = _$ReportTemplatePageCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource source,@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm algorithm, List<ReportTemplateCol>? cols, String? script
});




}
/// @nodoc
class _$ReportTemplatePageCopyWithImpl<$Res>
    implements $ReportTemplatePageCopyWith<$Res> {
  _$ReportTemplatePageCopyWithImpl(this._self, this._then);

  final ReportTemplatePage _self;
  final $Res Function(ReportTemplatePage) _then;

/// Create a copy of ReportTemplatePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? source = null,Object? algorithm = null,Object? cols = freezed,Object? script = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ReportSource,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ReportAlgorithm,cols: freezed == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as List<ReportTemplateCol>?,script: freezed == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplatePage].
extension ReportTemplatePagePatterns on ReportTemplatePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplatePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplatePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplatePage value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplatePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplatePage value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplatePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateCol>? cols,  String? script)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplatePage() when $default != null:
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateCol>? cols,  String? script)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplatePage():
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateCol>? cols,  String? script)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplatePage() when $default != null:
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplatePage extends ReportTemplatePage {
  const _ReportTemplatePage({required this.title, @JsonKey(unknownEnumValue: ReportSource.messages) required this.source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto) this.algorithm = ReportAlgorithm.auto, this.cols, this.script}): super._();
  factory _ReportTemplatePage.fromJson(Map<String, dynamic> json) => _$ReportTemplatePageFromJson(json);

/// Is the page title.
@override final  String title;
/// Is the page source.
@override@JsonKey(unknownEnumValue: ReportSource.messages) final  ReportSource source;
/// Is the algorithm used to generate the page data.
@override@JsonKey(unknownEnumValue: ReportAlgorithm.auto) final  ReportAlgorithm algorithm;
/// Is the page data, aka the columns. Only used when [algorithm] is [ReportAlgorithm.auto].
@override final  List<ReportTemplateCol>? cols;
/// Is the script in Python used to generate the page data. Only used when [algorithm] is
/// [ReportAlgorithm.python].
@override final  String? script;

/// Create a copy of ReportTemplatePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplatePageCopyWith<_ReportTemplatePage> get copyWith => __$ReportTemplatePageCopyWithImpl<_ReportTemplatePage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplatePageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportTemplatePage&&(identical(other.title, title) || other.title == title)&&(identical(other.source, source) || other.source == source)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&const DeepCollectionEquality().equals(other.cols, cols)&&(identical(other.script, script) || other.script == script));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,source,algorithm,const DeepCollectionEquality().hash(cols),script);

@override
String toString() {
  return 'ReportTemplatePage(title: $title, source: $source, algorithm: $algorithm, cols: $cols, script: $script)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplatePageCopyWith<$Res> implements $ReportTemplatePageCopyWith<$Res> {
  factory _$ReportTemplatePageCopyWith(_ReportTemplatePage value, $Res Function(_ReportTemplatePage) _then) = __$ReportTemplatePageCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource source,@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm algorithm, List<ReportTemplateCol>? cols, String? script
});




}
/// @nodoc
class __$ReportTemplatePageCopyWithImpl<$Res>
    implements _$ReportTemplatePageCopyWith<$Res> {
  __$ReportTemplatePageCopyWithImpl(this._self, this._then);

  final _ReportTemplatePage _self;
  final $Res Function(_ReportTemplatePage) _then;

/// Create a copy of ReportTemplatePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? source = null,Object? algorithm = null,Object? cols = freezed,Object? script = freezed,}) {
  return _then(_ReportTemplatePage(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ReportSource,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ReportAlgorithm,cols: freezed == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as List<ReportTemplateCol>?,script: freezed == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportTemplatePageInput {

/// Is the page title. Defaults to `'Page'`.
 String get title;/// Is the page title. Defaults to `'Page'`.
 set title(String value);/// Is the page source. Defaults to [ReportSource.messages].
@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource get source;/// Is the page source. Defaults to [ReportSource.messages].
@JsonKey(unknownEnumValue: ReportSource.messages) set source(ReportSource value);/// Is the algorithm used to generate the page data. Defaults to [ReportAlgorithm.auto].
@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm get algorithm;/// Is the algorithm used to generate the page data. Defaults to [ReportAlgorithm.auto].
@JsonKey(unknownEnumValue: ReportAlgorithm.auto) set algorithm(ReportAlgorithm value);/// Is the page data, aka the columns. Defaults to an empty list.
 List<ReportTemplateColInput> get cols;/// Is the page data, aka the columns. Defaults to an empty list.
 set cols(List<ReportTemplateColInput> value);/// Is the script in Python used to generate the page data. Defaults to an empty string.
 String get script;/// Is the script in Python used to generate the page data. Defaults to an empty string.
 set script(String value);
/// Create a copy of ReportTemplatePageInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplatePageInputCopyWith<ReportTemplatePageInput> get copyWith => _$ReportTemplatePageInputCopyWithImpl<ReportTemplatePageInput>(this as ReportTemplatePageInput, _$identity);

  /// Serializes this ReportTemplatePageInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportTemplatePageInput(title: $title, source: $source, algorithm: $algorithm, cols: $cols, script: $script)';
}


}

/// @nodoc
abstract mixin class $ReportTemplatePageInputCopyWith<$Res>  {
  factory $ReportTemplatePageInputCopyWith(ReportTemplatePageInput value, $Res Function(ReportTemplatePageInput) _then) = _$ReportTemplatePageInputCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource source,@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm algorithm, List<ReportTemplateColInput> cols, String script
});




}
/// @nodoc
class _$ReportTemplatePageInputCopyWithImpl<$Res>
    implements $ReportTemplatePageInputCopyWith<$Res> {
  _$ReportTemplatePageInputCopyWithImpl(this._self, this._then);

  final ReportTemplatePageInput _self;
  final $Res Function(ReportTemplatePageInput) _then;

/// Create a copy of ReportTemplatePageInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? source = null,Object? algorithm = null,Object? cols = null,Object? script = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ReportSource,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ReportAlgorithm,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as List<ReportTemplateColInput>,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplatePageInput].
extension ReportTemplatePageInputPatterns on ReportTemplatePageInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplatePageInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplatePageInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplatePageInput value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplatePageInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplatePageInput value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplatePageInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateColInput> cols,  String script)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplatePageInput() when $default != null:
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateColInput> cols,  String script)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplatePageInput():
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source, @JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm,  List<ReportTemplateColInput> cols,  String script)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplatePageInput() when $default != null:
return $default(_that.title,_that.source,_that.algorithm,_that.cols,_that.script);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplatePageInput extends ReportTemplatePageInput {
   _ReportTemplatePageInput({this.title = 'Page', @JsonKey(unknownEnumValue: ReportSource.messages) this.source = ReportSource.messages, @JsonKey(unknownEnumValue: ReportAlgorithm.auto) this.algorithm = ReportAlgorithm.auto, this.cols = const [], this.script = ''}): super._();
  factory _ReportTemplatePageInput.fromJson(Map<String, dynamic> json) => _$ReportTemplatePageInputFromJson(json);

/// Is the page title. Defaults to `'Page'`.
@override@JsonKey()  String title;
/// Is the page source. Defaults to [ReportSource.messages].
@override@JsonKey(unknownEnumValue: ReportSource.messages)  ReportSource source;
/// Is the algorithm used to generate the page data. Defaults to [ReportAlgorithm.auto].
@override@JsonKey(unknownEnumValue: ReportAlgorithm.auto)  ReportAlgorithm algorithm;
/// Is the page data, aka the columns. Defaults to an empty list.
@override@JsonKey()  List<ReportTemplateColInput> cols;
/// Is the script in Python used to generate the page data. Defaults to an empty string.
@override@JsonKey()  String script;

/// Create a copy of ReportTemplatePageInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplatePageInputCopyWith<_ReportTemplatePageInput> get copyWith => __$ReportTemplatePageInputCopyWithImpl<_ReportTemplatePageInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplatePageInputToJson(this, );
}



@override
String toString() {
  return 'ReportTemplatePageInput(title: $title, source: $source, algorithm: $algorithm, cols: $cols, script: $script)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplatePageInputCopyWith<$Res> implements $ReportTemplatePageInputCopyWith<$Res> {
  factory _$ReportTemplatePageInputCopyWith(_ReportTemplatePageInput value, $Res Function(_ReportTemplatePageInput) _then) = __$ReportTemplatePageInputCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(unknownEnumValue: ReportSource.messages) ReportSource source,@JsonKey(unknownEnumValue: ReportAlgorithm.auto) ReportAlgorithm algorithm, List<ReportTemplateColInput> cols, String script
});




}
/// @nodoc
class __$ReportTemplatePageInputCopyWithImpl<$Res>
    implements _$ReportTemplatePageInputCopyWith<$Res> {
  __$ReportTemplatePageInputCopyWithImpl(this._self, this._then);

  final _ReportTemplatePageInput _self;
  final $Res Function(_ReportTemplatePageInput) _then;

/// Create a copy of ReportTemplatePageInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? source = null,Object? algorithm = null,Object? cols = null,Object? script = null,}) {
  return _then(_ReportTemplatePageInput(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as ReportSource,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ReportAlgorithm,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as List<ReportTemplateColInput>,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReportTemplateCol {

/// Is the column name.
 String get name;/// Is the column field name.
 String get field;/// Is the visibility of the field.
 bool get visible;/// Is the column's custom identifier.
 bool get isCustom;
/// Create a copy of ReportTemplateCol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplateColCopyWith<ReportTemplateCol> get copyWith => _$ReportTemplateColCopyWithImpl<ReportTemplateCol>(this as ReportTemplateCol, _$identity);

  /// Serializes this ReportTemplateCol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportTemplateCol&&(identical(other.name, name) || other.name == name)&&(identical(other.field, field) || other.field == field)&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,field,visible,isCustom);

@override
String toString() {
  return 'ReportTemplateCol(name: $name, field: $field, visible: $visible, isCustom: $isCustom)';
}


}

/// @nodoc
abstract mixin class $ReportTemplateColCopyWith<$Res>  {
  factory $ReportTemplateColCopyWith(ReportTemplateCol value, $Res Function(ReportTemplateCol) _then) = _$ReportTemplateColCopyWithImpl;
@useResult
$Res call({
 String name, String field, bool visible, bool isCustom
});




}
/// @nodoc
class _$ReportTemplateColCopyWithImpl<$Res>
    implements $ReportTemplateColCopyWith<$Res> {
  _$ReportTemplateColCopyWithImpl(this._self, this._then);

  final ReportTemplateCol _self;
  final $Res Function(ReportTemplateCol) _then;

/// Create a copy of ReportTemplateCol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? field = null,Object? visible = null,Object? isCustom = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplateCol].
extension ReportTemplateColPatterns on ReportTemplateCol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplateCol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplateCol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplateCol value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateCol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplateCol value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateCol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String field,  bool visible,  bool isCustom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplateCol() when $default != null:
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String field,  bool visible,  bool isCustom)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateCol():
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String field,  bool visible,  bool isCustom)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateCol() when $default != null:
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplateCol extends ReportTemplateCol {
  const _ReportTemplateCol({required this.name, required this.field, required this.visible, required this.isCustom}): super._();
  factory _ReportTemplateCol.fromJson(Map<String, dynamic> json) => _$ReportTemplateColFromJson(json);

/// Is the column name.
@override final  String name;
/// Is the column field name.
@override final  String field;
/// Is the visibility of the field.
@override final  bool visible;
/// Is the column's custom identifier.
@override final  bool isCustom;

/// Create a copy of ReportTemplateCol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplateColCopyWith<_ReportTemplateCol> get copyWith => __$ReportTemplateColCopyWithImpl<_ReportTemplateCol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplateColToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportTemplateCol&&(identical(other.name, name) || other.name == name)&&(identical(other.field, field) || other.field == field)&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.isCustom, isCustom) || other.isCustom == isCustom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,field,visible,isCustom);

@override
String toString() {
  return 'ReportTemplateCol(name: $name, field: $field, visible: $visible, isCustom: $isCustom)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplateColCopyWith<$Res> implements $ReportTemplateColCopyWith<$Res> {
  factory _$ReportTemplateColCopyWith(_ReportTemplateCol value, $Res Function(_ReportTemplateCol) _then) = __$ReportTemplateColCopyWithImpl;
@override @useResult
$Res call({
 String name, String field, bool visible, bool isCustom
});




}
/// @nodoc
class __$ReportTemplateColCopyWithImpl<$Res>
    implements _$ReportTemplateColCopyWith<$Res> {
  __$ReportTemplateColCopyWithImpl(this._self, this._then);

  final _ReportTemplateCol _self;
  final $Res Function(_ReportTemplateCol) _then;

/// Create a copy of ReportTemplateCol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? field = null,Object? visible = null,Object? isCustom = null,}) {
  return _then(_ReportTemplateCol(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReportTemplateColInput {

/// Is the column name. Defaults to an empty string.
 String get name;/// Is the column name. Defaults to an empty string.
 set name(String value);/// Is the column field name. Defaults to an empty string.
 String get field;/// Is the column field name. Defaults to an empty string.
 set field(String value);/// Is the visibility of the field. Defaults to `true`.
 bool get visible;/// Is the visibility of the field. Defaults to `true`.
 set visible(bool value);/// Is the column's custom identifier. Defaults to `false`.
 bool get isCustom;/// Is the column's custom identifier. Defaults to `false`.
 set isCustom(bool value);
/// Create a copy of ReportTemplateColInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTemplateColInputCopyWith<ReportTemplateColInput> get copyWith => _$ReportTemplateColInputCopyWithImpl<ReportTemplateColInput>(this as ReportTemplateColInput, _$identity);

  /// Serializes this ReportTemplateColInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportTemplateColInput(name: $name, field: $field, visible: $visible, isCustom: $isCustom)';
}


}

/// @nodoc
abstract mixin class $ReportTemplateColInputCopyWith<$Res>  {
  factory $ReportTemplateColInputCopyWith(ReportTemplateColInput value, $Res Function(ReportTemplateColInput) _then) = _$ReportTemplateColInputCopyWithImpl;
@useResult
$Res call({
 String name, String field, bool visible, bool isCustom
});




}
/// @nodoc
class _$ReportTemplateColInputCopyWithImpl<$Res>
    implements $ReportTemplateColInputCopyWith<$Res> {
  _$ReportTemplateColInputCopyWithImpl(this._self, this._then);

  final ReportTemplateColInput _self;
  final $Res Function(ReportTemplateColInput) _then;

/// Create a copy of ReportTemplateColInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? field = null,Object? visible = null,Object? isCustom = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTemplateColInput].
extension ReportTemplateColInputPatterns on ReportTemplateColInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTemplateColInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTemplateColInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTemplateColInput value)  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateColInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTemplateColInput value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTemplateColInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String field,  bool visible,  bool isCustom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTemplateColInput() when $default != null:
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String field,  bool visible,  bool isCustom)  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateColInput():
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String field,  bool visible,  bool isCustom)?  $default,) {final _that = this;
switch (_that) {
case _ReportTemplateColInput() when $default != null:
return $default(_that.name,_that.field,_that.visible,_that.isCustom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTemplateColInput extends ReportTemplateColInput {
   _ReportTemplateColInput({this.name = '', this.field = '', this.visible = true, this.isCustom = false}): super._();
  factory _ReportTemplateColInput.fromJson(Map<String, dynamic> json) => _$ReportTemplateColInputFromJson(json);

/// Is the column name. Defaults to an empty string.
@override@JsonKey()  String name;
/// Is the column field name. Defaults to an empty string.
@override@JsonKey()  String field;
/// Is the visibility of the field. Defaults to `true`.
@override@JsonKey()  bool visible;
/// Is the column's custom identifier. Defaults to `false`.
@override@JsonKey()  bool isCustom;

/// Create a copy of ReportTemplateColInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTemplateColInputCopyWith<_ReportTemplateColInput> get copyWith => __$ReportTemplateColInputCopyWithImpl<_ReportTemplateColInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTemplateColInputToJson(this, );
}



@override
String toString() {
  return 'ReportTemplateColInput(name: $name, field: $field, visible: $visible, isCustom: $isCustom)';
}


}

/// @nodoc
abstract mixin class _$ReportTemplateColInputCopyWith<$Res> implements $ReportTemplateColInputCopyWith<$Res> {
  factory _$ReportTemplateColInputCopyWith(_ReportTemplateColInput value, $Res Function(_ReportTemplateColInput) _then) = __$ReportTemplateColInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String field, bool visible, bool isCustom
});




}
/// @nodoc
class __$ReportTemplateColInputCopyWithImpl<$Res>
    implements _$ReportTemplateColInputCopyWith<$Res> {
  __$ReportTemplateColInputCopyWithImpl(this._self, this._then);

  final _ReportTemplateColInput _self;
  final $Res Function(_ReportTemplateColInput) _then;

/// Create a copy of ReportTemplateColInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? field = null,Object? visible = null,Object? isCustom = null,}) {
  return _then(_ReportTemplateColInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,isCustom: null == isCustom ? _self.isCustom : isCustom // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReportPreview {

/// Is the name of the report preview.
 String get name;/// Is the pages inside of the report. Defaults to an empty list.
 List<ReportPage> get pages;
/// Create a copy of ReportPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPreviewCopyWith<ReportPreview> get copyWith => _$ReportPreviewCopyWithImpl<ReportPreview>(this as ReportPreview, _$identity);

  /// Serializes this ReportPreview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPreview&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.pages, pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(pages));

@override
String toString() {
  return 'ReportPreview(name: $name, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $ReportPreviewCopyWith<$Res>  {
  factory $ReportPreviewCopyWith(ReportPreview value, $Res Function(ReportPreview) _then) = _$ReportPreviewCopyWithImpl;
@useResult
$Res call({
 String name, List<ReportPage> pages
});




}
/// @nodoc
class _$ReportPreviewCopyWithImpl<$Res>
    implements $ReportPreviewCopyWith<$Res> {
  _$ReportPreviewCopyWithImpl(this._self, this._then);

  final ReportPreview _self;
  final $Res Function(ReportPreview) _then;

/// Create a copy of ReportPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? pages = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ReportPage>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPreview].
extension ReportPreviewPatterns on ReportPreview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPreview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPreview value)  $default,){
final _that = this;
switch (_that) {
case _ReportPreview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPreview value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPreview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<ReportPage> pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPreview() when $default != null:
return $default(_that.name,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<ReportPage> pages)  $default,) {final _that = this;
switch (_that) {
case _ReportPreview():
return $default(_that.name,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<ReportPage> pages)?  $default,) {final _that = this;
switch (_that) {
case _ReportPreview() when $default != null:
return $default(_that.name,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportPreview extends ReportPreview {
  const _ReportPreview({required this.name, this.pages = const []}): super._();
  factory _ReportPreview.fromJson(Map<String, dynamic> json) => _$ReportPreviewFromJson(json);

/// Is the name of the report preview.
@override final  String name;
/// Is the pages inside of the report. Defaults to an empty list.
@override@JsonKey() final  List<ReportPage> pages;

/// Create a copy of ReportPreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPreviewCopyWith<_ReportPreview> get copyWith => __$ReportPreviewCopyWithImpl<_ReportPreview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportPreviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPreview&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.pages, pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(pages));

@override
String toString() {
  return 'ReportPreview(name: $name, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$ReportPreviewCopyWith<$Res> implements $ReportPreviewCopyWith<$Res> {
  factory _$ReportPreviewCopyWith(_ReportPreview value, $Res Function(_ReportPreview) _then) = __$ReportPreviewCopyWithImpl;
@override @useResult
$Res call({
 String name, List<ReportPage> pages
});




}
/// @nodoc
class __$ReportPreviewCopyWithImpl<$Res>
    implements _$ReportPreviewCopyWith<$Res> {
  __$ReportPreviewCopyWithImpl(this._self, this._then);

  final _ReportPreview _self;
  final $Res Function(_ReportPreview) _then;

/// Create a copy of ReportPreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? pages = null,}) {
  return _then(_ReportPreview(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ReportPage>,
  ));
}


}


/// @nodoc
mixin _$ReportPage {

/// Is the name of the report page.
 String get name;/// Is the rows inside of the report. Defaults to an empty list.
 List<ReportRow> get rows;/// Is the headers of the report. Defaults to an empty list.
 List<ReportHeader> get headers;
/// Create a copy of ReportPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPageCopyWith<ReportPage> get copyWith => _$ReportPageCopyWithImpl<ReportPage>(this as ReportPage, _$identity);

  /// Serializes this ReportPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPage&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.rows, rows)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(rows),const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'ReportPage(name: $name, rows: $rows, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $ReportPageCopyWith<$Res>  {
  factory $ReportPageCopyWith(ReportPage value, $Res Function(ReportPage) _then) = _$ReportPageCopyWithImpl;
@useResult
$Res call({
 String name, List<ReportRow> rows, List<ReportHeader> headers
});




}
/// @nodoc
class _$ReportPageCopyWithImpl<$Res>
    implements $ReportPageCopyWith<$Res> {
  _$ReportPageCopyWithImpl(this._self, this._then);

  final ReportPage _self;
  final $Res Function(ReportPage) _then;

/// Create a copy of ReportPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rows = null,Object? headers = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<ReportRow>,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<ReportHeader>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPage].
extension ReportPagePatterns on ReportPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPage value)  $default,){
final _that = this;
switch (_that) {
case _ReportPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPage value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<ReportRow> rows,  List<ReportHeader> headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPage() when $default != null:
return $default(_that.name,_that.rows,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<ReportRow> rows,  List<ReportHeader> headers)  $default,) {final _that = this;
switch (_that) {
case _ReportPage():
return $default(_that.name,_that.rows,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<ReportRow> rows,  List<ReportHeader> headers)?  $default,) {final _that = this;
switch (_that) {
case _ReportPage() when $default != null:
return $default(_that.name,_that.rows,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportPage extends ReportPage {
  const _ReportPage({required this.name, this.rows = const [], this.headers = const []}): super._();
  factory _ReportPage.fromJson(Map<String, dynamic> json) => _$ReportPageFromJson(json);

/// Is the name of the report page.
@override final  String name;
/// Is the rows inside of the report. Defaults to an empty list.
@override@JsonKey() final  List<ReportRow> rows;
/// Is the headers of the report. Defaults to an empty list.
@override@JsonKey() final  List<ReportHeader> headers;

/// Create a copy of ReportPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPageCopyWith<_ReportPage> get copyWith => __$ReportPageCopyWithImpl<_ReportPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPage&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.rows, rows)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(rows),const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'ReportPage(name: $name, rows: $rows, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$ReportPageCopyWith<$Res> implements $ReportPageCopyWith<$Res> {
  factory _$ReportPageCopyWith(_ReportPage value, $Res Function(_ReportPage) _then) = __$ReportPageCopyWithImpl;
@override @useResult
$Res call({
 String name, List<ReportRow> rows, List<ReportHeader> headers
});




}
/// @nodoc
class __$ReportPageCopyWithImpl<$Res>
    implements _$ReportPageCopyWith<$Res> {
  __$ReportPageCopyWithImpl(this._self, this._then);

  final _ReportPage _self;
  final $Res Function(_ReportPage) _then;

/// Create a copy of ReportPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? rows = null,Object? headers = null,}) {
  return _then(_ReportPage(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<ReportRow>,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<ReportHeader>,
  ));
}


}


/// @nodoc
mixin _$ReportRow {

/// Is the cells of the report row. Defaults to an empty list.
 List<ReportCell> get content;/// Indicates if the row is compact. Defaults to `false`.
 bool get compact;
/// Create a copy of ReportRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportRowCopyWith<ReportRow> get copyWith => _$ReportRowCopyWithImpl<ReportRow>(this as ReportRow, _$identity);

  /// Serializes this ReportRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportRow&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.compact, compact) || other.compact == compact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),compact);

@override
String toString() {
  return 'ReportRow(content: $content, compact: $compact)';
}


}

/// @nodoc
abstract mixin class $ReportRowCopyWith<$Res>  {
  factory $ReportRowCopyWith(ReportRow value, $Res Function(ReportRow) _then) = _$ReportRowCopyWithImpl;
@useResult
$Res call({
 List<ReportCell> content, bool compact
});




}
/// @nodoc
class _$ReportRowCopyWithImpl<$Res>
    implements $ReportRowCopyWith<$Res> {
  _$ReportRowCopyWithImpl(this._self, this._then);

  final ReportRow _self;
  final $Res Function(ReportRow) _then;

/// Create a copy of ReportRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? compact = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ReportCell>,compact: null == compact ? _self.compact : compact // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportRow].
extension ReportRowPatterns on ReportRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportRow value)  $default,){
final _that = this;
switch (_that) {
case _ReportRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportRow value)?  $default,){
final _that = this;
switch (_that) {
case _ReportRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReportCell> content,  bool compact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportRow() when $default != null:
return $default(_that.content,_that.compact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReportCell> content,  bool compact)  $default,) {final _that = this;
switch (_that) {
case _ReportRow():
return $default(_that.content,_that.compact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReportCell> content,  bool compact)?  $default,) {final _that = this;
switch (_that) {
case _ReportRow() when $default != null:
return $default(_that.content,_that.compact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportRow extends ReportRow {
  const _ReportRow({this.content = const [], this.compact = false}): super._();
  factory _ReportRow.fromJson(Map<String, dynamic> json) => _$ReportRowFromJson(json);

/// Is the cells of the report row. Defaults to an empty list.
@override@JsonKey() final  List<ReportCell> content;
/// Indicates if the row is compact. Defaults to `false`.
@override@JsonKey() final  bool compact;

/// Create a copy of ReportRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportRowCopyWith<_ReportRow> get copyWith => __$ReportRowCopyWithImpl<_ReportRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportRow&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.compact, compact) || other.compact == compact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),compact);

@override
String toString() {
  return 'ReportRow(content: $content, compact: $compact)';
}


}

/// @nodoc
abstract mixin class _$ReportRowCopyWith<$Res> implements $ReportRowCopyWith<$Res> {
  factory _$ReportRowCopyWith(_ReportRow value, $Res Function(_ReportRow) _then) = __$ReportRowCopyWithImpl;
@override @useResult
$Res call({
 List<ReportCell> content, bool compact
});




}
/// @nodoc
class __$ReportRowCopyWithImpl<$Res>
    implements _$ReportRowCopyWith<$Res> {
  __$ReportRowCopyWithImpl(this._self, this._then);

  final _ReportRow _self;
  final $Res Function(_ReportRow) _then;

/// Create a copy of ReportRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? compact = null,}) {
  return _then(_ReportRow(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<ReportCell>,compact: null == compact ? _self.compact : compact // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReportHeader {

/// Is the content of the report header.
 String get content;/// Is the text color of the report header.
@ColorOrNullConverter() Color? get textColor;/// Is the color of the report header.
@ColorOrNullConverter() Color? get color;
/// Create a copy of ReportHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportHeaderCopyWith<ReportHeader> get copyWith => _$ReportHeaderCopyWithImpl<ReportHeader>(this as ReportHeader, _$identity);

  /// Serializes this ReportHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportHeader&&(identical(other.content, content) || other.content == content)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,textColor,color);

@override
String toString() {
  return 'ReportHeader(content: $content, textColor: $textColor, color: $color)';
}


}

/// @nodoc
abstract mixin class $ReportHeaderCopyWith<$Res>  {
  factory $ReportHeaderCopyWith(ReportHeader value, $Res Function(ReportHeader) _then) = _$ReportHeaderCopyWithImpl;
@useResult
$Res call({
 String content,@ColorOrNullConverter() Color? textColor,@ColorOrNullConverter() Color? color
});




}
/// @nodoc
class _$ReportHeaderCopyWithImpl<$Res>
    implements $ReportHeaderCopyWith<$Res> {
  _$ReportHeaderCopyWithImpl(this._self, this._then);

  final ReportHeader _self;
  final $Res Function(ReportHeader) _then;

/// Create a copy of ReportHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? textColor = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportHeader].
extension ReportHeaderPatterns on ReportHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportHeader value)  $default,){
final _that = this;
switch (_that) {
case _ReportHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportHeader value)?  $default,){
final _that = this;
switch (_that) {
case _ReportHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportHeader() when $default != null:
return $default(_that.content,_that.textColor,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color)  $default,) {final _that = this;
switch (_that) {
case _ReportHeader():
return $default(_that.content,_that.textColor,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color)?  $default,) {final _that = this;
switch (_that) {
case _ReportHeader() when $default != null:
return $default(_that.content,_that.textColor,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportHeader extends ReportHeader {
  const _ReportHeader({required this.content, @ColorOrNullConverter() this.textColor, @ColorOrNullConverter() this.color}): super._();
  factory _ReportHeader.fromJson(Map<String, dynamic> json) => _$ReportHeaderFromJson(json);

/// Is the content of the report header.
@override final  String content;
/// Is the text color of the report header.
@override@ColorOrNullConverter() final  Color? textColor;
/// Is the color of the report header.
@override@ColorOrNullConverter() final  Color? color;

/// Create a copy of ReportHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportHeaderCopyWith<_ReportHeader> get copyWith => __$ReportHeaderCopyWithImpl<_ReportHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportHeader&&(identical(other.content, content) || other.content == content)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,textColor,color);

@override
String toString() {
  return 'ReportHeader(content: $content, textColor: $textColor, color: $color)';
}


}

/// @nodoc
abstract mixin class _$ReportHeaderCopyWith<$Res> implements $ReportHeaderCopyWith<$Res> {
  factory _$ReportHeaderCopyWith(_ReportHeader value, $Res Function(_ReportHeader) _then) = __$ReportHeaderCopyWithImpl;
@override @useResult
$Res call({
 String content,@ColorOrNullConverter() Color? textColor,@ColorOrNullConverter() Color? color
});




}
/// @nodoc
class __$ReportHeaderCopyWithImpl<$Res>
    implements _$ReportHeaderCopyWith<$Res> {
  __$ReportHeaderCopyWithImpl(this._self, this._then);

  final _ReportHeader _self;
  final $Res Function(_ReportHeader) _then;

/// Create a copy of ReportHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? textColor = freezed,Object? color = freezed,}) {
  return _then(_ReportHeader(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}


/// @nodoc
mixin _$ReportCell {

/// Is the content of the report cell.
 dynamic get content;/// Is the text color of the report cell.
@ColorOrNullConverter() Color? get textColor;/// Is the color of the report cell.
@ColorOrNullConverter() Color? get color;/// Is the data type of the report cell.
@JsonKey(unknownEnumValue: ReportDataType.string) ReportDataType? get dataType;/// Is the currency symbol of the report cell.
 String? get currencySymbol;
/// Create a copy of ReportCell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCellCopyWith<ReportCell> get copyWith => _$ReportCellCopyWithImpl<ReportCell>(this as ReportCell, _$identity);

  /// Serializes this ReportCell to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportCell&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.color, color) || other.color == color)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),textColor,color,dataType,currencySymbol);

@override
String toString() {
  return 'ReportCell(content: $content, textColor: $textColor, color: $color, dataType: $dataType, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $ReportCellCopyWith<$Res>  {
  factory $ReportCellCopyWith(ReportCell value, $Res Function(ReportCell) _then) = _$ReportCellCopyWithImpl;
@useResult
$Res call({
 dynamic content,@ColorOrNullConverter() Color? textColor,@ColorOrNullConverter() Color? color,@JsonKey(unknownEnumValue: ReportDataType.string) ReportDataType? dataType, String? currencySymbol
});




}
/// @nodoc
class _$ReportCellCopyWithImpl<$Res>
    implements $ReportCellCopyWith<$Res> {
  _$ReportCellCopyWithImpl(this._self, this._then);

  final ReportCell _self;
  final $Res Function(ReportCell) _then;

/// Create a copy of ReportCell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? textColor = freezed,Object? color = freezed,Object? dataType = freezed,Object? currencySymbol = freezed,}) {
  return _then(_self.copyWith(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as ReportDataType?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportCell].
extension ReportCellPatterns on ReportCell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportCell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportCell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportCell value)  $default,){
final _that = this;
switch (_that) {
case _ReportCell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportCell value)?  $default,){
final _that = this;
switch (_that) {
case _ReportCell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color, @JsonKey(unknownEnumValue: ReportDataType.string)  ReportDataType? dataType,  String? currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportCell() when $default != null:
return $default(_that.content,_that.textColor,_that.color,_that.dataType,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color, @JsonKey(unknownEnumValue: ReportDataType.string)  ReportDataType? dataType,  String? currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _ReportCell():
return $default(_that.content,_that.textColor,_that.color,_that.dataType,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic content, @ColorOrNullConverter()  Color? textColor, @ColorOrNullConverter()  Color? color, @JsonKey(unknownEnumValue: ReportDataType.string)  ReportDataType? dataType,  String? currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _ReportCell() when $default != null:
return $default(_that.content,_that.textColor,_that.color,_that.dataType,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportCell extends ReportCell {
  const _ReportCell({required this.content, @ColorOrNullConverter() this.textColor, @ColorOrNullConverter() this.color, @JsonKey(unknownEnumValue: ReportDataType.string) this.dataType, this.currencySymbol}): super._();
  factory _ReportCell.fromJson(Map<String, dynamic> json) => _$ReportCellFromJson(json);

/// Is the content of the report cell.
@override final  dynamic content;
/// Is the text color of the report cell.
@override@ColorOrNullConverter() final  Color? textColor;
/// Is the color of the report cell.
@override@ColorOrNullConverter() final  Color? color;
/// Is the data type of the report cell.
@override@JsonKey(unknownEnumValue: ReportDataType.string) final  ReportDataType? dataType;
/// Is the currency symbol of the report cell.
@override final  String? currencySymbol;

/// Create a copy of ReportCell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCellCopyWith<_ReportCell> get copyWith => __$ReportCellCopyWithImpl<_ReportCell>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportCellToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportCell&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&(identical(other.color, color) || other.color == color)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),textColor,color,dataType,currencySymbol);

@override
String toString() {
  return 'ReportCell(content: $content, textColor: $textColor, color: $color, dataType: $dataType, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$ReportCellCopyWith<$Res> implements $ReportCellCopyWith<$Res> {
  factory _$ReportCellCopyWith(_ReportCell value, $Res Function(_ReportCell) _then) = __$ReportCellCopyWithImpl;
@override @useResult
$Res call({
 dynamic content,@ColorOrNullConverter() Color? textColor,@ColorOrNullConverter() Color? color,@JsonKey(unknownEnumValue: ReportDataType.string) ReportDataType? dataType, String? currencySymbol
});




}
/// @nodoc
class __$ReportCellCopyWithImpl<$Res>
    implements _$ReportCellCopyWith<$Res> {
  __$ReportCellCopyWithImpl(this._self, this._then);

  final _ReportCell _self;
  final $Res Function(_ReportCell) _then;

/// Create a copy of ReportCell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? textColor = freezed,Object? color = freezed,Object? dataType = freezed,Object? currencySymbol = freezed,}) {
  return _then(_ReportCell(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as dynamic,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as ReportDataType?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
