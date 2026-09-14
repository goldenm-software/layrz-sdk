// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomField {

/// Unique identifier for this custom field.
 String get id;/// Human-readable name of the custom field.
 String get name;/// The value stored for this custom field.
 String get value;/// Whether this custom field is system-managed and should not be freely
/// edited by the end user.
 bool? get isFixed;/// The date and time (UTC) this custom field was last updated, or null
/// if not tracked by the server.
@TimestampOrNullConverter() DateTime? get updatedAt;
/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldCopyWith<CustomField> get copyWith => _$CustomFieldCopyWithImpl<CustomField>(this as CustomField, _$identity);

  /// Serializes this CustomField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.isFixed, isFixed) || other.isFixed == isFixed)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,isFixed,updatedAt);

@override
String toString() {
  return 'CustomField(id: $id, name: $name, value: $value, isFixed: $isFixed, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomFieldCopyWith<$Res>  {
  factory $CustomFieldCopyWith(CustomField value, $Res Function(CustomField) _then) = _$CustomFieldCopyWithImpl;
@useResult
$Res call({
 String id, String name, String value, bool? isFixed,@TimestampOrNullConverter() DateTime? updatedAt
});




}
/// @nodoc
class _$CustomFieldCopyWithImpl<$Res>
    implements $CustomFieldCopyWith<$Res> {
  _$CustomFieldCopyWithImpl(this._self, this._then);

  final CustomField _self;
  final $Res Function(CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? value = null,Object? isFixed = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isFixed: freezed == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomField].
extension CustomFieldPatterns on CustomField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomField value)  $default,){
final _that = this;
switch (_that) {
case _CustomField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomField value)?  $default,){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String value,  bool? isFixed, @TimestampOrNullConverter()  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.isFixed,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String value,  bool? isFixed, @TimestampOrNullConverter()  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CustomField():
return $default(_that.id,_that.name,_that.value,_that.isFixed,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String value,  bool? isFixed, @TimestampOrNullConverter()  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.isFixed,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomField implements CustomField {
  const _CustomField({required this.id, required this.name, required this.value, this.isFixed, @TimestampOrNullConverter() this.updatedAt});
  factory _CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);

/// Unique identifier for this custom field.
@override final  String id;
/// Human-readable name of the custom field.
@override final  String name;
/// The value stored for this custom field.
@override final  String value;
/// Whether this custom field is system-managed and should not be freely
/// edited by the end user.
@override final  bool? isFixed;
/// The date and time (UTC) this custom field was last updated, or null
/// if not tracked by the server.
@override@TimestampOrNullConverter() final  DateTime? updatedAt;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldCopyWith<_CustomField> get copyWith => __$CustomFieldCopyWithImpl<_CustomField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.isFixed, isFixed) || other.isFixed == isFixed)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,isFixed,updatedAt);

