// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a11y.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferences {

/// [timezone] is the user's preferred timezone. This will be the new timezone field on the user profile.
/// The format is the IANA timezone format, e.g., "America/New_York". If is empty will be the browser's timezone.
 String get timezone;/// [dateTimeFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 String get dateTimeFormat;/// [dateFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 String get dateFormat;/// [timeFormat] is the user's preferred time format. This will be the new time_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%I:%M %p".
 String get timeFormat;/// [colorblindMode] is the user's preferred colorblind mode. This will be the new colorblind_mode field on the user profile.
/// The default is [ColorblindMode.normal].
@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode get colorblindMode;/// [colorblindForce] is the strength of the colorblind mode. This will be the new colorblind_force field on the user profile.
/// The default is 1.0 (100%).
 double get colorblindForce;
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<UserPreferences> get copyWith => _$UserPreferencesCopyWithImpl<UserPreferences>(this as UserPreferences, _$identity);

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferences&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.dateTimeFormat, dateTimeFormat) || other.dateTimeFormat == dateTimeFormat)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.colorblindMode, colorblindMode) || other.colorblindMode == colorblindMode)&&(identical(other.colorblindForce, colorblindForce) || other.colorblindForce == colorblindForce));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timezone,dateTimeFormat,dateFormat,timeFormat,colorblindMode,colorblindForce);

@override
String toString() {
  return 'UserPreferences(timezone: $timezone, dateTimeFormat: $dateTimeFormat, dateFormat: $dateFormat, timeFormat: $timeFormat, colorblindMode: $colorblindMode, colorblindForce: $colorblindForce)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res>  {
  factory $UserPreferencesCopyWith(UserPreferences value, $Res Function(UserPreferences) _then) = _$UserPreferencesCopyWithImpl;
@useResult
$Res call({
 String timezone, String dateTimeFormat, String dateFormat, String timeFormat,@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode colorblindMode, double colorblindForce
});




}
/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._self, this._then);

  final UserPreferences _self;
  final $Res Function(UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timezone = null,Object? dateTimeFormat = null,Object? dateFormat = null,Object? timeFormat = null,Object? colorblindMode = null,Object? colorblindForce = null,}) {
  return _then(_self.copyWith(
timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,colorblindMode: null == colorblindMode ? _self.colorblindMode : colorblindMode // ignore: cast_nullable_to_non_nullable
as ColorblindMode,colorblindForce: null == colorblindForce ? _self.colorblindForce : colorblindForce // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferences].
extension UserPreferencesPatterns on UserPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferences value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)  $default,) {final _that = this;
switch (_that) {
case _UserPreferences():
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferences extends UserPreferences {
  const _UserPreferences({this.timezone = '', this.dateTimeFormat = '%Y-%m-%d %I:%M %p', this.dateFormat = '%Y-%m-%d', this.timeFormat = '%I:%M %p', @JsonKey(unknownEnumValue: ColorblindMode.normal) this.colorblindMode = ColorblindMode.normal, this.colorblindForce = 1.0}): super._();
  factory _UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

/// [timezone] is the user's preferred timezone. This will be the new timezone field on the user profile.
/// The format is the IANA timezone format, e.g., "America/New_York". If is empty will be the browser's timezone.
@override@JsonKey() final  String timezone;
/// [dateTimeFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
@override@JsonKey() final  String dateTimeFormat;
/// [dateFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
@override@JsonKey() final  String dateFormat;
/// [timeFormat] is the user's preferred time format. This will be the new time_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%I:%M %p".
@override@JsonKey() final  String timeFormat;
/// [colorblindMode] is the user's preferred colorblind mode. This will be the new colorblind_mode field on the user profile.
/// The default is [ColorblindMode.normal].
@override@JsonKey(unknownEnumValue: ColorblindMode.normal) final  ColorblindMode colorblindMode;
/// [colorblindForce] is the strength of the colorblind mode. This will be the new colorblind_force field on the user profile.
/// The default is 1.0 (100%).
@override@JsonKey() final  double colorblindForce;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesCopyWith<_UserPreferences> get copyWith => __$UserPreferencesCopyWithImpl<_UserPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferences&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.dateTimeFormat, dateTimeFormat) || other.dateTimeFormat == dateTimeFormat)&&(identical(other.dateFormat, dateFormat) || other.dateFormat == dateFormat)&&(identical(other.timeFormat, timeFormat) || other.timeFormat == timeFormat)&&(identical(other.colorblindMode, colorblindMode) || other.colorblindMode == colorblindMode)&&(identical(other.colorblindForce, colorblindForce) || other.colorblindForce == colorblindForce));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timezone,dateTimeFormat,dateFormat,timeFormat,colorblindMode,colorblindForce);

