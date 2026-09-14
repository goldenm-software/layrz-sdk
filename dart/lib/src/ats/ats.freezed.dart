// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AtsExit {

/// The unique identifier of the exit.
 String? get id;/// The exit identifier.
 int? get identifier;/// The identifier of the pump [Asset] that generated the exit.
 String? get fromAssetId;/// The pump [Asset] that generated the exit.
 Asset? get fromAsset;/// The identifier of the [Asset] that received the fuel.
 String? get toAssetId;/// The [Asset] that received the fuel.
 Asset? get toAsset;/// The error percent between reception and sensor entry.
 double? get errorPercent;/// The total liters of the exit.
 double? get totalLiters;/// The odometer reading of the receiving asset.
 double? get toAssetMileage;/// The start date of the exit.
@TimestampOrNullConverter() DateTime? get startAt;/// The end date of the exit.
@TimestampOrNullConverter() DateTime? get endAt;/// The total exit time, as a human-readable string.
 String? get totalTime;/// The total exit duration, in seconds.
@DurationOrNullConverter() Duration? get totalTimeDuration;/// The initial fluxometer reading of the day.
 double? get initialFluxometer;/// The final fluxometer reading of the day.
 double? get finalFluxometer;/// The initial tank volume of the day.
 double? get initialTankVolume;/// The final tank volume of the day.
 double? get finalTankVolume;/// The unit price per liter of the exit.
 double? get price;/// The name of the attendant who performed the exit.
 String? get attendantName;/// The identifier of the attendant who performed the exit.
 String? get attendantId;
/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AtsExitCopyWith<AtsExit> get copyWith => _$AtsExitCopyWithImpl<AtsExit>(this as AtsExit, _$identity);

  /// Serializes this AtsExit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AtsExit&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.fromAssetId, fromAssetId) || other.fromAssetId == fromAssetId)&&(identical(other.fromAsset, fromAsset) || other.fromAsset == fromAsset)&&(identical(other.toAssetId, toAssetId) || other.toAssetId == toAssetId)&&(identical(other.toAsset, toAsset) || other.toAsset == toAsset)&&(identical(other.errorPercent, errorPercent) || other.errorPercent == errorPercent)&&(identical(other.totalLiters, totalLiters) || other.totalLiters == totalLiters)&&(identical(other.toAssetMileage, toAssetMileage) || other.toAssetMileage == toAssetMileage)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.totalTimeDuration, totalTimeDuration) || other.totalTimeDuration == totalTimeDuration)&&(identical(other.initialFluxometer, initialFluxometer) || other.initialFluxometer == initialFluxometer)&&(identical(other.finalFluxometer, finalFluxometer) || other.finalFluxometer == finalFluxometer)&&(identical(other.initialTankVolume, initialTankVolume) || other.initialTankVolume == initialTankVolume)&&(identical(other.finalTankVolume, finalTankVolume) || other.finalTankVolume == finalTankVolume)&&(identical(other.price, price) || other.price == price)&&(identical(other.attendantName, attendantName) || other.attendantName == attendantName)&&(identical(other.attendantId, attendantId) || other.attendantId == attendantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,identifier,fromAssetId,fromAsset,toAssetId,toAsset,errorPercent,totalLiters,toAssetMileage,startAt,endAt,totalTime,totalTimeDuration,initialFluxometer,finalFluxometer,initialTankVolume,finalTankVolume,price,attendantName,attendantId]);

@override
String toString() {
  return 'AtsExit(id: $id, identifier: $identifier, fromAssetId: $fromAssetId, fromAsset: $fromAsset, toAssetId: $toAssetId, toAsset: $toAsset, errorPercent: $errorPercent, totalLiters: $totalLiters, toAssetMileage: $toAssetMileage, startAt: $startAt, endAt: $endAt, totalTime: $totalTime, totalTimeDuration: $totalTimeDuration, initialFluxometer: $initialFluxometer, finalFluxometer: $finalFluxometer, initialTankVolume: $initialTankVolume, finalTankVolume: $finalTankVolume, price: $price, attendantName: $attendantName, attendantId: $attendantId)';
}


}

