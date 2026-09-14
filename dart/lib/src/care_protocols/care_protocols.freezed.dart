// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_protocols.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CareProtocol {

/// [id] is the unique identifier of the care protocol.
 String get id;/// [name] is the name of the care protocol.
 String get name;/// [mode] indicates the design mode of the care protocol.
@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode? get mode;/// [tasks] is the list of tasks to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.simple].
 List<CareTask> get tasks;/// [pages] is the list of pages to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.concierge].
 List<ConciergeFormPage> get pages;/// [associatedTriggers] is a list of triggers associated to this care
/// protocol.
 List<Trigger>? get associatedTriggers;/// [numOfTasks] represents the number of tasks created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.simple].
 int? get numOfTasks;/// [numOfPages] represents the number of pages created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.concierge].
 int? get numOfPages;/// [numOfBlocks] represents the number of blocks created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.concierge].
 int? get numOfBlocks;/// [access] is the list of granted access to this care protocol.
 List<Access>? get access;
/// Create a copy of CareProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareProtocolCopyWith<CareProtocol> get copyWith => _$CareProtocolCopyWithImpl<CareProtocol>(this as CareProtocol, _$identity);

  /// Serializes this CareProtocol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CareProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&const DeepCollectionEquality().equals(other.pages, pages)&&const DeepCollectionEquality().equals(other.associatedTriggers, associatedTriggers)&&(identical(other.numOfTasks, numOfTasks) || other.numOfTasks == numOfTasks)&&(identical(other.numOfPages, numOfPages) || other.numOfPages == numOfPages)&&(identical(other.numOfBlocks, numOfBlocks) || other.numOfBlocks == numOfBlocks)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mode,const DeepCollectionEquality().hash(tasks),const DeepCollectionEquality().hash(pages),const DeepCollectionEquality().hash(associatedTriggers),numOfTasks,numOfPages,numOfBlocks,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'CareProtocol(id: $id, name: $name, mode: $mode, tasks: $tasks, pages: $pages, associatedTriggers: $associatedTriggers, numOfTasks: $numOfTasks, numOfPages: $numOfPages, numOfBlocks: $numOfBlocks, access: $access)';
}


}

