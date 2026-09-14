// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentOwner {

/// [id] is a unique identifier for the comment owner, typically used to reference and manage
/// the owner within a system.
 String get id;/// [name] represents the name of the comment owner, providing a human-readable identifier.
 String get name;/// [avatar] is a URL or path to the avatar image associated with the comment owner.
 String? get avatar;/// [dynamicAvatar] refers to a dynamic representation of the avatar, which may include
/// various types such as an icon, an emoji, or generated initials.
 Avatar? get dynamicAvatar;
/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentOwnerCopyWith<CommentOwner> get copyWith => _$CommentOwnerCopyWithImpl<CommentOwner>(this as CommentOwner, _$identity);

  /// Serializes this CommentOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.dynamicAvatar, dynamicAvatar) || other.dynamicAvatar == dynamicAvatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar,dynamicAvatar);

@override
String toString() {
  return 'CommentOwner(id: $id, name: $name, avatar: $avatar, dynamicAvatar: $dynamicAvatar)';
}


}

/// @nodoc
abstract mixin class $CommentOwnerCopyWith<$Res>  {
  factory $CommentOwnerCopyWith(CommentOwner value, $Res Function(CommentOwner) _then) = _$CommentOwnerCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatar, Avatar? dynamicAvatar
});


$AvatarCopyWith<$Res>? get dynamicAvatar;

}
/// @nodoc
class _$CommentOwnerCopyWithImpl<$Res>
    implements $CommentOwnerCopyWith<$Res> {
  _$CommentOwnerCopyWithImpl(this._self, this._then);

  final CommentOwner _self;
  final $Res Function(CommentOwner) _then;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? dynamicAvatar = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as Avatar?,
  ));
}
/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentOwner].
extension CommentOwnerPatterns on CommentOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentOwner value)  $default,){
final _that = this;
switch (_that) {
case _CommentOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentOwner value)?  $default,){
final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar,  Avatar? dynamicAvatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.dynamicAvatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar,  Avatar? dynamicAvatar)  $default,) {final _that = this;
switch (_that) {
case _CommentOwner():
return $default(_that.id,_that.name,_that.avatar,_that.dynamicAvatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatar,  Avatar? dynamicAvatar)?  $default,) {final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.dynamicAvatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentOwner implements CommentOwner {
  const _CommentOwner({required this.id, required this.name, this.avatar, this.dynamicAvatar});
  factory _CommentOwner.fromJson(Map<String, dynamic> json) => _$CommentOwnerFromJson(json);

/// [id] is a unique identifier for the comment owner, typically used to reference and manage
/// the owner within a system.
@override final  String id;
/// [name] represents the name of the comment owner, providing a human-readable identifier.
@override final  String name;
/// [avatar] is a URL or path to the avatar image associated with the comment owner.
@override final  String? avatar;
/// [dynamicAvatar] refers to a dynamic representation of the avatar, which may include
/// various types such as an icon, an emoji, or generated initials.
@override final  Avatar? dynamicAvatar;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentOwnerCopyWith<_CommentOwner> get copyWith => __$CommentOwnerCopyWithImpl<_CommentOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.dynamicAvatar, dynamicAvatar) || other.dynamicAvatar == dynamicAvatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar,dynamicAvatar);

@override
String toString() {
  return 'CommentOwner(id: $id, name: $name, avatar: $avatar, dynamicAvatar: $dynamicAvatar)';
}


}

/// @nodoc
abstract mixin class _$CommentOwnerCopyWith<$Res> implements $CommentOwnerCopyWith<$Res> {
  factory _$CommentOwnerCopyWith(_CommentOwner value, $Res Function(_CommentOwner) _then) = __$CommentOwnerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatar, Avatar? dynamicAvatar
});


