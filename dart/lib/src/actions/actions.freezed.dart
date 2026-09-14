// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Action {

/// Unique identifier for this action.
 String get id;/// Human-readable name of the action.
 String get name;/// The kind of side effect this action performs.
@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType get kind;/// The link direction of this action, when [kind] is [ActionType.link].
@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype get subkind;/// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
 String? get commandId;/// The triggers bound to this action, or null when not requested.
 List<Trigger>? get triggers;/// The IDs of the triggers bound to this action.
 List<String>? get triggersIds;/// The outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound], or null when not requested.
 List<OutboundService>? get outboundServices;/// The IDs of the outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound].
 List<String>? get outboundServicesIds;/// The operations this action performs, when [kind] is
/// [ActionType.performOperation], or null when not requested.
 List<Operation>? get operations;/// The IDs of the operations this action performs, when [kind] is
/// [ActionType.performOperation].
 List<String>? get operationsIds;/// The list of access grants for this action.
 List<Access>? get access;/// Whether arriving data needs image conversion, used only when [kind] is
/// [ActionType.sendToMonitorCenter].
 bool? get watchImage;/// The geofence settings, used only when [kind] is [ActionType.createGeofence].
 ActionGeofenceSettings? get geofenceSettings;/// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
 ActionZigbeeSettings? get zigbeeSettings;
/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionCopyWith<Action> get copyWith => _$ActionCopyWithImpl<Action>(this as Action, _$identity);

  /// Serializes this Action to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Action&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.subkind, subkind) || other.subkind == subkind)&&(identical(other.commandId, commandId) || other.commandId == commandId)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.operations, operations)&&const DeepCollectionEquality().equals(other.operationsIds, operationsIds)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.watchImage, watchImage) || other.watchImage == watchImage)&&(identical(other.geofenceSettings, geofenceSettings) || other.geofenceSettings == geofenceSettings)&&(identical(other.zigbeeSettings, zigbeeSettings) || other.zigbeeSettings == zigbeeSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,subkind,commandId,const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(operations),const DeepCollectionEquality().hash(operationsIds),const DeepCollectionEquality().hash(access),watchImage,geofenceSettings,zigbeeSettings);

@override
String toString() {
  return 'Action(id: $id, name: $name, kind: $kind, subkind: $subkind, commandId: $commandId, triggers: $triggers, triggersIds: $triggersIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, operations: $operations, operationsIds: $operationsIds, access: $access, watchImage: $watchImage, geofenceSettings: $geofenceSettings, zigbeeSettings: $zigbeeSettings)';
}


}

/// @nodoc
abstract mixin class $ActionCopyWith<$Res>  {
  factory $ActionCopyWith(Action value, $Res Function(Action) _then) = _$ActionCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType kind,@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype subkind, String? commandId, List<Trigger>? triggers, List<String>? triggersIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Operation>? operations, List<String>? operationsIds, List<Access>? access, bool? watchImage, ActionGeofenceSettings? geofenceSettings, ActionZigbeeSettings? zigbeeSettings
});


$ActionGeofenceSettingsCopyWith<$Res>? get geofenceSettings;$ActionZigbeeSettingsCopyWith<$Res>? get zigbeeSettings;

}
/// @nodoc
class _$ActionCopyWithImpl<$Res>
    implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._self, this._then);

  final Action _self;
  final $Res Function(Action) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? subkind = null,Object? commandId = freezed,Object? triggers = freezed,Object? triggersIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? operations = freezed,Object? operationsIds = freezed,Object? access = freezed,Object? watchImage = freezed,Object? geofenceSettings = freezed,Object? zigbeeSettings = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ActionType,subkind: null == subkind ? _self.subkind : subkind // ignore: cast_nullable_to_non_nullable
