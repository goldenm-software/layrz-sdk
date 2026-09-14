// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LayrzChart {

/// [id] is a unique identifier for this entity.
 String get id;/// [name] is the name of the chart.
 String get name;/// [description] is a description of the chart. Useful for identification or brief explanation.
 String? get description;/// [formula] is the formula used to calculate the chart. This property is a LCL formula.
 String? get formula;/// [script] is the script used to calculate the chart. This property is a Python script.
 String? get script;/// [sensors] is a list of sensors used to calculate the chart.
 List<String>? get sensors;/// [assets] is the list of assets associated with the chart.
 List<Asset>? get assets;/// [assetsIds] is the list of asset IDs associated with the chart.
 List<String>? get assetsIds;/// [type] is the type of the chart.
@JsonKey(unknownEnumValue: ChartType.area) ChartType? get type;/// [algorithm] is the algorithm used to calculate the chart.
@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm? get algorithm;/// [dataSource] is the data source used to calculate the chart.
@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource? get dataSource;/// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
 bool? get enableLttb;/// [access] is a list of granted access to this entity.
 List<Access>? get access;
/// Create a copy of LayrzChart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayrzChartCopyWith<LayrzChart> get copyWith => _$LayrzChartCopyWithImpl<LayrzChart>(this as LayrzChart, _$identity);

  /// Serializes this LayrzChart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayrzChart&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.formula, formula) || other.formula == formula)&&(identical(other.script, script) || other.script == script)&&const DeepCollectionEquality().equals(other.sensors, sensors)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&(identical(other.type, type) || other.type == type)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.dataSource, dataSource) || other.dataSource == dataSource)&&(identical(other.enableLttb, enableLttb) || other.enableLttb == enableLttb)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,formula,script,const DeepCollectionEquality().hash(sensors),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),type,algorithm,dataSource,enableLttb,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'LayrzChart(id: $id, name: $name, description: $description, formula: $formula, script: $script, sensors: $sensors, assets: $assets, assetsIds: $assetsIds, type: $type, algorithm: $algorithm, dataSource: $dataSource, enableLttb: $enableLttb, access: $access)';
}


}