/// @nodoc
abstract mixin class $AtsExitCopyWith<$Res>  {
  factory $AtsExitCopyWith(AtsExit value, $Res Function(AtsExit) _then) = _$AtsExitCopyWithImpl;
@useResult
$Res call({
 String? id, int? identifier, String? fromAssetId, Asset? fromAsset, String? toAssetId, Asset? toAsset, double? errorPercent, double? totalLiters, double? toAssetMileage,@TimestampOrNullConverter() DateTime? startAt,@TimestampOrNullConverter() DateTime? endAt, String? totalTime,@DurationOrNullConverter() Duration? totalTimeDuration, double? initialFluxometer, double? finalFluxometer, double? initialTankVolume, double? finalTankVolume, double? price, String? attendantName, String? attendantId
});


$AssetCopyWith<$Res>? get fromAsset;$AssetCopyWith<$Res>? get toAsset;

}
/// @nodoc
class _$AtsExitCopyWithImpl<$Res>
    implements $AtsExitCopyWith<$Res> {
  _$AtsExitCopyWithImpl(this._self, this._then);

  final AtsExit _self;
  final $Res Function(AtsExit) _then;

/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? identifier = freezed,Object? fromAssetId = freezed,Object? fromAsset = freezed,Object? toAssetId = freezed,Object? toAsset = freezed,Object? errorPercent = freezed,Object? totalLiters = freezed,Object? toAssetMileage = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? totalTime = freezed,Object? totalTimeDuration = freezed,Object? initialFluxometer = freezed,Object? finalFluxometer = freezed,Object? initialTankVolume = freezed,Object? finalTankVolume = freezed,Object? price = freezed,Object? attendantName = freezed,Object? attendantId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as int?,fromAssetId: freezed == fromAssetId ? _self.fromAssetId : fromAssetId // ignore: cast_nullable_to_non_nullable
as String?,fromAsset: freezed == fromAsset ? _self.fromAsset : fromAsset // ignore: cast_nullable_to_non_nullable
as Asset?,toAssetId: freezed == toAssetId ? _self.toAssetId : toAssetId // ignore: cast_nullable_to_non_nullable
as String?,toAsset: freezed == toAsset ? _self.toAsset : toAsset // ignore: cast_nullable_to_non_nullable
as Asset?,errorPercent: freezed == errorPercent ? _self.errorPercent : errorPercent // ignore: cast_nullable_to_non_nullable
as double?,totalLiters: freezed == totalLiters ? _self.totalLiters : totalLiters // ignore: cast_nullable_to_non_nullable
as double?,toAssetMileage: freezed == toAssetMileage ? _self.toAssetMileage : toAssetMileage // ignore: cast_nullable_to_non_nullable
as double?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as String?,totalTimeDuration: freezed == totalTimeDuration ? _self.totalTimeDuration : totalTimeDuration // ignore: cast_nullable_to_non_nullable
as Duration?,initialFluxometer: freezed == initialFluxometer ? _self.initialFluxometer : initialFluxometer // ignore: cast_nullable_to_non_nullable
as double?,finalFluxometer: freezed == finalFluxometer ? _self.finalFluxometer : finalFluxometer // ignore: cast_nullable_to_non_nullable
as double?,initialTankVolume: freezed == initialTankVolume ? _self.initialTankVolume : initialTankVolume // ignore: cast_nullable_to_non_nullable
as double?,finalTankVolume: freezed == finalTankVolume ? _self.finalTankVolume : finalTankVolume // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,attendantName: freezed == attendantName ? _self.attendantName : attendantName // ignore: cast_nullable_to_non_nullable
as String?,attendantId: freezed == attendantId ? _self.attendantId : attendantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get fromAsset {
    if (_self.fromAsset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.fromAsset!, (value) {
    return _then(_self.copyWith(fromAsset: value));
  });
}/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get toAsset {
    if (_self.toAsset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.toAsset!, (value) {
    return _then(_self.copyWith(toAsset: value));
  });
}
}