as ActionSubtype,commandId: freezed == commandId ? _self.commandId : commandId // ignore: cast_nullable_to_non_nullable
as String?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,operations: freezed == operations ? _self.operations : operations // ignore: cast_nullable_to_non_nullable
as List<Operation>?,operationsIds: freezed == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,watchImage: freezed == watchImage ? _self.watchImage : watchImage // ignore: cast_nullable_to_non_nullable
as bool?,geofenceSettings: freezed == geofenceSettings ? _self.geofenceSettings : geofenceSettings // ignore: cast_nullable_to_non_nullable
as ActionGeofenceSettings?,zigbeeSettings: freezed == zigbeeSettings ? _self.zigbeeSettings : zigbeeSettings // ignore: cast_nullable_to_non_nullable
as ActionZigbeeSettings?,
  ));
}
/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsCopyWith<$Res>? get geofenceSettings {
    if (_self.geofenceSettings == null) {
    return null;
  }

  return $ActionGeofenceSettingsCopyWith<$Res>(_self.geofenceSettings!, (value) {
    return _then(_self.copyWith(geofenceSettings: value));
  });
}/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsCopyWith<$Res>? get zigbeeSettings {
    if (_self.zigbeeSettings == null) {
    return null;
  }

  return $ActionZigbeeSettingsCopyWith<$Res>(_self.zigbeeSettings!, (value) {
    return _then(_self.copyWith(zigbeeSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [Action].
extension ActionPatterns on Action {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Action value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Action() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Action value)  $default,){
final _that = this;
switch (_that) {
case _Action():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Action value)?  $default,){
final _that = this;
switch (_that) {
case _Action() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<Trigger>? triggers,  List<String>? triggersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Access>? access,  bool? watchImage,  ActionGeofenceSettings? geofenceSettings,  ActionZigbeeSettings? zigbeeSettings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Action() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggers,_that.triggersIds,_that.outboundServices,_that.outboundServicesIds,_that.operations,_that.operationsIds,_that.access,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<Trigger>? triggers,  List<String>? triggersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Access>? access,  bool? watchImage,  ActionGeofenceSettings? geofenceSettings,  ActionZigbeeSettings? zigbeeSettings)  $default,) {final _that = this;
switch (_that) {
case _Action():
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggers,_that.triggersIds,_that.outboundServices,_that.outboundServicesIds,_that.operations,_that.operationsIds,_that.access,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<Trigger>? triggers,  List<String>? triggersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Access>? access,  bool? watchImage,  ActionGeofenceSettings? geofenceSettings,  ActionZigbeeSettings? zigbeeSettings)?  $default,) {final _that = this;
switch (_that) {
case _Action() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggers,_that.triggersIds,_that.outboundServices,_that.outboundServicesIds,_that.operations,_that.operationsIds,_that.access,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Action extends Action {
  const _Action({required this.id, required this.name, @JsonKey(unknownEnumValue: ActionType.performOperation) required this.kind, @JsonKey(unknownEnumValue: ActionSubtype.unused) this.subkind = ActionSubtype.unused, this.commandId, this.triggers, this.triggersIds, this.outboundServices, this.outboundServicesIds, this.operations, this.operationsIds, this.access, this.watchImage, this.geofenceSettings, this.zigbeeSettings}): super._();
  factory _Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);

/// Unique identifier for this action.
@override final  String id;
/// Human-readable name of the action.
@override final  String name;
/// The kind of side effect this action performs.
@override@JsonKey(unknownEnumValue: ActionType.performOperation) final  ActionType kind;
/// The link direction of this action, when [kind] is [ActionType.link].
@override@JsonKey(unknownEnumValue: ActionSubtype.unused) final  ActionSubtype subkind;
/// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
@override final  String? commandId;
/// The triggers bound to this action, or null when not requested.
@override final  List<Trigger>? triggers;
/// The IDs of the triggers bound to this action.
@override final  List<String>? triggersIds;
/// The outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound], or null when not requested.
@override final  List<OutboundService>? outboundServices;
/// The IDs of the outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound].
@override final  List<String>? outboundServicesIds;
/// The operations this action performs, when [kind] is
/// [ActionType.performOperation], or null when not requested.
@override final  List<Operation>? operations;
/// The IDs of the operations this action performs, when [kind] is
/// [ActionType.performOperation].
@override final  List<String>? operationsIds;
/// The list of access grants for this action.
@override final  List<Access>? access;
/// Whether arriving data needs image conversion, used only when [kind] is
/// [ActionType.sendToMonitorCenter].
@override final  bool? watchImage;
/// The geofence settings, used only when [kind] is [ActionType.createGeofence].
@override final  ActionGeofenceSettings? geofenceSettings;
/// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
@override final  ActionZigbeeSettings? zigbeeSettings;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionCopyWith<_Action> get copyWith => __$ActionCopyWithImpl<_Action>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Action&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.subkind, subkind) || other.subkind == subkind)&&(identical(other.commandId, commandId) || other.commandId == commandId)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.operations, operations)&&const DeepCollectionEquality().equals(other.operationsIds, operationsIds)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.watchImage, watchImage) || other.watchImage == watchImage)&&(identical(other.geofenceSettings, geofenceSettings) || other.geofenceSettings == geofenceSettings)&&(identical(other.zigbeeSettings, zigbeeSettings) || other.zigbeeSettings == zigbeeSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,subkind,commandId,const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(operations),const DeepCollectionEquality().hash(operationsIds),const DeepCollectionEquality().hash(access),watchImage,geofenceSettings,zigbeeSettings);

@override
String toString() {
  return 'Action(id: $id, name: $name, kind: $kind, subkind: $subkind, commandId: $commandId, triggers: $triggers, triggersIds: $triggersIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, operations: $operations, operationsIds: $operationsIds, access: $access, watchImage: $watchImage, geofenceSettings: $geofenceSettings, zigbeeSettings: $zigbeeSettings)';
}


}

/// @nodoc
abstract mixin class _$ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$ActionCopyWith(_Action value, $Res Function(_Action) _then) = __$ActionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType kind,@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype subkind, String? commandId, List<Trigger>? triggers, List<String>? triggersIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Operation>? operations, List<String>? operationsIds, List<Access>? access, bool? watchImage, ActionGeofenceSettings? geofenceSettings, ActionZigbeeSettings? zigbeeSettings
});


@override $ActionGeofenceSettingsCopyWith<$Res>? get geofenceSettings;@override $ActionZigbeeSettingsCopyWith<$Res>? get zigbeeSettings;

}
/// @nodoc
class __$ActionCopyWithImpl<$Res>
    implements _$ActionCopyWith<$Res> {
  __$ActionCopyWithImpl(this._self, this._then);

  final _Action _self;
  final $Res Function(_Action) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? subkind = null,Object? commandId = freezed,Object? triggers = freezed,Object? triggersIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? operations = freezed,Object? operationsIds = freezed,Object? access = freezed,Object? watchImage = freezed,Object? geofenceSettings = freezed,Object? zigbeeSettings = freezed,}) {
  return _then(_Action(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ActionType,subkind: null == subkind ? _self.subkind : subkind // ignore: cast_nullable_to_non_nullable
as ActionSubtype,commandId: freezed == commandId ? _self.commandId : commandId // ignore: cast_nullable_to_non_nullable
as String?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,operations: freezed == operations ? _self.operations : operations // ignore: cast_nullable_to_non_nullable
as List<Operation>?,operationsIds: freezed == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,watchImage: freezed == watchImage ? _self.watchImage : watchImage // ignore: cast_nullable_to_non_nullable
as bool?,geofenceSettings: freezed == geofenceSettings ? _self.geofenceSettings : geofenceSettings // ignore: cast_nullable_to_non_nullable
as ActionGeofenceSettings?,zigbeeSettings: freezed == zigbeeSettings ? _self.zigbeeSettings : zigbeeSettings // ignore: cast_nullable_to_non_nullable
as ActionZigbeeSettings?,
  ));
}

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsCopyWith<$Res>? get geofenceSettings {
    if (_self.geofenceSettings == null) {
    return null;
  }

  return $ActionGeofenceSettingsCopyWith<$Res>(_self.geofenceSettings!, (value) {
    return _then(_self.copyWith(geofenceSettings: value));
  });
}/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsCopyWith<$Res>? get zigbeeSettings {
    if (_self.zigbeeSettings == null) {
    return null;
  }

  return $ActionZigbeeSettingsCopyWith<$Res>(_self.zigbeeSettings!, (value) {
    return _then(_self.copyWith(zigbeeSettings: value));
  });
}
}