/// @nodoc
abstract mixin class $LayrzChartCopyWith<$Res>  {
  factory $LayrzChartCopyWith(LayrzChart value, $Res Function(LayrzChart) _then) = _$LayrzChartCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String? formula, String? script, List<String>? sensors, List<Asset>? assets, List<String>? assetsIds,@JsonKey(unknownEnumValue: ChartType.area) ChartType? type,@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm? algorithm,@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource? dataSource, bool? enableLttb, List<Access>? access
});




}
/// @nodoc
class _$LayrzChartCopyWithImpl<$Res>
    implements $LayrzChartCopyWith<$Res> {
  _$LayrzChartCopyWithImpl(this._self, this._then);

  final LayrzChart _self;
  final $Res Function(LayrzChart) _then;

/// Create a copy of LayrzChart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? formula = freezed,Object? script = freezed,Object? sensors = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? type = freezed,Object? algorithm = freezed,Object? dataSource = freezed,Object? enableLttb = freezed,Object? access = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,formula: freezed == formula ? _self.formula : formula // ignore: cast_nullable_to_non_nullable
as String?,script: freezed == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType?,algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ChartAlgorithm?,dataSource: freezed == dataSource ? _self.dataSource : dataSource // ignore: cast_nullable_to_non_nullable
as ChartDataSource?,enableLttb: freezed == enableLttb ? _self.enableLttb : enableLttb // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LayrzChart].
extension LayrzChartPatterns on LayrzChart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayrzChart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayrzChart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayrzChart value)  $default,){
final _that = this;
switch (_that) {
case _LayrzChart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayrzChart value)?  $default,){
final _that = this;
switch (_that) {
case _LayrzChart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? formula,  String? script,  List<String>? sensors,  List<Asset>? assets,  List<String>? assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType? type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm? algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource? dataSource,  bool? enableLttb,  List<Access>? access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayrzChart() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assets,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb,_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? formula,  String? script,  List<String>? sensors,  List<Asset>? assets,  List<String>? assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType? type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm? algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource? dataSource,  bool? enableLttb,  List<Access>? access)  $default,) {final _that = this;
switch (_that) {
case _LayrzChart():
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assets,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb,_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  String? formula,  String? script,  List<String>? sensors,  List<Asset>? assets,  List<String>? assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType? type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm? algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource? dataSource,  bool? enableLttb,  List<Access>? access)?  $default,) {final _that = this;
switch (_that) {
case _LayrzChart() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assets,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb,_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LayrzChart extends LayrzChart {
  const _LayrzChart({required this.id, required this.name, this.description, this.formula, this.script, this.sensors, this.assets, this.assetsIds, @JsonKey(unknownEnumValue: ChartType.area) this.type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto) this.algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages) this.dataSource, this.enableLttb, this.access}): super._();
  factory _LayrzChart.fromJson(Map<String, dynamic> json) => _$LayrzChartFromJson(json);

/// [id] is a unique identifier for this entity.
@override final  String id;
/// [name] is the name of the chart.
@override final  String name;
/// [description] is a description of the chart. Useful for identification or brief explanation.
@override final  String? description;
/// [formula] is the formula used to calculate the chart. This property is a LCL formula.
@override final  String? formula;
/// [script] is the script used to calculate the chart. This property is a Python script.
@override final  String? script;
/// [sensors] is a list of sensors used to calculate the chart.
@override final  List<String>? sensors;
/// [assets] is the list of assets associated with the chart.
@override final  List<Asset>? assets;
/// [assetsIds] is the list of asset IDs associated with the chart.
@override final  List<String>? assetsIds;
/// [type] is the type of the chart.
@override@JsonKey(unknownEnumValue: ChartType.area) final  ChartType? type;
/// [algorithm] is the algorithm used to calculate the chart.
@override@JsonKey(unknownEnumValue: ChartAlgorithm.auto) final  ChartAlgorithm? algorithm;
/// [dataSource] is the data source used to calculate the chart.
@override@JsonKey(unknownEnumValue: ChartDataSource.messages) final  ChartDataSource? dataSource;
/// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
@override final  bool? enableLttb;
/// [access] is a list of granted access to this entity.
@override final  List<Access>? access;

/// Create a copy of LayrzChart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayrzChartCopyWith<_LayrzChart> get copyWith => __$LayrzChartCopyWithImpl<_LayrzChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LayrzChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LayrzChart&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.formula, formula) || other.formula == formula)&&(identical(other.script, script) || other.script == script)&&const DeepCollectionEquality().equals(other.sensors, sensors)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&(identical(other.type, type) || other.type == type)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.dataSource, dataSource) || other.dataSource == dataSource)&&(identical(other.enableLttb, enableLttb) || other.enableLttb == enableLttb)&&const DeepCollectionEquality().equals(other.access, access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,formula,script,const DeepCollectionEquality().hash(sensors),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),type,algorithm,dataSource,enableLttb,const DeepCollectionEquality().hash(access));

@override
String toString() {
  return 'LayrzChart(id: $id, name: $name, description: $description, formula: $formula, script: $script, sensors: $sensors, assets: $assets, assetsIds: $assetsIds, type: $type, algorithm: $algorithm, dataSource: $dataSource, enableLttb: $enableLttb, access: $access)';
}


}

/// @nodoc
abstract mixin class _$LayrzChartCopyWith<$Res> implements $LayrzChartCopyWith<$Res> {
  factory _$LayrzChartCopyWith(_LayrzChart value, $Res Function(_LayrzChart) _then) = __$LayrzChartCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String? formula, String? script, List<String>? sensors, List<Asset>? assets, List<String>? assetsIds,@JsonKey(unknownEnumValue: ChartType.area) ChartType? type,@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm? algorithm,@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource? dataSource, bool? enableLttb, List<Access>? access
});




}
/// @nodoc
class __$LayrzChartCopyWithImpl<$Res>
    implements _$LayrzChartCopyWith<$Res> {
  __$LayrzChartCopyWithImpl(this._self, this._then);

  final _LayrzChart _self;
  final $Res Function(_LayrzChart) _then;

/// Create a copy of LayrzChart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? formula = freezed,Object? script = freezed,Object? sensors = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? type = freezed,Object? algorithm = freezed,Object? dataSource = freezed,Object? enableLttb = freezed,Object? access = freezed,}) {
  return _then(_LayrzChart(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,formula: freezed == formula ? _self.formula : formula // ignore: cast_nullable_to_non_nullable
as String?,script: freezed == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType?,algorithm: freezed == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ChartAlgorithm?,dataSource: freezed == dataSource ? _self.dataSource : dataSource // ignore: cast_nullable_to_non_nullable
as ChartDataSource?,enableLttb: freezed == enableLttb ? _self.enableLttb : enableLttb // ignore: cast_nullable_to_non_nullable
as bool?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,
  ));
}


}


