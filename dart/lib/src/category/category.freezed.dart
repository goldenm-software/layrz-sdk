// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

/// Unique identifier for this category.
 String get id;/// Human-readable name of the category.
 String get name;/// The kind of entity this category classifies.
 CategoryKind get kind;/// The asset connectivity state this category applies to, or null when
/// not applicable (e.g., when [kind] is not [CategoryKind.asset]).
 AssetKind? get assetKind;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.assetKind, assetKind) || other.assetKind == assetKind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,assetKind);

@override
String toString() {
  return 'Category(id: $id, name: $name, kind: $kind, assetKind: $assetKind)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, CategoryKind kind, AssetKind? assetKind
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? assetKind = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,assetKind: freezed == assetKind ? _self.assetKind : assetKind // ignore: cast_nullable_to_non_nullable
as AssetKind?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CategoryKind kind,  AssetKind? assetKind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CategoryKind kind,  AssetKind? assetKind)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CategoryKind kind,  AssetKind? assetKind)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category extends Category {
  const _Category({required this.id, required this.name, required this.kind, this.assetKind}): super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

/// Unique identifier for this category.
@override final  String id;
/// Human-readable name of the category.
@override final  String name;
/// The kind of entity this category classifies.
@override final  CategoryKind kind;
/// The asset connectivity state this category applies to, or null when
/// not applicable (e.g., when [kind] is not [CategoryKind.asset]).
@override final  AssetKind? assetKind;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.assetKind, assetKind) || other.assetKind == assetKind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,assetKind);

@override
String toString() {
  return 'Category(id: $id, name: $name, kind: $kind, assetKind: $assetKind)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CategoryKind kind, AssetKind? assetKind
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? assetKind = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,assetKind: freezed == assetKind ? _self.assetKind : assetKind // ignore: cast_nullable_to_non_nullable
as AssetKind?,
  ));
}


}


/// @nodoc
mixin _$CategoryInput {

/// Unique identifier for this category, or null when creating a new one.
 String? get id;/// Unique identifier for this category, or null when creating a new one.
 set id(String? value);/// Human-readable name of the category. Defaults to an empty string.
 String get name;/// Human-readable name of the category. Defaults to an empty string.
 set name(String value);/// The kind of entity this category classifies. Defaults to
/// [CategoryKind.asset].
 CategoryKind get kind;/// The kind of entity this category classifies. Defaults to
/// [CategoryKind.asset].
 set kind(CategoryKind value);/// The asset connectivity state this category applies to, or null when
/// not applicable.
 AssetKind? get assetKind;/// The asset connectivity state this category applies to, or null when
/// not applicable.
 set assetKind(AssetKind? value);
/// Create a copy of CategoryInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryInputCopyWith<CategoryInput> get copyWith => _$CategoryInputCopyWithImpl<CategoryInput>(this as CategoryInput, _$identity);

  /// Serializes this CategoryInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CategoryInput(id: $id, name: $name, kind: $kind, assetKind: $assetKind)';
}


}

/// @nodoc
abstract mixin class $CategoryInputCopyWith<$Res>  {
  factory $CategoryInputCopyWith(CategoryInput value, $Res Function(CategoryInput) _then) = _$CategoryInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, CategoryKind kind, AssetKind? assetKind
});




}
/// @nodoc
class _$CategoryInputCopyWithImpl<$Res>
    implements $CategoryInputCopyWith<$Res> {
  _$CategoryInputCopyWithImpl(this._self, this._then);

  final CategoryInput _self;
  final $Res Function(CategoryInput) _then;

/// Create a copy of CategoryInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? kind = null,Object? assetKind = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,assetKind: freezed == assetKind ? _self.assetKind : assetKind // ignore: cast_nullable_to_non_nullable
as AssetKind?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryInput].
extension CategoryInputPatterns on CategoryInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryInput value)  $default,){
final _that = this;
switch (_that) {
case _CategoryInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryInput value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  CategoryKind kind,  AssetKind? assetKind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryInput() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  CategoryKind kind,  AssetKind? assetKind)  $default,) {final _that = this;
switch (_that) {
case _CategoryInput():
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  CategoryKind kind,  AssetKind? assetKind)?  $default,) {final _that = this;
switch (_that) {
case _CategoryInput() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.assetKind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryInput extends CategoryInput {
   _CategoryInput({this.id, this.name = '', this.kind = CategoryKind.asset, this.assetKind}): super._();
  factory _CategoryInput.fromJson(Map<String, dynamic> json) => _$CategoryInputFromJson(json);

/// Unique identifier for this category, or null when creating a new one.
@override  String? id;
/// Human-readable name of the category. Defaults to an empty string.
@override@JsonKey()  String name;
/// The kind of entity this category classifies. Defaults to
/// [CategoryKind.asset].
@override@JsonKey()  CategoryKind kind;
/// The asset connectivity state this category applies to, or null when
/// not applicable.
@override  AssetKind? assetKind;

/// Create a copy of CategoryInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryInputCopyWith<_CategoryInput> get copyWith => __$CategoryInputCopyWithImpl<_CategoryInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryInputToJson(this, );
}



@override
String toString() {
  return 'CategoryInput(id: $id, name: $name, kind: $kind, assetKind: $assetKind)';
}


}

/// @nodoc
abstract mixin class _$CategoryInputCopyWith<$Res> implements $CategoryInputCopyWith<$Res> {
  factory _$CategoryInputCopyWith(_CategoryInput value, $Res Function(_CategoryInput) _then) = __$CategoryInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, CategoryKind kind, AssetKind? assetKind
});




}
/// @nodoc
class __$CategoryInputCopyWithImpl<$Res>
    implements _$CategoryInputCopyWith<$Res> {
  __$CategoryInputCopyWithImpl(this._self, this._then);

  final _CategoryInput _self;
  final $Res Function(_CategoryInput) _then;

/// Create a copy of CategoryInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? kind = null,Object? assetKind = freezed,}) {
  return _then(_CategoryInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CategoryKind,assetKind: freezed == assetKind ? _self.assetKind : assetKind // ignore: cast_nullable_to_non_nullable
as AssetKind?,
  ));
}


}

// dart format on
