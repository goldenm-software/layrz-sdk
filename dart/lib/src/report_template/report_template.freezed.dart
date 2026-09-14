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

// dart format on
