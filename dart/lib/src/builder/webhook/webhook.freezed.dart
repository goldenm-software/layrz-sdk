// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebhookStructure {

/// [baseUrl] Is the base URL of the webhook, this [baseUrl] should be appened with the [paths] to create
/// the full URL.
///
/// For example, if the [baseUrl] is `https://api.example.com` and one of the [paths] is `/v1/users`, the
/// full URL will be `https://api.example.com/v1/users`.
 String get baseUrl;/// [paths] is the list of paths that the webhook should use.
 List<WebhookPath> get paths;/// [method] is the HTTP method of the webhook. Be careful, not all of the HTTP methods are listed or available
/// for webhook usage.
@WebhookMethodConverter() WebhookMethod get method;/// [contentType] is the format of the webhook.
@WebhookFormatConverter() WebhookFormat get contentType;/// [headers] is the list of headers that the webhook should use.
/// If you detect any issue with the headers, please contact the
/// Layrz Integration Team at (support@layrz.com)[mailto:support@layrz.com]
 List<WebhookHeader> get headers;
/// Create a copy of WebhookStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookStructureCopyWith<WebhookStructure> get copyWith => _$WebhookStructureCopyWithImpl<WebhookStructure>(this as WebhookStructure, _$identity);

  /// Serializes this WebhookStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookStructure&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&const DeepCollectionEquality().equals(other.paths, paths)&&(identical(other.method, method) || other.method == method)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,const DeepCollectionEquality().hash(paths),method,contentType,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'WebhookStructure(baseUrl: $baseUrl, paths: $paths, method: $method, contentType: $contentType, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $WebhookStructureCopyWith<$Res>  {
  factory $WebhookStructureCopyWith(WebhookStructure value, $Res Function(WebhookStructure) _then) = _$WebhookStructureCopyWithImpl;