/// @nodoc
mixin _$ActionInput {

/// Unique identifier for this action, or null when creating a new one.
 String? get id;/// Unique identifier for this action, or null when creating a new one.
 set id(String? value);/// Human-readable name of the action. Defaults to an empty string.
 String get name;/// Human-readable name of the action. Defaults to an empty string.
 set name(String value);/// The kind of side effect this action performs. Defaults to
/// [ActionType.performOperation].
@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType get kind;/// The kind of side effect this action performs. Defaults to
/// [ActionType.performOperation].
@JsonKey(unknownEnumValue: ActionType.performOperation) set kind(ActionType value);/// The link direction of this action, when [kind] is [ActionType.link]. Defaults
/// to [ActionSubtype.unused].
@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype get subkind;/// The link direction of this action, when [kind] is [ActionType.link]. Defaults
/// to [ActionSubtype.unused].
@JsonKey(unknownEnumValue: ActionSubtype.unused) set subkind(ActionSubtype value);/// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
 String? get commandId;/// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
 set commandId(String? value);/// The IDs of the triggers bound to this action. Defaults to an empty list.
 List<String> get triggersIds;/// The IDs of the triggers bound to this action. Defaults to an empty list.
 set triggersIds(List<String> value);/// The IDs of the operations this action performs, when [kind] is
/// [ActionType.performOperation]. Defaults to an empty list.
 List<String> get operationsIds;/// The IDs of the operations this action performs, when [kind] is
/// [ActionType.performOperation]. Defaults to an empty list.
 set operationsIds(List<String> value);/// The IDs of the outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound]. Defaults to an empty list.
 List<String> get outboundServicesIds;/// The IDs of the outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound]. Defaults to an empty list.
 set outboundServicesIds(List<String> value);/// Whether arriving data needs image conversion, used only when [kind] is
/// [ActionType.sendToMonitorCenter]. Defaults to `false`.
 bool get watchImage;/// Whether arriving data needs image conversion, used only when [kind] is
/// [ActionType.sendToMonitorCenter]. Defaults to `false`.
 set watchImage(bool value);/// The geofence settings, used only when [kind] is [ActionType.createGeofence].
 ActionGeofenceSettingsInput get geofenceSettings;/// The geofence settings, used only when [kind] is [ActionType.createGeofence].
 set geofenceSettings(ActionGeofenceSettingsInput value);/// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
 ActionZigbeeSettingsInput? get zigbeeSettings;/// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
 set zigbeeSettings(ActionZigbeeSettingsInput? value);
/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionInputCopyWith<ActionInput> get copyWith => _$ActionInputCopyWithImpl<ActionInput>(this as ActionInput, _$identity);

  /// Serializes this ActionInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ActionInput(id: $id, name: $name, kind: $kind, subkind: $subkind, commandId: $commandId, triggersIds: $triggersIds, operationsIds: $operationsIds, outboundServicesIds: $outboundServicesIds, watchImage: $watchImage, geofenceSettings: $geofenceSettings, zigbeeSettings: $zigbeeSettings)';
}


}

/// @nodoc
abstract mixin class $ActionInputCopyWith<$Res>  {
  factory $ActionInputCopyWith(ActionInput value, $Res Function(ActionInput) _then) = _$ActionInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType kind,@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype subkind, String? commandId, List<String> triggersIds, List<String> operationsIds, List<String> outboundServicesIds, bool watchImage, ActionGeofenceSettingsInput geofenceSettings, ActionZigbeeSettingsInput? zigbeeSettings
});