@override
String toString() {
  return 'CustomField(id: $id, name: $name, value: $value, isFixed: $isFixed, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldCopyWith<$Res> implements $CustomFieldCopyWith<$Res> {
  factory _$CustomFieldCopyWith(_CustomField value, $Res Function(_CustomField) _then) = __$CustomFieldCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String value, bool? isFixed,@TimestampOrNullConverter() DateTime? updatedAt
});




}
/// @nodoc
class __$CustomFieldCopyWithImpl<$Res>
    implements _$CustomFieldCopyWith<$Res> {
  __$CustomFieldCopyWithImpl(this._self, this._then);

  final _CustomField _self;
  final $Res Function(_CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? value = null,Object? isFixed = freezed,Object? updatedAt = freezed,}) {
  return _then(_CustomField(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isFixed: freezed == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CustomFieldInput {

/// Unique identifier for this custom field, or null when creating a new
/// one.
 String? get id;/// Unique identifier for this custom field, or null when creating a new
/// one.
 set id(String? value);/// Human-readable name of the custom field. Defaults to an empty string.
 String get name;/// Human-readable name of the custom field. Defaults to an empty string.
 set name(String value);/// The value stored for this custom field. Defaults to an empty string.
 String get value;/// The value stored for this custom field. Defaults to an empty string.
 set value(String value);/// Whether this custom field is system-managed and should not be freely
/// edited by the end user. Defaults to false.
 bool get isFixed;/// Whether this custom field is system-managed and should not be freely
/// edited by the end user. Defaults to false.
 set isFixed(bool value);
/// Create a copy of CustomFieldInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldInputCopyWith<CustomFieldInput> get copyWith => _$CustomFieldInputCopyWithImpl<CustomFieldInput>(this as CustomFieldInput, _$identity);

  /// Serializes this CustomFieldInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CustomFieldInput(id: $id, name: $name, value: $value, isFixed: $isFixed)';
}


}

/// @nodoc
abstract mixin class $CustomFieldInputCopyWith<$Res>  {
  factory $CustomFieldInputCopyWith(CustomFieldInput value, $Res Function(CustomFieldInput) _then) = _$CustomFieldInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String value, bool isFixed
});




}
/// @nodoc
class _$CustomFieldInputCopyWithImpl<$Res>
    implements $CustomFieldInputCopyWith<$Res> {
  _$CustomFieldInputCopyWithImpl(this._self, this._then);

  final CustomFieldInput _self;
  final $Res Function(CustomFieldInput) _then;

/// Create a copy of CustomFieldInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? value = null,Object? isFixed = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isFixed: null == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomFieldInput].
extension CustomFieldInputPatterns on CustomFieldInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomFieldInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomFieldInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomFieldInput value)  $default,){
final _that = this;
switch (_that) {
case _CustomFieldInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomFieldInput value)?  $default,){
final _that = this;
switch (_that) {
case _CustomFieldInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String value,  bool isFixed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomFieldInput() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.isFixed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String value,  bool isFixed)  $default,) {final _that = this;
switch (_that) {
case _CustomFieldInput():
return $default(_that.id,_that.name,_that.value,_that.isFixed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String value,  bool isFixed)?  $default,) {final _that = this;
switch (_that) {
case _CustomFieldInput() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.isFixed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomFieldInput implements CustomFieldInput {
   _CustomFieldInput({this.id, this.name = '', this.value = '', this.isFixed = false});
  factory _CustomFieldInput.fromJson(Map<String, dynamic> json) => _$CustomFieldInputFromJson(json);

/// Unique identifier for this custom field, or null when creating a new
/// one.
@override  String? id;
/// Human-readable name of the custom field. Defaults to an empty string.
@override@JsonKey()  String name;
/// The value stored for this custom field. Defaults to an empty string.
@override@JsonKey()  String value;
/// Whether this custom field is system-managed and should not be freely
/// edited by the end user. Defaults to false.
@override@JsonKey()  bool isFixed;

/// Create a copy of CustomFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldInputCopyWith<_CustomFieldInput> get copyWith => __$CustomFieldInputCopyWithImpl<_CustomFieldInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldInputToJson(this, );
}



@override
String toString() {
  return 'CustomFieldInput(id: $id, name: $name, value: $value, isFixed: $isFixed)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldInputCopyWith<$Res> implements $CustomFieldInputCopyWith<$Res> {
  factory _$CustomFieldInputCopyWith(_CustomFieldInput value, $Res Function(_CustomFieldInput) _then) = __$CustomFieldInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String value, bool isFixed
});




}
/// @nodoc
class __$CustomFieldInputCopyWithImpl<$Res>
    implements _$CustomFieldInputCopyWith<$Res> {
  __$CustomFieldInputCopyWithImpl(this._self, this._then);

  final _CustomFieldInput _self;
  final $Res Function(_CustomFieldInput) _then;

/// Create a copy of CustomFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? value = null,Object? isFixed = null,}) {
  return _then(_CustomFieldInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,isFixed: null == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