@override $AvatarCopyWith<$Res>? get dynamicAvatar;

}
/// @nodoc
class __$CommentOwnerCopyWithImpl<$Res>
    implements _$CommentOwnerCopyWith<$Res> {
  __$CommentOwnerCopyWithImpl(this._self, this._then);

  final _CommentOwner _self;
  final $Res Function(_CommentOwner) _then;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? dynamicAvatar = freezed,}) {
  return _then(_CommentOwner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,dynamicAvatar: freezed == dynamicAvatar ? _self.dynamicAvatar : dynamicAvatar // ignore: cast_nullable_to_non_nullable
as Avatar?,
  ));
}

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicAvatar {
    if (_self.dynamicAvatar == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicAvatar!, (value) {
    return _then(_self.copyWith(dynamicAvatar: value));
  });
}
}


/// @nodoc
mixin _$CaseComment {

/// [id] is a unique identifier for the case comment, typically used to reference and manage
/// it within a system.
 String get id;/// [at] indicates the date and time when the comment was made or created.
@TimestampConverter() DateTime get at;/// [owner] refers to the individual or entity that made the comment, providing context about
/// who is responsible for the content.
 CommentOwner? get owner;/// [comment] contains the actual text or content of the comment made on the case.
 String get comment;/// [metadata] holds additional information or data related to the comment, which can include
/// various attributes or properties.
 Map<String, dynamic> get metadata;/// [file] refers to an optional file associated with the comment, which can include
/// documents, images, or other relevant attachments.
 CloudEntry? get file;
/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseCommentCopyWith<CaseComment> get copyWith => _$CaseCommentCopyWithImpl<CaseComment>(this as CaseComment, _$identity);

  /// Serializes this CaseComment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseComment&&(identical(other.id, id) || other.id == id)&&(identical(other.at, at) || other.at == at)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,at,owner,comment,const DeepCollectionEquality().hash(metadata),file);

@override
String toString() {
  return 'CaseComment(id: $id, at: $at, owner: $owner, comment: $comment, metadata: $metadata, file: $file)';
}


}