@override
String toString() {
  return 'UserPreferences(timezone: $timezone, dateTimeFormat: $dateTimeFormat, dateFormat: $dateFormat, timeFormat: $timeFormat, colorblindMode: $colorblindMode, colorblindForce: $colorblindForce)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesCopyWith<$Res> implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(_UserPreferences value, $Res Function(_UserPreferences) _then) = __$UserPreferencesCopyWithImpl;
@override @useResult
$Res call({
 String timezone, String dateTimeFormat, String dateFormat, String timeFormat,@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode colorblindMode, double colorblindForce
});




}
/// @nodoc
class __$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(this._self, this._then);

  final _UserPreferences _self;
  final $Res Function(_UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timezone = null,Object? dateTimeFormat = null,Object? dateFormat = null,Object? timeFormat = null,Object? colorblindMode = null,Object? colorblindForce = null,}) {
  return _then(_UserPreferences(
timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,colorblindMode: null == colorblindMode ? _self.colorblindMode : colorblindMode // ignore: cast_nullable_to_non_nullable
as ColorblindMode,colorblindForce: null == colorblindForce ? _self.colorblindForce : colorblindForce // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$UserPreferencesInput {

/// [timezone] is the user's preferred timezone. This will be the new timezone field on the user profile.
/// The format is the IANA timezone format, e.g., "America/New_York". If is empty will be the browser's timezone.
 String get timezone;/// [timezone] is the user's preferred timezone. This will be the new timezone field on the user profile.
/// The format is the IANA timezone format, e.g., "America/New_York". If is empty will be the browser's timezone.
 set timezone(String value);/// [dateTimeFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 String get dateTimeFormat;/// [dateTimeFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 set dateTimeFormat(String value);/// [dateFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 String get dateFormat;/// [dateFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
 set dateFormat(String value);/// [timeFormat] is the user's preferred time format. This will be the new time_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%I:%M %p".
 String get timeFormat;/// [timeFormat] is the user's preferred time format. This will be the new time_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%I:%M %p".
 set timeFormat(String value);/// [colorblindMode] is the user's preferred colorblind mode. This will be the new colorblind_mode field on the user profile.
/// The default is [ColorblindMode.normal].
@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode get colorblindMode;/// [colorblindMode] is the user's preferred colorblind mode. This will be the new colorblind_mode field on the user profile.
/// The default is [ColorblindMode.normal].
@JsonKey(unknownEnumValue: ColorblindMode.normal) set colorblindMode(ColorblindMode value);/// [colorblindForce] is the strength of the colorblind mode. This will be the new colorblind_force field on the user profile.
/// The default is 1.0 (100%).
 double get colorblindForce;/// [colorblindForce] is the strength of the colorblind mode. This will be the new colorblind_force field on the user profile.
/// The default is 1.0 (100%).
 set colorblindForce(double value);
/// Create a copy of UserPreferencesInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesInputCopyWith<UserPreferencesInput> get copyWith => _$UserPreferencesInputCopyWithImpl<UserPreferencesInput>(this as UserPreferencesInput, _$identity);

  /// Serializes this UserPreferencesInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'UserPreferencesInput(timezone: $timezone, dateTimeFormat: $dateTimeFormat, dateFormat: $dateFormat, timeFormat: $timeFormat, colorblindMode: $colorblindMode, colorblindForce: $colorblindForce)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesInputCopyWith<$Res>  {
  factory $UserPreferencesInputCopyWith(UserPreferencesInput value, $Res Function(UserPreferencesInput) _then) = _$UserPreferencesInputCopyWithImpl;
@useResult
$Res call({
 String timezone, String dateTimeFormat, String dateFormat, String timeFormat,@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode colorblindMode, double colorblindForce
});




}
/// @nodoc
class _$UserPreferencesInputCopyWithImpl<$Res>
    implements $UserPreferencesInputCopyWith<$Res> {
  _$UserPreferencesInputCopyWithImpl(this._self, this._then);

  final UserPreferencesInput _self;
  final $Res Function(UserPreferencesInput) _then;

/// Create a copy of UserPreferencesInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timezone = null,Object? dateTimeFormat = null,Object? dateFormat = null,Object? timeFormat = null,Object? colorblindMode = null,Object? colorblindForce = null,}) {
  return _then(_self.copyWith(
timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,colorblindMode: null == colorblindMode ? _self.colorblindMode : colorblindMode // ignore: cast_nullable_to_non_nullable
as ColorblindMode,colorblindForce: null == colorblindForce ? _self.colorblindForce : colorblindForce // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferencesInput].
extension UserPreferencesInputPatterns on UserPreferencesInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesInput value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesInput value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesInput() when $default != null:
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesInput():
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timezone,  String dateTimeFormat,  String dateFormat,  String timeFormat, @JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode,  double colorblindForce)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesInput() when $default != null:
return $default(_that.timezone,_that.dateTimeFormat,_that.dateFormat,_that.timeFormat,_that.colorblindMode,_that.colorblindForce);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferencesInput extends UserPreferencesInput {
   _UserPreferencesInput({this.timezone = '', this.dateTimeFormat = '%Y-%m-%d %I:%M %p', this.dateFormat = '%Y-%m-%d', this.timeFormat = '%I:%M %p', @JsonKey(unknownEnumValue: ColorblindMode.normal) this.colorblindMode = ColorblindMode.normal, this.colorblindForce = 1.0}): super._();
  factory _UserPreferencesInput.fromJson(Map<String, dynamic> json) => _$UserPreferencesInputFromJson(json);

/// [timezone] is the user's preferred timezone. This will be the new timezone field on the user profile.
/// The format is the IANA timezone format, e.g., "America/New_York". If is empty will be the browser's timezone.
@override@JsonKey()  String timezone;
/// [dateTimeFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
@override@JsonKey()  String dateTimeFormat;
/// [dateFormat] is the user's preferred date format. This will be the new date_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%Y-%m-%d".
@override@JsonKey()  String dateFormat;
/// [timeFormat] is the user's preferred time format. This will be the new time_format field on the user profile.
/// The format should be the same as python's strftime format, e.g., "%I:%M %p".
@override@JsonKey()  String timeFormat;
/// [colorblindMode] is the user's preferred colorblind mode. This will be the new colorblind_mode field on the user profile.
/// The default is [ColorblindMode.normal].
@override@JsonKey(unknownEnumValue: ColorblindMode.normal)  ColorblindMode colorblindMode;
/// [colorblindForce] is the strength of the colorblind mode. This will be the new colorblind_force field on the user profile.
/// The default is 1.0 (100%).
@override@JsonKey()  double colorblindForce;

/// Create a copy of UserPreferencesInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesInputCopyWith<_UserPreferencesInput> get copyWith => __$UserPreferencesInputCopyWithImpl<_UserPreferencesInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesInputToJson(this, );
}



@override
String toString() {
  return 'UserPreferencesInput(timezone: $timezone, dateTimeFormat: $dateTimeFormat, dateFormat: $dateFormat, timeFormat: $timeFormat, colorblindMode: $colorblindMode, colorblindForce: $colorblindForce)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesInputCopyWith<$Res> implements $UserPreferencesInputCopyWith<$Res> {
  factory _$UserPreferencesInputCopyWith(_UserPreferencesInput value, $Res Function(_UserPreferencesInput) _then) = __$UserPreferencesInputCopyWithImpl;
@override @useResult
$Res call({
 String timezone, String dateTimeFormat, String dateFormat, String timeFormat,@JsonKey(unknownEnumValue: ColorblindMode.normal) ColorblindMode colorblindMode, double colorblindForce
});




}
/// @nodoc
class __$UserPreferencesInputCopyWithImpl<$Res>
    implements _$UserPreferencesInputCopyWith<$Res> {
  __$UserPreferencesInputCopyWithImpl(this._self, this._then);

  final _UserPreferencesInput _self;
  final $Res Function(_UserPreferencesInput) _then;

/// Create a copy of UserPreferencesInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timezone = null,Object? dateTimeFormat = null,Object? dateFormat = null,Object? timeFormat = null,Object? colorblindMode = null,Object? colorblindForce = null,}) {
  return _then(_UserPreferencesInput(
timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,dateFormat: null == dateFormat ? _self.dateFormat : dateFormat // ignore: cast_nullable_to_non_nullable
as String,timeFormat: null == timeFormat ? _self.timeFormat : timeFormat // ignore: cast_nullable_to_non_nullable
as String,colorblindMode: null == colorblindMode ? _self.colorblindMode : colorblindMode // ignore: cast_nullable_to_non_nullable
as ColorblindMode,colorblindForce: null == colorblindForce ? _self.colorblindForce : colorblindForce // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
