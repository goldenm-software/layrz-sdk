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

// dart format on
