// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhoneNumber {

/// The international dialing country code (e.g., `+1`).
 String get countryCode;/// The local phone number digits, without the country code.
 String get phoneNumber;
/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<PhoneNumber> get copyWith => _$PhoneNumberCopyWithImpl<PhoneNumber>(this as PhoneNumber, _$identity);

  /// Serializes this PhoneNumber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneNumber&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,phoneNumber);

@override
String toString() {
  return 'PhoneNumber(countryCode: $countryCode, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $PhoneNumberCopyWith<$Res>  {
  factory $PhoneNumberCopyWith(PhoneNumber value, $Res Function(PhoneNumber) _then) = _$PhoneNumberCopyWithImpl;
@useResult
$Res call({
 String countryCode, String phoneNumber
});




}
/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._self, this._then);

  final PhoneNumber _self;
  final $Res Function(PhoneNumber) _then;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneNumber].
extension PhoneNumberPatterns on PhoneNumber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneNumber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneNumber value)  $default,){
final _that = this;
switch (_that) {
case _PhoneNumber():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneNumber value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
return $default(_that.countryCode,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _PhoneNumber():
return $default(_that.countryCode,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _PhoneNumber() when $default != null:
return $default(_that.countryCode,_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhoneNumber extends PhoneNumber {
  const _PhoneNumber({required this.countryCode, required this.phoneNumber}): super._();
  factory _PhoneNumber.fromJson(Map<String, dynamic> json) => _$PhoneNumberFromJson(json);

/// The international dialing country code (e.g., `+1`).
@override final  String countryCode;
/// The local phone number digits, without the country code.
@override final  String phoneNumber;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneNumberCopyWith<_PhoneNumber> get copyWith => __$PhoneNumberCopyWithImpl<_PhoneNumber>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneNumberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneNumber&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,phoneNumber);

@override
String toString() {
  return 'PhoneNumber(countryCode: $countryCode, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$PhoneNumberCopyWith<$Res> implements $PhoneNumberCopyWith<$Res> {
  factory _$PhoneNumberCopyWith(_PhoneNumber value, $Res Function(_PhoneNumber) _then) = __$PhoneNumberCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String phoneNumber
});




}
/// @nodoc
class __$PhoneNumberCopyWithImpl<$Res>
    implements _$PhoneNumberCopyWith<$Res> {
  __$PhoneNumberCopyWithImpl(this._self, this._then);

  final _PhoneNumber _self;
  final $Res Function(_PhoneNumber) _then;

/// Create a copy of PhoneNumber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? phoneNumber = null,}) {
  return _then(_PhoneNumber(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PhoneNumberInput {

/// [countryCode] is the international dialing country code.
 String get countryCode;/// [countryCode] is the international dialing country code.
 set countryCode(String value);/// [phoneNumber] is the local phone number digits, without the country code.
 String get phoneNumber;/// [phoneNumber] is the local phone number digits, without the country code.
 set phoneNumber(String value);
/// Create a copy of PhoneNumberInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneNumberInputCopyWith<PhoneNumberInput> get copyWith => _$PhoneNumberInputCopyWithImpl<PhoneNumberInput>(this as PhoneNumberInput, _$identity);

  /// Serializes this PhoneNumberInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'PhoneNumberInput(countryCode: $countryCode, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $PhoneNumberInputCopyWith<$Res>  {
  factory $PhoneNumberInputCopyWith(PhoneNumberInput value, $Res Function(PhoneNumberInput) _then) = _$PhoneNumberInputCopyWithImpl;
@useResult
$Res call({
 String countryCode, String phoneNumber
});




}
/// @nodoc
class _$PhoneNumberInputCopyWithImpl<$Res>
    implements $PhoneNumberInputCopyWith<$Res> {
  _$PhoneNumberInputCopyWithImpl(this._self, this._then);

  final PhoneNumberInput _self;
  final $Res Function(PhoneNumberInput) _then;

/// Create a copy of PhoneNumberInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneNumberInput].
extension PhoneNumberInputPatterns on PhoneNumberInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneNumberInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneNumberInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneNumberInput value)  $default,){
final _that = this;
switch (_that) {
case _PhoneNumberInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneNumberInput value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneNumberInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  String phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneNumberInput() when $default != null:
return $default(_that.countryCode,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  String phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _PhoneNumberInput():
return $default(_that.countryCode,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  String phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _PhoneNumberInput() when $default != null:
return $default(_that.countryCode,_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhoneNumberInput extends PhoneNumberInput {
   _PhoneNumberInput({this.countryCode = '', this.phoneNumber = ''}): super._();
  factory _PhoneNumberInput.fromJson(Map<String, dynamic> json) => _$PhoneNumberInputFromJson(json);

/// [countryCode] is the international dialing country code.
@override@JsonKey()  String countryCode;
/// [phoneNumber] is the local phone number digits, without the country code.
@override@JsonKey()  String phoneNumber;

/// Create a copy of PhoneNumberInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneNumberInputCopyWith<_PhoneNumberInput> get copyWith => __$PhoneNumberInputCopyWithImpl<_PhoneNumberInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneNumberInputToJson(this, );
}



@override
String toString() {
  return 'PhoneNumberInput(countryCode: $countryCode, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$PhoneNumberInputCopyWith<$Res> implements $PhoneNumberInputCopyWith<$Res> {
  factory _$PhoneNumberInputCopyWith(_PhoneNumberInput value, $Res Function(_PhoneNumberInput) _then) = __$PhoneNumberInputCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, String phoneNumber
});




}
/// @nodoc
class __$PhoneNumberInputCopyWithImpl<$Res>
    implements _$PhoneNumberInputCopyWith<$Res> {
  __$PhoneNumberInputCopyWithImpl(this._self, this._then);

  final _PhoneNumberInput _self;
  final $Res Function(_PhoneNumberInput) _then;

/// Create a copy of PhoneNumberInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? phoneNumber = null,}) {
  return _then(_PhoneNumberInput(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Country {

/// [id] represents the unique identifier of the country.
 String get id;/// [commonName] represents the common name of the country.
 String get commonName;/// [flagEmoji] represents the flag emoji of the country.
 String get flagEmoji;/// [phoneCode] represents the phone code of the country.
 String? get phoneCode;/// [code] represents the code of the country.
 String? get code;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.id, id) || other.id == id)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.flagEmoji, flagEmoji) || other.flagEmoji == flagEmoji)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,commonName,flagEmoji,phoneCode,code);

@override
String toString() {
  return 'Country(id: $id, commonName: $commonName, flagEmoji: $flagEmoji, phoneCode: $phoneCode, code: $code)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 String id, String commonName, String flagEmoji, String? phoneCode, String? code
});




}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? commonName = null,Object? flagEmoji = null,Object? phoneCode = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,flagEmoji: null == flagEmoji ? _self.flagEmoji : flagEmoji // ignore: cast_nullable_to_non_nullable
as String,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String commonName,  String flagEmoji,  String? phoneCode,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.commonName,_that.flagEmoji,_that.phoneCode,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String commonName,  String flagEmoji,  String? phoneCode,  String? code)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.id,_that.commonName,_that.flagEmoji,_that.phoneCode,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String commonName,  String flagEmoji,  String? phoneCode,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.commonName,_that.flagEmoji,_that.phoneCode,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Country extends Country {
  const _Country({required this.id, required this.commonName, required this.flagEmoji, this.phoneCode, this.code}): super._();
  factory _Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

/// [id] represents the unique identifier of the country.
@override final  String id;
/// [commonName] represents the common name of the country.
@override final  String commonName;
/// [flagEmoji] represents the flag emoji of the country.
@override final  String flagEmoji;
/// [phoneCode] represents the phone code of the country.
@override final  String? phoneCode;
/// [code] represents the code of the country.
@override final  String? code;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.id, id) || other.id == id)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.flagEmoji, flagEmoji) || other.flagEmoji == flagEmoji)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,commonName,flagEmoji,phoneCode,code);