/// @nodoc
mixin _$LayrzChartInput {

/// [id] is a unique identifier for this entity. Keep it null to create a new entity.
 String? get id;/// [id] is a unique identifier for this entity. Keep it null to create a new entity.
 set id(String? value);/// [name] is the name of the chart.
 String get name;/// [name] is the name of the chart.
 set name(String value);/// [description] is a description of the chart. Useful for identification or brief explanation.
 String get description;/// [description] is a description of the chart. Useful for identification or brief explanation.
 set description(String value);/// [formula] is the formula used to calculate the chart. This property is a LCL formula.
 String get formula;/// [formula] is the formula used to calculate the chart. This property is a LCL formula.
 set formula(String value);/// [script] is the script used to calculate the chart. This property is a Python script.
 String get script;/// [script] is the script used to calculate the chart. This property is a Python script.
 set script(String value);/// [sensors] is a list of sensors used to calculate the chart.
 List<String> get sensors;/// [sensors] is a list of sensors used to calculate the chart.
 set sensors(List<String> value);/// [assetsIds] is the list of asset IDs associated with the chart.
 List<String> get assetsIds;/// [assetsIds] is the list of asset IDs associated with the chart.
 set assetsIds(List<String> value);/// [type] is the type of the chart.
@JsonKey(unknownEnumValue: ChartType.area) ChartType get type;/// [type] is the type of the chart.
@JsonKey(unknownEnumValue: ChartType.area) set type(ChartType value);/// [algorithm] is the algorithm used to calculate the chart.
@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm get algorithm;/// [algorithm] is the algorithm used to calculate the chart.
@JsonKey(unknownEnumValue: ChartAlgorithm.auto) set algorithm(ChartAlgorithm value);/// [dataSource] is the data source used to calculate the chart.
@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource get dataSource;/// [dataSource] is the data source used to calculate the chart.
@JsonKey(unknownEnumValue: ChartDataSource.messages) set dataSource(ChartDataSource value);/// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
 bool get enableLttb;/// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
 set enableLttb(bool value);
/// Create a copy of LayrzChartInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayrzChartInputCopyWith<LayrzChartInput> get copyWith => _$LayrzChartInputCopyWithImpl<LayrzChartInput>(this as LayrzChartInput, _$identity);

  /// Serializes this LayrzChartInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'LayrzChartInput(id: $id, name: $name, description: $description, formula: $formula, script: $script, sensors: $sensors, assetsIds: $assetsIds, type: $type, algorithm: $algorithm, dataSource: $dataSource, enableLttb: $enableLttb)';
}


}