$ActionGeofenceSettingsInputCopyWith<$Res> get geofenceSettings;$ActionZigbeeSettingsInputCopyWith<$Res>? get zigbeeSettings;

}
/// @nodoc
class _$ActionInputCopyWithImpl<$Res>
    implements $ActionInputCopyWith<$Res> {
  _$ActionInputCopyWithImpl(this._self, this._then);

  final ActionInput _self;
  final $Res Function(ActionInput) _then;

/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? kind = null,Object? subkind = null,Object? commandId = freezed,Object? triggersIds = null,Object? operationsIds = null,Object? outboundServicesIds = null,Object? watchImage = null,Object? geofenceSettings = null,Object? zigbeeSettings = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ActionType,subkind: null == subkind ? _self.subkind : subkind // ignore: cast_nullable_to_non_nullable
as ActionSubtype,commandId: freezed == commandId ? _self.commandId : commandId // ignore: cast_nullable_to_non_nullable
as String?,triggersIds: null == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>,operationsIds: null == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,watchImage: null == watchImage ? _self.watchImage : watchImage // ignore: cast_nullable_to_non_nullable
as bool,geofenceSettings: null == geofenceSettings ? _self.geofenceSettings : geofenceSettings // ignore: cast_nullable_to_non_nullable
as ActionGeofenceSettingsInput,zigbeeSettings: freezed == zigbeeSettings ? _self.zigbeeSettings : zigbeeSettings // ignore: cast_nullable_to_non_nullable
as ActionZigbeeSettingsInput?,
  ));
}
/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsInputCopyWith<$Res> get geofenceSettings {
  
  return $ActionGeofenceSettingsInputCopyWith<$Res>(_self.geofenceSettings, (value) {
    return _then(_self.copyWith(geofenceSettings: value));
  });
}/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsInputCopyWith<$Res>? get zigbeeSettings {
    if (_self.zigbeeSettings == null) {
    return null;
  }

  return $ActionZigbeeSettingsInputCopyWith<$Res>(_self.zigbeeSettings!, (value) {
    return _then(_self.copyWith(zigbeeSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActionInput].
extension ActionInputPatterns on ActionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionInput value)  $default,){
final _that = this;
switch (_that) {
case _ActionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionInput value)?  $default,){
final _that = this;
switch (_that) {
case _ActionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<String> triggersIds,  List<String> operationsIds,  List<String> outboundServicesIds,  bool watchImage,  ActionGeofenceSettingsInput geofenceSettings,  ActionZigbeeSettingsInput? zigbeeSettings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionInput() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggersIds,_that.operationsIds,_that.outboundServicesIds,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<String> triggersIds,  List<String> operationsIds,  List<String> outboundServicesIds,  bool watchImage,  ActionGeofenceSettingsInput geofenceSettings,  ActionZigbeeSettingsInput? zigbeeSettings)  $default,) {final _that = this;
switch (_that) {
case _ActionInput():
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggersIds,_that.operationsIds,_that.outboundServicesIds,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name, @JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind, @JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind,  String? commandId,  List<String> triggersIds,  List<String> operationsIds,  List<String> outboundServicesIds,  bool watchImage,  ActionGeofenceSettingsInput geofenceSettings,  ActionZigbeeSettingsInput? zigbeeSettings)?  $default,) {final _that = this;
switch (_that) {
case _ActionInput() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.subkind,_that.commandId,_that.triggersIds,_that.operationsIds,_that.outboundServicesIds,_that.watchImage,_that.geofenceSettings,_that.zigbeeSettings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionInput extends ActionInput {
   _ActionInput({this.id, this.name = '', @JsonKey(unknownEnumValue: ActionType.performOperation) this.kind = ActionType.performOperation, @JsonKey(unknownEnumValue: ActionSubtype.unused) this.subkind = ActionSubtype.unused, this.commandId, this.triggersIds = const [], this.operationsIds = const [], this.outboundServicesIds = const [], this.watchImage = false, required this.geofenceSettings, this.zigbeeSettings}): super._();
  factory _ActionInput.fromJson(Map<String, dynamic> json) => _$ActionInputFromJson(json);

/// Unique identifier for this action, or null when creating a new one.
@override  String? id;
/// Human-readable name of the action. Defaults to an empty string.
@override@JsonKey()  String name;
/// The kind of side effect this action performs. Defaults to
/// [ActionType.performOperation].
@override@JsonKey(unknownEnumValue: ActionType.performOperation)  ActionType kind;
/// The link direction of this action, when [kind] is [ActionType.link]. Defaults
/// to [ActionSubtype.unused].
@override@JsonKey(unknownEnumValue: ActionSubtype.unused)  ActionSubtype subkind;
/// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
@override  String? commandId;
/// The IDs of the triggers bound to this action. Defaults to an empty list.
@override@JsonKey()  List<String> triggersIds;
/// The IDs of the operations this action performs, when [kind] is
/// [ActionType.performOperation]. Defaults to an empty list.
@override@JsonKey()  List<String> operationsIds;
/// The IDs of the outbound services this action broadcasts to, when [kind] is
/// [ActionType.sendToOutbound]. Defaults to an empty list.
@override@JsonKey()  List<String> outboundServicesIds;
/// Whether arriving data needs image conversion, used only when [kind] is
/// [ActionType.sendToMonitorCenter]. Defaults to `false`.
@override@JsonKey()  bool watchImage;
/// The geofence settings, used only when [kind] is [ActionType.createGeofence].
@override  ActionGeofenceSettingsInput geofenceSettings;
/// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
@override  ActionZigbeeSettingsInput? zigbeeSettings;

/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionInputCopyWith<_ActionInput> get copyWith => __$ActionInputCopyWithImpl<_ActionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionInputToJson(this, );
}



@override
String toString() {
  return 'ActionInput(id: $id, name: $name, kind: $kind, subkind: $subkind, commandId: $commandId, triggersIds: $triggersIds, operationsIds: $operationsIds, outboundServicesIds: $outboundServicesIds, watchImage: $watchImage, geofenceSettings: $geofenceSettings, zigbeeSettings: $zigbeeSettings)';
}


}

/// @nodoc
abstract mixin class _$ActionInputCopyWith<$Res> implements $ActionInputCopyWith<$Res> {
  factory _$ActionInputCopyWith(_ActionInput value, $Res Function(_ActionInput) _then) = __$ActionInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: ActionType.performOperation) ActionType kind,@JsonKey(unknownEnumValue: ActionSubtype.unused) ActionSubtype subkind, String? commandId, List<String> triggersIds, List<String> operationsIds, List<String> outboundServicesIds, bool watchImage, ActionGeofenceSettingsInput geofenceSettings, ActionZigbeeSettingsInput? zigbeeSettings
});


@override $ActionGeofenceSettingsInputCopyWith<$Res> get geofenceSettings;@override $ActionZigbeeSettingsInputCopyWith<$Res>? get zigbeeSettings;

}
/// @nodoc
class __$ActionInputCopyWithImpl<$Res>
    implements _$ActionInputCopyWith<$Res> {
  __$ActionInputCopyWithImpl(this._self, this._then);

  final _ActionInput _self;
  final $Res Function(_ActionInput) _then;

/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? kind = null,Object? subkind = null,Object? commandId = freezed,Object? triggersIds = null,Object? operationsIds = null,Object? outboundServicesIds = null,Object? watchImage = null,Object? geofenceSettings = null,Object? zigbeeSettings = freezed,}) {
  return _then(_ActionInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ActionType,subkind: null == subkind ? _self.subkind : subkind // ignore: cast_nullable_to_non_nullable
as ActionSubtype,commandId: freezed == commandId ? _self.commandId : commandId // ignore: cast_nullable_to_non_nullable
as String?,triggersIds: null == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>,operationsIds: null == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,watchImage: null == watchImage ? _self.watchImage : watchImage // ignore: cast_nullable_to_non_nullable
as bool,geofenceSettings: null == geofenceSettings ? _self.geofenceSettings : geofenceSettings // ignore: cast_nullable_to_non_nullable
as ActionGeofenceSettingsInput,zigbeeSettings: freezed == zigbeeSettings ? _self.zigbeeSettings : zigbeeSettings // ignore: cast_nullable_to_non_nullable
as ActionZigbeeSettingsInput?,
  ));
}

/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsInputCopyWith<$Res> get geofenceSettings {
  
  return $ActionGeofenceSettingsInputCopyWith<$Res>(_self.geofenceSettings, (value) {
    return _then(_self.copyWith(geofenceSettings: value));
  });
}/// Create a copy of ActionInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsInputCopyWith<$Res>? get zigbeeSettings {
    if (_self.zigbeeSettings == null) {
    return null;
  }

  return $ActionZigbeeSettingsInputCopyWith<$Res>(_self.zigbeeSettings!, (value) {
    return _then(_self.copyWith(zigbeeSettings: value));
  });
}
}


/// @nodoc
mixin _$ActionGeofenceSettings {

/// Who should own the geofence to create.
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty get whoOwner;/// The name of the geofence to create. This value is an LCL formula.
 String? get name;/// The category of the geofence to create.
 GeofenceCategory? get category;/// The radius (in meters) of the geofence to create.
 double? get radius;/// The ID of the Mappit route the geofence to create is bound to.
 String? get mappitRouteId;/// The Mappit route the geofence to create is bound to.
 MappitRoute? get mappitRoute;
/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsCopyWith<ActionGeofenceSettings> get copyWith => _$ActionGeofenceSettingsCopyWithImpl<ActionGeofenceSettings>(this as ActionGeofenceSettings, _$identity);

  /// Serializes this ActionGeofenceSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionGeofenceSettings&&(identical(other.whoOwner, whoOwner) || other.whoOwner == whoOwner)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.radius, radius) || other.radius == radius)&&(identical(other.mappitRouteId, mappitRouteId) || other.mappitRouteId == mappitRouteId)&&(identical(other.mappitRoute, mappitRoute) || other.mappitRoute == mappitRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,whoOwner,name,category,radius,mappitRouteId,mappitRoute);

@override
String toString() {
  return 'ActionGeofenceSettings(whoOwner: $whoOwner, name: $name, category: $category, radius: $radius, mappitRouteId: $mappitRouteId, mappitRoute: $mappitRoute)';
}


}

