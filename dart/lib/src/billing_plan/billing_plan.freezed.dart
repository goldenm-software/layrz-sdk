// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillingPlan {

/// Unique identifier for the billing plan.
 String get id;/// The percentage of reconnections allowed for the billing plan.
 double get reconnectionPercent;/// The maximum number of reconnections allowed for the billing plan.
 int get reconnectionMaximum;/// The number of reconnection incidents allowed for the billing plan.
 int get reconnectionIncidents;/// The maximum number of assets allowed for the billing plan.
 int get maxAssets;/// The maximum number of devices allowed for the billing plan.
 int get maxDevices;/// The maximum number of users allowed for the billing plan.
 int get maxUsers;/// The maximum number of outbound services allowed for the billing plan.
 int get maxOutboundServices;/// The maximum number of functions allowed for the billing plan.
 int get maxFunctions;/// The maximum number of apps allowed for the billing plan.
 int get maxApps;/// The list of allowed app IDs for the billing plan.
 List<String> get allowedAppsIds;/// The list of allowed algorithm IDs for the billing plan.
 List<String> get allowedAlgorithmsIds;/// The list of allowed inbound protocol IDs for the billing plan.
 List<String> get allowedInboundProtocolsIds;/// The list of allowed outbound protocol IDs for the billing plan.
 List<String> get allowedOutboundProtocolsIds;/// The list of allowed vision protocol IDs for the billing plan.
 List<String> get allowedVisionProtocolsIds;/// The list of allowed exchange protocol IDs for the billing plan.
 List<String> get allowedExchangeProtocolsIds;/// Whether AI is enabled for the billing plan.
 bool get aiEnabled;
/// Create a copy of BillingPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingPlanCopyWith<BillingPlan> get copyWith => _$BillingPlanCopyWithImpl<BillingPlan>(this as BillingPlan, _$identity);

  /// Serializes this BillingPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillingPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.reconnectionPercent, reconnectionPercent) || other.reconnectionPercent == reconnectionPercent)&&(identical(other.reconnectionMaximum, reconnectionMaximum) || other.reconnectionMaximum == reconnectionMaximum)&&(identical(other.reconnectionIncidents, reconnectionIncidents) || other.reconnectionIncidents == reconnectionIncidents)&&(identical(other.maxAssets, maxAssets) || other.maxAssets == maxAssets)&&(identical(other.maxDevices, maxDevices) || other.maxDevices == maxDevices)&&(identical(other.maxUsers, maxUsers) || other.maxUsers == maxUsers)&&(identical(other.maxOutboundServices, maxOutboundServices) || other.maxOutboundServices == maxOutboundServices)&&(identical(other.maxFunctions, maxFunctions) || other.maxFunctions == maxFunctions)&&(identical(other.maxApps, maxApps) || other.maxApps == maxApps)&&const DeepCollectionEquality().equals(other.allowedAppsIds, allowedAppsIds)&&const DeepCollectionEquality().equals(other.allowedAlgorithmsIds, allowedAlgorithmsIds)&&const DeepCollectionEquality().equals(other.allowedInboundProtocolsIds, allowedInboundProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedOutboundProtocolsIds, allowedOutboundProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedVisionProtocolsIds, allowedVisionProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedExchangeProtocolsIds, allowedExchangeProtocolsIds)&&(identical(other.aiEnabled, aiEnabled) || other.aiEnabled == aiEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reconnectionPercent,reconnectionMaximum,reconnectionIncidents,maxAssets,maxDevices,maxUsers,maxOutboundServices,maxFunctions,maxApps,const DeepCollectionEquality().hash(allowedAppsIds),const DeepCollectionEquality().hash(allowedAlgorithmsIds),const DeepCollectionEquality().hash(allowedInboundProtocolsIds),const DeepCollectionEquality().hash(allowedOutboundProtocolsIds),const DeepCollectionEquality().hash(allowedVisionProtocolsIds),const DeepCollectionEquality().hash(allowedExchangeProtocolsIds),aiEnabled);

@override
String toString() {
  return 'BillingPlan(id: $id, reconnectionPercent: $reconnectionPercent, reconnectionMaximum: $reconnectionMaximum, reconnectionIncidents: $reconnectionIncidents, maxAssets: $maxAssets, maxDevices: $maxDevices, maxUsers: $maxUsers, maxOutboundServices: $maxOutboundServices, maxFunctions: $maxFunctions, maxApps: $maxApps, allowedAppsIds: $allowedAppsIds, allowedAlgorithmsIds: $allowedAlgorithmsIds, allowedInboundProtocolsIds: $allowedInboundProtocolsIds, allowedOutboundProtocolsIds: $allowedOutboundProtocolsIds, allowedVisionProtocolsIds: $allowedVisionProtocolsIds, allowedExchangeProtocolsIds: $allowedExchangeProtocolsIds, aiEnabled: $aiEnabled)';
}


}