/// @nodoc
abstract mixin class $CareProtocolCopyWith<$Res>  {
  factory $CareProtocolCopyWith(CareProtocol value, $Res Function(CareProtocol) _then) = _$CareProtocolCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode? mode, List<CareTask> tasks, List<ConciergeFormPage> pages, List<Trigger>? associatedTriggers, int? numOfTasks, int? numOfPages, int? numOfBlocks, List<Access>? access
});




}
/// @nodoc
class _$CareProtocolCopyWithImpl<$Res>
    implements $CareProtocolCopyWith<$Res> {
  _$CareProtocolCopyWithImpl(this._self, this._then);

  final CareProtocol _self;
  final $Res Function(CareProtocol) _then;

/// Create a copy of CareProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? mode = freezed,Object? tasks = null,Object? pages = null,Object? associatedTriggers = freezed,Object? numOfTasks = freezed,Object? numOfPages = freezed,Object? numOfBlocks = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CareProtocolMode?,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<CareTask>,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ConciergeFormPage>,associatedTriggers: freezed == associatedTriggers ? _self.associatedTriggers : associatedTriggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,numOfTasks: freezed == numOfTasks ? _self.numOfTasks : numOfTasks // ignore: cast_nullable_to_non_nullable
as int?,numOfPages: freezed == numOfPages ? _self.numOfPages : numOfPages // ignore: cast_nullable_to_non_nullable
as int?,numOfBlocks: freezed == numOfBlocks ? _self.numOfBlocks : numOfBlocks // ignore: cast_nullable_to_non_nullable
as int?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CareProtocol].
extension CareProtocolPatterns on CareProtocol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareProtocol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareProtocol value)  $default,){
final _that = this;
switch (_that) {
case _CareProtocol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _CareProtocol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode? mode,  List<CareTask> tasks,  List<ConciergeFormPage> pages,  List<Trigger>? associatedTriggers,  int? numOfTasks,  int? numOfPages,  int? numOfBlocks,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareProtocol() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages,_that.associatedTriggers,_that.numOfTasks,_that.numOfPages,_that.numOfBlocks,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode? mode,  List<CareTask> tasks,  List<ConciergeFormPage> pages,  List<Trigger>? associatedTriggers,  int? numOfTasks,  int? numOfPages,  int? numOfBlocks,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _CareProtocol():
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages,_that.associatedTriggers,_that.numOfTasks,_that.numOfPages,_that.numOfBlocks,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode? mode,  List<CareTask> tasks,  List<ConciergeFormPage> pages,  List<Trigger>? associatedTriggers,  int? numOfTasks,  int? numOfPages,  int? numOfBlocks,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _CareProtocol() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages,_that.associatedTriggers,_that.numOfTasks,_that.numOfPages,_that.numOfBlocks,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CareProtocol extends CareProtocol {
  const _CareProtocol({required this.id, required this.name, @JsonKey(unknownEnumValue: CareProtocolMode.simple) this.mode, this.tasks = const [], this.pages = const [], this.associatedTriggers, this.numOfTasks, this.numOfPages, this.numOfBlocks, this.access}): super._();
  factory _CareProtocol.fromJson(Map<String, dynamic> json) => _$CareProtocolFromJson(json);

/// [id] is the unique identifier of the care protocol.
@override final  String id;
/// [name] is the name of the care protocol.
@override final  String name;
/// [mode] indicates the design mode of the care protocol.
@override@JsonKey(unknownEnumValue: CareProtocolMode.simple) final  CareProtocolMode? mode;
/// [tasks] is the list of tasks to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.simple].
@override@JsonKey() final  List<CareTask> tasks;
/// [pages] is the list of pages to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.concierge].
@override@JsonKey() final  List<ConciergeFormPage> pages;
/// [associatedTriggers] is a list of triggers associated to this care
/// protocol.
@override final  List<Trigger>? associatedTriggers;
/// [numOfTasks] represents the number of tasks created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.simple].
@override final  int? numOfTasks;
/// [numOfPages] represents the number of pages created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.concierge].
@override final  int? numOfPages;
/// [numOfBlocks] represents the number of blocks created from this care
/// protocol.
///
/// Only present when [mode] is [CareProtocolMode.concierge].
@override final  int? numOfBlocks;
/// [access] is the list of granted access to this care protocol.
@override final  List<Access>? access;

/// Create a copy of CareProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareProtocolCopyWith<_CareProtocol> get copyWith => __$CareProtocolCopyWithImpl<_CareProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CareProtocolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CareProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&const DeepCollectionEquality().equals(other.pages, pages)&&const DeepCollectionEquality().equals(other.associatedTriggers, associatedTriggers)&&(identical(other.numOfTasks, numOfTasks) || other.numOfTasks == numOfTasks)&&(identical(other.numOfPages, numOfPages) || other.numOfPages == numOfPages)&&(identical(other.numOfBlocks, numOfBlocks) || other.numOfBlocks == numOfBlocks)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mode,const DeepCollectionEquality().hash(tasks),const DeepCollectionEquality().hash(pages),const DeepCollectionEquality().hash(associatedTriggers),numOfTasks,numOfPages,numOfBlocks,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'CareProtocol(id: $id, name: $name, mode: $mode, tasks: $tasks, pages: $pages, associatedTriggers: $associatedTriggers, numOfTasks: $numOfTasks, numOfPages: $numOfPages, numOfBlocks: $numOfBlocks, access: $access)';
}


}

/// @nodoc
abstract mixin class _$CareProtocolCopyWith<$Res> implements $CareProtocolCopyWith<$Res> {
  factory _$CareProtocolCopyWith(_CareProtocol value, $Res Function(_CareProtocol) _then) = __$CareProtocolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode? mode, List<CareTask> tasks, List<ConciergeFormPage> pages, List<Trigger>? associatedTriggers, int? numOfTasks, int? numOfPages, int? numOfBlocks, List<Access>? access
});




}
/// @nodoc
class __$CareProtocolCopyWithImpl<$Res>
    implements _$CareProtocolCopyWith<$Res> {
  __$CareProtocolCopyWithImpl(this._self, this._then);

  final _CareProtocol _self;
  final $Res Function(_CareProtocol) _then;

/// Create a copy of CareProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? mode = freezed,Object? tasks = null,Object? pages = null,Object? associatedTriggers = freezed,Object? numOfTasks = freezed,Object? numOfPages = freezed,Object? numOfBlocks = freezed,Object? access = freezed,}) {
  return _then(_CareProtocol(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CareProtocolMode?,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<CareTask>,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ConciergeFormPage>,associatedTriggers: freezed == associatedTriggers ? _self.associatedTriggers : associatedTriggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,numOfTasks: freezed == numOfTasks ? _self.numOfTasks : numOfTasks // ignore: cast_nullable_to_non_nullable
as int?,numOfPages: freezed == numOfPages ? _self.numOfPages : numOfPages // ignore: cast_nullable_to_non_nullable
as int?,numOfBlocks: freezed == numOfBlocks ? _self.numOfBlocks : numOfBlocks // ignore: cast_nullable_to_non_nullable
as int?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}


}


/// @nodoc
mixin _$CareProtocolInput {

/// [id] is the unique identifier of the care protocol. Omit to create a
/// new care protocol.
 String? get id;/// [id] is the unique identifier of the care protocol. Omit to create a
/// new care protocol.
 set id(String? value);/// [name] is the name of the care protocol.
 String get name;/// [name] is the name of the care protocol.
 set name(String value);/// [mode] indicates the design mode of the care protocol.
@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode get mode;/// [mode] indicates the design mode of the care protocol.
@JsonKey(unknownEnumValue: CareProtocolMode.simple) set mode(CareProtocolMode value);/// [tasks] is the list of tasks to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.simple].
 List<CareTaskInput> get tasks;/// [tasks] is the list of tasks to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.simple].
 set tasks(List<CareTaskInput> value);/// [pages] is the list of pages to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.concierge].
 List<ConciergeFormPageInput> get pages;/// [pages] is the list of pages to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.concierge].
 set pages(List<ConciergeFormPageInput> value);
/// Create a copy of CareProtocolInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareProtocolInputCopyWith<CareProtocolInput> get copyWith => _$CareProtocolInputCopyWithImpl<CareProtocolInput>(this as CareProtocolInput, _$identity);

  /// Serializes this CareProtocolInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CareProtocolInput(id: $id, name: $name, mode: $mode, tasks: $tasks, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $CareProtocolInputCopyWith<$Res>  {
  factory $CareProtocolInputCopyWith(CareProtocolInput value, $Res Function(CareProtocolInput) _then) = _$CareProtocolInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode mode, List<CareTaskInput> tasks, List<ConciergeFormPageInput> pages
});




}
/// @nodoc
class _$CareProtocolInputCopyWithImpl<$Res>
    implements $CareProtocolInputCopyWith<$Res> {
  _$CareProtocolInputCopyWithImpl(this._self, this._then);

  final CareProtocolInput _self;
  final $Res Function(CareProtocolInput) _then;

/// Create a copy of CareProtocolInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? mode = null,Object? tasks = null,Object? pages = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CareProtocolMode,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<CareTaskInput>,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ConciergeFormPageInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [CareProtocolInput].
extension CareProtocolInputPatterns on CareProtocolInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareProtocolInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareProtocolInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareProtocolInput value)  $default,){
final _that = this;
switch (_that) {
case _CareProtocolInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareProtocolInput value)?  $default,){
final _that = this;
switch (_that) {
case _CareProtocolInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode mode,  List<CareTaskInput> tasks,  List<ConciergeFormPageInput> pages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode mode,  List<CareTaskInput> tasks,  List<ConciergeFormPageInput> pages)  $default,) {final _that = this;
switch (_that) {
case _CareProtocolInput():
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name, @JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode mode,  List<CareTaskInput> tasks,  List<ConciergeFormPageInput> pages)?  $default,) {final _that = this;
switch (_that) {
case _CareProtocolInput() when $default != null:
return $default(_that.id,_that.name,_that.mode,_that.tasks,_that.pages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CareProtocolInput implements CareProtocolInput {
   _CareProtocolInput({this.id, this.name = "", @JsonKey(unknownEnumValue: CareProtocolMode.simple) this.mode = CareProtocolMode.simple, this.tasks = const [], this.pages = const []});
  factory _CareProtocolInput.fromJson(Map<String, dynamic> json) => _$CareProtocolInputFromJson(json);

/// [id] is the unique identifier of the care protocol. Omit to create a
/// new care protocol.
@override  String? id;
/// [name] is the name of the care protocol.
@override@JsonKey()  String name;
/// [mode] indicates the design mode of the care protocol.
@override@JsonKey(unknownEnumValue: CareProtocolMode.simple)  CareProtocolMode mode;
/// [tasks] is the list of tasks to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.simple].
@override@JsonKey()  List<CareTaskInput> tasks;
/// [pages] is the list of pages to complete or fill before the case
/// submission. Only valid when [mode] is [CareProtocolMode.concierge].
@override@JsonKey()  List<ConciergeFormPageInput> pages;

/// Create a copy of CareProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareProtocolInputCopyWith<_CareProtocolInput> get copyWith => __$CareProtocolInputCopyWithImpl<_CareProtocolInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CareProtocolInputToJson(this, );
}



@override
String toString() {
  return 'CareProtocolInput(id: $id, name: $name, mode: $mode, tasks: $tasks, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$CareProtocolInputCopyWith<$Res> implements $CareProtocolInputCopyWith<$Res> {
  factory _$CareProtocolInputCopyWith(_CareProtocolInput value, $Res Function(_CareProtocolInput) _then) = __$CareProtocolInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode mode, List<CareTaskInput> tasks, List<ConciergeFormPageInput> pages
});




}
/// @nodoc
class __$CareProtocolInputCopyWithImpl<$Res>
    implements _$CareProtocolInputCopyWith<$Res> {
  __$CareProtocolInputCopyWithImpl(this._self, this._then);

  final _CareProtocolInput _self;
  final $Res Function(_CareProtocolInput) _then;

/// Create a copy of CareProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? mode = null,Object? tasks = null,Object? pages = null,}) {
  return _then(_CareProtocolInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CareProtocolMode,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<CareTaskInput>,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<ConciergeFormPageInput>,
  ));
}


}