/// @nodoc
abstract mixin class $ActionGeofenceSettingsCopyWith<$Res>  {
  factory $ActionGeofenceSettingsCopyWith(ActionGeofenceSettings value, $Res Function(ActionGeofenceSettings) _then) = _$ActionGeofenceSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty whoOwner, String? name, GeofenceCategory? category, double? radius, String? mappitRouteId, MappitRoute? mappitRoute
});


$MappitRouteCopyWith<$Res>? get mappitRoute;

}
/// @nodoc
class _$ActionGeofenceSettingsCopyWithImpl<$Res>
    implements $ActionGeofenceSettingsCopyWith<$Res> {
  _$ActionGeofenceSettingsCopyWithImpl(this._self, this._then);

  final ActionGeofenceSettings _self;
  final $Res Function(ActionGeofenceSettings) _then;

/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? whoOwner = null,Object? name = freezed,Object? category = freezed,Object? radius = freezed,Object? mappitRouteId = freezed,Object? mappitRoute = freezed,}) {
  return _then(_self.copyWith(
whoOwner: null == whoOwner ? _self.whoOwner : whoOwner // ignore: cast_nullable_to_non_nullable
as ActionProperty,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GeofenceCategory?,radius: freezed == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double?,mappitRouteId: freezed == mappitRouteId ? _self.mappitRouteId : mappitRouteId // ignore: cast_nullable_to_non_nullable
as String?,mappitRoute: freezed == mappitRoute ? _self.mappitRoute : mappitRoute // ignore: cast_nullable_to_non_nullable
as MappitRoute?,
  ));
}
/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MappitRouteCopyWith<$Res>? get mappitRoute {
    if (_self.mappitRoute == null) {
    return null;
  }

  return $MappitRouteCopyWith<$Res>(_self.mappitRoute!, (value) {
    return _then(_self.copyWith(mappitRoute: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActionGeofenceSettings].
extension ActionGeofenceSettingsPatterns on ActionGeofenceSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionGeofenceSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionGeofenceSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionGeofenceSettings value)  $default,){
final _that = this;
switch (_that) {
case _ActionGeofenceSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionGeofenceSettings value)?  $default,){
final _that = this;
switch (_that) {
case _ActionGeofenceSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name,  GeofenceCategory? category,  double? radius,  String? mappitRouteId,  MappitRoute? mappitRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionGeofenceSettings() when $default != null:
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId,_that.mappitRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name,  GeofenceCategory? category,  double? radius,  String? mappitRouteId,  MappitRoute? mappitRoute)  $default,) {final _that = this;
switch (_that) {
case _ActionGeofenceSettings():
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId,_that.mappitRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name,  GeofenceCategory? category,  double? radius,  String? mappitRouteId,  MappitRoute? mappitRoute)?  $default,) {final _that = this;
switch (_that) {
case _ActionGeofenceSettings() when $default != null:
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId,_that.mappitRoute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionGeofenceSettings extends ActionGeofenceSettings {
  const _ActionGeofenceSettings({@JsonKey(unknownEnumValue: ActionProperty.none) this.whoOwner = ActionProperty.none, this.name, this.category, this.radius, this.mappitRouteId, this.mappitRoute}): super._();
  factory _ActionGeofenceSettings.fromJson(Map<String, dynamic> json) => _$ActionGeofenceSettingsFromJson(json);

/// Who should own the geofence to create.
@override@JsonKey(unknownEnumValue: ActionProperty.none) final  ActionProperty whoOwner;
/// The name of the geofence to create. This value is an LCL formula.
@override final  String? name;
/// The category of the geofence to create.
@override final  GeofenceCategory? category;
/// The radius (in meters) of the geofence to create.
@override final  double? radius;
/// The ID of the Mappit route the geofence to create is bound to.
@override final  String? mappitRouteId;
/// The Mappit route the geofence to create is bound to.
@override final  MappitRoute? mappitRoute;

/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionGeofenceSettingsCopyWith<_ActionGeofenceSettings> get copyWith => __$ActionGeofenceSettingsCopyWithImpl<_ActionGeofenceSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionGeofenceSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionGeofenceSettings&&(identical(other.whoOwner, whoOwner) || other.whoOwner == whoOwner)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.radius, radius) || other.radius == radius)&&(identical(other.mappitRouteId, mappitRouteId) || other.mappitRouteId == mappitRouteId)&&(identical(other.mappitRoute, mappitRoute) || other.mappitRoute == mappitRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,whoOwner,name,category,radius,mappitRouteId,mappitRoute);

@override
String toString() {
  return 'ActionGeofenceSettings(whoOwner: $whoOwner, name: $name, category: $category, radius: $radius, mappitRouteId: $mappitRouteId, mappitRoute: $mappitRoute)';
}


}

/// @nodoc
abstract mixin class _$ActionGeofenceSettingsCopyWith<$Res> implements $ActionGeofenceSettingsCopyWith<$Res> {
  factory _$ActionGeofenceSettingsCopyWith(_ActionGeofenceSettings value, $Res Function(_ActionGeofenceSettings) _then) = __$ActionGeofenceSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty whoOwner, String? name, GeofenceCategory? category, double? radius, String? mappitRouteId, MappitRoute? mappitRoute
});


@override $MappitRouteCopyWith<$Res>? get mappitRoute;

}
/// @nodoc
class __$ActionGeofenceSettingsCopyWithImpl<$Res>
    implements _$ActionGeofenceSettingsCopyWith<$Res> {
  __$ActionGeofenceSettingsCopyWithImpl(this._self, this._then);

  final _ActionGeofenceSettings _self;
  final $Res Function(_ActionGeofenceSettings) _then;

/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? whoOwner = null,Object? name = freezed,Object? category = freezed,Object? radius = freezed,Object? mappitRouteId = freezed,Object? mappitRoute = freezed,}) {
  return _then(_ActionGeofenceSettings(
whoOwner: null == whoOwner ? _self.whoOwner : whoOwner // ignore: cast_nullable_to_non_nullable
as ActionProperty,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GeofenceCategory?,radius: freezed == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double?,mappitRouteId: freezed == mappitRouteId ? _self.mappitRouteId : mappitRouteId // ignore: cast_nullable_to_non_nullable
as String?,mappitRoute: freezed == mappitRoute ? _self.mappitRoute : mappitRoute // ignore: cast_nullable_to_non_nullable
as MappitRoute?,
  ));
}

