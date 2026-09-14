// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloudEntry {

/// [name] defines the name of the entry. If the name starts with `[translate:]`, means
/// that the name is a translation key.
 String get name;/// [type] is the type of the entry.
@CloudEntryTypeConverter() CloudEntryType get type;/// [path] is the absolute path of the entry.
 String get path;/// [serial] is the file serial. Only used for [CloudEntryType.file].
 String? get serial;/// [fileId] is the file ID of the file. Only used for [CloudEntryType.file].
 String? get fileId;/// [size] is the size of the file. Only used for [CloudEntryType.file].
/// This field is defined in bytes.
 int? get size;/// [lastModified] is the last modified date of the file. Only used for [CloudEntryType.file].
@TimestampOrNullConverter() DateTime? get lastModified;/// [contentType] is the content type of the file. Only used for [CloudEntryType.file].
 String? get contentType;/// [metadata] is the metadata of the file. Only used for [CloudEntryType.file].
/// Currently only works for images.
 Map<String, dynamic>? get metadata;/// [sensorId] is the ID of the sensor associated with this file, if applicable.
///
/// This value is only used for [CloudEntryType.file] and when it's populated by an asset, also
/// this property will only be populated after `2025-10-27`, before that, it will be null for all entries.
 String? get sensorId;
/// Create a copy of CloudEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudEntryCopyWith<CloudEntry> get copyWith => _$CloudEntryCopyWithImpl<CloudEntry>(this as CloudEntry, _$identity);

  /// Serializes this CloudEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloudEntry&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.path, path) || other.path == path)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.size, size) || other.size == size)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.sensorId, sensorId) || other.sensorId == sensorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,path,serial,fileId,size,lastModified,contentType,const DeepCollectionEquality().hash(metadata),sensorId);

@override
String toString() {
  return 'CloudEntry(name: $name, type: $type, path: $path, serial: $serial, fileId: $fileId, size: $size, lastModified: $lastModified, contentType: $contentType, metadata: $metadata, sensorId: $sensorId)';
}


}