/// @nodoc
abstract mixin class $BillingPlanCopyWith<$Res>  {
  factory $BillingPlanCopyWith(BillingPlan value, $Res Function(BillingPlan) _then) = _$BillingPlanCopyWithImpl;
@useResult
$Res call({
 String id, double reconnectionPercent, int reconnectionMaximum, int reconnectionIncidents, int maxAssets, int maxDevices, int maxUsers, int maxOutboundServices, int maxFunctions, int maxApps, List<String> allowedAppsIds, List<String> allowedAlgorithmsIds, List<String> allowedInboundProtocolsIds, List<String> allowedOutboundProtocolsIds, List<String> allowedVisionProtocolsIds, List<String> allowedExchangeProtocolsIds, bool aiEnabled
});




}
/// @nodoc
class _$BillingPlanCopyWithImpl<$Res>
    implements $BillingPlanCopyWith<$Res> {
  _$BillingPlanCopyWithImpl(this._self, this._then);

  final BillingPlan _self;
  final $Res Function(BillingPlan) _then;

/// Create a copy of BillingPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reconnectionPercent = null,Object? reconnectionMaximum = null,Object? reconnectionIncidents = null,Object? maxAssets = null,Object? maxDevices = null,Object? maxUsers = null,Object? maxOutboundServices = null,Object? maxFunctions = null,Object? maxApps = null,Object? allowedAppsIds = null,Object? allowedAlgorithmsIds = null,Object? allowedInboundProtocolsIds = null,Object? allowedOutboundProtocolsIds = null,Object? allowedVisionProtocolsIds = null,Object? allowedExchangeProtocolsIds = null,Object? aiEnabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reconnectionPercent: null == reconnectionPercent ? _self.reconnectionPercent : reconnectionPercent // ignore: cast_nullable_to_non_nullable
as double,reconnectionMaximum: null == reconnectionMaximum ? _self.reconnectionMaximum : reconnectionMaximum // ignore: cast_nullable_to_non_nullable
as int,reconnectionIncidents: null == reconnectionIncidents ? _self.reconnectionIncidents : reconnectionIncidents // ignore: cast_nullable_to_non_nullable
as int,maxAssets: null == maxAssets ? _self.maxAssets : maxAssets // ignore: cast_nullable_to_non_nullable
as int,maxDevices: null == maxDevices ? _self.maxDevices : maxDevices // ignore: cast_nullable_to_non_nullable
as int,maxUsers: null == maxUsers ? _self.maxUsers : maxUsers // ignore: cast_nullable_to_non_nullable
as int,maxOutboundServices: null == maxOutboundServices ? _self.maxOutboundServices : maxOutboundServices // ignore: cast_nullable_to_non_nullable
as int,maxFunctions: null == maxFunctions ? _self.maxFunctions : maxFunctions // ignore: cast_nullable_to_non_nullable
as int,maxApps: null == maxApps ? _self.maxApps : maxApps // ignore: cast_nullable_to_non_nullable
as int,allowedAppsIds: null == allowedAppsIds ? _self.allowedAppsIds : allowedAppsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedAlgorithmsIds: null == allowedAlgorithmsIds ? _self.allowedAlgorithmsIds : allowedAlgorithmsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedInboundProtocolsIds: null == allowedInboundProtocolsIds ? _self.allowedInboundProtocolsIds : allowedInboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedOutboundProtocolsIds: null == allowedOutboundProtocolsIds ? _self.allowedOutboundProtocolsIds : allowedOutboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedVisionProtocolsIds: null == allowedVisionProtocolsIds ? _self.allowedVisionProtocolsIds : allowedVisionProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedExchangeProtocolsIds: null == allowedExchangeProtocolsIds ? _self.allowedExchangeProtocolsIds : allowedExchangeProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,aiEnabled: null == aiEnabled ? _self.aiEnabled : aiEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BillingPlan].
extension BillingPlanPatterns on BillingPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingPlan value)  $default,){
final _that = this;
switch (_that) {
case _BillingPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingPlan value)?  $default,){
final _that = this;
switch (_that) {
case _BillingPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingPlan() when $default != null:
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)  $default,) {final _that = this;
switch (_that) {
case _BillingPlan():
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)?  $default,) {final _that = this;
switch (_that) {
case _BillingPlan() when $default != null:
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingPlan implements BillingPlan {
  const _BillingPlan({required this.id, this.reconnectionPercent = 0.0, this.reconnectionMaximum = 0, this.reconnectionIncidents = 0, this.maxAssets = 0, this.maxDevices = 0, this.maxUsers = 0, this.maxOutboundServices = 0, this.maxFunctions = 0, this.maxApps = 0, this.allowedAppsIds = const [], this.allowedAlgorithmsIds = const [], this.allowedInboundProtocolsIds = const [], this.allowedOutboundProtocolsIds = const [], this.allowedVisionProtocolsIds = const [], this.allowedExchangeProtocolsIds = const [], this.aiEnabled = false});
  factory _BillingPlan.fromJson(Map<String, dynamic> json) => _$BillingPlanFromJson(json);

/// Unique identifier for the billing plan.
@override final  String id;
/// The percentage of reconnections allowed for the billing plan.
@override@JsonKey() final  double reconnectionPercent;
/// The maximum number of reconnections allowed for the billing plan.
@override@JsonKey() final  int reconnectionMaximum;
/// The number of reconnection incidents allowed for the billing plan.
@override@JsonKey() final  int reconnectionIncidents;
/// The maximum number of assets allowed for the billing plan.
@override@JsonKey() final  int maxAssets;
/// The maximum number of devices allowed for the billing plan.
@override@JsonKey() final  int maxDevices;
/// The maximum number of users allowed for the billing plan.
@override@JsonKey() final  int maxUsers;
/// The maximum number of outbound services allowed for the billing plan.
@override@JsonKey() final  int maxOutboundServices;
/// The maximum number of functions allowed for the billing plan.
@override@JsonKey() final  int maxFunctions;
/// The maximum number of apps allowed for the billing plan.
@override@JsonKey() final  int maxApps;
/// The list of allowed app IDs for the billing plan.
@override@JsonKey() final  List<String> allowedAppsIds;
/// The list of allowed algorithm IDs for the billing plan.
@override@JsonKey() final  List<String> allowedAlgorithmsIds;
/// The list of allowed inbound protocol IDs for the billing plan.
@override@JsonKey() final  List<String> allowedInboundProtocolsIds;
/// The list of allowed outbound protocol IDs for the billing plan.
@override@JsonKey() final  List<String> allowedOutboundProtocolsIds;
/// The list of allowed vision protocol IDs for the billing plan.
@override@JsonKey() final  List<String> allowedVisionProtocolsIds;
/// The list of allowed exchange protocol IDs for the billing plan.
@override@JsonKey() final  List<String> allowedExchangeProtocolsIds;
/// Whether AI is enabled for the billing plan.
@override@JsonKey() final  bool aiEnabled;

/// Create a copy of BillingPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingPlanCopyWith<_BillingPlan> get copyWith => __$BillingPlanCopyWithImpl<_BillingPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingPlanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillingPlan&&(identical(other.id, id) || other.id == id)&&(identical(other.reconnectionPercent, reconnectionPercent) || other.reconnectionPercent == reconnectionPercent)&&(identical(other.reconnectionMaximum, reconnectionMaximum) || other.reconnectionMaximum == reconnectionMaximum)&&(identical(other.reconnectionIncidents, reconnectionIncidents) || other.reconnectionIncidents == reconnectionIncidents)&&(identical(other.maxAssets, maxAssets) || other.maxAssets == maxAssets)&&(identical(other.maxDevices, maxDevices) || other.maxDevices == maxDevices)&&(identical(other.maxUsers, maxUsers) || other.maxUsers == maxUsers)&&(identical(other.maxOutboundServices, maxOutboundServices) || other.maxOutboundServices == maxOutboundServices)&&(identical(other.maxFunctions, maxFunctions) || other.maxFunctions == maxFunctions)&&(identical(other.maxApps, maxApps) || other.maxApps == maxApps)&&const DeepCollectionEquality().equals(other.allowedAppsIds, allowedAppsIds)&&const DeepCollectionEquality().equals(other.allowedAlgorithmsIds, allowedAlgorithmsIds)&&const DeepCollectionEquality().equals(other.allowedInboundProtocolsIds, allowedInboundProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedOutboundProtocolsIds, allowedOutboundProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedVisionProtocolsIds, allowedVisionProtocolsIds)&&const DeepCollectionEquality().equals(other.allowedExchangeProtocolsIds, allowedExchangeProtocolsIds)&&(identical(other.aiEnabled, aiEnabled) || other.aiEnabled == aiEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reconnectionPercent,reconnectionMaximum,reconnectionIncidents,maxAssets,maxDevices,maxUsers,maxOutboundServices,maxFunctions,maxApps,const DeepCollectionEquality().hash(allowedAppsIds),const DeepCollectionEquality().hash(allowedAlgorithmsIds),const DeepCollectionEquality().hash(allowedInboundProtocolsIds),const DeepCollectionEquality().hash(allowedOutboundProtocolsIds),const DeepCollectionEquality().hash(allowedVisionProtocolsIds),const DeepCollectionEquality().hash(allowedExchangeProtocolsIds),aiEnabled);

@override
String toString() {
  return 'BillingPlan(id: $id, reconnectionPercent: $reconnectionPercent, reconnectionMaximum: $reconnectionMaximum, reconnectionIncidents: $reconnectionIncidents, maxAssets: $maxAssets, maxDevices: $maxDevices, maxUsers: $maxUsers, maxOutboundServices: $maxOutboundServices, maxFunctions: $maxFunctions, maxApps: $maxApps, allowedAppsIds: $allowedAppsIds, allowedAlgorithmsIds: $allowedAlgorithmsIds, allowedInboundProtocolsIds: $allowedInboundProtocolsIds, allowedOutboundProtocolsIds: $allowedOutboundProtocolsIds, allowedVisionProtocolsIds: $allowedVisionProtocolsIds, allowedExchangeProtocolsIds: $allowedExchangeProtocolsIds, aiEnabled: $aiEnabled)';
}


}

/// @nodoc
abstract mixin class _$BillingPlanCopyWith<$Res> implements $BillingPlanCopyWith<$Res> {
  factory _$BillingPlanCopyWith(_BillingPlan value, $Res Function(_BillingPlan) _then) = __$BillingPlanCopyWithImpl;
@override @useResult
$Res call({
 String id, double reconnectionPercent, int reconnectionMaximum, int reconnectionIncidents, int maxAssets, int maxDevices, int maxUsers, int maxOutboundServices, int maxFunctions, int maxApps, List<String> allowedAppsIds, List<String> allowedAlgorithmsIds, List<String> allowedInboundProtocolsIds, List<String> allowedOutboundProtocolsIds, List<String> allowedVisionProtocolsIds, List<String> allowedExchangeProtocolsIds, bool aiEnabled
});




}
/// @nodoc
class __$BillingPlanCopyWithImpl<$Res>
    implements _$BillingPlanCopyWith<$Res> {
  __$BillingPlanCopyWithImpl(this._self, this._then);

  final _BillingPlan _self;
  final $Res Function(_BillingPlan) _then;

/// Create a copy of BillingPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reconnectionPercent = null,Object? reconnectionMaximum = null,Object? reconnectionIncidents = null,Object? maxAssets = null,Object? maxDevices = null,Object? maxUsers = null,Object? maxOutboundServices = null,Object? maxFunctions = null,Object? maxApps = null,Object? allowedAppsIds = null,Object? allowedAlgorithmsIds = null,Object? allowedInboundProtocolsIds = null,Object? allowedOutboundProtocolsIds = null,Object? allowedVisionProtocolsIds = null,Object? allowedExchangeProtocolsIds = null,Object? aiEnabled = null,}) {
  return _then(_BillingPlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reconnectionPercent: null == reconnectionPercent ? _self.reconnectionPercent : reconnectionPercent // ignore: cast_nullable_to_non_nullable
as double,reconnectionMaximum: null == reconnectionMaximum ? _self.reconnectionMaximum : reconnectionMaximum // ignore: cast_nullable_to_non_nullable
as int,reconnectionIncidents: null == reconnectionIncidents ? _self.reconnectionIncidents : reconnectionIncidents // ignore: cast_nullable_to_non_nullable
as int,maxAssets: null == maxAssets ? _self.maxAssets : maxAssets // ignore: cast_nullable_to_non_nullable
as int,maxDevices: null == maxDevices ? _self.maxDevices : maxDevices // ignore: cast_nullable_to_non_nullable
as int,maxUsers: null == maxUsers ? _self.maxUsers : maxUsers // ignore: cast_nullable_to_non_nullable
as int,maxOutboundServices: null == maxOutboundServices ? _self.maxOutboundServices : maxOutboundServices // ignore: cast_nullable_to_non_nullable
as int,maxFunctions: null == maxFunctions ? _self.maxFunctions : maxFunctions // ignore: cast_nullable_to_non_nullable
as int,maxApps: null == maxApps ? _self.maxApps : maxApps // ignore: cast_nullable_to_non_nullable
as int,allowedAppsIds: null == allowedAppsIds ? _self.allowedAppsIds : allowedAppsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedAlgorithmsIds: null == allowedAlgorithmsIds ? _self.allowedAlgorithmsIds : allowedAlgorithmsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedInboundProtocolsIds: null == allowedInboundProtocolsIds ? _self.allowedInboundProtocolsIds : allowedInboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedOutboundProtocolsIds: null == allowedOutboundProtocolsIds ? _self.allowedOutboundProtocolsIds : allowedOutboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedVisionProtocolsIds: null == allowedVisionProtocolsIds ? _self.allowedVisionProtocolsIds : allowedVisionProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedExchangeProtocolsIds: null == allowedExchangeProtocolsIds ? _self.allowedExchangeProtocolsIds : allowedExchangeProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,aiEnabled: null == aiEnabled ? _self.aiEnabled : aiEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BillingPlanInput {

/// Unique identifier for the billing plan, or null when creating a new
/// one.
 String? get id;/// Unique identifier for the billing plan, or null when creating a new
/// one.
 set id(String? value);/// The percentage of reconnections allowed for the billing plan.
 double get reconnectionPercent;/// The percentage of reconnections allowed for the billing plan.
 set reconnectionPercent(double value);/// The maximum number of reconnections allowed for the billing plan.
 int get reconnectionMaximum;/// The maximum number of reconnections allowed for the billing plan.
 set reconnectionMaximum(int value);/// The number of reconnection incidents allowed for the billing plan.
 int get reconnectionIncidents;/// The number of reconnection incidents allowed for the billing plan.
 set reconnectionIncidents(int value);/// The maximum number of assets allowed for the billing plan.
 int get maxAssets;/// The maximum number of assets allowed for the billing plan.
 set maxAssets(int value);/// The maximum number of devices allowed for the billing plan.
 int get maxDevices;/// The maximum number of devices allowed for the billing plan.
 set maxDevices(int value);/// The maximum number of users allowed for the billing plan.
 int get maxUsers;/// The maximum number of users allowed for the billing plan.
 set maxUsers(int value);/// The maximum number of outbound services allowed for the billing plan.
 int get maxOutboundServices;/// The maximum number of outbound services allowed for the billing plan.
 set maxOutboundServices(int value);/// The maximum number of functions allowed for the billing plan.
 int get maxFunctions;/// The maximum number of functions allowed for the billing plan.
 set maxFunctions(int value);/// The maximum number of apps allowed for the billing plan.
 int get maxApps;/// The maximum number of apps allowed for the billing plan.
 set maxApps(int value);/// The list of allowed app IDs for the billing plan.
 List<String> get allowedAppsIds;/// The list of allowed app IDs for the billing plan.
 set allowedAppsIds(List<String> value);/// The list of allowed algorithm IDs for the billing plan.
 List<String> get allowedAlgorithmsIds;/// The list of allowed algorithm IDs for the billing plan.
 set allowedAlgorithmsIds(List<String> value);/// The list of allowed inbound protocol IDs for the billing plan.
 List<String> get allowedInboundProtocolsIds;/// The list of allowed inbound protocol IDs for the billing plan.
 set allowedInboundProtocolsIds(List<String> value);/// The list of allowed outbound protocol IDs for the billing plan.
 List<String> get allowedOutboundProtocolsIds;/// The list of allowed outbound protocol IDs for the billing plan.
 set allowedOutboundProtocolsIds(List<String> value);/// The list of allowed vision protocol IDs for the billing plan.
 List<String> get allowedVisionProtocolsIds;/// The list of allowed vision protocol IDs for the billing plan.
 set allowedVisionProtocolsIds(List<String> value);/// The list of allowed exchange protocol IDs for the billing plan.
 List<String> get allowedExchangeProtocolsIds;/// The list of allowed exchange protocol IDs for the billing plan.
 set allowedExchangeProtocolsIds(List<String> value);/// Whether AI is enabled for the billing plan.
 bool get aiEnabled;/// Whether AI is enabled for the billing plan.
 set aiEnabled(bool value);
/// Create a copy of BillingPlanInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingPlanInputCopyWith<BillingPlanInput> get copyWith => _$BillingPlanInputCopyWithImpl<BillingPlanInput>(this as BillingPlanInput, _$identity);

  /// Serializes this BillingPlanInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'BillingPlanInput(id: $id, reconnectionPercent: $reconnectionPercent, reconnectionMaximum: $reconnectionMaximum, reconnectionIncidents: $reconnectionIncidents, maxAssets: $maxAssets, maxDevices: $maxDevices, maxUsers: $maxUsers, maxOutboundServices: $maxOutboundServices, maxFunctions: $maxFunctions, maxApps: $maxApps, allowedAppsIds: $allowedAppsIds, allowedAlgorithmsIds: $allowedAlgorithmsIds, allowedInboundProtocolsIds: $allowedInboundProtocolsIds, allowedOutboundProtocolsIds: $allowedOutboundProtocolsIds, allowedVisionProtocolsIds: $allowedVisionProtocolsIds, allowedExchangeProtocolsIds: $allowedExchangeProtocolsIds, aiEnabled: $aiEnabled)';
}


}

/// @nodoc
abstract mixin class $BillingPlanInputCopyWith<$Res>  {
  factory $BillingPlanInputCopyWith(BillingPlanInput value, $Res Function(BillingPlanInput) _then) = _$BillingPlanInputCopyWithImpl;
@useResult
$Res call({
 String? id, double reconnectionPercent, int reconnectionMaximum, int reconnectionIncidents, int maxAssets, int maxDevices, int maxUsers, int maxOutboundServices, int maxFunctions, int maxApps, List<String> allowedAppsIds, List<String> allowedAlgorithmsIds, List<String> allowedInboundProtocolsIds, List<String> allowedOutboundProtocolsIds, List<String> allowedVisionProtocolsIds, List<String> allowedExchangeProtocolsIds, bool aiEnabled
});




}
/// @nodoc
class _$BillingPlanInputCopyWithImpl<$Res>
    implements $BillingPlanInputCopyWith<$Res> {
  _$BillingPlanInputCopyWithImpl(this._self, this._then);

  final BillingPlanInput _self;
  final $Res Function(BillingPlanInput) _then;

/// Create a copy of BillingPlanInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? reconnectionPercent = null,Object? reconnectionMaximum = null,Object? reconnectionIncidents = null,Object? maxAssets = null,Object? maxDevices = null,Object? maxUsers = null,Object? maxOutboundServices = null,Object? maxFunctions = null,Object? maxApps = null,Object? allowedAppsIds = null,Object? allowedAlgorithmsIds = null,Object? allowedInboundProtocolsIds = null,Object? allowedOutboundProtocolsIds = null,Object? allowedVisionProtocolsIds = null,Object? allowedExchangeProtocolsIds = null,Object? aiEnabled = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,reconnectionPercent: null == reconnectionPercent ? _self.reconnectionPercent : reconnectionPercent // ignore: cast_nullable_to_non_nullable
as double,reconnectionMaximum: null == reconnectionMaximum ? _self.reconnectionMaximum : reconnectionMaximum // ignore: cast_nullable_to_non_nullable
as int,reconnectionIncidents: null == reconnectionIncidents ? _self.reconnectionIncidents : reconnectionIncidents // ignore: cast_nullable_to_non_nullable
as int,maxAssets: null == maxAssets ? _self.maxAssets : maxAssets // ignore: cast_nullable_to_non_nullable
as int,maxDevices: null == maxDevices ? _self.maxDevices : maxDevices // ignore: cast_nullable_to_non_nullable
as int,maxUsers: null == maxUsers ? _self.maxUsers : maxUsers // ignore: cast_nullable_to_non_nullable
as int,maxOutboundServices: null == maxOutboundServices ? _self.maxOutboundServices : maxOutboundServices // ignore: cast_nullable_to_non_nullable
as int,maxFunctions: null == maxFunctions ? _self.maxFunctions : maxFunctions // ignore: cast_nullable_to_non_nullable
as int,maxApps: null == maxApps ? _self.maxApps : maxApps // ignore: cast_nullable_to_non_nullable
as int,allowedAppsIds: null == allowedAppsIds ? _self.allowedAppsIds : allowedAppsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedAlgorithmsIds: null == allowedAlgorithmsIds ? _self.allowedAlgorithmsIds : allowedAlgorithmsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedInboundProtocolsIds: null == allowedInboundProtocolsIds ? _self.allowedInboundProtocolsIds : allowedInboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedOutboundProtocolsIds: null == allowedOutboundProtocolsIds ? _self.allowedOutboundProtocolsIds : allowedOutboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedVisionProtocolsIds: null == allowedVisionProtocolsIds ? _self.allowedVisionProtocolsIds : allowedVisionProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedExchangeProtocolsIds: null == allowedExchangeProtocolsIds ? _self.allowedExchangeProtocolsIds : allowedExchangeProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,aiEnabled: null == aiEnabled ? _self.aiEnabled : aiEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BillingPlanInput].
extension BillingPlanInputPatterns on BillingPlanInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingPlanInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingPlanInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingPlanInput value)  $default,){
final _that = this;
switch (_that) {
case _BillingPlanInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingPlanInput value)?  $default,){
final _that = this;
switch (_that) {
case _BillingPlanInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingPlanInput() when $default != null:
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)  $default,) {final _that = this;
switch (_that) {
case _BillingPlanInput():
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  double reconnectionPercent,  int reconnectionMaximum,  int reconnectionIncidents,  int maxAssets,  int maxDevices,  int maxUsers,  int maxOutboundServices,  int maxFunctions,  int maxApps,  List<String> allowedAppsIds,  List<String> allowedAlgorithmsIds,  List<String> allowedInboundProtocolsIds,  List<String> allowedOutboundProtocolsIds,  List<String> allowedVisionProtocolsIds,  List<String> allowedExchangeProtocolsIds,  bool aiEnabled)?  $default,) {final _that = this;
switch (_that) {
case _BillingPlanInput() when $default != null:
return $default(_that.id,_that.reconnectionPercent,_that.reconnectionMaximum,_that.reconnectionIncidents,_that.maxAssets,_that.maxDevices,_that.maxUsers,_that.maxOutboundServices,_that.maxFunctions,_that.maxApps,_that.allowedAppsIds,_that.allowedAlgorithmsIds,_that.allowedInboundProtocolsIds,_that.allowedOutboundProtocolsIds,_that.allowedVisionProtocolsIds,_that.allowedExchangeProtocolsIds,_that.aiEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingPlanInput implements BillingPlanInput {
   _BillingPlanInput({this.id, this.reconnectionPercent = 0.0, this.reconnectionMaximum = 0, this.reconnectionIncidents = 0, this.maxAssets = 0, this.maxDevices = 0, this.maxUsers = 0, this.maxOutboundServices = 0, this.maxFunctions = 0, this.maxApps = 0, this.allowedAppsIds = const [], this.allowedAlgorithmsIds = const [], this.allowedInboundProtocolsIds = const [], this.allowedOutboundProtocolsIds = const [], this.allowedVisionProtocolsIds = const [], this.allowedExchangeProtocolsIds = const [], this.aiEnabled = false});
  factory _BillingPlanInput.fromJson(Map<String, dynamic> json) => _$BillingPlanInputFromJson(json);

/// Unique identifier for the billing plan, or null when creating a new
/// one.
@override  String? id;
/// The percentage of reconnections allowed for the billing plan.
@override@JsonKey()  double reconnectionPercent;
/// The maximum number of reconnections allowed for the billing plan.
@override@JsonKey()  int reconnectionMaximum;
/// The number of reconnection incidents allowed for the billing plan.
@override@JsonKey()  int reconnectionIncidents;
/// The maximum number of assets allowed for the billing plan.
@override@JsonKey()  int maxAssets;
/// The maximum number of devices allowed for the billing plan.
@override@JsonKey()  int maxDevices;
/// The maximum number of users allowed for the billing plan.
@override@JsonKey()  int maxUsers;
/// The maximum number of outbound services allowed for the billing plan.
@override@JsonKey()  int maxOutboundServices;
/// The maximum number of functions allowed for the billing plan.
@override@JsonKey()  int maxFunctions;
/// The maximum number of apps allowed for the billing plan.
@override@JsonKey()  int maxApps;
/// The list of allowed app IDs for the billing plan.
@override@JsonKey()  List<String> allowedAppsIds;
/// The list of allowed algorithm IDs for the billing plan.
@override@JsonKey()  List<String> allowedAlgorithmsIds;
/// The list of allowed inbound protocol IDs for the billing plan.
@override@JsonKey()  List<String> allowedInboundProtocolsIds;
/// The list of allowed outbound protocol IDs for the billing plan.
@override@JsonKey()  List<String> allowedOutboundProtocolsIds;
/// The list of allowed vision protocol IDs for the billing plan.
@override@JsonKey()  List<String> allowedVisionProtocolsIds;
/// The list of allowed exchange protocol IDs for the billing plan.
@override@JsonKey()  List<String> allowedExchangeProtocolsIds;
/// Whether AI is enabled for the billing plan.
@override@JsonKey()  bool aiEnabled;

/// Create a copy of BillingPlanInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingPlanInputCopyWith<_BillingPlanInput> get copyWith => __$BillingPlanInputCopyWithImpl<_BillingPlanInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingPlanInputToJson(this, );
}



@override
String toString() {
  return 'BillingPlanInput(id: $id, reconnectionPercent: $reconnectionPercent, reconnectionMaximum: $reconnectionMaximum, reconnectionIncidents: $reconnectionIncidents, maxAssets: $maxAssets, maxDevices: $maxDevices, maxUsers: $maxUsers, maxOutboundServices: $maxOutboundServices, maxFunctions: $maxFunctions, maxApps: $maxApps, allowedAppsIds: $allowedAppsIds, allowedAlgorithmsIds: $allowedAlgorithmsIds, allowedInboundProtocolsIds: $allowedInboundProtocolsIds, allowedOutboundProtocolsIds: $allowedOutboundProtocolsIds, allowedVisionProtocolsIds: $allowedVisionProtocolsIds, allowedExchangeProtocolsIds: $allowedExchangeProtocolsIds, aiEnabled: $aiEnabled)';
}


}

/// @nodoc
abstract mixin class _$BillingPlanInputCopyWith<$Res> implements $BillingPlanInputCopyWith<$Res> {
  factory _$BillingPlanInputCopyWith(_BillingPlanInput value, $Res Function(_BillingPlanInput) _then) = __$BillingPlanInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, double reconnectionPercent, int reconnectionMaximum, int reconnectionIncidents, int maxAssets, int maxDevices, int maxUsers, int maxOutboundServices, int maxFunctions, int maxApps, List<String> allowedAppsIds, List<String> allowedAlgorithmsIds, List<String> allowedInboundProtocolsIds, List<String> allowedOutboundProtocolsIds, List<String> allowedVisionProtocolsIds, List<String> allowedExchangeProtocolsIds, bool aiEnabled
});




}
/// @nodoc
class __$BillingPlanInputCopyWithImpl<$Res>
    implements _$BillingPlanInputCopyWith<$Res> {
  __$BillingPlanInputCopyWithImpl(this._self, this._then);

  final _BillingPlanInput _self;
  final $Res Function(_BillingPlanInput) _then;

/// Create a copy of BillingPlanInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? reconnectionPercent = null,Object? reconnectionMaximum = null,Object? reconnectionIncidents = null,Object? maxAssets = null,Object? maxDevices = null,Object? maxUsers = null,Object? maxOutboundServices = null,Object? maxFunctions = null,Object? maxApps = null,Object? allowedAppsIds = null,Object? allowedAlgorithmsIds = null,Object? allowedInboundProtocolsIds = null,Object? allowedOutboundProtocolsIds = null,Object? allowedVisionProtocolsIds = null,Object? allowedExchangeProtocolsIds = null,Object? aiEnabled = null,}) {
  return _then(_BillingPlanInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,reconnectionPercent: null == reconnectionPercent ? _self.reconnectionPercent : reconnectionPercent // ignore: cast_nullable_to_non_nullable
as double,reconnectionMaximum: null == reconnectionMaximum ? _self.reconnectionMaximum : reconnectionMaximum // ignore: cast_nullable_to_non_nullable
as int,reconnectionIncidents: null == reconnectionIncidents ? _self.reconnectionIncidents : reconnectionIncidents // ignore: cast_nullable_to_non_nullable
as int,maxAssets: null == maxAssets ? _self.maxAssets : maxAssets // ignore: cast_nullable_to_non_nullable
as int,maxDevices: null == maxDevices ? _self.maxDevices : maxDevices // ignore: cast_nullable_to_non_nullable
as int,maxUsers: null == maxUsers ? _self.maxUsers : maxUsers // ignore: cast_nullable_to_non_nullable
as int,maxOutboundServices: null == maxOutboundServices ? _self.maxOutboundServices : maxOutboundServices // ignore: cast_nullable_to_non_nullable
as int,maxFunctions: null == maxFunctions ? _self.maxFunctions : maxFunctions // ignore: cast_nullable_to_non_nullable
as int,maxApps: null == maxApps ? _self.maxApps : maxApps // ignore: cast_nullable_to_non_nullable
as int,allowedAppsIds: null == allowedAppsIds ? _self.allowedAppsIds : allowedAppsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedAlgorithmsIds: null == allowedAlgorithmsIds ? _self.allowedAlgorithmsIds : allowedAlgorithmsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedInboundProtocolsIds: null == allowedInboundProtocolsIds ? _self.allowedInboundProtocolsIds : allowedInboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedOutboundProtocolsIds: null == allowedOutboundProtocolsIds ? _self.allowedOutboundProtocolsIds : allowedOutboundProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedVisionProtocolsIds: null == allowedVisionProtocolsIds ? _self.allowedVisionProtocolsIds : allowedVisionProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,allowedExchangeProtocolsIds: null == allowedExchangeProtocolsIds ? _self.allowedExchangeProtocolsIds : allowedExchangeProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>,aiEnabled: null == aiEnabled ? _self.aiEnabled : aiEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