/// Adds pattern-matching-related methods to [AtsExit].
extension AtsExitPatterns on AtsExit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AtsExit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AtsExit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AtsExit value)  $default,){
final _that = this;
switch (_that) {
case _AtsExit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AtsExit value)?  $default,){
final _that = this;
switch (_that) {
case _AtsExit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? identifier,  String? fromAssetId,  Asset? fromAsset,  String? toAssetId,  Asset? toAsset,  double? errorPercent,  double? totalLiters,  double? toAssetMileage, @TimestampOrNullConverter()  DateTime? startAt, @TimestampOrNullConverter()  DateTime? endAt,  String? totalTime, @DurationOrNullConverter()  Duration? totalTimeDuration,  double? initialFluxometer,  double? finalFluxometer,  double? initialTankVolume,  double? finalTankVolume,  double? price,  String? attendantName,  String? attendantId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AtsExit() when $default != null:
return $default(_that.id,_that.identifier,_that.fromAssetId,_that.fromAsset,_that.toAssetId,_that.toAsset,_that.errorPercent,_that.totalLiters,_that.toAssetMileage,_that.startAt,_that.endAt,_that.totalTime,_that.totalTimeDuration,_that.initialFluxometer,_that.finalFluxometer,_that.initialTankVolume,_that.finalTankVolume,_that.price,_that.attendantName,_that.attendantId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? identifier,  String? fromAssetId,  Asset? fromAsset,  String? toAssetId,  Asset? toAsset,  double? errorPercent,  double? totalLiters,  double? toAssetMileage, @TimestampOrNullConverter()  DateTime? startAt, @TimestampOrNullConverter()  DateTime? endAt,  String? totalTime, @DurationOrNullConverter()  Duration? totalTimeDuration,  double? initialFluxometer,  double? finalFluxometer,  double? initialTankVolume,  double? finalTankVolume,  double? price,  String? attendantName,  String? attendantId)  $default,) {final _that = this;
switch (_that) {
case _AtsExit():
return $default(_that.id,_that.identifier,_that.fromAssetId,_that.fromAsset,_that.toAssetId,_that.toAsset,_that.errorPercent,_that.totalLiters,_that.toAssetMileage,_that.startAt,_that.endAt,_that.totalTime,_that.totalTimeDuration,_that.initialFluxometer,_that.finalFluxometer,_that.initialTankVolume,_that.finalTankVolume,_that.price,_that.attendantName,_that.attendantId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? identifier,  String? fromAssetId,  Asset? fromAsset,  String? toAssetId,  Asset? toAsset,  double? errorPercent,  double? totalLiters,  double? toAssetMileage, @TimestampOrNullConverter()  DateTime? startAt, @TimestampOrNullConverter()  DateTime? endAt,  String? totalTime, @DurationOrNullConverter()  Duration? totalTimeDuration,  double? initialFluxometer,  double? finalFluxometer,  double? initialTankVolume,  double? finalTankVolume,  double? price,  String? attendantName,  String? attendantId)?  $default,) {final _that = this;
switch (_that) {
case _AtsExit() when $default != null:
return $default(_that.id,_that.identifier,_that.fromAssetId,_that.fromAsset,_that.toAssetId,_that.toAsset,_that.errorPercent,_that.totalLiters,_that.toAssetMileage,_that.startAt,_that.endAt,_that.totalTime,_that.totalTimeDuration,_that.initialFluxometer,_that.finalFluxometer,_that.initialTankVolume,_that.finalTankVolume,_that.price,_that.attendantName,_that.attendantId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AtsExit implements AtsExit {
  const _AtsExit({this.id, this.identifier, this.fromAssetId, this.fromAsset, this.toAssetId, this.toAsset, this.errorPercent, this.totalLiters, this.toAssetMileage, @TimestampOrNullConverter() this.startAt, @TimestampOrNullConverter() this.endAt, this.totalTime, @DurationOrNullConverter() this.totalTimeDuration, this.initialFluxometer, this.finalFluxometer, this.initialTankVolume, this.finalTankVolume, this.price, this.attendantName, this.attendantId});
  factory _AtsExit.fromJson(Map<String, dynamic> json) => _$AtsExitFromJson(json);

/// The unique identifier of the exit.
@override final  String? id;
/// The exit identifier.
@override final  int? identifier;
/// The identifier of the pump [Asset] that generated the exit.
@override final  String? fromAssetId;
/// The pump [Asset] that generated the exit.
@override final  Asset? fromAsset;
/// The identifier of the [Asset] that received the fuel.
@override final  String? toAssetId;
/// The [Asset] that received the fuel.
@override final  Asset? toAsset;
/// The error percent between reception and sensor entry.
@override final  double? errorPercent;
/// The total liters of the exit.
@override final  double? totalLiters;
/// The odometer reading of the receiving asset.
@override final  double? toAssetMileage;
/// The start date of the exit.
@override@TimestampOrNullConverter() final  DateTime? startAt;
/// The end date of the exit.
@override@TimestampOrNullConverter() final  DateTime? endAt;
/// The total exit time, as a human-readable string.
@override final  String? totalTime;
/// The total exit duration, in seconds.
@override@DurationOrNullConverter() final  Duration? totalTimeDuration;
/// The initial fluxometer reading of the day.
@override final  double? initialFluxometer;
/// The final fluxometer reading of the day.
@override final  double? finalFluxometer;
/// The initial tank volume of the day.
@override final  double? initialTankVolume;
/// The final tank volume of the day.
@override final  double? finalTankVolume;
/// The unit price per liter of the exit.
@override final  double? price;
/// The name of the attendant who performed the exit.
@override final  String? attendantName;
/// The identifier of the attendant who performed the exit.
@override final  String? attendantId;

/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AtsExitCopyWith<_AtsExit> get copyWith => __$AtsExitCopyWithImpl<_AtsExit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AtsExitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AtsExit&&(identical(other.id, id) || other.id == id)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.fromAssetId, fromAssetId) || other.fromAssetId == fromAssetId)&&(identical(other.fromAsset, fromAsset) || other.fromAsset == fromAsset)&&(identical(other.toAssetId, toAssetId) || other.toAssetId == toAssetId)&&(identical(other.toAsset, toAsset) || other.toAsset == toAsset)&&(identical(other.errorPercent, errorPercent) || other.errorPercent == errorPercent)&&(identical(other.totalLiters, totalLiters) || other.totalLiters == totalLiters)&&(identical(other.toAssetMileage, toAssetMileage) || other.toAssetMileage == toAssetMileage)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.totalTimeDuration, totalTimeDuration) || other.totalTimeDuration == totalTimeDuration)&&(identical(other.initialFluxometer, initialFluxometer) || other.initialFluxometer == initialFluxometer)&&(identical(other.finalFluxometer, finalFluxometer) || other.finalFluxometer == finalFluxometer)&&(identical(other.initialTankVolume, initialTankVolume) || other.initialTankVolume == initialTankVolume)&&(identical(other.finalTankVolume, finalTankVolume) || other.finalTankVolume == finalTankVolume)&&(identical(other.price, price) || other.price == price)&&(identical(other.attendantName, attendantName) || other.attendantName == attendantName)&&(identical(other.attendantId, attendantId) || other.attendantId == attendantId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,identifier,fromAssetId,fromAsset,toAssetId,toAsset,errorPercent,totalLiters,toAssetMileage,startAt,endAt,totalTime,totalTimeDuration,initialFluxometer,finalFluxometer,initialTankVolume,finalTankVolume,price,attendantName,attendantId]);

@override
String toString() {
  return 'AtsExit(id: $id, identifier: $identifier, fromAssetId: $fromAssetId, fromAsset: $fromAsset, toAssetId: $toAssetId, toAsset: $toAsset, errorPercent: $errorPercent, totalLiters: $totalLiters, toAssetMileage: $toAssetMileage, startAt: $startAt, endAt: $endAt, totalTime: $totalTime, totalTimeDuration: $totalTimeDuration, initialFluxometer: $initialFluxometer, finalFluxometer: $finalFluxometer, initialTankVolume: $initialTankVolume, finalTankVolume: $finalTankVolume, price: $price, attendantName: $attendantName, attendantId: $attendantId)';
}


}