@useResult
$Res call({
 String baseUrl, List<WebhookPath> paths,@WebhookMethodConverter() WebhookMethod method,@WebhookFormatConverter() WebhookFormat contentType, List<WebhookHeader> headers
});




}
/// @nodoc
class _$WebhookStructureCopyWithImpl<$Res>
    implements $WebhookStructureCopyWith<$Res> {
  _$WebhookStructureCopyWithImpl(this._self, this._then);

  final WebhookStructure _self;
  final $Res Function(WebhookStructure) _then;

/// Create a copy of WebhookStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? paths = null,Object? method = null,Object? contentType = null,Object? headers = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as List<WebhookPath>,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WebhookMethod,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as WebhookFormat,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<WebhookHeader>,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookStructure].
extension WebhookStructurePatterns on WebhookStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookStructure value)  $default,){
final _that = this;
switch (_that) {
case _WebhookStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookStructure value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseUrl,  List<WebhookPath> paths, @WebhookMethodConverter()  WebhookMethod method, @WebhookFormatConverter()  WebhookFormat contentType,  List<WebhookHeader> headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookStructure() when $default != null:
return $default(_that.baseUrl,_that.paths,_that.method,_that.contentType,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseUrl,  List<WebhookPath> paths, @WebhookMethodConverter()  WebhookMethod method, @WebhookFormatConverter()  WebhookFormat contentType,  List<WebhookHeader> headers)  $default,) {final _that = this;
switch (_that) {
case _WebhookStructure():
return $default(_that.baseUrl,_that.paths,_that.method,_that.contentType,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseUrl,  List<WebhookPath> paths, @WebhookMethodConverter()  WebhookMethod method, @WebhookFormatConverter()  WebhookFormat contentType,  List<WebhookHeader> headers)?  $default,) {final _that = this;
switch (_that) {
case _WebhookStructure() when $default != null:
return $default(_that.baseUrl,_that.paths,_that.method,_that.contentType,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookStructure extends WebhookStructure {
  const _WebhookStructure({required this.baseUrl, this.paths = const [], @WebhookMethodConverter() this.method = WebhookMethod.post, @WebhookFormatConverter() this.contentType = WebhookFormat.json, this.headers = const []}): super._();
  factory _WebhookStructure.fromJson(Map<String, dynamic> json) => _$WebhookStructureFromJson(json);

/// [baseUrl] Is the base URL of the webhook, this [baseUrl] should be appened with the [paths] to create
/// the full URL.
///
/// For example, if the [baseUrl] is `https://api.example.com` and one of the [paths] is `/v1/users`, the
/// full URL will be `https://api.example.com/v1/users`.
@override final  String baseUrl;
/// [paths] is the list of paths that the webhook should use.
@override@JsonKey() final  List<WebhookPath> paths;
/// [method] is the HTTP method of the webhook. Be careful, not all of the HTTP methods are listed or available
/// for webhook usage.
@override@JsonKey()@WebhookMethodConverter() final  WebhookMethod method;
/// [contentType] is the format of the webhook.
@override@JsonKey()@WebhookFormatConverter() final  WebhookFormat contentType;
/// [headers] is the list of headers that the webhook should use.
/// If you detect any issue with the headers, please contact the
/// Layrz Integration Team at (support@layrz.com)[mailto:support@layrz.com]
@override@JsonKey() final  List<WebhookHeader> headers;

/// Create a copy of WebhookStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookStructureCopyWith<_WebhookStructure> get copyWith => __$WebhookStructureCopyWithImpl<_WebhookStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookStructureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookStructure&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&const DeepCollectionEquality().equals(other.paths, paths)&&(identical(other.method, method) || other.method == method)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,const DeepCollectionEquality().hash(paths),method,contentType,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'WebhookStructure(baseUrl: $baseUrl, paths: $paths, method: $method, contentType: $contentType, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$WebhookStructureCopyWith<$Res> implements $WebhookStructureCopyWith<$Res> {
  factory _$WebhookStructureCopyWith(_WebhookStructure value, $Res Function(_WebhookStructure) _then) = __$WebhookStructureCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, List<WebhookPath> paths,@WebhookMethodConverter() WebhookMethod method,@WebhookFormatConverter() WebhookFormat contentType, List<WebhookHeader> headers
});




}
/// @nodoc
class __$WebhookStructureCopyWithImpl<$Res>
    implements _$WebhookStructureCopyWith<$Res> {
  __$WebhookStructureCopyWithImpl(this._self, this._then);

  final _WebhookStructure _self;
  final $Res Function(_WebhookStructure) _then;

/// Create a copy of WebhookStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? paths = null,Object? method = null,Object? contentType = null,Object? headers = null,}) {
  return _then(_WebhookStructure(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as List<WebhookPath>,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as WebhookMethod,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as WebhookFormat,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<WebhookHeader>,
  ));
}


}


/// @nodoc
mixin _$WebhookPath {

/// Is the path of the webhook.
 String get path;/// Is the name of the path. If the key is present in our translation system, it will be translated.
 String get name;
/// Create a copy of WebhookPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookPathCopyWith<WebhookPath> get copyWith => _$WebhookPathCopyWithImpl<WebhookPath>(this as WebhookPath, _$identity);

  /// Serializes this WebhookPath to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookPath&&(identical(other.path, path) || other.path == path)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,name);

@override
String toString() {
  return 'WebhookPath(path: $path, name: $name)';
}


}

/// @nodoc
abstract mixin class $WebhookPathCopyWith<$Res>  {
  factory $WebhookPathCopyWith(WebhookPath value, $Res Function(WebhookPath) _then) = _$WebhookPathCopyWithImpl;
@useResult
$Res call({
 String path, String name
});




}
/// @nodoc
class _$WebhookPathCopyWithImpl<$Res>
    implements $WebhookPathCopyWith<$Res> {
  _$WebhookPathCopyWithImpl(this._self, this._then);

  final WebhookPath _self;
  final $Res Function(WebhookPath) _then;

/// Create a copy of WebhookPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? name = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookPath].
extension WebhookPathPatterns on WebhookPath {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookPath value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookPath() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookPath value)  $default,){
final _that = this;
switch (_that) {
case _WebhookPath():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookPath value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookPath() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookPath() when $default != null:
return $default(_that.path,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String name)  $default,) {final _that = this;
switch (_that) {
case _WebhookPath():
return $default(_that.path,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String name)?  $default,) {final _that = this;
switch (_that) {
case _WebhookPath() when $default != null:
return $default(_that.path,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookPath extends WebhookPath {
  const _WebhookPath({required this.path, required this.name}): super._();
  factory _WebhookPath.fromJson(Map<String, dynamic> json) => _$WebhookPathFromJson(json);

/// Is the path of the webhook.
@override final  String path;
/// Is the name of the path. If the key is present in our translation system, it will be translated.
@override final  String name;

/// Create a copy of WebhookPath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookPathCopyWith<_WebhookPath> get copyWith => __$WebhookPathCopyWithImpl<_WebhookPath>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookPathToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookPath&&(identical(other.path, path) || other.path == path)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,name);

@override
String toString() {
  return 'WebhookPath(path: $path, name: $name)';
}


}

/// @nodoc
abstract mixin class _$WebhookPathCopyWith<$Res> implements $WebhookPathCopyWith<$Res> {
  factory _$WebhookPathCopyWith(_WebhookPath value, $Res Function(_WebhookPath) _then) = __$WebhookPathCopyWithImpl;
@override @useResult
$Res call({
 String path, String name
});




}
/// @nodoc
class __$WebhookPathCopyWithImpl<$Res>
    implements _$WebhookPathCopyWith<$Res> {
  __$WebhookPathCopyWithImpl(this._self, this._then);

  final _WebhookPath _self;
  final $Res Function(_WebhookPath) _then;

/// Create a copy of WebhookPath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? name = null,}) {
  return _then(_WebhookPath(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WebhookHeader {

/// Is the key of the header.
 String get name;/// Is the value of the header.
 String get value;
/// Create a copy of WebhookHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookHeaderCopyWith<WebhookHeader> get copyWith => _$WebhookHeaderCopyWithImpl<WebhookHeader>(this as WebhookHeader, _$identity);

  /// Serializes this WebhookHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookHeader&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'WebhookHeader(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $WebhookHeaderCopyWith<$Res>  {
  factory $WebhookHeaderCopyWith(WebhookHeader value, $Res Function(WebhookHeader) _then) = _$WebhookHeaderCopyWithImpl;
@useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class _$WebhookHeaderCopyWithImpl<$Res>
    implements $WebhookHeaderCopyWith<$Res> {
  _$WebhookHeaderCopyWithImpl(this._self, this._then);

  final WebhookHeader _self;
  final $Res Function(WebhookHeader) _then;

/// Create a copy of WebhookHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookHeader].
extension WebhookHeaderPatterns on WebhookHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookHeader value)  $default,){
final _that = this;
switch (_that) {
case _WebhookHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookHeader value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookHeader() when $default != null:
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String value)  $default,) {final _that = this;
switch (_that) {
case _WebhookHeader():
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String value)?  $default,) {final _that = this;
switch (_that) {
case _WebhookHeader() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookHeader extends WebhookHeader {
  const _WebhookHeader({required this.name, required this.value}): super._();
  factory _WebhookHeader.fromJson(Map<String, dynamic> json) => _$WebhookHeaderFromJson(json);

/// Is the key of the header.
@override final  String name;
/// Is the value of the header.
@override final  String value;

/// Create a copy of WebhookHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookHeaderCopyWith<_WebhookHeader> get copyWith => __$WebhookHeaderCopyWithImpl<_WebhookHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookHeader&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'WebhookHeader(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$WebhookHeaderCopyWith<$Res> implements $WebhookHeaderCopyWith<$Res> {
  factory _$WebhookHeaderCopyWith(_WebhookHeader value, $Res Function(_WebhookHeader) _then) = __$WebhookHeaderCopyWithImpl;
@override @useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class __$WebhookHeaderCopyWithImpl<$Res>
    implements _$WebhookHeaderCopyWith<$Res> {
  __$WebhookHeaderCopyWithImpl(this._self, this._then);

  final _WebhookHeader _self;
  final $Res Function(_WebhookHeader) _then;

/// Create a copy of WebhookHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_WebhookHeader(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
