// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Department {

/// Unique identifier for this department.
 String get id;/// Human-readable name of the department.
 String get name;/// Module-level permissions assigned to this department, or null if not set.
/// When present, users in this department inherit these access rights.
 GenericPermission? get permissions;
/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentCopyWith<Department> get copyWith => _$DepartmentCopyWithImpl<Department>(this as Department, _$identity);

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Department&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.permissions, permissions) || other.permissions == permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,permissions);

@override
String toString() {
  return 'Department(id: $id, name: $name, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $DepartmentCopyWith<$Res>  {
  factory $DepartmentCopyWith(Department value, $Res Function(Department) _then) = _$DepartmentCopyWithImpl;
@useResult
$Res call({
 String id, String name, GenericPermission? permissions
});


$GenericPermissionCopyWith<$Res>? get permissions;

}
/// @nodoc
class _$DepartmentCopyWithImpl<$Res>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._self, this._then);

  final Department _self;
  final $Res Function(Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? permissions = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as GenericPermission?,
  ));
}
/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericPermissionCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
    return null;
  }

  return $GenericPermissionCopyWith<$Res>(_self.permissions!, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Department].
extension DepartmentPatterns on Department {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Department value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Department() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Department value)  $default,){
final _that = this;
switch (_that) {
case _Department():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Department value)?  $default,){
final _that = this;
switch (_that) {
case _Department() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  GenericPermission? permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.name,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  GenericPermission? permissions)  $default,) {final _that = this;
switch (_that) {
case _Department():
return $default(_that.id,_that.name,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  GenericPermission? permissions)?  $default,) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.name,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Department implements Department {
  const _Department({required this.id, required this.name, this.permissions});
  factory _Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);

/// Unique identifier for this department.
@override final  String id;
/// Human-readable name of the department.
@override final  String name;
/// Module-level permissions assigned to this department, or null if not set.
/// When present, users in this department inherit these access rights.
@override final  GenericPermission? permissions;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentCopyWith<_Department> get copyWith => __$DepartmentCopyWithImpl<_Department>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Department&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.permissions, permissions) || other.permissions == permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,permissions);

@override
String toString() {
  return 'Department(id: $id, name: $name, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$DepartmentCopyWith<$Res> implements $DepartmentCopyWith<$Res> {
  factory _$DepartmentCopyWith(_Department value, $Res Function(_Department) _then) = __$DepartmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, GenericPermission? permissions
});


@override $GenericPermissionCopyWith<$Res>? get permissions;

}
/// @nodoc
class __$DepartmentCopyWithImpl<$Res>
    implements _$DepartmentCopyWith<$Res> {
  __$DepartmentCopyWithImpl(this._self, this._then);

  final _Department _self;
  final $Res Function(_Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? permissions = freezed,}) {
  return _then(_Department(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as GenericPermission?,
  ));
}

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericPermissionCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
    return null;
  }

  return $GenericPermissionCopyWith<$Res>(_self.permissions!, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// @nodoc
mixin _$DepartmentInput {

/// Unique identifier for this department.
 String? get id;/// Unique identifier for this department.
 set id(String? value);/// Human-readable name of the department.
 String get name;/// Human-readable name of the department.
 set name(String value);/// Module-level permissions assigned to this department, or null if not set.
/// When present, users in this department inherit these access rights.
 GenericPermissionInput? get permissions;/// Module-level permissions assigned to this department, or null if not set.
/// When present, users in this department inherit these access rights.
 set permissions(GenericPermissionInput? value);
/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentInputCopyWith<DepartmentInput> get copyWith => _$DepartmentInputCopyWithImpl<DepartmentInput>(this as DepartmentInput, _$identity);

  /// Serializes this DepartmentInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'DepartmentInput(id: $id, name: $name, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $DepartmentInputCopyWith<$Res>  {
  factory $DepartmentInputCopyWith(DepartmentInput value, $Res Function(DepartmentInput) _then) = _$DepartmentInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, GenericPermissionInput? permissions
});


$GenericPermissionInputCopyWith<$Res>? get permissions;

}
/// @nodoc
class _$DepartmentInputCopyWithImpl<$Res>
    implements $DepartmentInputCopyWith<$Res> {
  _$DepartmentInputCopyWithImpl(this._self, this._then);

  final DepartmentInput _self;
  final $Res Function(DepartmentInput) _then;

/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? permissions = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as GenericPermissionInput?,
  ));
}
/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericPermissionInputCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
    return null;
  }

  return $GenericPermissionInputCopyWith<$Res>(_self.permissions!, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// Adds pattern-matching-related methods to [DepartmentInput].
extension DepartmentInputPatterns on DepartmentInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartmentInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartmentInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartmentInput value)  $default,){
final _that = this;
switch (_that) {
case _DepartmentInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartmentInput value)?  $default,){
final _that = this;
switch (_that) {
case _DepartmentInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  GenericPermissionInput? permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentInput() when $default != null:
return $default(_that.id,_that.name,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  GenericPermissionInput? permissions)  $default,) {final _that = this;
switch (_that) {
case _DepartmentInput():
return $default(_that.id,_that.name,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  GenericPermissionInput? permissions)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentInput() when $default != null:
return $default(_that.id,_that.name,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartmentInput extends DepartmentInput {
   _DepartmentInput({this.id, required this.name, this.permissions}): super._();
  factory _DepartmentInput.fromJson(Map<String, dynamic> json) => _$DepartmentInputFromJson(json);

/// Unique identifier for this department.
@override  String? id;
/// Human-readable name of the department.
@override  String name;
/// Module-level permissions assigned to this department, or null if not set.
/// When present, users in this department inherit these access rights.
@override  GenericPermissionInput? permissions;

/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentInputCopyWith<_DepartmentInput> get copyWith => __$DepartmentInputCopyWithImpl<_DepartmentInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentInputToJson(this, );
}



@override
String toString() {
  return 'DepartmentInput(id: $id, name: $name, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$DepartmentInputCopyWith<$Res> implements $DepartmentInputCopyWith<$Res> {
  factory _$DepartmentInputCopyWith(_DepartmentInput value, $Res Function(_DepartmentInput) _then) = __$DepartmentInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, GenericPermissionInput? permissions
});


@override $GenericPermissionInputCopyWith<$Res>? get permissions;

}
/// @nodoc
class __$DepartmentInputCopyWithImpl<$Res>
    implements _$DepartmentInputCopyWith<$Res> {
  __$DepartmentInputCopyWithImpl(this._self, this._then);

  final _DepartmentInput _self;
  final $Res Function(_DepartmentInput) _then;

/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? permissions = freezed,}) {
  return _then(_DepartmentInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as GenericPermissionInput?,
  ));
}

/// Create a copy of DepartmentInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenericPermissionInputCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
    return null;
  }

  return $GenericPermissionInputCopyWith<$Res>(_self.permissions!, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}

// dart format on