/// @nodoc
mixin _$CareTask {

/// [question] is the question to prompt.
 String get question;/// [answer] is the type of answer expected for [question].
@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind get answer;/// [choices] represents the list of possible values.
///
/// Only relevant when [answer] is [AnswerKind.choice].
 List<String> get choices;/// [minValue] represents the minimum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 int get minValue;/// [maxValue] represents the maximum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 int get maxValue;
/// Create a copy of CareTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareTaskCopyWith<CareTask> get copyWith => _$CareTaskCopyWithImpl<CareTask>(this as CareTask, _$identity);

  /// Serializes this CareTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CareTask&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer,const DeepCollectionEquality().hash(choices),minValue,maxValue);

@override
String toString() {
  return 'CareTask(question: $question, answer: $answer, choices: $choices, minValue: $minValue, maxValue: $maxValue)';
}


}

/// @nodoc
abstract mixin class $CareTaskCopyWith<$Res>  {
  factory $CareTaskCopyWith(CareTask value, $Res Function(CareTask) _then) = _$CareTaskCopyWithImpl;
@useResult
$Res call({
 String question,@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind answer, List<String> choices, int minValue, int maxValue
});




}
/// @nodoc
class _$CareTaskCopyWithImpl<$Res>
    implements $CareTaskCopyWith<$Res> {
  _$CareTaskCopyWithImpl(this._self, this._then);

  final CareTask _self;
  final $Res Function(CareTask) _then;

/// Create a copy of CareTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? answer = null,Object? choices = null,Object? minValue = null,Object? maxValue = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerKind,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as int,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CareTask].
extension CareTaskPatterns on CareTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareTask value)  $default,){
final _that = this;
switch (_that) {
case _CareTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareTask value)?  $default,){
final _that = this;
switch (_that) {
case _CareTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareTask() when $default != null:
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)  $default,) {final _that = this;
switch (_that) {
case _CareTask():
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)?  $default,) {final _that = this;
switch (_that) {
case _CareTask() when $default != null:
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CareTask implements CareTask {
  const _CareTask({required this.question, @JsonKey(unknownEnumValue: AnswerKind.text) required this.answer, this.choices = const [], this.minValue = 0, this.maxValue = 0});
  factory _CareTask.fromJson(Map<String, dynamic> json) => _$CareTaskFromJson(json);

/// [question] is the question to prompt.
@override final  String question;
/// [answer] is the type of answer expected for [question].
@override@JsonKey(unknownEnumValue: AnswerKind.text) final  AnswerKind answer;
/// [choices] represents the list of possible values.
///
/// Only relevant when [answer] is [AnswerKind.choice].
@override@JsonKey() final  List<String> choices;
/// [minValue] represents the minimum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
@override@JsonKey() final  int minValue;
/// [maxValue] represents the maximum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
@override@JsonKey() final  int maxValue;

/// Create a copy of CareTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareTaskCopyWith<_CareTask> get copyWith => __$CareTaskCopyWithImpl<_CareTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CareTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CareTask&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer,const DeepCollectionEquality().hash(choices),minValue,maxValue);

@override
String toString() {
  return 'CareTask(question: $question, answer: $answer, choices: $choices, minValue: $minValue, maxValue: $maxValue)';
}


}

/// @nodoc
abstract mixin class _$CareTaskCopyWith<$Res> implements $CareTaskCopyWith<$Res> {
  factory _$CareTaskCopyWith(_CareTask value, $Res Function(_CareTask) _then) = __$CareTaskCopyWithImpl;
@override @useResult
$Res call({
 String question,@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind answer, List<String> choices, int minValue, int maxValue
});




}
/// @nodoc
class __$CareTaskCopyWithImpl<$Res>
    implements _$CareTaskCopyWith<$Res> {
  __$CareTaskCopyWithImpl(this._self, this._then);

  final _CareTask _self;
  final $Res Function(_CareTask) _then;

/// Create a copy of CareTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,Object? choices = null,Object? minValue = null,Object? maxValue = null,}) {
  return _then(_CareTask(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerKind,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as int,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CareTaskInput {

/// [question] is the question to prompt.
 String get question;/// [question] is the question to prompt.
 set question(String value);/// [answer] is the type of answer expected for [question].
@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind get answer;/// [answer] is the type of answer expected for [question].
@JsonKey(unknownEnumValue: AnswerKind.text) set answer(AnswerKind value);/// [choices] represents the list of possible values.
///
/// Only relevant when [answer] is [AnswerKind.choice].
 List<String> get choices;/// [choices] represents the list of possible values.
///
/// Only relevant when [answer] is [AnswerKind.choice].
 set choices(List<String> value);/// [minValue] represents the minimum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 int get minValue;/// [minValue] represents the minimum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 set minValue(int value);/// [maxValue] represents the maximum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 int get maxValue;/// [maxValue] represents the maximum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
 set maxValue(int value);
/// Create a copy of CareTaskInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareTaskInputCopyWith<CareTaskInput> get copyWith => _$CareTaskInputCopyWithImpl<CareTaskInput>(this as CareTaskInput, _$identity);

  /// Serializes this CareTaskInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CareTaskInput(question: $question, answer: $answer, choices: $choices, minValue: $minValue, maxValue: $maxValue)';
}


}

/// @nodoc
abstract mixin class $CareTaskInputCopyWith<$Res>  {
  factory $CareTaskInputCopyWith(CareTaskInput value, $Res Function(CareTaskInput) _then) = _$CareTaskInputCopyWithImpl;
@useResult
$Res call({
 String question,@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind answer, List<String> choices, int minValue, int maxValue
});




}
/// @nodoc
class _$CareTaskInputCopyWithImpl<$Res>
    implements $CareTaskInputCopyWith<$Res> {
  _$CareTaskInputCopyWithImpl(this._self, this._then);

  final CareTaskInput _self;
  final $Res Function(CareTaskInput) _then;

/// Create a copy of CareTaskInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? answer = null,Object? choices = null,Object? minValue = null,Object? maxValue = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerKind,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as int,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CareTaskInput].
extension CareTaskInputPatterns on CareTaskInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CareTaskInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CareTaskInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CareTaskInput value)  $default,){
final _that = this;
switch (_that) {
case _CareTaskInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CareTaskInput value)?  $default,){
final _that = this;
switch (_that) {
case _CareTaskInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CareTaskInput() when $default != null:
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)  $default,) {final _that = this;
switch (_that) {
case _CareTaskInput():
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String question, @JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer,  List<String> choices,  int minValue,  int maxValue)?  $default,) {final _that = this;
switch (_that) {
case _CareTaskInput() when $default != null:
return $default(_that.question,_that.answer,_that.choices,_that.minValue,_that.maxValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CareTaskInput extends CareTaskInput {
   _CareTaskInput({this.question = '', @JsonKey(unknownEnumValue: AnswerKind.text) this.answer = AnswerKind.text, this.choices = const [], this.minValue = 0, this.maxValue = 0}): super._();
  factory _CareTaskInput.fromJson(Map<String, dynamic> json) => _$CareTaskInputFromJson(json);

/// [question] is the question to prompt.
@override@JsonKey()  String question;
/// [answer] is the type of answer expected for [question].
@override@JsonKey(unknownEnumValue: AnswerKind.text)  AnswerKind answer;
/// [choices] represents the list of possible values.
///
/// Only relevant when [answer] is [AnswerKind.choice].
@override@JsonKey()  List<String> choices;
/// [minValue] represents the minimum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
@override@JsonKey()  int minValue;
/// [maxValue] represents the maximum of the range of possible values.
///
/// Only relevant when [answer] is [AnswerKind.range].
@override@JsonKey()  int maxValue;

/// Create a copy of CareTaskInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareTaskInputCopyWith<_CareTaskInput> get copyWith => __$CareTaskInputCopyWithImpl<_CareTaskInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CareTaskInputToJson(this, );
}



@override
String toString() {
  return 'CareTaskInput(question: $question, answer: $answer, choices: $choices, minValue: $minValue, maxValue: $maxValue)';
}


}

/// @nodoc
abstract mixin class _$CareTaskInputCopyWith<$Res> implements $CareTaskInputCopyWith<$Res> {
  factory _$CareTaskInputCopyWith(_CareTaskInput value, $Res Function(_CareTaskInput) _then) = __$CareTaskInputCopyWithImpl;
@override @useResult
$Res call({
 String question,@JsonKey(unknownEnumValue: AnswerKind.text) AnswerKind answer, List<String> choices, int minValue, int maxValue
});




}
/// @nodoc
class __$CareTaskInputCopyWithImpl<$Res>
    implements _$CareTaskInputCopyWith<$Res> {
  __$CareTaskInputCopyWithImpl(this._self, this._then);

  final _CareTaskInput _self;
  final $Res Function(_CareTaskInput) _then;

/// Create a copy of CareTaskInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,Object? choices = null,Object? minValue = null,Object? maxValue = null,}) {
  return _then(_CareTaskInput(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as AnswerKind,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as int,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