/// @nodoc
abstract mixin class _$AtsExitCopyWith<$Res> implements $AtsExitCopyWith<$Res> {
  factory _$AtsExitCopyWith(_AtsExit value, $Res Function(_AtsExit) _then) = __$AtsExitCopyWithImpl;
@override @useResult
$Res call({
 String? id, int? identifier, String? fromAssetId, Asset? fromAsset, String? toAssetId, Asset? toAsset, double? errorPercent, double? totalLiters, double? toAssetMileage,@TimestampOrNullConverter() DateTime? startAt,@TimestampOrNullConverter() DateTime? endAt, String? totalTime,@DurationOrNullConverter() Duration? totalTimeDuration, double? initialFluxometer, double? finalFluxometer, double? initialTankVolume, double? finalTankVolume, double? price, String? attendantName, String? attendantId
});


@override $AssetCopyWith<$Res>? get fromAsset;@override $AssetCopyWith<$Res>? get toAsset;

}
/// @nodoc
class __$AtsExitCopyWithImpl<$Res>
    implements _$AtsExitCopyWith<$Res> {
  __$AtsExitCopyWithImpl(this._self, this._then);

  final _AtsExit _self;
  final $Res Function(_AtsExit) _then;

/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? identifier = freezed,Object? fromAssetId = freezed,Object? fromAsset = freezed,Object? toAssetId = freezed,Object? toAsset = freezed,Object? errorPercent = freezed,Object? totalLiters = freezed,Object? toAssetMileage = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? totalTime = freezed,Object? totalTimeDuration = freezed,Object? initialFluxometer = freezed,Object? finalFluxometer = freezed,Object? initialTankVolume = freezed,Object? finalTankVolume = freezed,Object? price = freezed,Object? attendantName = freezed,Object? attendantId = freezed,}) {
  return _then(_AtsExit(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as int?,fromAssetId: freezed == fromAssetId ? _self.fromAssetId : fromAssetId // ignore: cast_nullable_to_non_nullable
as String?,fromAsset: freezed == fromAsset ? _self.fromAsset : fromAsset // ignore: cast_nullable_to_non_nullable
as Asset?,toAssetId: freezed == toAssetId ? _self.toAssetId : toAssetId // ignore: cast_nullable_to_non_nullable
as String?,toAsset: freezed == toAsset ? _self.toAsset : toAsset // ignore: cast_nullable_to_non_nullable
as Asset?,errorPercent: freezed == errorPercent ? _self.errorPercent : errorPercent // ignore: cast_nullable_to_non_nullable
as double?,totalLiters: freezed == totalLiters ? _self.totalLiters : totalLiters // ignore: cast_nullable_to_non_nullable
as double?,toAssetMileage: freezed == toAssetMileage ? _self.toAssetMileage : toAssetMileage // ignore: cast_nullable_to_non_nullable
as double?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as String?,totalTimeDuration: freezed == totalTimeDuration ? _self.totalTimeDuration : totalTimeDuration // ignore: cast_nullable_to_non_nullable
as Duration?,initialFluxometer: freezed == initialFluxometer ? _self.initialFluxometer : initialFluxometer // ignore: cast_nullable_to_non_nullable
as double?,finalFluxometer: freezed == finalFluxometer ? _self.finalFluxometer : finalFluxometer // ignore: cast_nullable_to_non_nullable
as double?,initialTankVolume: freezed == initialTankVolume ? _self.initialTankVolume : initialTankVolume // ignore: cast_nullable_to_non_nullable
as double?,finalTankVolume: freezed == finalTankVolume ? _self.finalTankVolume : finalTankVolume // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,attendantName: freezed == attendantName ? _self.attendantName : attendantName // ignore: cast_nullable_to_non_nullable
as String?,attendantId: freezed == attendantId ? _self.attendantId : attendantId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get fromAsset {
    if (_self.fromAsset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.fromAsset!, (value) {
    return _then(_self.copyWith(fromAsset: value));
  });
}/// Create a copy of AtsExit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get toAsset {
    if (_self.toAsset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.toAsset!, (value) {
    return _then(_self.copyWith(toAsset: value));
  });
}
}


/// @nodoc
mixin _$AtsAuthenticationCard {

/// The unique identifier of the card.
 String get id;/// The number printed on the card.
 int get number;/// The external identifier of the card, in decimal format.
 int get externalIdentifier;/// The external identifier of the card, in hexadecimal format.
 String get externalIdentifierHex;/// The [Asset] linked to this card, or null when not bound.
 Asset? get asset;/// The [User] who owns this card, or null when not assigned.
 User? get owner;/// Whether the card is suspended, or null when not applicable.
 bool? get isSuspended;/// The physical medium of the card.
@AtsSelectCardConverter() AtsSelectCard get typeId;/// The audit trail of this card, or null when not requested.
 List<AtsHistoryAuthenticationCard>? get history;/// The date the card was created, or null when unknown.
@TimestampOrNullConverter() DateTime? get createdAt;
/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AtsAuthenticationCardCopyWith<AtsAuthenticationCard> get copyWith => _$AtsAuthenticationCardCopyWithImpl<AtsAuthenticationCard>(this as AtsAuthenticationCard, _$identity);

  /// Serializes this AtsAuthenticationCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AtsAuthenticationCard&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.externalIdentifier, externalIdentifier) || other.externalIdentifier == externalIdentifier)&&(identical(other.externalIdentifierHex, externalIdentifierHex) || other.externalIdentifierHex == externalIdentifierHex)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,externalIdentifier,externalIdentifierHex,asset,owner,isSuspended,typeId,const DeepCollectionEquality().hash(history),createdAt);

@override
String toString() {
  return 'AtsAuthenticationCard(id: $id, number: $number, externalIdentifier: $externalIdentifier, externalIdentifierHex: $externalIdentifierHex, asset: $asset, owner: $owner, isSuspended: $isSuspended, typeId: $typeId, history: $history, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AtsAuthenticationCardCopyWith<$Res>  {
  factory $AtsAuthenticationCardCopyWith(AtsAuthenticationCard value, $Res Function(AtsAuthenticationCard) _then) = _$AtsAuthenticationCardCopyWithImpl;
@useResult
$Res call({
 String id, int number, int externalIdentifier, String externalIdentifierHex, Asset? asset, User? owner, bool? isSuspended,@AtsSelectCardConverter() AtsSelectCard typeId, List<AtsHistoryAuthenticationCard>? history,@TimestampOrNullConverter() DateTime? createdAt
});


$AssetCopyWith<$Res>? get asset;$UserCopyWith<$Res>? get owner;

}
/// @nodoc
class _$AtsAuthenticationCardCopyWithImpl<$Res>
    implements $AtsAuthenticationCardCopyWith<$Res> {
  _$AtsAuthenticationCardCopyWithImpl(this._self, this._then);

  final AtsAuthenticationCard _self;
  final $Res Function(AtsAuthenticationCard) _then;

/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? externalIdentifier = null,Object? externalIdentifierHex = null,Object? asset = freezed,Object? owner = freezed,Object? isSuspended = freezed,Object? typeId = null,Object? history = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,externalIdentifier: null == externalIdentifier ? _self.externalIdentifier : externalIdentifier // ignore: cast_nullable_to_non_nullable
as int,externalIdentifierHex: null == externalIdentifierHex ? _self.externalIdentifierHex : externalIdentifierHex // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,isSuspended: freezed == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool?,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as AtsSelectCard,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<AtsHistoryAuthenticationCard>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get asset {
    if (_self.asset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.asset!, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [AtsAuthenticationCard].
extension AtsAuthenticationCardPatterns on AtsAuthenticationCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AtsAuthenticationCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AtsAuthenticationCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AtsAuthenticationCard value)  $default,){
final _that = this;
switch (_that) {
case _AtsAuthenticationCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AtsAuthenticationCard value)?  $default,){
final _that = this;
switch (_that) {
case _AtsAuthenticationCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int number,  int externalIdentifier,  String externalIdentifierHex,  Asset? asset,  User? owner,  bool? isSuspended, @AtsSelectCardConverter()  AtsSelectCard typeId,  List<AtsHistoryAuthenticationCard>? history, @TimestampOrNullConverter()  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AtsAuthenticationCard() when $default != null:
return $default(_that.id,_that.number,_that.externalIdentifier,_that.externalIdentifierHex,_that.asset,_that.owner,_that.isSuspended,_that.typeId,_that.history,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int number,  int externalIdentifier,  String externalIdentifierHex,  Asset? asset,  User? owner,  bool? isSuspended, @AtsSelectCardConverter()  AtsSelectCard typeId,  List<AtsHistoryAuthenticationCard>? history, @TimestampOrNullConverter()  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AtsAuthenticationCard():
return $default(_that.id,_that.number,_that.externalIdentifier,_that.externalIdentifierHex,_that.asset,_that.owner,_that.isSuspended,_that.typeId,_that.history,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int number,  int externalIdentifier,  String externalIdentifierHex,  Asset? asset,  User? owner,  bool? isSuspended, @AtsSelectCardConverter()  AtsSelectCard typeId,  List<AtsHistoryAuthenticationCard>? history, @TimestampOrNullConverter()  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AtsAuthenticationCard() when $default != null:
return $default(_that.id,_that.number,_that.externalIdentifier,_that.externalIdentifierHex,_that.asset,_that.owner,_that.isSuspended,_that.typeId,_that.history,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AtsAuthenticationCard implements AtsAuthenticationCard {
  const _AtsAuthenticationCard({required this.id, required this.number, required this.externalIdentifier, required this.externalIdentifierHex, this.asset, this.owner, this.isSuspended, @AtsSelectCardConverter() required this.typeId, this.history, @TimestampOrNullConverter() this.createdAt});
  factory _AtsAuthenticationCard.fromJson(Map<String, dynamic> json) => _$AtsAuthenticationCardFromJson(json);

/// The unique identifier of the card.
@override final  String id;
/// The number printed on the card.
@override final  int number;
/// The external identifier of the card, in decimal format.
@override final  int externalIdentifier;
/// The external identifier of the card, in hexadecimal format.
@override final  String externalIdentifierHex;
/// The [Asset] linked to this card, or null when not bound.
@override final  Asset? asset;
/// The [User] who owns this card, or null when not assigned.
@override final  User? owner;
/// Whether the card is suspended, or null when not applicable.
@override final  bool? isSuspended;
/// The physical medium of the card.
@override@AtsSelectCardConverter() final  AtsSelectCard typeId;
/// The audit trail of this card, or null when not requested.
@override final  List<AtsHistoryAuthenticationCard>? history;
/// The date the card was created, or null when unknown.
@override@TimestampOrNullConverter() final  DateTime? createdAt;

/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AtsAuthenticationCardCopyWith<_AtsAuthenticationCard> get copyWith => __$AtsAuthenticationCardCopyWithImpl<_AtsAuthenticationCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AtsAuthenticationCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AtsAuthenticationCard&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.externalIdentifier, externalIdentifier) || other.externalIdentifier == externalIdentifier)&&(identical(other.externalIdentifierHex, externalIdentifierHex) || other.externalIdentifierHex == externalIdentifierHex)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.isSuspended, isSuspended) || other.isSuspended == isSuspended)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,externalIdentifier,externalIdentifierHex,asset,owner,isSuspended,typeId,const DeepCollectionEquality().hash(history),createdAt);

@override
String toString() {
  return 'AtsAuthenticationCard(id: $id, number: $number, externalIdentifier: $externalIdentifier, externalIdentifierHex: $externalIdentifierHex, asset: $asset, owner: $owner, isSuspended: $isSuspended, typeId: $typeId, history: $history, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AtsAuthenticationCardCopyWith<$Res> implements $AtsAuthenticationCardCopyWith<$Res> {
  factory _$AtsAuthenticationCardCopyWith(_AtsAuthenticationCard value, $Res Function(_AtsAuthenticationCard) _then) = __$AtsAuthenticationCardCopyWithImpl;
@override @useResult
$Res call({
 String id, int number, int externalIdentifier, String externalIdentifierHex, Asset? asset, User? owner, bool? isSuspended,@AtsSelectCardConverter() AtsSelectCard typeId, List<AtsHistoryAuthenticationCard>? history,@TimestampOrNullConverter() DateTime? createdAt
});


@override $AssetCopyWith<$Res>? get asset;@override $UserCopyWith<$Res>? get owner;

}
/// @nodoc
class __$AtsAuthenticationCardCopyWithImpl<$Res>
    implements _$AtsAuthenticationCardCopyWith<$Res> {
  __$AtsAuthenticationCardCopyWithImpl(this._self, this._then);

  final _AtsAuthenticationCard _self;
  final $Res Function(_AtsAuthenticationCard) _then;

/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? externalIdentifier = null,Object? externalIdentifierHex = null,Object? asset = freezed,Object? owner = freezed,Object? isSuspended = freezed,Object? typeId = null,Object? history = freezed,Object? createdAt = freezed,}) {
  return _then(_AtsAuthenticationCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,externalIdentifier: null == externalIdentifier ? _self.externalIdentifier : externalIdentifier // ignore: cast_nullable_to_non_nullable
as int,externalIdentifierHex: null == externalIdentifierHex ? _self.externalIdentifierHex : externalIdentifierHex // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,isSuspended: freezed == isSuspended ? _self.isSuspended : isSuspended // ignore: cast_nullable_to_non_nullable
as bool?,typeId: null == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as AtsSelectCard,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<AtsHistoryAuthenticationCard>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get asset {
    if (_self.asset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.asset!, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of AtsAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$AtsHistoryAuthenticationCard {

/// The unique identifier of this history entry.
 String get id;/// The operation performed on the card.
@AtsHistoryAuthenticationCardOperationConverter() AtsHistoryAuthenticationCardOperation get operation;/// The [Asset] linked to the card at the time of the operation, or null
/// when not applicable.
 Asset? get asset;/// The [User] who owned the card at the time of the operation, or null
/// when not applicable.
 User? get owner;/// The [User] who performed the operation.
 User get createdBy;/// The date the operation was performed.
@TimestampConverter() DateTime get createdAt;
/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AtsHistoryAuthenticationCardCopyWith<AtsHistoryAuthenticationCard> get copyWith => _$AtsHistoryAuthenticationCardCopyWithImpl<AtsHistoryAuthenticationCard>(this as AtsHistoryAuthenticationCard, _$identity);

  /// Serializes this AtsHistoryAuthenticationCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AtsHistoryAuthenticationCard&&(identical(other.id, id) || other.id == id)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,operation,asset,owner,createdBy,createdAt);

@override
String toString() {
  return 'AtsHistoryAuthenticationCard(id: $id, operation: $operation, asset: $asset, owner: $owner, createdBy: $createdBy, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AtsHistoryAuthenticationCardCopyWith<$Res>  {
  factory $AtsHistoryAuthenticationCardCopyWith(AtsHistoryAuthenticationCard value, $Res Function(AtsHistoryAuthenticationCard) _then) = _$AtsHistoryAuthenticationCardCopyWithImpl;
@useResult
$Res call({
 String id,@AtsHistoryAuthenticationCardOperationConverter() AtsHistoryAuthenticationCardOperation operation, Asset? asset, User? owner, User createdBy,@TimestampConverter() DateTime createdAt
});


$AssetCopyWith<$Res>? get asset;$UserCopyWith<$Res>? get owner;$UserCopyWith<$Res> get createdBy;

}
/// @nodoc
class _$AtsHistoryAuthenticationCardCopyWithImpl<$Res>
    implements $AtsHistoryAuthenticationCardCopyWith<$Res> {
  _$AtsHistoryAuthenticationCardCopyWithImpl(this._self, this._then);

  final AtsHistoryAuthenticationCard _self;
  final $Res Function(AtsHistoryAuthenticationCard) _then;

/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? operation = null,Object? asset = freezed,Object? owner = freezed,Object? createdBy = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as AtsHistoryAuthenticationCardOperation,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get asset {
    if (_self.asset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.asset!, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get createdBy {
  
  return $UserCopyWith<$Res>(_self.createdBy, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [AtsHistoryAuthenticationCard].
extension AtsHistoryAuthenticationCardPatterns on AtsHistoryAuthenticationCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AtsHistoryAuthenticationCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AtsHistoryAuthenticationCard value)  $default,){
final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AtsHistoryAuthenticationCard value)?  $default,){
final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @AtsHistoryAuthenticationCardOperationConverter()  AtsHistoryAuthenticationCardOperation operation,  Asset? asset,  User? owner,  User createdBy, @TimestampConverter()  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard() when $default != null:
return $default(_that.id,_that.operation,_that.asset,_that.owner,_that.createdBy,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @AtsHistoryAuthenticationCardOperationConverter()  AtsHistoryAuthenticationCardOperation operation,  Asset? asset,  User? owner,  User createdBy, @TimestampConverter()  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard():
return $default(_that.id,_that.operation,_that.asset,_that.owner,_that.createdBy,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @AtsHistoryAuthenticationCardOperationConverter()  AtsHistoryAuthenticationCardOperation operation,  Asset? asset,  User? owner,  User createdBy, @TimestampConverter()  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AtsHistoryAuthenticationCard() when $default != null:
return $default(_that.id,_that.operation,_that.asset,_that.owner,_that.createdBy,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AtsHistoryAuthenticationCard implements AtsHistoryAuthenticationCard {
  const _AtsHistoryAuthenticationCard({required this.id, @AtsHistoryAuthenticationCardOperationConverter() required this.operation, this.asset, this.owner, required this.createdBy, @TimestampConverter() required this.createdAt});
  factory _AtsHistoryAuthenticationCard.fromJson(Map<String, dynamic> json) => _$AtsHistoryAuthenticationCardFromJson(json);

/// The unique identifier of this history entry.
@override final  String id;
/// The operation performed on the card.
@override@AtsHistoryAuthenticationCardOperationConverter() final  AtsHistoryAuthenticationCardOperation operation;
/// The [Asset] linked to the card at the time of the operation, or null
/// when not applicable.
@override final  Asset? asset;
/// The [User] who owned the card at the time of the operation, or null
/// when not applicable.
@override final  User? owner;
/// The [User] who performed the operation.
@override final  User createdBy;
/// The date the operation was performed.
@override@TimestampConverter() final  DateTime createdAt;

/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AtsHistoryAuthenticationCardCopyWith<_AtsHistoryAuthenticationCard> get copyWith => __$AtsHistoryAuthenticationCardCopyWithImpl<_AtsHistoryAuthenticationCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AtsHistoryAuthenticationCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AtsHistoryAuthenticationCard&&(identical(other.id, id) || other.id == id)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,operation,asset,owner,createdBy,createdAt);

@override
String toString() {
  return 'AtsHistoryAuthenticationCard(id: $id, operation: $operation, asset: $asset, owner: $owner, createdBy: $createdBy, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AtsHistoryAuthenticationCardCopyWith<$Res> implements $AtsHistoryAuthenticationCardCopyWith<$Res> {
  factory _$AtsHistoryAuthenticationCardCopyWith(_AtsHistoryAuthenticationCard value, $Res Function(_AtsHistoryAuthenticationCard) _then) = __$AtsHistoryAuthenticationCardCopyWithImpl;
@override @useResult
$Res call({
 String id,@AtsHistoryAuthenticationCardOperationConverter() AtsHistoryAuthenticationCardOperation operation, Asset? asset, User? owner, User createdBy,@TimestampConverter() DateTime createdAt
});


@override $AssetCopyWith<$Res>? get asset;@override $UserCopyWith<$Res>? get owner;@override $UserCopyWith<$Res> get createdBy;

}
/// @nodoc
class __$AtsHistoryAuthenticationCardCopyWithImpl<$Res>
    implements _$AtsHistoryAuthenticationCardCopyWith<$Res> {
  __$AtsHistoryAuthenticationCardCopyWithImpl(this._self, this._then);

  final _AtsHistoryAuthenticationCard _self;
  final $Res Function(_AtsHistoryAuthenticationCard) _then;

/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? operation = null,Object? asset = freezed,Object? owner = freezed,Object? createdBy = null,Object? createdAt = null,}) {
  return _then(_AtsHistoryAuthenticationCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as AtsHistoryAuthenticationCardOperation,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Asset?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as User,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssetCopyWith<$Res>? get asset {
    if (_self.asset == null) {
    return null;
  }

  return $AssetCopyWith<$Res>(_self.asset!, (value) {
    return _then(_self.copyWith(asset: value));
  });
}/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of AtsHistoryAuthenticationCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get createdBy {
  
  return $UserCopyWith<$Res>(_self.createdBy, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}

// dart format on
