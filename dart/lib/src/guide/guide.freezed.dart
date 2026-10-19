// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Guide {

 String get thumbnail; String get title; String get description; String get youtubeUrl;@TimestampConverter() DateTime get publishedAt;
/// Create a copy of Guide
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuideCopyWith<Guide> get copyWith => _$GuideCopyWithImpl<Guide>(this as Guide, _$identity);

  /// Serializes this Guide to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Guide&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail,title,description,youtubeUrl,publishedAt);

@override
String toString() {
  return 'Guide(thumbnail: $thumbnail, title: $title, description: $description, youtubeUrl: $youtubeUrl, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $GuideCopyWith<$Res>  {
  factory $GuideCopyWith(Guide value, $Res Function(Guide) _then) = _$GuideCopyWithImpl;
@useResult
$Res call({
 String thumbnail, String title, String description, String youtubeUrl,@TimestampConverter() DateTime publishedAt
});




}
/// @nodoc
class _$GuideCopyWithImpl<$Res>
    implements $GuideCopyWith<$Res> {
  _$GuideCopyWithImpl(this._self, this._then);

  final Guide _self;
  final $Res Function(Guide) _then;

/// Create a copy of Guide
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thumbnail = null,Object? title = null,Object? description = null,Object? youtubeUrl = null,Object? publishedAt = null,}) {
  return _then(_self.copyWith(
thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,youtubeUrl: null == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Guide].
extension GuidePatterns on Guide {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Guide value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Guide() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Guide value)  $default,){
final _that = this;
switch (_that) {
case _Guide():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Guide value)?  $default,){
final _that = this;
switch (_that) {
case _Guide() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String thumbnail,  String title,  String description,  String youtubeUrl, @TimestampConverter()  DateTime publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Guide() when $default != null:
return $default(_that.thumbnail,_that.title,_that.description,_that.youtubeUrl,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String thumbnail,  String title,  String description,  String youtubeUrl, @TimestampConverter()  DateTime publishedAt)  $default,) {final _that = this;
switch (_that) {
case _Guide():
return $default(_that.thumbnail,_that.title,_that.description,_that.youtubeUrl,_that.publishedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String thumbnail,  String title,  String description,  String youtubeUrl, @TimestampConverter()  DateTime publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _Guide() when $default != null:
return $default(_that.thumbnail,_that.title,_that.description,_that.youtubeUrl,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Guide implements Guide {
  const _Guide({required this.thumbnail, required this.title, required this.description, required this.youtubeUrl, @TimestampConverter() required this.publishedAt});
  factory _Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);

@override final  String thumbnail;
@override final  String title;
@override final  String description;
@override final  String youtubeUrl;
@override@TimestampConverter() final  DateTime publishedAt;

/// Create a copy of Guide
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuideCopyWith<_Guide> get copyWith => __$GuideCopyWithImpl<_Guide>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuideToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Guide&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail,title,description,youtubeUrl,publishedAt);

@override
String toString() {
  return 'Guide(thumbnail: $thumbnail, title: $title, description: $description, youtubeUrl: $youtubeUrl, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$GuideCopyWith<$Res> implements $GuideCopyWith<$Res> {
  factory _$GuideCopyWith(_Guide value, $Res Function(_Guide) _then) = __$GuideCopyWithImpl;
@override @useResult
$Res call({
 String thumbnail, String title, String description, String youtubeUrl,@TimestampConverter() DateTime publishedAt
});




}
/// @nodoc
class __$GuideCopyWithImpl<$Res>
    implements _$GuideCopyWith<$Res> {
  __$GuideCopyWithImpl(this._self, this._then);

  final _Guide _self;
  final $Res Function(_Guide) _then;

/// Create a copy of Guide
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thumbnail = null,Object? title = null,Object? description = null,Object? youtubeUrl = null,Object? publishedAt = null,}) {
  return _then(_Guide(
thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,youtubeUrl: null == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