/// @nodoc
abstract mixin class $CaseCommentCopyWith<$Res>  {
  factory $CaseCommentCopyWith(CaseComment value, $Res Function(CaseComment) _then) = _$CaseCommentCopyWithImpl;
@useResult
$Res call({
 String id,@TimestampConverter() DateTime at, CommentOwner? owner, String comment, Map<String, dynamic> metadata, CloudEntry? file
});


$CommentOwnerCopyWith<$Res>? get owner;$CloudEntryCopyWith<$Res>? get file;

}
/// @nodoc
class _$CaseCommentCopyWithImpl<$Res>
    implements $CaseCommentCopyWith<$Res> {
  _$CaseCommentCopyWithImpl(this._self, this._then);

  final CaseComment _self;
  final $Res Function(CaseComment) _then;

/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? at = null,Object? owner = freezed,Object? comment = null,Object? metadata = null,Object? file = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as CommentOwner?,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as CloudEntry?,
  ));
}
/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $CommentOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudEntryCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $CloudEntryCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// Adds pattern-matching-related methods to [CaseComment].
extension CaseCommentPatterns on CaseComment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseComment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseComment value)  $default,){
final _that = this;
switch (_that) {
case _CaseComment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseComment value)?  $default,){
final _that = this;
switch (_that) {
case _CaseComment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @TimestampConverter()  DateTime at,  CommentOwner? owner,  String comment,  Map<String, dynamic> metadata,  CloudEntry? file)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseComment() when $default != null:
return $default(_that.id,_that.at,_that.owner,_that.comment,_that.metadata,_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @TimestampConverter()  DateTime at,  CommentOwner? owner,  String comment,  Map<String, dynamic> metadata,  CloudEntry? file)  $default,) {final _that = this;
switch (_that) {
case _CaseComment():
return $default(_that.id,_that.at,_that.owner,_that.comment,_that.metadata,_that.file);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @TimestampConverter()  DateTime at,  CommentOwner? owner,  String comment,  Map<String, dynamic> metadata,  CloudEntry? file)?  $default,) {final _that = this;
switch (_that) {
case _CaseComment() when $default != null:
return $default(_that.id,_that.at,_that.owner,_that.comment,_that.metadata,_that.file);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CaseComment implements CaseComment {
  const _CaseComment({required this.id, @TimestampConverter() required this.at, this.owner, required this.comment, this.metadata = const {}, this.file});
  factory _CaseComment.fromJson(Map<String, dynamic> json) => _$CaseCommentFromJson(json);

/// [id] is a unique identifier for the case comment, typically used to reference and manage
/// it within a system.
@override final  String id;
/// [at] indicates the date and time when the comment was made or created.
@override@TimestampConverter() final  DateTime at;
/// [owner] refers to the individual or entity that made the comment, providing context about
/// who is responsible for the content.
@override final  CommentOwner? owner;
/// [comment] contains the actual text or content of the comment made on the case.
@override final  String comment;
/// [metadata] holds additional information or data related to the comment, which can include
/// various attributes or properties.
@override@JsonKey() final  Map<String, dynamic> metadata;
/// [file] refers to an optional file associated with the comment, which can include
/// documents, images, or other relevant attachments.
@override final  CloudEntry? file;

/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseCommentCopyWith<_CaseComment> get copyWith => __$CaseCommentCopyWithImpl<_CaseComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CaseCommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseComment&&(identical(other.id, id) || other.id == id)&&(identical(other.at, at) || other.at == at)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,at,owner,comment,const DeepCollectionEquality().hash(metadata),file);

@override
String toString() {
  return 'CaseComment(id: $id, at: $at, owner: $owner, comment: $comment, metadata: $metadata, file: $file)';
}


}

/// @nodoc
abstract mixin class _$CaseCommentCopyWith<$Res> implements $CaseCommentCopyWith<$Res> {
  factory _$CaseCommentCopyWith(_CaseComment value, $Res Function(_CaseComment) _then) = __$CaseCommentCopyWithImpl;
@override @useResult
$Res call({
 String id,@TimestampConverter() DateTime at, CommentOwner? owner, String comment, Map<String, dynamic> metadata, CloudEntry? file
});


@override $CommentOwnerCopyWith<$Res>? get owner;@override $CloudEntryCopyWith<$Res>? get file;

}
/// @nodoc
class __$CaseCommentCopyWithImpl<$Res>
    implements _$CaseCommentCopyWith<$Res> {
  __$CaseCommentCopyWithImpl(this._self, this._then);

  final _CaseComment _self;
  final $Res Function(_CaseComment) _then;

/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? at = null,Object? owner = freezed,Object? comment = null,Object? metadata = null,Object? file = freezed,}) {
  return _then(_CaseComment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,at: null == at ? _self.at : at // ignore: cast_nullable_to_non_nullable
as DateTime,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as CommentOwner?,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as CloudEntry?,
  ));
}

