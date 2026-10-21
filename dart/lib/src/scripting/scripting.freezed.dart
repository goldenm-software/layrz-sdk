// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scripting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LintError {

/// [code] defines the error code.
 String get code;/// [line] defines the line number where the error occurred. `1` means the first line or an unknown line.
 int get line;/// [name] defines the name of the error.
 String? get name;/// [expected] defines the dynamic value that was expected.
 dynamic get expected;/// [received] defines the dynamic value that was received.
 dynamic get received;
/// Create a copy of LintError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LintErrorCopyWith<LintError> get copyWith => _$LintErrorCopyWithImpl<LintError>(this as LintError, _$identity);

  /// Serializes this LintError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LintError&&(identical(other.code, code) || other.code == code)&&(identical(other.line, line) || other.line == line)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.expected, expected)&&const DeepCollectionEquality().equals(other.received, received));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,line,name,const DeepCollectionEquality().hash(expected),const DeepCollectionEquality().hash(received));

@override
String toString() {
  return 'LintError(code: $code, line: $line, name: $name, expected: $expected, received: $received)';
}


}

/// @nodoc
abstract mixin class $LintErrorCopyWith<$Res>  {
  factory $LintErrorCopyWith(LintError value, $Res Function(LintError) _then) = _$LintErrorCopyWithImpl;
@useResult
$Res call({
 String code, int line, String? name, dynamic expected, dynamic received
});




}
/// @nodoc
class _$LintErrorCopyWithImpl<$Res>
    implements $LintErrorCopyWith<$Res> {
  _$LintErrorCopyWithImpl(this._self, this._then);

  final LintError _self;
  final $Res Function(LintError) _then;

/// Create a copy of LintError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? line = null,Object? name = freezed,Object? expected = freezed,Object? received = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,line: null == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,expected: freezed == expected ? _self.expected : expected // ignore: cast_nullable_to_non_nullable
as dynamic,received: freezed == received ? _self.received : received // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [LintError].
extension LintErrorPatterns on LintError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LintError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LintError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LintError value)  $default,){
final _that = this;
switch (_that) {
case _LintError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LintError value)?  $default,){
final _that = this;
switch (_that) {
case _LintError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  int line,  String? name,  dynamic expected,  dynamic received)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LintError() when $default != null:
return $default(_that.code,_that.line,_that.name,_that.expected,_that.received);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  int line,  String? name,  dynamic expected,  dynamic received)  $default,) {final _that = this;
switch (_that) {
case _LintError():
return $default(_that.code,_that.line,_that.name,_that.expected,_that.received);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  int line,  String? name,  dynamic expected,  dynamic received)?  $default,) {final _that = this;
switch (_that) {
case _LintError() when $default != null:
return $default(_that.code,_that.line,_that.name,_that.expected,_that.received);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LintError implements LintError {
  const _LintError({required this.code, this.line = 1, this.name, this.expected, this.received});
  factory _LintError.fromJson(Map<String, dynamic> json) => _$LintErrorFromJson(json);

/// [code] defines the error code.
@override final  String code;
/// [line] defines the line number where the error occurred. `1` means the first line or an unknown line.
@override@JsonKey() final  int line;
/// [name] defines the name of the error.
@override final  String? name;
/// [expected] defines the dynamic value that was expected.
@override final  dynamic expected;
/// [received] defines the dynamic value that was received.
@override final  dynamic received;

/// Create a copy of LintError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LintErrorCopyWith<_LintError> get copyWith => __$LintErrorCopyWithImpl<_LintError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LintErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LintError&&(identical(other.code, code) || other.code == code)&&(identical(other.line, line) || other.line == line)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.expected, expected)&&const DeepCollectionEquality().equals(other.received, received));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,line,name,const DeepCollectionEquality().hash(expected),const DeepCollectionEquality().hash(received));

@override
String toString() {
  return 'LintError(code: $code, line: $line, name: $name, expected: $expected, received: $received)';
}


}

/// @nodoc
abstract mixin class _$LintErrorCopyWith<$Res> implements $LintErrorCopyWith<$Res> {
  factory _$LintErrorCopyWith(_LintError value, $Res Function(_LintError) _then) = __$LintErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, int line, String? name, dynamic expected, dynamic received
});




}
/// @nodoc
class __$LintErrorCopyWithImpl<$Res>
    implements _$LintErrorCopyWith<$Res> {
  __$LintErrorCopyWithImpl(this._self, this._then);

  final _LintError _self;
  final $Res Function(_LintError) _then;

/// Create a copy of LintError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? line = null,Object? name = freezed,Object? expected = freezed,Object? received = freezed,}) {
  return _then(_LintError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,line: null == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,expected: freezed == expected ? _self.expected : expected // ignore: cast_nullable_to_non_nullable
as dynamic,received: freezed == received ? _self.received : received // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