/// @nodoc
abstract mixin class $LayrzChartInputCopyWith<$Res>  {
  factory $LayrzChartInputCopyWith(LayrzChartInput value, $Res Function(LayrzChartInput) _then) = _$LayrzChartInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name, String description, String formula, String script, List<String> sensors, List<String> assetsIds,@JsonKey(unknownEnumValue: ChartType.area) ChartType type,@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm algorithm,@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource dataSource, bool enableLttb
});




}
/// @nodoc
class _$LayrzChartInputCopyWithImpl<$Res>
    implements $LayrzChartInputCopyWith<$Res> {
  _$LayrzChartInputCopyWithImpl(this._self, this._then);

  final LayrzChartInput _self;
  final $Res Function(LayrzChartInput) _then;

/// Create a copy of LayrzChartInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? formula = null,Object? script = null,Object? sensors = null,Object? assetsIds = null,Object? type = null,Object? algorithm = null,Object? dataSource = null,Object? enableLttb = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,formula: null == formula ? _self.formula : formula // ignore: cast_nullable_to_non_nullable
as String,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,sensors: null == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<String>,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ChartAlgorithm,dataSource: null == dataSource ? _self.dataSource : dataSource // ignore: cast_nullable_to_non_nullable
as ChartDataSource,enableLttb: null == enableLttb ? _self.enableLttb : enableLttb // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LayrzChartInput].
extension LayrzChartInputPatterns on LayrzChartInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayrzChartInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayrzChartInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayrzChartInput value)  $default,){
final _that = this;
switch (_that) {
case _LayrzChartInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayrzChartInput value)?  $default,){
final _that = this;
switch (_that) {
case _LayrzChartInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name,  String description,  String formula,  String script,  List<String> sensors,  List<String> assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource dataSource,  bool enableLttb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayrzChartInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name,  String description,  String formula,  String script,  List<String> sensors,  List<String> assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource dataSource,  bool enableLttb)  $default,) {final _that = this;
switch (_that) {
case _LayrzChartInput():
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name,  String description,  String formula,  String script,  List<String> sensors,  List<String> assetsIds, @JsonKey(unknownEnumValue: ChartType.area)  ChartType type, @JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm algorithm, @JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource dataSource,  bool enableLttb)?  $default,) {final _that = this;
switch (_that) {
case _LayrzChartInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.formula,_that.script,_that.sensors,_that.assetsIds,_that.type,_that.algorithm,_that.dataSource,_that.enableLttb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LayrzChartInput extends LayrzChartInput {
   _LayrzChartInput({this.id, this.name = '', this.description = '', this.formula = '', this.script = '', this.sensors = const [], this.assetsIds = const [], @JsonKey(unknownEnumValue: ChartType.area) this.type = ChartType.area, @JsonKey(unknownEnumValue: ChartAlgorithm.auto) this.algorithm = ChartAlgorithm.auto, @JsonKey(unknownEnumValue: ChartDataSource.messages) this.dataSource = ChartDataSource.messages, this.enableLttb = true}): super._();
  factory _LayrzChartInput.fromJson(Map<String, dynamic> json) => _$LayrzChartInputFromJson(json);

/// [id] is a unique identifier for this entity. Keep it null to create a new entity.
@override  String? id;
/// [name] is the name of the chart.
@override@JsonKey()  String name;
/// [description] is a description of the chart. Useful for identification or brief explanation.
@override@JsonKey()  String description;
/// [formula] is the formula used to calculate the chart. This property is a LCL formula.
@override@JsonKey()  String formula;
/// [script] is the script used to calculate the chart. This property is a Python script.
@override@JsonKey()  String script;
/// [sensors] is a list of sensors used to calculate the chart.
@override@JsonKey()  List<String> sensors;
/// [assetsIds] is the list of asset IDs associated with the chart.
@override@JsonKey()  List<String> assetsIds;
/// [type] is the type of the chart.
@override@JsonKey(unknownEnumValue: ChartType.area)  ChartType type;
/// [algorithm] is the algorithm used to calculate the chart.
@override@JsonKey(unknownEnumValue: ChartAlgorithm.auto)  ChartAlgorithm algorithm;
/// [dataSource] is the data source used to calculate the chart.
@override@JsonKey(unknownEnumValue: ChartDataSource.messages)  ChartDataSource dataSource;
/// [enableLttb] indicates whether the LTTB downsampling algorithm is enabled for this chart.
@override@JsonKey()  bool enableLttb;

/// Create a copy of LayrzChartInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayrzChartInputCopyWith<_LayrzChartInput> get copyWith => __$LayrzChartInputCopyWithImpl<_LayrzChartInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LayrzChartInputToJson(this, );
}



@override
String toString() {
  return 'LayrzChartInput(id: $id, name: $name, description: $description, formula: $formula, script: $script, sensors: $sensors, assetsIds: $assetsIds, type: $type, algorithm: $algorithm, dataSource: $dataSource, enableLttb: $enableLttb)';
}


}

/// @nodoc
abstract mixin class _$LayrzChartInputCopyWith<$Res> implements $LayrzChartInputCopyWith<$Res> {
  factory _$LayrzChartInputCopyWith(_LayrzChartInput value, $Res Function(_LayrzChartInput) _then) = __$LayrzChartInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name, String description, String formula, String script, List<String> sensors, List<String> assetsIds,@JsonKey(unknownEnumValue: ChartType.area) ChartType type,@JsonKey(unknownEnumValue: ChartAlgorithm.auto) ChartAlgorithm algorithm,@JsonKey(unknownEnumValue: ChartDataSource.messages) ChartDataSource dataSource, bool enableLttb
});




}
/// @nodoc
class __$LayrzChartInputCopyWithImpl<$Res>
    implements _$LayrzChartInputCopyWith<$Res> {
  __$LayrzChartInputCopyWithImpl(this._self, this._then);

  final _LayrzChartInput _self;
  final $Res Function(_LayrzChartInput) _then;

/// Create a copy of LayrzChartInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? description = null,Object? formula = null,Object? script = null,Object? sensors = null,Object? assetsIds = null,Object? type = null,Object? algorithm = null,Object? dataSource = null,Object? enableLttb = null,}) {
  return _then(_LayrzChartInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,formula: null == formula ? _self.formula : formula // ignore: cast_nullable_to_non_nullable
as String,script: null == script ? _self.script : script // ignore: cast_nullable_to_non_nullable
as String,sensors: null == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<String>,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChartType,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as ChartAlgorithm,dataSource: null == dataSource ? _self.dataSource : dataSource // ignore: cast_nullable_to_non_nullable
as ChartDataSource,enableLttb: null == enableLttb ? _self.enableLttb : enableLttb // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