/// @nodoc
abstract mixin class $CloudEntryCopyWith<$Res>  {
  factory $CloudEntryCopyWith(CloudEntry value, $Res Function(CloudEntry) _then) = _$CloudEntryCopyWithImpl;
@useResult
$Res call({
 String name,@CloudEntryTypeConverter() CloudEntryType type, String path, String? serial, String? fileId, int? size,@TimestampOrNullConverter() DateTime? lastModified, String? contentType, Map<String, dynamic>? metadata, String? sensorId
});




}
/// @nodoc
class _$CloudEntryCopyWithImpl<$Res>
    implements $CloudEntryCopyWith<$Res> {
  _$CloudEntryCopyWithImpl(this._self, this._then);

  final CloudEntry _self;
  final $Res Function(CloudEntry) _then;

/// Create a copy of CloudEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? path = null,Object? serial = freezed,Object? fileId = freezed,Object? size = freezed,Object? lastModified = freezed,Object? contentType = freezed,Object? metadata = freezed,Object? sensorId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CloudEntryType,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,serial: freezed == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sensorId: freezed == sensorId ? _self.sensorId : sensorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CloudEntry].
extension CloudEntryPatterns on CloudEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloudEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloudEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloudEntry value)  $default,){
final _that = this;
switch (_that) {
case _CloudEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloudEntry value)?  $default,){
final _that = this;
switch (_that) {
case _CloudEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @CloudEntryTypeConverter()  CloudEntryType type,  String path,  String? serial,  String? fileId,  int? size, @TimestampOrNullConverter()  DateTime? lastModified,  String? contentType,  Map<String, dynamic>? metadata,  String? sensorId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloudEntry() when $default != null:
return $default(_that.name,_that.type,_that.path,_that.serial,_that.fileId,_that.size,_that.lastModified,_that.contentType,_that.metadata,_that.sensorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @CloudEntryTypeConverter()  CloudEntryType type,  String path,  String? serial,  String? fileId,  int? size, @TimestampOrNullConverter()  DateTime? lastModified,  String? contentType,  Map<String, dynamic>? metadata,  String? sensorId)  $default,) {final _that = this;
switch (_that) {
case _CloudEntry():
return $default(_that.name,_that.type,_that.path,_that.serial,_that.fileId,_that.size,_that.lastModified,_that.contentType,_that.metadata,_that.sensorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @CloudEntryTypeConverter()  CloudEntryType type,  String path,  String? serial,  String? fileId,  int? size, @TimestampOrNullConverter()  DateTime? lastModified,  String? contentType,  Map<String, dynamic>? metadata,  String? sensorId)?  $default,) {final _that = this;
switch (_that) {
case _CloudEntry() when $default != null:
return $default(_that.name,_that.type,_that.path,_that.serial,_that.fileId,_that.size,_that.lastModified,_that.contentType,_that.metadata,_that.sensorId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloudEntry implements CloudEntry {
  const _CloudEntry({required this.name, @CloudEntryTypeConverter() required this.type, required this.path, this.serial, this.fileId, this.size, @TimestampOrNullConverter() this.lastModified, this.contentType, this.metadata, this.sensorId});
  factory _CloudEntry.fromJson(Map<String, dynamic> json) => _$CloudEntryFromJson(json);

/// [name] defines the name of the entry. If the name starts with `[translate:]`, means
/// that the name is a translation key.
@override final  String name;
/// [type] is the type of the entry.
@override@CloudEntryTypeConverter() final  CloudEntryType type;
/// [path] is the absolute path of the entry.
@override final  String path;
/// [serial] is the file serial. Only used for [CloudEntryType.file].
@override final  String? serial;
/// [fileId] is the file ID of the file. Only used for [CloudEntryType.file].
@override final  String? fileId;
/// [size] is the size of the file. Only used for [CloudEntryType.file].
/// This field is defined in bytes.
@override final  int? size;
/// [lastModified] is the last modified date of the file. Only used for [CloudEntryType.file].
@override@TimestampOrNullConverter() final  DateTime? lastModified;
/// [contentType] is the content type of the file. Only used for [CloudEntryType.file].
@override final  String? contentType;
/// [metadata] is the metadata of the file. Only used for [CloudEntryType.file].
/// Currently only works for images.
@override final  Map<String, dynamic>? metadata;
/// [sensorId] is the ID of the sensor associated with this file, if applicable.
///
/// This value is only used for [CloudEntryType.file] and when it's populated by an asset, also
/// this property will only be populated after `2025-10-27`, before that, it will be null for all entries.
@override final  String? sensorId;

/// Create a copy of CloudEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudEntryCopyWith<_CloudEntry> get copyWith => __$CloudEntryCopyWithImpl<_CloudEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloudEntry&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.path, path) || other.path == path)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.size, size) || other.size == size)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.sensorId, sensorId) || other.sensorId == sensorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,path,serial,fileId,size,lastModified,contentType,const DeepCollectionEquality().hash(metadata),sensorId);

@override
String toString() {
  return 'CloudEntry(name: $name, type: $type, path: $path, serial: $serial, fileId: $fileId, size: $size, lastModified: $lastModified, contentType: $contentType, metadata: $metadata, sensorId: $sensorId)';
}


}

/// @nodoc
abstract mixin class _$CloudEntryCopyWith<$Res> implements $CloudEntryCopyWith<$Res> {
  factory _$CloudEntryCopyWith(_CloudEntry value, $Res Function(_CloudEntry) _then) = __$CloudEntryCopyWithImpl;
@override @useResult
$Res call({
 String name,@CloudEntryTypeConverter() CloudEntryType type, String path, String? serial, String? fileId, int? size,@TimestampOrNullConverter() DateTime? lastModified, String? contentType, Map<String, dynamic>? metadata, String? sensorId
});




}
/// @nodoc
class __$CloudEntryCopyWithImpl<$Res>
    implements _$CloudEntryCopyWith<$Res> {
  __$CloudEntryCopyWithImpl(this._self, this._then);

  final _CloudEntry _self;
  final $Res Function(_CloudEntry) _then;

/// Create a copy of CloudEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? path = null,Object? serial = freezed,Object? fileId = freezed,Object? size = freezed,Object? lastModified = freezed,Object? contentType = freezed,Object? metadata = freezed,Object? sensorId = freezed,}) {
  return _then(_CloudEntry(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CloudEntryType,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,serial: freezed == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String?,fileId: freezed == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,lastModified: freezed == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,sensorId: freezed == sensorId ? _self.sensorId : sensorId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