/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $CommentOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of CaseComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudEntryCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $CloudEntryCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// @nodoc
mixin _$Case {

/// [id] is a unique identifier for the case, typically used to reference and manage it
/// within a system.
///
/// This ID is an integer value represented as a string.
 String get id;/// [receivedAt] indicates the date and time when the case was received or created.
@JsonKey(name: 'dateReceived')@TimestampConverter() DateTime get receivedAt;/// [status] represents the current state of the case, which can be one of the predefined
/// statuses such as pending, followed, or closed.
@JsonKey(unknownEnumValue: CaseStatus.pending) CaseStatus get status;/// [ignoredStatus] indicates whether the case is in a normal state or has been marked as
/// ignored, preset, expired, or auto.
@JsonKey(unknownEnumValue: CaseIgnoredStatus.normal) CaseIgnoredStatus? get ignoredStatus;/// [asset] refers to the specific asset associated with the case, providing context and
/// details about the item or entity involved.
 Asset get asset;/// [trigger] specifies the event or condition that initiated the creation of the case,
/// helping to understand the circumstances leading to its generation.
 Trigger get trigger;/// [geofence] indicates the geographical boundary or area related to the case, which can be
/// used for location-based analysis or actions.
///
/// This value only will be set after `2025-09-26` and also, only if the trigger is
/// associated with a geofence (aka. geofence enter/exit).
@Deprecated('Use `geofences` instead') Geofence? get geofence;/// [geofences] indicates the geographical boundaries or areas related to the case, which can
/// be used for location-based analysis or actions.
///
/// This value only will be set after `2025-09-26` and also, only if the trigger is
/// associated with geofences (aka. geofence enter/exit) and `2025-10-15` for stacked cases.
 List<Geofence> get geofences;/// [sequence] is an optional integer that represents the order or position of the case in a
/// series or list.
 int? get sequence;/// [comments] is a list of comments associated with the case, allowing for communication and
/// collaboration among users or stakeholders involved in the case.
 List<CaseComment> get comments;/// [position] provides the geographical location or coordinates related to the case, which
/// can be used for mapping or tracking purposes.
 TelemetryPosition? get position;/// [payload] contains additional data or information related to the case, which can include
/// various telemetry sensors or measurements.
 List<TelemetrySensor>? get payload;/// [sensors] is a list of telemetry sensors associated with the case, providing insights and
/// data points relevant to the situation or event.
 List<TelemetrySensor>? get sensors;/// [file] refers to an optional file associated with the case, which can include documents,
/// images, or other relevant attachments.
 CloudEntry? get file;/// [stackCount] indicates the number of stacked cases.
 int get stackCount;
/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseCopyWith<Case> get copyWith => _$CaseCopyWithImpl<Case>(this as Case, _$identity);

  /// Serializes this Case to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Case&&(identical(other.id, id) || other.id == id)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.ignoredStatus, ignoredStatus) || other.ignoredStatus == ignoredStatus)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.geofence, geofence) || other.geofence == geofence)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.sensors, sensors)&&(identical(other.file, file) || other.file == file)&&(identical(other.stackCount, stackCount) || other.stackCount == stackCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receivedAt,status,ignoredStatus,asset,trigger,geofence,const DeepCollectionEquality().hash(geofences),sequence,const DeepCollectionEquality().hash(comments),position,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(sensors),file,stackCount);

@override
String toString() {
  return 'Case(id: $id, receivedAt: $receivedAt, status: $status, ignoredStatus: $ignoredStatus, asset: $asset, trigger: $trigger, geofence: $geofence, geofences: $geofences, sequence: $sequence, comments: $comments, position: $position, payload: $payload, sensors: $sensors, file: $file, stackCount: $stackCount)';
}


}

/// @nodoc
abstract mixin class $CaseCopyWith<$Res>  {
  factory $CaseCopyWith(Case value, $Res Function(Case) _then) = _$CaseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'dateReceived')@TimestampConverter() DateTime receivedAt,@JsonKey(unknownEnumValue: CaseStatus.pending) CaseStatus status,@JsonKey(unknownEnumValue: CaseIgnoredStatus.normal) CaseIgnoredStatus? ignoredStatus, Asset asset, Trigger trigger,@Deprecated('Use `geofences` instead') Geofence? geofence, List<Geofence> geofences, int? sequence, List<CaseComment> comments, TelemetryPosition? position, List<TelemetrySensor>? payload, List<TelemetrySensor>? sensors, CloudEntry? file, int stackCount
});