@override
String toString() {
  return 'Country(id: $id, commonName: $commonName, flagEmoji: $flagEmoji, phoneCode: $phoneCode, code: $code)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 String id, String commonName, String flagEmoji, String? phoneCode, String? code
});




}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? commonName = null,Object? flagEmoji = null,Object? phoneCode = freezed,Object? code = freezed,}) {
  return _then(_Country(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,flagEmoji: null == flagEmoji ? _self.flagEmoji : flagEmoji // ignore: cast_nullable_to_non_nullable
as String,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Timezone {

/// [id] is the id of the timezone.
 String get id;/// [name] is the name of the timezone.
///
/// Example: `Europe/Paris`.
 String get name;/// [offset] is the offset of the timezone.
///
/// Example: `+00:00`.
 String get offset;/// [country] is the country of the timezone.
 Country? get country;
/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimezoneCopyWith<Timezone> get copyWith => _$TimezoneCopyWithImpl<Timezone>(this as Timezone, _$identity);

  /// Serializes this Timezone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Timezone&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,offset,country);

@override
String toString() {
  return 'Timezone(id: $id, name: $name, offset: $offset, country: $country)';
}


}

/// @nodoc
abstract mixin class $TimezoneCopyWith<$Res>  {
  factory $TimezoneCopyWith(Timezone value, $Res Function(Timezone) _then) = _$TimezoneCopyWithImpl;
@useResult
$Res call({
 String id, String name, String offset, Country? country
});


$CountryCopyWith<$Res>? get country;

}
/// @nodoc
class _$TimezoneCopyWithImpl<$Res>
    implements $TimezoneCopyWith<$Res> {
  _$TimezoneCopyWithImpl(this._self, this._then);

  final Timezone _self;
  final $Res Function(Timezone) _then;

/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? offset = null,Object? country = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Country?,
  ));
}
/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [Timezone].
extension TimezonePatterns on Timezone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Timezone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Timezone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Timezone value)  $default,){
final _that = this;
switch (_that) {
case _Timezone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Timezone value)?  $default,){
final _that = this;
switch (_that) {
case _Timezone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String offset,  Country? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Timezone() when $default != null:
return $default(_that.id,_that.name,_that.offset,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String offset,  Country? country)  $default,) {final _that = this;
switch (_that) {
case _Timezone():
return $default(_that.id,_that.name,_that.offset,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String offset,  Country? country)?  $default,) {final _that = this;
switch (_that) {
case _Timezone() when $default != null:
return $default(_that.id,_that.name,_that.offset,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Timezone implements Timezone {
  const _Timezone({required this.id, required this.name, required this.offset, this.country});
  factory _Timezone.fromJson(Map<String, dynamic> json) => _$TimezoneFromJson(json);

/// [id] is the id of the timezone.
@override final  String id;
/// [name] is the name of the timezone.
///
/// Example: `Europe/Paris`.
@override final  String name;
/// [offset] is the offset of the timezone.
///
/// Example: `+00:00`.
@override final  String offset;
/// [country] is the country of the timezone.
@override final  Country? country;

/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimezoneCopyWith<_Timezone> get copyWith => __$TimezoneCopyWithImpl<_Timezone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimezoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Timezone&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,offset,country);

@override
String toString() {
  return 'Timezone(id: $id, name: $name, offset: $offset, country: $country)';
}


}

/// @nodoc
abstract mixin class _$TimezoneCopyWith<$Res> implements $TimezoneCopyWith<$Res> {
  factory _$TimezoneCopyWith(_Timezone value, $Res Function(_Timezone) _then) = __$TimezoneCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String offset, Country? country
});


@override $CountryCopyWith<$Res>? get country;

}
/// @nodoc
class __$TimezoneCopyWithImpl<$Res>
    implements _$TimezoneCopyWith<$Res> {
  __$TimezoneCopyWithImpl(this._self, this._then);

  final _Timezone _self;
  final $Res Function(_Timezone) _then;

/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? offset = null,Object? country = freezed,}) {
  return _then(_Timezone(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as String,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Country?,
  ));
}

/// Create a copy of Timezone
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}

// dart format on
