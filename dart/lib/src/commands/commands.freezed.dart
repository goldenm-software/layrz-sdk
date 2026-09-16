// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommandDefinition {

/// [name] is the name of the command, this is also the translation key.
 String get name;/// [description] is the fallback name of the command, when the translation is not available.
 String? get description;/// [source] is the source of the command.
@CommandDefinitionSourceConverter() List<CommandDefinitionSource> get sources;/// [payload] is the list of parameters of the command.
 List<CommandPayloadDefinition> get payload;/// [translationKey] is the translation key of the command.
 String? get translationKey;
/// Create a copy of CommandDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandDefinitionCopyWith<CommandDefinition> get copyWith => _$CommandDefinitionCopyWithImpl<CommandDefinition>(this as CommandDefinition, _$identity);

  /// Serializes this CommandDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandDefinition&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.translationKey, translationKey) || other.translationKey == translationKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(payload),translationKey);

@override
String toString() {
  return 'CommandDefinition(name: $name, description: $description, sources: $sources, payload: $payload, translationKey: $translationKey)';
}


}

/// @nodoc
abstract mixin class $CommandDefinitionCopyWith<$Res>  {
  factory $CommandDefinitionCopyWith(CommandDefinition value, $Res Function(CommandDefinition) _then) = _$CommandDefinitionCopyWithImpl;
@useResult
$Res call({
 String name, String? description,@CommandDefinitionSourceConverter() List<CommandDefinitionSource> sources, List<CommandPayloadDefinition> payload, String? translationKey
});




}
/// @nodoc
class _$CommandDefinitionCopyWithImpl<$Res>
    implements $CommandDefinitionCopyWith<$Res> {
  _$CommandDefinitionCopyWithImpl(this._self, this._then);

  final CommandDefinition _self;
  final $Res Function(CommandDefinition) _then;

/// Create a copy of CommandDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? sources = null,Object? payload = null,Object? translationKey = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<CommandDefinitionSource>,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinition>,translationKey: freezed == translationKey ? _self.translationKey : translationKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandDefinition].
extension CommandDefinitionPatterns on CommandDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandDefinition value)  $default,){
final _that = this;
switch (_that) {
case _CommandDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _CommandDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinition> payload,  String? translationKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandDefinition() when $default != null:
return $default(_that.name,_that.description,_that.sources,_that.payload,_that.translationKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinition> payload,  String? translationKey)  $default,) {final _that = this;
switch (_that) {
case _CommandDefinition():
return $default(_that.name,_that.description,_that.sources,_that.payload,_that.translationKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinition> payload,  String? translationKey)?  $default,) {final _that = this;
switch (_that) {
case _CommandDefinition() when $default != null:
return $default(_that.name,_that.description,_that.sources,_that.payload,_that.translationKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandDefinition implements CommandDefinition {
  const _CommandDefinition({required this.name, this.description, @CommandDefinitionSourceConverter() required this.sources, required this.payload, this.translationKey});
  factory _CommandDefinition.fromJson(Map<String, dynamic> json) => _$CommandDefinitionFromJson(json);

/// [name] is the name of the command, this is also the translation key.
@override final  String name;
/// [description] is the fallback name of the command, when the translation is not available.
@override final  String? description;
/// [source] is the source of the command.
@override@CommandDefinitionSourceConverter() final  List<CommandDefinitionSource> sources;
/// [payload] is the list of parameters of the command.
@override final  List<CommandPayloadDefinition> payload;
/// [translationKey] is the translation key of the command.
@override final  String? translationKey;

/// Create a copy of CommandDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDefinitionCopyWith<_CommandDefinition> get copyWith => __$CommandDefinitionCopyWithImpl<_CommandDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandDefinition&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.translationKey, translationKey) || other.translationKey == translationKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(payload),translationKey);

@override
String toString() {
  return 'CommandDefinition(name: $name, description: $description, sources: $sources, payload: $payload, translationKey: $translationKey)';
}


}

/// @nodoc
abstract mixin class _$CommandDefinitionCopyWith<$Res> implements $CommandDefinitionCopyWith<$Res> {
  factory _$CommandDefinitionCopyWith(_CommandDefinition value, $Res Function(_CommandDefinition) _then) = __$CommandDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description,@CommandDefinitionSourceConverter() List<CommandDefinitionSource> sources, List<CommandPayloadDefinition> payload, String? translationKey
});




}
/// @nodoc
class __$CommandDefinitionCopyWithImpl<$Res>
    implements _$CommandDefinitionCopyWith<$Res> {
  __$CommandDefinitionCopyWithImpl(this._self, this._then);

  final _CommandDefinition _self;
  final $Res Function(_CommandDefinition) _then;

/// Create a copy of CommandDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? sources = null,Object? payload = null,Object? translationKey = freezed,}) {
  return _then(_CommandDefinition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<CommandDefinitionSource>,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinition>,translationKey: freezed == translationKey ? _self.translationKey : translationKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CommandDefinitionInput {

/// [name] is the name of the command, this is also the translation key.
 String get name;/// [name] is the name of the command, this is also the translation key.
 set name(String value);/// [description] is the fallback name of the command, when the translation is not available.
 String get description;/// [description] is the fallback name of the command, when the translation is not available.
 set description(String value);/// [source] is the source of the command.
@CommandDefinitionSourceConverter() List<CommandDefinitionSource> get sources;/// [source] is the source of the command.
@CommandDefinitionSourceConverter() set sources(List<CommandDefinitionSource> value);/// [payload] is the list of parameters of the command.
 List<CommandPayloadDefinitionInput> get payload;/// [payload] is the list of parameters of the command.
 set payload(List<CommandPayloadDefinitionInput> value);
/// Create a copy of CommandDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandDefinitionInputCopyWith<CommandDefinitionInput> get copyWith => _$CommandDefinitionInputCopyWithImpl<CommandDefinitionInput>(this as CommandDefinitionInput, _$identity);

  /// Serializes this CommandDefinitionInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CommandDefinitionInput(name: $name, description: $description, sources: $sources, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $CommandDefinitionInputCopyWith<$Res>  {
  factory $CommandDefinitionInputCopyWith(CommandDefinitionInput value, $Res Function(CommandDefinitionInput) _then) = _$CommandDefinitionInputCopyWithImpl;
@useResult
$Res call({
 String name, String description,@CommandDefinitionSourceConverter() List<CommandDefinitionSource> sources, List<CommandPayloadDefinitionInput> payload
});




}
/// @nodoc
class _$CommandDefinitionInputCopyWithImpl<$Res>
    implements $CommandDefinitionInputCopyWith<$Res> {
  _$CommandDefinitionInputCopyWithImpl(this._self, this._then);

  final CommandDefinitionInput _self;
  final $Res Function(CommandDefinitionInput) _then;

/// Create a copy of CommandDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? sources = null,Object? payload = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<CommandDefinitionSource>,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinitionInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandDefinitionInput].
extension CommandDefinitionInputPatterns on CommandDefinitionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandDefinitionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandDefinitionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandDefinitionInput value)  $default,){
final _that = this;
switch (_that) {
case _CommandDefinitionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandDefinitionInput value)?  $default,){
final _that = this;
switch (_that) {
case _CommandDefinitionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinitionInput> payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandDefinitionInput() when $default != null:
return $default(_that.name,_that.description,_that.sources,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinitionInput> payload)  $default,) {final _that = this;
switch (_that) {
case _CommandDefinitionInput():
return $default(_that.name,_that.description,_that.sources,_that.payload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description, @CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources,  List<CommandPayloadDefinitionInput> payload)?  $default,) {final _that = this;
switch (_that) {
case _CommandDefinitionInput() when $default != null:
return $default(_that.name,_that.description,_that.sources,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandDefinitionInput extends CommandDefinitionInput {
   _CommandDefinitionInput({this.name = '', this.description = '', @CommandDefinitionSourceConverter() this.sources = const [], this.payload = const []}): super._();
  factory _CommandDefinitionInput.fromJson(Map<String, dynamic> json) => _$CommandDefinitionInputFromJson(json);

/// [name] is the name of the command, this is also the translation key.
@override@JsonKey()  String name;
/// [description] is the fallback name of the command, when the translation is not available.
@override@JsonKey()  String description;
/// [source] is the source of the command.
@override@JsonKey()@CommandDefinitionSourceConverter()  List<CommandDefinitionSource> sources;
/// [payload] is the list of parameters of the command.
@override@JsonKey()  List<CommandPayloadDefinitionInput> payload;

/// Create a copy of CommandDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDefinitionInputCopyWith<_CommandDefinitionInput> get copyWith => __$CommandDefinitionInputCopyWithImpl<_CommandDefinitionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandDefinitionInputToJson(this, );
}



@override
String toString() {
  return 'CommandDefinitionInput(name: $name, description: $description, sources: $sources, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$CommandDefinitionInputCopyWith<$Res> implements $CommandDefinitionInputCopyWith<$Res> {
  factory _$CommandDefinitionInputCopyWith(_CommandDefinitionInput value, $Res Function(_CommandDefinitionInput) _then) = __$CommandDefinitionInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String description,@CommandDefinitionSourceConverter() List<CommandDefinitionSource> sources, List<CommandPayloadDefinitionInput> payload
});




}
/// @nodoc
class __$CommandDefinitionInputCopyWithImpl<$Res>
    implements _$CommandDefinitionInputCopyWith<$Res> {
  __$CommandDefinitionInputCopyWithImpl(this._self, this._then);

  final _CommandDefinitionInput _self;
  final $Res Function(_CommandDefinitionInput) _then;

/// Create a copy of CommandDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? sources = null,Object? payload = null,}) {
  return _then(_CommandDefinitionInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<CommandDefinitionSource>,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinitionInput>,
  ));
}


}


/// @nodoc
mixin _$CommandPayloadDefinition {

/// [parameter] is the name of the parameter, this is also the translation key.
 String get parameter;/// [description] is the fallback name of the parameter, when the translation is not available.
 String? get description;/// [dataType] is the data type of the parameter.
@CommandPayloadDataTypeConverter() CommandPayloadDataType get dataType;/// [isRequired] is the parameter is required.
 bool? get isRequired;/// [minValue] is the minimum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 num? get minValue;/// [maxValue] is the maximum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 num? get maxValue;/// [minLength] is the minimum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 int? get minLength;/// [maxLength] is the maximum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 int? get maxLength;/// [choices] is the list of choices of the parameter.
/// Only for [CommandPayloadDataType.choice]
 List<String>? get choices;/// [regexPattern] is the regex pattern of the parameter.
@RegExpOrNullConverter() RegExp? get regexPattern;/// [nested] is the nested object of the parameter.
/// Only for [CommandPayloadDataType.nested]
 List<CommandPayloadDefinition>? get nested;/// [maxQuantity] is the maximum quantity of the nested parameters.
///
/// Only for [CommandPayloadDataType.list] or [CommandPayloadDataType.bluetoothPair]
 int? get maxQuantity;
/// Create a copy of CommandPayloadDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandPayloadDefinitionCopyWith<CommandPayloadDefinition> get copyWith => _$CommandPayloadDefinitionCopyWithImpl<CommandPayloadDefinition>(this as CommandPayloadDefinition, _$identity);

  /// Serializes this CommandPayloadDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandPayloadDefinition&&(identical(other.parameter, parameter) || other.parameter == parameter)&&(identical(other.description, description) || other.description == description)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&const DeepCollectionEquality().equals(other.nested, nested)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameter,description,dataType,isRequired,minValue,maxValue,minLength,maxLength,const DeepCollectionEquality().hash(choices),regexPattern,const DeepCollectionEquality().hash(nested),maxQuantity);

@override
String toString() {
  return 'CommandPayloadDefinition(parameter: $parameter, description: $description, dataType: $dataType, isRequired: $isRequired, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, nested: $nested, maxQuantity: $maxQuantity)';
}


}

/// @nodoc
abstract mixin class $CommandPayloadDefinitionCopyWith<$Res>  {
  factory $CommandPayloadDefinitionCopyWith(CommandPayloadDefinition value, $Res Function(CommandPayloadDefinition) _then) = _$CommandPayloadDefinitionCopyWithImpl;
@useResult
$Res call({
 String parameter, String? description,@CommandPayloadDataTypeConverter() CommandPayloadDataType dataType, bool? isRequired, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, List<CommandPayloadDefinition>? nested, int? maxQuantity
});




}
/// @nodoc
class _$CommandPayloadDefinitionCopyWithImpl<$Res>
    implements $CommandPayloadDefinitionCopyWith<$Res> {
  _$CommandPayloadDefinitionCopyWithImpl(this._self, this._then);

  final CommandPayloadDefinition _self;
  final $Res Function(CommandPayloadDefinition) _then;

/// Create a copy of CommandPayloadDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parameter = null,Object? description = freezed,Object? dataType = null,Object? isRequired = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? nested = freezed,Object? maxQuantity = freezed,}) {
  return _then(_self.copyWith(
parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as CommandPayloadDataType,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinition>?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandPayloadDefinition].
extension CommandPayloadDefinitionPatterns on CommandPayloadDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandPayloadDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandPayloadDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandPayloadDefinition value)  $default,){
final _that = this;
switch (_that) {
case _CommandPayloadDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandPayloadDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _CommandPayloadDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String parameter,  String? description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool? isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinition>? nested,  int? maxQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandPayloadDefinition() when $default != null:
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String parameter,  String? description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool? isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinition>? nested,  int? maxQuantity)  $default,) {final _that = this;
switch (_that) {
case _CommandPayloadDefinition():
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String parameter,  String? description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool? isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinition>? nested,  int? maxQuantity)?  $default,) {final _that = this;
switch (_that) {
case _CommandPayloadDefinition() when $default != null:
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandPayloadDefinition implements CommandPayloadDefinition {
  const _CommandPayloadDefinition({required this.parameter, this.description, @CommandPayloadDataTypeConverter() required this.dataType, this.isRequired, this.minValue, this.maxValue, this.minLength, this.maxLength, this.choices, @RegExpOrNullConverter() this.regexPattern, this.nested, this.maxQuantity});
  factory _CommandPayloadDefinition.fromJson(Map<String, dynamic> json) => _$CommandPayloadDefinitionFromJson(json);

/// [parameter] is the name of the parameter, this is also the translation key.
@override final  String parameter;
/// [description] is the fallback name of the parameter, when the translation is not available.
@override final  String? description;
/// [dataType] is the data type of the parameter.
@override@CommandPayloadDataTypeConverter() final  CommandPayloadDataType dataType;
/// [isRequired] is the parameter is required.
@override final  bool? isRequired;
/// [minValue] is the minimum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
@override final  num? minValue;
/// [maxValue] is the maximum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
@override final  num? maxValue;
/// [minLength] is the minimum length of the parameter.
/// Only for [CommandPayloadDataType.string]
@override final  int? minLength;
/// [maxLength] is the maximum length of the parameter.
/// Only for [CommandPayloadDataType.string]
@override final  int? maxLength;
/// [choices] is the list of choices of the parameter.
/// Only for [CommandPayloadDataType.choice]
@override final  List<String>? choices;
/// [regexPattern] is the regex pattern of the parameter.
@override@RegExpOrNullConverter() final  RegExp? regexPattern;
/// [nested] is the nested object of the parameter.
/// Only for [CommandPayloadDataType.nested]
@override final  List<CommandPayloadDefinition>? nested;
/// [maxQuantity] is the maximum quantity of the nested parameters.
///
/// Only for [CommandPayloadDataType.list] or [CommandPayloadDataType.bluetoothPair]
@override final  int? maxQuantity;

/// Create a copy of CommandPayloadDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandPayloadDefinitionCopyWith<_CommandPayloadDefinition> get copyWith => __$CommandPayloadDefinitionCopyWithImpl<_CommandPayloadDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandPayloadDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandPayloadDefinition&&(identical(other.parameter, parameter) || other.parameter == parameter)&&(identical(other.description, description) || other.description == description)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&const DeepCollectionEquality().equals(other.nested, nested)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameter,description,dataType,isRequired,minValue,maxValue,minLength,maxLength,const DeepCollectionEquality().hash(choices),regexPattern,const DeepCollectionEquality().hash(nested),maxQuantity);

@override
String toString() {
  return 'CommandPayloadDefinition(parameter: $parameter, description: $description, dataType: $dataType, isRequired: $isRequired, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, nested: $nested, maxQuantity: $maxQuantity)';
}


}

/// @nodoc
abstract mixin class _$CommandPayloadDefinitionCopyWith<$Res> implements $CommandPayloadDefinitionCopyWith<$Res> {
  factory _$CommandPayloadDefinitionCopyWith(_CommandPayloadDefinition value, $Res Function(_CommandPayloadDefinition) _then) = __$CommandPayloadDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String parameter, String? description,@CommandPayloadDataTypeConverter() CommandPayloadDataType dataType, bool? isRequired, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, List<CommandPayloadDefinition>? nested, int? maxQuantity
});




}
/// @nodoc
class __$CommandPayloadDefinitionCopyWithImpl<$Res>
    implements _$CommandPayloadDefinitionCopyWith<$Res> {
  __$CommandPayloadDefinitionCopyWithImpl(this._self, this._then);

  final _CommandPayloadDefinition _self;
  final $Res Function(_CommandPayloadDefinition) _then;

/// Create a copy of CommandPayloadDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parameter = null,Object? description = freezed,Object? dataType = null,Object? isRequired = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? nested = freezed,Object? maxQuantity = freezed,}) {
  return _then(_CommandPayloadDefinition(
parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as CommandPayloadDataType,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinition>?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CommandPayloadDefinitionInput {

/// [parameter] is the name of the parameter, this is also the translation key.
 String get parameter;/// [parameter] is the name of the parameter, this is also the translation key.
 set parameter(String value);/// [description] is the fallback name of the parameter, when the translation is not available.
 String get description;/// [description] is the fallback name of the parameter, when the translation is not available.
 set description(String value);/// [dataType] is the data type of the parameter.
@CommandPayloadDataTypeConverter() CommandPayloadDataType get dataType;/// [dataType] is the data type of the parameter.
@CommandPayloadDataTypeConverter() set dataType(CommandPayloadDataType value);/// [isRequired] is the parameter is required.
 bool get isRequired;/// [isRequired] is the parameter is required.
 set isRequired(bool value);/// [minValue] is the minimum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 num? get minValue;/// [minValue] is the minimum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 set minValue(num? value);/// [maxValue] is the maximum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 num? get maxValue;/// [maxValue] is the maximum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
 set maxValue(num? value);/// [minLength] is the minimum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 int? get minLength;/// [minLength] is the minimum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 set minLength(int? value);/// [maxLength] is the maximum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 int? get maxLength;/// [maxLength] is the maximum length of the parameter.
/// Only for [CommandPayloadDataType.string]
 set maxLength(int? value);/// [choices] is the list of choices of the parameter.
/// Only for [CommandPayloadDataType.choice]
 List<String>? get choices;/// [choices] is the list of choices of the parameter.
/// Only for [CommandPayloadDataType.choice]
 set choices(List<String>? value);/// [regexPattern] is the regex pattern of the parameter.
@RegExpOrNullConverter() RegExp? get regexPattern;/// [regexPattern] is the regex pattern of the parameter.
@RegExpOrNullConverter() set regexPattern(RegExp? value);/// [nested] is the nested object of the parameter.
/// Only for [CommandPayloadDataType.nested]
 List<CommandPayloadDefinitionInput>? get nested;/// [nested] is the nested object of the parameter.
/// Only for [CommandPayloadDataType.nested]
 set nested(List<CommandPayloadDefinitionInput>? value);/// [maxQuantity] is the maximum quantity of the nested parameters.
///
/// Only for [CommandPayloadDataType.list] or [CommandPayloadDataType.bluetoothPair]
 int? get maxQuantity;/// [maxQuantity] is the maximum quantity of the nested parameters.
///
/// Only for [CommandPayloadDataType.list] or [CommandPayloadDataType.bluetoothPair]
 set maxQuantity(int? value);
/// Create a copy of CommandPayloadDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandPayloadDefinitionInputCopyWith<CommandPayloadDefinitionInput> get copyWith => _$CommandPayloadDefinitionInputCopyWithImpl<CommandPayloadDefinitionInput>(this as CommandPayloadDefinitionInput, _$identity);

  /// Serializes this CommandPayloadDefinitionInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'CommandPayloadDefinitionInput(parameter: $parameter, description: $description, dataType: $dataType, isRequired: $isRequired, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, nested: $nested, maxQuantity: $maxQuantity)';
}


}

/// @nodoc
abstract mixin class $CommandPayloadDefinitionInputCopyWith<$Res>  {
  factory $CommandPayloadDefinitionInputCopyWith(CommandPayloadDefinitionInput value, $Res Function(CommandPayloadDefinitionInput) _then) = _$CommandPayloadDefinitionInputCopyWithImpl;
@useResult
$Res call({
 String parameter, String description,@CommandPayloadDataTypeConverter() CommandPayloadDataType dataType, bool isRequired, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, List<CommandPayloadDefinitionInput>? nested, int? maxQuantity
});




}
/// @nodoc
class _$CommandPayloadDefinitionInputCopyWithImpl<$Res>
    implements $CommandPayloadDefinitionInputCopyWith<$Res> {
  _$CommandPayloadDefinitionInputCopyWithImpl(this._self, this._then);

  final CommandPayloadDefinitionInput _self;
  final $Res Function(CommandPayloadDefinitionInput) _then;

/// Create a copy of CommandPayloadDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parameter = null,Object? description = null,Object? dataType = null,Object? isRequired = null,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? nested = freezed,Object? maxQuantity = freezed,}) {
  return _then(_self.copyWith(
parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as CommandPayloadDataType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinitionInput>?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommandPayloadDefinitionInput].
extension CommandPayloadDefinitionInputPatterns on CommandPayloadDefinitionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommandPayloadDefinitionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommandPayloadDefinitionInput value)  $default,){
final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommandPayloadDefinitionInput value)?  $default,){
final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String parameter,  String description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinitionInput>? nested,  int? maxQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput() when $default != null:
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String parameter,  String description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinitionInput>? nested,  int? maxQuantity)  $default,) {final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput():
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String parameter,  String description, @CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType,  bool isRequired,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  List<CommandPayloadDefinitionInput>? nested,  int? maxQuantity)?  $default,) {final _that = this;
switch (_that) {
case _CommandPayloadDefinitionInput() when $default != null:
return $default(_that.parameter,_that.description,_that.dataType,_that.isRequired,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.nested,_that.maxQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommandPayloadDefinitionInput implements CommandPayloadDefinitionInput {
   _CommandPayloadDefinitionInput({this.parameter = '', this.description = '', @CommandPayloadDataTypeConverter() this.dataType = CommandPayloadDataType.string, this.isRequired = false, this.minValue, this.maxValue, this.minLength, this.maxLength, this.choices, @RegExpOrNullConverter() this.regexPattern, this.nested, this.maxQuantity});
  factory _CommandPayloadDefinitionInput.fromJson(Map<String, dynamic> json) => _$CommandPayloadDefinitionInputFromJson(json);

/// [parameter] is the name of the parameter, this is also the translation key.
@override@JsonKey()  String parameter;
/// [description] is the fallback name of the parameter, when the translation is not available.
@override@JsonKey()  String description;
/// [dataType] is the data type of the parameter.
@override@JsonKey()@CommandPayloadDataTypeConverter()  CommandPayloadDataType dataType;
/// [isRequired] is the parameter is required.
@override@JsonKey()  bool isRequired;
/// [minValue] is the minimum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
@override  num? minValue;
/// [maxValue] is the maximum value of the parameter.
/// Only for [CommandPayloadDataType.integer] and [CommandPayloadDataType.float]
@override  num? maxValue;
/// [minLength] is the minimum length of the parameter.
/// Only for [CommandPayloadDataType.string]
@override  int? minLength;
/// [maxLength] is the maximum length of the parameter.
/// Only for [CommandPayloadDataType.string]
@override  int? maxLength;
/// [choices] is the list of choices of the parameter.
/// Only for [CommandPayloadDataType.choice]
@override  List<String>? choices;
/// [regexPattern] is the regex pattern of the parameter.
@override@RegExpOrNullConverter()  RegExp? regexPattern;
/// [nested] is the nested object of the parameter.
/// Only for [CommandPayloadDataType.nested]
@override  List<CommandPayloadDefinitionInput>? nested;
/// [maxQuantity] is the maximum quantity of the nested parameters.
///
/// Only for [CommandPayloadDataType.list] or [CommandPayloadDataType.bluetoothPair]
@override  int? maxQuantity;

/// Create a copy of CommandPayloadDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandPayloadDefinitionInputCopyWith<_CommandPayloadDefinitionInput> get copyWith => __$CommandPayloadDefinitionInputCopyWithImpl<_CommandPayloadDefinitionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommandPayloadDefinitionInputToJson(this, );
}



@override
String toString() {
  return 'CommandPayloadDefinitionInput(parameter: $parameter, description: $description, dataType: $dataType, isRequired: $isRequired, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, nested: $nested, maxQuantity: $maxQuantity)';
}


}

/// @nodoc
abstract mixin class _$CommandPayloadDefinitionInputCopyWith<$Res> implements $CommandPayloadDefinitionInputCopyWith<$Res> {
  factory _$CommandPayloadDefinitionInputCopyWith(_CommandPayloadDefinitionInput value, $Res Function(_CommandPayloadDefinitionInput) _then) = __$CommandPayloadDefinitionInputCopyWithImpl;
@override @useResult
$Res call({
 String parameter, String description,@CommandPayloadDataTypeConverter() CommandPayloadDataType dataType, bool isRequired, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, List<CommandPayloadDefinitionInput>? nested, int? maxQuantity
});




}
/// @nodoc
class __$CommandPayloadDefinitionInputCopyWithImpl<$Res>
    implements _$CommandPayloadDefinitionInputCopyWith<$Res> {
  __$CommandPayloadDefinitionInputCopyWithImpl(this._self, this._then);

  final _CommandPayloadDefinitionInput _self;
  final $Res Function(_CommandPayloadDefinitionInput) _then;

/// Create a copy of CommandPayloadDefinitionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parameter = null,Object? description = null,Object? dataType = null,Object? isRequired = null,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? nested = freezed,Object? maxQuantity = freezed,}) {
  return _then(_CommandPayloadDefinitionInput(
parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as CommandPayloadDataType,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as List<CommandPayloadDefinitionInput>?,maxQuantity: freezed == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