/// Create a copy of ActionGeofenceSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MappitRouteCopyWith<$Res>? get mappitRoute {
    if (_self.mappitRoute == null) {
    return null;
  }

  return $MappitRouteCopyWith<$Res>(_self.mappitRoute!, (value) {
    return _then(_self.copyWith(mappitRoute: value));
  });
}
}


/// @nodoc
mixin _$ActionGeofenceSettingsInput {

/// Who should own the geofence to create. Defaults to [ActionProperty.none].
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty get whoOwner;/// Who should own the geofence to create. Defaults to [ActionProperty.none].
@JsonKey(unknownEnumValue: ActionProperty.none) set whoOwner(ActionProperty value);/// The name of the geofence to create. This value is an LCL formula.
 String? get name;/// The name of the geofence to create. This value is an LCL formula.
 set name(String? value);/// The category of the geofence to create.
@JsonKey(unknownEnumValue: GeofenceCategory.none) GeofenceCategory get category;/// The category of the geofence to create.
@JsonKey(unknownEnumValue: GeofenceCategory.none) set category(GeofenceCategory value);/// The radius (in meters) of the geofence to create. Defaults to `10.0`.
 double get radius;/// The radius (in meters) of the geofence to create. Defaults to `10.0`.
 set radius(double value);/// The ID of the Mappit route the geofence to create is bound to.
 String? get mappitRouteId;/// The ID of the Mappit route the geofence to create is bound to.
 set mappitRouteId(String? value);
/// Create a copy of ActionGeofenceSettingsInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionGeofenceSettingsInputCopyWith<ActionGeofenceSettingsInput> get copyWith => _$ActionGeofenceSettingsInputCopyWithImpl<ActionGeofenceSettingsInput>(this as ActionGeofenceSettingsInput, _$identity);

  /// Serializes this ActionGeofenceSettingsInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ActionGeofenceSettingsInput(whoOwner: $whoOwner, name: $name, category: $category, radius: $radius, mappitRouteId: $mappitRouteId)';
}


}