$AssetCopyWith<$Res> get asset;$TriggerCopyWith<$Res> get trigger;$GeofenceCopyWith<$Res>? get geofence;$TelemetryPositionCopyWith<$Res>? get position;$CloudEntryCopyWith<$Res>? get file;

}
/// @nodoc
class _$CaseCopyWithImpl<$Res>
    implements $CaseCopyWith<$Res> {
  _$CaseCopyWithImpl(this._self, this._then);

  final Case _self;
  final $Res Function(Case) _then;

/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? receivedAt = null,Object? status = null,Object? ignoredStatus = freezed,Object? asset = null,Object? trigger = null,Object? geofence = freezed,Object? geofences = null,Object? sequence = freezed,Object? comments = null,Object? position = freezed,Object? payload = freezed,Object? sensors = freezed,Object? file = freezed,Object? stackCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CaseStatus,ignoredStatus: freezed == ignoredStatus ? _self.ignoredStatus : ignoredStatus // ignore: cast_nullable_to_non_nullable
as CaseIgnoredStatus?,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as Trigger,geofence: freezed == geofence ? _self.geofence : geofence // ignore: cast_nullable_to_non_nullable
as Geofence?,geofences: null == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CaseComment>,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as CloudEntry?,stackCount: null == stackCount ? _self.stackCount : stackCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res> get asset {
  
  return $AssetCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerCopyWith<$Res> get trigger {
  
  return $TriggerCopyWith<$Res>(_self.trigger, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeofenceCopyWith<$Res>? get geofence {
    if (_self.geofence == null) {
    return null;
  }

  return $GeofenceCopyWith<$Res>(_self.geofence!, (value) {
    return _then(_self.copyWith(geofence: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudEntryCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $CloudEntryCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// Adds pattern-matching-related methods to [Case].
extension CasePatterns on Case {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Case value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Case() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Case value)  $default,){
final _that = this;
switch (_that) {
case _Case():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Case value)?  $default,){
final _that = this;
switch (_that) {
case _Case() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'dateReceived')@TimestampConverter()  DateTime receivedAt, @JsonKey(unknownEnumValue: CaseStatus.pending)  CaseStatus status, @JsonKey(unknownEnumValue: CaseIgnoredStatus.normal)  CaseIgnoredStatus? ignoredStatus,  Asset asset,  Trigger trigger, @Deprecated('Use `geofences` instead')  Geofence? geofence,  List<Geofence> geofences,  int? sequence,  List<CaseComment> comments,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors,  CloudEntry? file,  int stackCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Case() when $default != null:
return $default(_that.id,_that.receivedAt,_that.status,_that.ignoredStatus,_that.asset,_that.trigger,_that.geofence,_that.geofences,_that.sequence,_that.comments,_that.position,_that.payload,_that.sensors,_that.file,_that.stackCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'dateReceived')@TimestampConverter()  DateTime receivedAt, @JsonKey(unknownEnumValue: CaseStatus.pending)  CaseStatus status, @JsonKey(unknownEnumValue: CaseIgnoredStatus.normal)  CaseIgnoredStatus? ignoredStatus,  Asset asset,  Trigger trigger, @Deprecated('Use `geofences` instead')  Geofence? geofence,  List<Geofence> geofences,  int? sequence,  List<CaseComment> comments,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors,  CloudEntry? file,  int stackCount)  $default,) {final _that = this;
switch (_that) {
case _Case():
return $default(_that.id,_that.receivedAt,_that.status,_that.ignoredStatus,_that.asset,_that.trigger,_that.geofence,_that.geofences,_that.sequence,_that.comments,_that.position,_that.payload,_that.sensors,_that.file,_that.stackCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'dateReceived')@TimestampConverter()  DateTime receivedAt, @JsonKey(unknownEnumValue: CaseStatus.pending)  CaseStatus status, @JsonKey(unknownEnumValue: CaseIgnoredStatus.normal)  CaseIgnoredStatus? ignoredStatus,  Asset asset,  Trigger trigger, @Deprecated('Use `geofences` instead')  Geofence? geofence,  List<Geofence> geofences,  int? sequence,  List<CaseComment> comments,  TelemetryPosition? position,  List<TelemetrySensor>? payload,  List<TelemetrySensor>? sensors,  CloudEntry? file,  int stackCount)?  $default,) {final _that = this;
switch (_that) {
case _Case() when $default != null:
return $default(_that.id,_that.receivedAt,_that.status,_that.ignoredStatus,_that.asset,_that.trigger,_that.geofence,_that.geofences,_that.sequence,_that.comments,_that.position,_that.payload,_that.sensors,_that.file,_that.stackCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Case implements Case {
  const _Case({required this.id, @JsonKey(name: 'dateReceived')@TimestampConverter() required this.receivedAt, @JsonKey(unknownEnumValue: CaseStatus.pending) required this.status, @JsonKey(unknownEnumValue: CaseIgnoredStatus.normal) this.ignoredStatus, required this.asset, required this.trigger, @Deprecated('Use `geofences` instead') this.geofence, this.geofences = const [], this.sequence, this.comments = const [], this.position, this.payload, this.sensors, this.file, this.stackCount = 1});
  factory _Case.fromJson(Map<String, dynamic> json) => _$CaseFromJson(json);

/// [id] is a unique identifier for the case, typically used to reference and manage it
/// within a system.
///
/// This ID is an integer value represented as a string.
@override final  String id;
/// [receivedAt] indicates the date and time when the case was received or created.
@override@JsonKey(name: 'dateReceived')@TimestampConverter() final  DateTime receivedAt;
/// [status] represents the current state of the case, which can be one of the predefined
/// statuses such as pending, followed, or closed.
@override@JsonKey(unknownEnumValue: CaseStatus.pending) final  CaseStatus status;
/// [ignoredStatus] indicates whether the case is in a normal state or has been marked as
/// ignored, preset, expired, or auto.
@override@JsonKey(unknownEnumValue: CaseIgnoredStatus.normal) final  CaseIgnoredStatus? ignoredStatus;
/// [asset] refers to the specific asset associated with the case, providing context and
/// details about the item or entity involved.
@override final  Asset asset;
/// [trigger] specifies the event or condition that initiated the creation of the case,
/// helping to understand the circumstances leading to its generation.
@override final  Trigger trigger;
/// [geofence] indicates the geographical boundary or area related to the case, which can be
/// used for location-based analysis or actions.
///
/// This value only will be set after `2025-09-26` and also, only if the trigger is
/// associated with a geofence (aka. geofence enter/exit).
@override@Deprecated('Use `geofences` instead') final  Geofence? geofence;
/// [geofences] indicates the geographical boundaries or areas related to the case, which can
/// be used for location-based analysis or actions.
///
/// This value only will be set after `2025-09-26` and also, only if the trigger is
/// associated with geofences (aka. geofence enter/exit) and `2025-10-15` for stacked cases.
@override@JsonKey() final  List<Geofence> geofences;
/// [sequence] is an optional integer that represents the order or position of the case in a
/// series or list.
@override final  int? sequence;
/// [comments] is a list of comments associated with the case, allowing for communication and
/// collaboration among users or stakeholders involved in the case.
@override@JsonKey() final  List<CaseComment> comments;
/// [position] provides the geographical location or coordinates related to the case, which
/// can be used for mapping or tracking purposes.
@override final  TelemetryPosition? position;
/// [payload] contains additional data or information related to the case, which can include
/// various telemetry sensors or measurements.
@override final  List<TelemetrySensor>? payload;
/// [sensors] is a list of telemetry sensors associated with the case, providing insights and
/// data points relevant to the situation or event.
@override final  List<TelemetrySensor>? sensors;
/// [file] refers to an optional file associated with the case, which can include documents,
/// images, or other relevant attachments.
@override final  CloudEntry? file;
/// [stackCount] indicates the number of stacked cases.
@override@JsonKey() final  int stackCount;

/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseCopyWith<_Case> get copyWith => __$CaseCopyWithImpl<_Case>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Case&&(identical(other.id, id) || other.id == id)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.ignoredStatus, ignoredStatus) || other.ignoredStatus == ignoredStatus)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.geofence, geofence) || other.geofence == geofence)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.payload, payload)&&const DeepCollectionEquality().equals(other.sensors, sensors)&&(identical(other.file, file) || other.file == file)&&(identical(other.stackCount, stackCount) || other.stackCount == stackCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,receivedAt,status,ignoredStatus,asset,trigger,geofence,const DeepCollectionEquality().hash(geofences),sequence,const DeepCollectionEquality().hash(comments),position,const DeepCollectionEquality().hash(payload),const DeepCollectionEquality().hash(sensors),file,stackCount);

@override
String toString() {
  return 'Case(id: $id, receivedAt: $receivedAt, status: $status, ignoredStatus: $ignoredStatus, asset: $asset, trigger: $trigger, geofence: $geofence, geofences: $geofences, sequence: $sequence, comments: $comments, position: $position, payload: $payload, sensors: $sensors, file: $file, stackCount: $stackCount)';
}


}

/// @nodoc
abstract mixin class _$CaseCopyWith<$Res> implements $CaseCopyWith<$Res> {
  factory _$CaseCopyWith(_Case value, $Res Function(_Case) _then) = __$CaseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'dateReceived')@TimestampConverter() DateTime receivedAt,@JsonKey(unknownEnumValue: CaseStatus.pending) CaseStatus status,@JsonKey(unknownEnumValue: CaseIgnoredStatus.normal) CaseIgnoredStatus? ignoredStatus, Asset asset, Trigger trigger,@Deprecated('Use `geofences` instead') Geofence? geofence, List<Geofence> geofences, int? sequence, List<CaseComment> comments, TelemetryPosition? position, List<TelemetrySensor>? payload, List<TelemetrySensor>? sensors, CloudEntry? file, int stackCount
});


@override $AssetCopyWith<$Res> get asset;@override $TriggerCopyWith<$Res> get trigger;@override $GeofenceCopyWith<$Res>? get geofence;@override $TelemetryPositionCopyWith<$Res>? get position;@override $CloudEntryCopyWith<$Res>? get file;

}
/// @nodoc
class __$CaseCopyWithImpl<$Res>
    implements _$CaseCopyWith<$Res> {
  __$CaseCopyWithImpl(this._self, this._then);

  final _Case _self;
  final $Res Function(_Case) _then;

/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? receivedAt = null,Object? status = null,Object? ignoredStatus = freezed,Object? asset = null,Object? trigger = null,Object? geofence = freezed,Object? geofences = null,Object? sequence = freezed,Object? comments = null,Object? position = freezed,Object? payload = freezed,Object? sensors = freezed,Object? file = freezed,Object? stackCount = null,}) {
  return _then(_Case(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,receivedAt: null == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CaseStatus,ignoredStatus: freezed == ignoredStatus ? _self.ignoredStatus : ignoredStatus // ignore: cast_nullable_to_non_nullable
as CaseIgnoredStatus?,asset: null == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as Trigger,geofence: freezed == geofence ? _self.geofence : geofence // ignore: cast_nullable_to_non_nullable
as Geofence?,geofences: null == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CaseComment>,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as TelemetryPosition?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<TelemetrySensor>?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as CloudEntry?,stackCount: null == stackCount ? _self.stackCount : stackCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res> get asset {
  
  return $AssetCopyWith<$Res>(_self.asset, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerCopyWith<$Res> get trigger {
  
  return $TriggerCopyWith<$Res>(_self.trigger, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeofenceCopyWith<$Res>? get geofence {
    if (_self.geofence == null) {
    return null;
  }

  return $GeofenceCopyWith<$Res>(_self.geofence!, (value) {
    return _then(_self.copyWith(geofence: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TelemetryPositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $TelemetryPositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of Case
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CloudEntryCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $CloudEntryCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

// dart format on