/// @nodoc
abstract mixin class $ActionGeofenceSettingsInputCopyWith<$Res>  {
  factory $ActionGeofenceSettingsInputCopyWith(ActionGeofenceSettingsInput value, $Res Function(ActionGeofenceSettingsInput) _then) = _$ActionGeofenceSettingsInputCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty whoOwner, String? name,@JsonKey(unknownEnumValue: GeofenceCategory.none) GeofenceCategory category, double radius, String? mappitRouteId
});




}
/// @nodoc
class _$ActionGeofenceSettingsInputCopyWithImpl<$Res>
    implements $ActionGeofenceSettingsInputCopyWith<$Res> {
  _$ActionGeofenceSettingsInputCopyWithImpl(this._self, this._then);

  final ActionGeofenceSettingsInput _self;
  final $Res Function(ActionGeofenceSettingsInput) _then;

/// Create a copy of ActionGeofenceSettingsInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? whoOwner = null,Object? name = freezed,Object? category = null,Object? radius = null,Object? mappitRouteId = freezed,}) {
  return _then(_self.copyWith(
whoOwner: null == whoOwner ? _self.whoOwner : whoOwner // ignore: cast_nullable_to_non_nullable
as ActionProperty,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GeofenceCategory,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,mappitRouteId: freezed == mappitRouteId ? _self.mappitRouteId : mappitRouteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionGeofenceSettingsInput].
extension ActionGeofenceSettingsInputPatterns on ActionGeofenceSettingsInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionGeofenceSettingsInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionGeofenceSettingsInput value)  $default,){
final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionGeofenceSettingsInput value)?  $default,){
final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name, @JsonKey(unknownEnumValue: GeofenceCategory.none)  GeofenceCategory category,  double radius,  String? mappitRouteId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput() when $default != null:
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name, @JsonKey(unknownEnumValue: GeofenceCategory.none)  GeofenceCategory category,  double radius,  String? mappitRouteId)  $default,) {final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput():
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner,  String? name, @JsonKey(unknownEnumValue: GeofenceCategory.none)  GeofenceCategory category,  double radius,  String? mappitRouteId)?  $default,) {final _that = this;
switch (_that) {
case _ActionGeofenceSettingsInput() when $default != null:
return $default(_that.whoOwner,_that.name,_that.category,_that.radius,_that.mappitRouteId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionGeofenceSettingsInput extends ActionGeofenceSettingsInput {
   _ActionGeofenceSettingsInput({@JsonKey(unknownEnumValue: ActionProperty.none) this.whoOwner = ActionProperty.none, this.name, @JsonKey(unknownEnumValue: GeofenceCategory.none) this.category = GeofenceCategory.none, this.radius = 10.0, this.mappitRouteId}): super._();
  factory _ActionGeofenceSettingsInput.fromJson(Map<String, dynamic> json) => _$ActionGeofenceSettingsInputFromJson(json);

/// Who should own the geofence to create. Defaults to [ActionProperty.none].
@override@JsonKey(unknownEnumValue: ActionProperty.none)  ActionProperty whoOwner;
/// The name of the geofence to create. This value is an LCL formula.
@override  String? name;
/// The category of the geofence to create.
@override@JsonKey(unknownEnumValue: GeofenceCategory.none)  GeofenceCategory category;
/// The radius (in meters) of the geofence to create. Defaults to `10.0`.
@override@JsonKey()  double radius;
/// The ID of the Mappit route the geofence to create is bound to.
@override  String? mappitRouteId;

/// Create a copy of ActionGeofenceSettingsInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionGeofenceSettingsInputCopyWith<_ActionGeofenceSettingsInput> get copyWith => __$ActionGeofenceSettingsInputCopyWithImpl<_ActionGeofenceSettingsInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionGeofenceSettingsInputToJson(this, );
}



@override
String toString() {
  return 'ActionGeofenceSettingsInput(whoOwner: $whoOwner, name: $name, category: $category, radius: $radius, mappitRouteId: $mappitRouteId)';
}


}

/// @nodoc
abstract mixin class _$ActionGeofenceSettingsInputCopyWith<$Res> implements $ActionGeofenceSettingsInputCopyWith<$Res> {
  factory _$ActionGeofenceSettingsInputCopyWith(_ActionGeofenceSettingsInput value, $Res Function(_ActionGeofenceSettingsInput) _then) = __$ActionGeofenceSettingsInputCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: ActionProperty.none) ActionProperty whoOwner, String? name,@JsonKey(unknownEnumValue: GeofenceCategory.none) GeofenceCategory category, double radius, String? mappitRouteId
});




}
/// @nodoc
class __$ActionGeofenceSettingsInputCopyWithImpl<$Res>
    implements _$ActionGeofenceSettingsInputCopyWith<$Res> {
  __$ActionGeofenceSettingsInputCopyWithImpl(this._self, this._then);

  final _ActionGeofenceSettingsInput _self;
  final $Res Function(_ActionGeofenceSettingsInput) _then;

/// Create a copy of ActionGeofenceSettingsInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? whoOwner = null,Object? name = freezed,Object? category = null,Object? radius = null,Object? mappitRouteId = freezed,}) {
  return _then(_ActionGeofenceSettingsInput(
whoOwner: null == whoOwner ? _self.whoOwner : whoOwner // ignore: cast_nullable_to_non_nullable
as ActionProperty,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GeofenceCategory,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,mappitRouteId: freezed == mappitRouteId ? _self.mappitRouteId : mappitRouteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActionZigbeeSetting {

/// The name of the expose from the Zigbee device.
 String get key;/// The value to set for the expose. Can be any type (String, num, bool, ...)
/// depending on the expose definition.
 dynamic get value;
/// Create a copy of ActionZigbeeSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionZigbeeSettingCopyWith<ActionZigbeeSetting> get copyWith => _$ActionZigbeeSettingCopyWithImpl<ActionZigbeeSetting>(this as ActionZigbeeSetting, _$identity);

  /// Serializes this ActionZigbeeSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionZigbeeSetting&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ActionZigbeeSetting(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class $ActionZigbeeSettingCopyWith<$Res>  {
  factory $ActionZigbeeSettingCopyWith(ActionZigbeeSetting value, $Res Function(ActionZigbeeSetting) _then) = _$ActionZigbeeSettingCopyWithImpl;
@useResult
$Res call({
 String key, dynamic value
});




}
/// @nodoc
class _$ActionZigbeeSettingCopyWithImpl<$Res>
    implements $ActionZigbeeSettingCopyWith<$Res> {
  _$ActionZigbeeSettingCopyWithImpl(this._self, this._then);

  final ActionZigbeeSetting _self;
  final $Res Function(ActionZigbeeSetting) _then;

/// Create a copy of ActionZigbeeSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionZigbeeSetting].
extension ActionZigbeeSettingPatterns on ActionZigbeeSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionZigbeeSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionZigbeeSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionZigbeeSetting value)  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionZigbeeSetting value)?  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  dynamic value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionZigbeeSetting() when $default != null:
return $default(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  dynamic value)  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSetting():
return $default(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  dynamic value)?  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSetting() when $default != null:
return $default(_that.key,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionZigbeeSetting extends ActionZigbeeSetting {
  const _ActionZigbeeSetting({required this.key, this.value}): super._();
  factory _ActionZigbeeSetting.fromJson(Map<String, dynamic> json) => _$ActionZigbeeSettingFromJson(json);

/// The name of the expose from the Zigbee device.
@override final  String key;
/// The value to set for the expose. Can be any type (String, num, bool, ...)
/// depending on the expose definition.
@override final  dynamic value;

/// Create a copy of ActionZigbeeSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionZigbeeSettingCopyWith<_ActionZigbeeSetting> get copyWith => __$ActionZigbeeSettingCopyWithImpl<_ActionZigbeeSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionZigbeeSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionZigbeeSetting&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ActionZigbeeSetting(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ActionZigbeeSettingCopyWith<$Res> implements $ActionZigbeeSettingCopyWith<$Res> {
  factory _$ActionZigbeeSettingCopyWith(_ActionZigbeeSetting value, $Res Function(_ActionZigbeeSetting) _then) = __$ActionZigbeeSettingCopyWithImpl;
@override @useResult
$Res call({
 String key, dynamic value
});




}
/// @nodoc
class __$ActionZigbeeSettingCopyWithImpl<$Res>
    implements _$ActionZigbeeSettingCopyWith<$Res> {
  __$ActionZigbeeSettingCopyWithImpl(this._self, this._then);

  final _ActionZigbeeSetting _self;
  final $Res Function(_ActionZigbeeSetting) _then;

/// Create a copy of ActionZigbeeSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = freezed,}) {
  return _then(_ActionZigbeeSetting(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ActionZigbeeSettings {

/// The ID of the [Device] bound to the Zigbee device to change.
 String? get deviceId;/// The [Device] bound to the Zigbee device to change.
 Device? get device;/// The list of Zigbee settings to apply.
 List<ActionZigbeeSetting> get settings;
/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsCopyWith<ActionZigbeeSettings> get copyWith => _$ActionZigbeeSettingsCopyWithImpl<ActionZigbeeSettings>(this as ActionZigbeeSettings, _$identity);

  /// Serializes this ActionZigbeeSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionZigbeeSettings&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.settings, settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,device,const DeepCollectionEquality().hash(settings));

@override
String toString() {
  return 'ActionZigbeeSettings(deviceId: $deviceId, device: $device, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $ActionZigbeeSettingsCopyWith<$Res>  {
  factory $ActionZigbeeSettingsCopyWith(ActionZigbeeSettings value, $Res Function(ActionZigbeeSettings) _then) = _$ActionZigbeeSettingsCopyWithImpl;
@useResult
$Res call({
 String? deviceId, Device? device, List<ActionZigbeeSetting> settings
});


$DeviceCopyWith<$Res>? get device;

}
/// @nodoc
class _$ActionZigbeeSettingsCopyWithImpl<$Res>
    implements $ActionZigbeeSettingsCopyWith<$Res> {
  _$ActionZigbeeSettingsCopyWithImpl(this._self, this._then);

  final ActionZigbeeSettings _self;
  final $Res Function(ActionZigbeeSettings) _then;

/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? device = freezed,Object? settings = null,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as Device?,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as List<ActionZigbeeSetting>,
  ));
}
/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $DeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActionZigbeeSettings].
extension ActionZigbeeSettingsPatterns on ActionZigbeeSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionZigbeeSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionZigbeeSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionZigbeeSettings value)  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionZigbeeSettings value)?  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? deviceId,  Device? device,  List<ActionZigbeeSetting> settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionZigbeeSettings() when $default != null:
return $default(_that.deviceId,_that.device,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? deviceId,  Device? device,  List<ActionZigbeeSetting> settings)  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSettings():
return $default(_that.deviceId,_that.device,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? deviceId,  Device? device,  List<ActionZigbeeSetting> settings)?  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSettings() when $default != null:
return $default(_that.deviceId,_that.device,_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionZigbeeSettings extends ActionZigbeeSettings {
  const _ActionZigbeeSettings({this.deviceId, this.device, this.settings = const []}): super._();
  factory _ActionZigbeeSettings.fromJson(Map<String, dynamic> json) => _$ActionZigbeeSettingsFromJson(json);

/// The ID of the [Device] bound to the Zigbee device to change.
@override final  String? deviceId;
/// The [Device] bound to the Zigbee device to change.
@override final  Device? device;
/// The list of Zigbee settings to apply.
@override@JsonKey() final  List<ActionZigbeeSetting> settings;

/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionZigbeeSettingsCopyWith<_ActionZigbeeSettings> get copyWith => __$ActionZigbeeSettingsCopyWithImpl<_ActionZigbeeSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionZigbeeSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionZigbeeSettings&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.settings, settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,device,const DeepCollectionEquality().hash(settings));

@override
String toString() {
  return 'ActionZigbeeSettings(deviceId: $deviceId, device: $device, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$ActionZigbeeSettingsCopyWith<$Res> implements $ActionZigbeeSettingsCopyWith<$Res> {
  factory _$ActionZigbeeSettingsCopyWith(_ActionZigbeeSettings value, $Res Function(_ActionZigbeeSettings) _then) = __$ActionZigbeeSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? deviceId, Device? device, List<ActionZigbeeSetting> settings
});


@override $DeviceCopyWith<$Res>? get device;

}
/// @nodoc
class __$ActionZigbeeSettingsCopyWithImpl<$Res>
    implements _$ActionZigbeeSettingsCopyWith<$Res> {
  __$ActionZigbeeSettingsCopyWithImpl(this._self, this._then);

  final _ActionZigbeeSettings _self;
  final $Res Function(_ActionZigbeeSettings) _then;

/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? device = freezed,Object? settings = null,}) {
  return _then(_ActionZigbeeSettings(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as Device?,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as List<ActionZigbeeSetting>,
  ));
}

/// Create a copy of ActionZigbeeSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $DeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// @nodoc
mixin _$ActionZigbeeSettingsInput {

/// The ID of the [Device] bound to the Zigbee device to change.
 String? get deviceId;/// The ID of the [Device] bound to the Zigbee device to change.
 set deviceId(String? value);/// The list of Zigbee settings to apply. Defaults to an empty list.
 List<ActionZigbeeSetting> get settings;/// The list of Zigbee settings to apply. Defaults to an empty list.
 set settings(List<ActionZigbeeSetting> value);
/// Create a copy of ActionZigbeeSettingsInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionZigbeeSettingsInputCopyWith<ActionZigbeeSettingsInput> get copyWith => _$ActionZigbeeSettingsInputCopyWithImpl<ActionZigbeeSettingsInput>(this as ActionZigbeeSettingsInput, _$identity);

  /// Serializes this ActionZigbeeSettingsInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ActionZigbeeSettingsInput(deviceId: $deviceId, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $ActionZigbeeSettingsInputCopyWith<$Res>  {
  factory $ActionZigbeeSettingsInputCopyWith(ActionZigbeeSettingsInput value, $Res Function(ActionZigbeeSettingsInput) _then) = _$ActionZigbeeSettingsInputCopyWithImpl;
@useResult
$Res call({
 String? deviceId, List<ActionZigbeeSetting> settings
});




}
/// @nodoc
class _$ActionZigbeeSettingsInputCopyWithImpl<$Res>
    implements $ActionZigbeeSettingsInputCopyWith<$Res> {
  _$ActionZigbeeSettingsInputCopyWithImpl(this._self, this._then);

  final ActionZigbeeSettingsInput _self;
  final $Res Function(ActionZigbeeSettingsInput) _then;

/// Create a copy of ActionZigbeeSettingsInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? settings = null,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as List<ActionZigbeeSetting>,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionZigbeeSettingsInput].
extension ActionZigbeeSettingsInputPatterns on ActionZigbeeSettingsInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionZigbeeSettingsInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionZigbeeSettingsInput value)  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionZigbeeSettingsInput value)?  $default,){
final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? deviceId,  List<ActionZigbeeSetting> settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput() when $default != null:
return $default(_that.deviceId,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? deviceId,  List<ActionZigbeeSetting> settings)  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput():
return $default(_that.deviceId,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? deviceId,  List<ActionZigbeeSetting> settings)?  $default,) {final _that = this;
switch (_that) {
case _ActionZigbeeSettingsInput() when $default != null:
return $default(_that.deviceId,_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionZigbeeSettingsInput extends ActionZigbeeSettingsInput {
   _ActionZigbeeSettingsInput({this.deviceId, this.settings = const []}): super._();
  factory _ActionZigbeeSettingsInput.fromJson(Map<String, dynamic> json) => _$ActionZigbeeSettingsInputFromJson(json);

/// The ID of the [Device] bound to the Zigbee device to change.
@override  String? deviceId;
/// The list of Zigbee settings to apply. Defaults to an empty list.
@override@JsonKey()  List<ActionZigbeeSetting> settings;

/// Create a copy of ActionZigbeeSettingsInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionZigbeeSettingsInputCopyWith<_ActionZigbeeSettingsInput> get copyWith => __$ActionZigbeeSettingsInputCopyWithImpl<_ActionZigbeeSettingsInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionZigbeeSettingsInputToJson(this, );
}



@override
String toString() {
  return 'ActionZigbeeSettingsInput(deviceId: $deviceId, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$ActionZigbeeSettingsInputCopyWith<$Res> implements $ActionZigbeeSettingsInputCopyWith<$Res> {
  factory _$ActionZigbeeSettingsInputCopyWith(_ActionZigbeeSettingsInput value, $Res Function(_ActionZigbeeSettingsInput) _then) = __$ActionZigbeeSettingsInputCopyWithImpl;
@override @useResult
$Res call({
 String? deviceId, List<ActionZigbeeSetting> settings
});




}
/// @nodoc
class __$ActionZigbeeSettingsInputCopyWithImpl<$Res>
    implements _$ActionZigbeeSettingsInputCopyWith<$Res> {
  __$ActionZigbeeSettingsInputCopyWithImpl(this._self, this._then);

  final _ActionZigbeeSettingsInput _self;
  final $Res Function(_ActionZigbeeSettingsInput) _then;

/// Create a copy of ActionZigbeeSettingsInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? settings = null,}) {
  return _then(_ActionZigbeeSettingsInput(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as List<ActionZigbeeSetting>,
  ));
}


}

// dart format on
