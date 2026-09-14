// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tag {

/// The ID of the tag.
 String get id;/// The name of the tag.
 String get name;/// The color of the tag.
@ColorConverter() Color get color;/// The dynamic icon of the tag.
 Avatar? get dynamicIcon;/// The list of associated users for this tag.
 List<User>? get users;/// The list of IDs of associated users for this tag.
 List<String>? get usersIds;/// The list of associated outbound services for this tag.
 List<OutboundService>? get outboundServices;/// The list of IDs of associated outbound services for this tag.
 List<String>? get outboundServicesIds;/// The list of associated triggers for this tag.
 List<Trigger>? get triggers;/// The list of IDs of associated triggers for this tag.
 List<String>? get triggersIds;/// The list of associated actions for this tag.
 List<Action>? get actions;/// The list of IDs of associated actions for this tag.
 List<String>? get actionsIds;/// The list of associated operations for this tag.
 List<Operation>? get operations;/// The list of IDs of associated operations for this tag.
 List<String>? get operationsIds;/// The list of associated assets for this tag.
 List<Asset>? get assets;/// The list of IDs of associated assets for this tag.
 List<String>? get assetsIds;/// The list of associated devices for this tag.
 List<Device>? get devices;/// The list of IDs of associated devices for this tag.
 List<String>? get devicesIds;/// The list of associated geofences for this tag.
 List<Geofence>? get geofences;/// The list of IDs of associated geofences for this tag.
 List<String>? get geofencesIds;/// The list of associated external accounts for this tag.
 List<ExternalAccount>? get externalAccounts;/// The list of IDs of associated external accounts for this tag.
 List<String>? get externalAccountsIds;/// The list of associated presets for this tag.
 List<Preset>? get presets;/// The list of IDs of associated presets for this tag.
 List<String>? get presetsIds;/// The list of associated references for this tag.
 List<Reference>? get references;/// The list of IDs of associated references for this tag.
 List<String>? get referencesIds;/// The list of associated checkpoints for this tag.
 List<Checkpoint>? get checkpoints;/// The list of IDs of associated checkpoints for this tag.
 List<String>? get checkpointsIds;/// The list of associated care protocols for this tag.
 List<CareProtocol>? get careProtocols;/// The list of IDs of associated care protocols for this tag.
 List<String>? get careProtocolsIds;/// The list of associated inbound services for this tag.
 List<InboundService>? get inboundServices;/// The list of IDs of associated inbound services for this tag.
 List<String>? get inboundServicesIds;/// The list of associated functions for this tag.
 List<LayrzFunction>? get functions;/// The list of IDs of associated functions for this tag.
 List<String>? get functionsIds;/// The list of associated concierge forms for this tag.
 List<ConciergeForm>? get conciergeForms;/// The list of IDs of associated concierge forms for this tag.
 List<String>? get conciergeFormsIds;/// The list of associated report templates for this tag.
 List<ReportTemplate>? get reportTemplates;/// The list of IDs of associated report templates for this tag.
 List<String>? get reportTemplatesIds;/// The list of associated charts for this tag.
 List<LayrzChart>? get charts;/// The list of IDs of associated charts for this tag.
 List<String>? get chartsIds;/// The list of associated workspaces for this tag.
 List<Workspace>? get workspaces;/// The list of IDs of associated workspaces for this tag.
 List<String>? get workspacesIds;/// The list of associated vision profiles for this tag.
 List<VisionProfile>? get visionProfiles;/// The list of IDs of associated vision profiles for this tag.
 List<String>? get visionProfilesIds;/// The list of associated Mappit routes for this tag.
 List<MappitRoute>? get mappitRoutes;/// The list of IDs of associated Mappit routes for this tag.
 List<String>? get mappitRoutesIds;/// The list of associated exchange services for this tag.
 List<ExchangeService>? get exchangeServices;/// The list of IDs of associated exchange services for this tag.
 List<String>? get exchangeServicesIds;/// The list of granted access entries for this tag.
 List<Access>? get access;/// The owner of this tag.
 User? get owner;/// The ID of the owner of this tag.
 String? get ownerId;/// The list of IDs of associated sensors for this tag.
 List<String>? get sensorsIds;/// The list of associated sensors for this tag.
 List<Sensor>? get sensors;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.usersIds, usersIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.actionsIds, actionsIds)&&const DeepCollectionEquality().equals(other.operations, operations)&&const DeepCollectionEquality().equals(other.operationsIds, operationsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.devices, devices)&&const DeepCollectionEquality().equals(other.devicesIds, devicesIds)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.externalAccounts, externalAccounts)&&const DeepCollectionEquality().equals(other.externalAccountsIds, externalAccountsIds)&&const DeepCollectionEquality().equals(other.presets, presets)&&const DeepCollectionEquality().equals(other.presetsIds, presetsIds)&&const DeepCollectionEquality().equals(other.references, references)&&const DeepCollectionEquality().equals(other.referencesIds, referencesIds)&&const DeepCollectionEquality().equals(other.checkpoints, checkpoints)&&const DeepCollectionEquality().equals(other.checkpointsIds, checkpointsIds)&&const DeepCollectionEquality().equals(other.careProtocols, careProtocols)&&const DeepCollectionEquality().equals(other.careProtocolsIds, careProtocolsIds)&&const DeepCollectionEquality().equals(other.inboundServices, inboundServices)&&const DeepCollectionEquality().equals(other.inboundServicesIds, inboundServicesIds)&&const DeepCollectionEquality().equals(other.functions, functions)&&const DeepCollectionEquality().equals(other.functionsIds, functionsIds)&&const DeepCollectionEquality().equals(other.conciergeForms, conciergeForms)&&const DeepCollectionEquality().equals(other.conciergeFormsIds, conciergeFormsIds)&&const DeepCollectionEquality().equals(other.reportTemplates, reportTemplates)&&const DeepCollectionEquality().equals(other.reportTemplatesIds, reportTemplatesIds)&&const DeepCollectionEquality().equals(other.charts, charts)&&const DeepCollectionEquality().equals(other.chartsIds, chartsIds)&&const DeepCollectionEquality().equals(other.workspaces, workspaces)&&const DeepCollectionEquality().equals(other.workspacesIds, workspacesIds)&&const DeepCollectionEquality().equals(other.visionProfiles, visionProfiles)&&const DeepCollectionEquality().equals(other.visionProfilesIds, visionProfilesIds)&&const DeepCollectionEquality().equals(other.mappitRoutes, mappitRoutes)&&const DeepCollectionEquality().equals(other.mappitRoutesIds, mappitRoutesIds)&&const DeepCollectionEquality().equals(other.exchangeServices, exchangeServices)&&const DeepCollectionEquality().equals(other.exchangeServicesIds, exchangeServicesIds)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other.sensorsIds, sensorsIds)&&const DeepCollectionEquality().equals(other.sensors, sensors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,color,dynamicIcon,const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(usersIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(actionsIds),const DeepCollectionEquality().hash(operations),const DeepCollectionEquality().hash(operationsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(devices),const DeepCollectionEquality().hash(devicesIds),const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(externalAccounts),const DeepCollectionEquality().hash(externalAccountsIds),const DeepCollectionEquality().hash(presets),const DeepCollectionEquality().hash(presetsIds),const DeepCollectionEquality().hash(references),const DeepCollectionEquality().hash(referencesIds),const DeepCollectionEquality().hash(checkpoints),const DeepCollectionEquality().hash(checkpointsIds),const DeepCollectionEquality().hash(careProtocols),const DeepCollectionEquality().hash(careProtocolsIds),const DeepCollectionEquality().hash(inboundServices),const DeepCollectionEquality().hash(inboundServicesIds),const DeepCollectionEquality().hash(functions),const DeepCollectionEquality().hash(functionsIds),const DeepCollectionEquality().hash(conciergeForms),const DeepCollectionEquality().hash(conciergeFormsIds),const DeepCollectionEquality().hash(reportTemplates),const DeepCollectionEquality().hash(reportTemplatesIds),const DeepCollectionEquality().hash(charts),const DeepCollectionEquality().hash(chartsIds),const DeepCollectionEquality().hash(workspaces),const DeepCollectionEquality().hash(workspacesIds),const DeepCollectionEquality().hash(visionProfiles),const DeepCollectionEquality().hash(visionProfilesIds),const DeepCollectionEquality().hash(mappitRoutes),const DeepCollectionEquality().hash(mappitRoutesIds),const DeepCollectionEquality().hash(exchangeServices),const DeepCollectionEquality().hash(exchangeServicesIds),const DeepCollectionEquality().hash(access),owner,ownerId,const DeepCollectionEquality().hash(sensorsIds),const DeepCollectionEquality().hash(sensors)]);

@override
String toString() {
  return 'Tag(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, users: $users, usersIds: $usersIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, triggers: $triggers, triggersIds: $triggersIds, actions: $actions, actionsIds: $actionsIds, operations: $operations, operationsIds: $operationsIds, assets: $assets, assetsIds: $assetsIds, devices: $devices, devicesIds: $devicesIds, geofences: $geofences, geofencesIds: $geofencesIds, externalAccounts: $externalAccounts, externalAccountsIds: $externalAccountsIds, presets: $presets, presetsIds: $presetsIds, references: $references, referencesIds: $referencesIds, checkpoints: $checkpoints, checkpointsIds: $checkpointsIds, careProtocols: $careProtocols, careProtocolsIds: $careProtocolsIds, inboundServices: $inboundServices, inboundServicesIds: $inboundServicesIds, functions: $functions, functionsIds: $functionsIds, conciergeForms: $conciergeForms, conciergeFormsIds: $conciergeFormsIds, reportTemplates: $reportTemplates, reportTemplatesIds: $reportTemplatesIds, charts: $charts, chartsIds: $chartsIds, workspaces: $workspaces, workspacesIds: $workspacesIds, visionProfiles: $visionProfiles, visionProfilesIds: $visionProfilesIds, mappitRoutes: $mappitRoutes, mappitRoutesIds: $mappitRoutesIds, exchangeServices: $exchangeServices, exchangeServicesIds: $exchangeServicesIds, access: $access, owner: $owner, ownerId: $ownerId, sensorsIds: $sensorsIds, sensors: $sensors)';
}


}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, Avatar? dynamicIcon, List<User>? users, List<String>? usersIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Trigger>? triggers, List<String>? triggersIds, List<Action>? actions, List<String>? actionsIds, List<Operation>? operations, List<String>? operationsIds, List<Asset>? assets, List<String>? assetsIds, List<Device>? devices, List<String>? devicesIds, List<Geofence>? geofences, List<String>? geofencesIds, List<ExternalAccount>? externalAccounts, List<String>? externalAccountsIds, List<Preset>? presets, List<String>? presetsIds, List<Reference>? references, List<String>? referencesIds, List<Checkpoint>? checkpoints, List<String>? checkpointsIds, List<CareProtocol>? careProtocols, List<String>? careProtocolsIds, List<InboundService>? inboundServices, List<String>? inboundServicesIds, List<LayrzFunction>? functions, List<String>? functionsIds, List<ConciergeForm>? conciergeForms, List<String>? conciergeFormsIds, List<ReportTemplate>? reportTemplates, List<String>? reportTemplatesIds, List<LayrzChart>? charts, List<String>? chartsIds, List<Workspace>? workspaces, List<String>? workspacesIds, List<VisionProfile>? visionProfiles, List<String>? visionProfilesIds, List<MappitRoute>? mappitRoutes, List<String>? mappitRoutesIds, List<ExchangeService>? exchangeServices, List<String>? exchangeServicesIds, List<Access>? access, User? owner, String? ownerId, List<String>? sensorsIds, List<Sensor>? sensors
});


$AvatarCopyWith<$Res>? get dynamicIcon;$UserCopyWith<$Res>? get owner;

}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? users = freezed,Object? usersIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? triggers = freezed,Object? triggersIds = freezed,Object? actions = freezed,Object? actionsIds = freezed,Object? operations = freezed,Object? operationsIds = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? devices = freezed,Object? devicesIds = freezed,Object? geofences = freezed,Object? geofencesIds = freezed,Object? externalAccounts = freezed,Object? externalAccountsIds = freezed,Object? presets = freezed,Object? presetsIds = freezed,Object? references = freezed,Object? referencesIds = freezed,Object? checkpoints = freezed,Object? checkpointsIds = freezed,Object? careProtocols = freezed,Object? careProtocolsIds = freezed,Object? inboundServices = freezed,Object? inboundServicesIds = freezed,Object? functions = freezed,Object? functionsIds = freezed,Object? conciergeForms = freezed,Object? conciergeFormsIds = freezed,Object? reportTemplates = freezed,Object? reportTemplatesIds = freezed,Object? charts = freezed,Object? chartsIds = freezed,Object? workspaces = freezed,Object? workspacesIds = freezed,Object? visionProfiles = freezed,Object? visionProfilesIds = freezed,Object? mappitRoutes = freezed,Object? mappitRoutesIds = freezed,Object? exchangeServices = freezed,Object? exchangeServicesIds = freezed,Object? access = freezed,Object? owner = freezed,Object? ownerId = freezed,Object? sensorsIds = freezed,Object? sensors = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>?,usersIds: freezed == usersIds ? _self.usersIds : usersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<Action>?,actionsIds: freezed == actionsIds ? _self.actionsIds : actionsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,operations: freezed == operations ? _self.operations : operations // ignore: cast_nullable_to_non_nullable
as List<Operation>?,operationsIds: freezed == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,devices: freezed == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<Device>?,devicesIds: freezed == devicesIds ? _self.devicesIds : devicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,externalAccounts: freezed == externalAccounts ? _self.externalAccounts : externalAccounts // ignore: cast_nullable_to_non_nullable
as List<ExternalAccount>?,externalAccountsIds: freezed == externalAccountsIds ? _self.externalAccountsIds : externalAccountsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,presets: freezed == presets ? _self.presets : presets // ignore: cast_nullable_to_non_nullable
as List<Preset>?,presetsIds: freezed == presetsIds ? _self.presetsIds : presetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,references: freezed == references ? _self.references : references // ignore: cast_nullable_to_non_nullable
as List<Reference>?,referencesIds: freezed == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,checkpoints: freezed == checkpoints ? _self.checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<Checkpoint>?,checkpointsIds: freezed == checkpointsIds ? _self.checkpointsIds : checkpointsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,careProtocols: freezed == careProtocols ? _self.careProtocols : careProtocols // ignore: cast_nullable_to_non_nullable
as List<CareProtocol>?,careProtocolsIds: freezed == careProtocolsIds ? _self.careProtocolsIds : careProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,inboundServices: freezed == inboundServices ? _self.inboundServices : inboundServices // ignore: cast_nullable_to_non_nullable
as List<InboundService>?,inboundServicesIds: freezed == inboundServicesIds ? _self.inboundServicesIds : inboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,functions: freezed == functions ? _self.functions : functions // ignore: cast_nullable_to_non_nullable
as List<LayrzFunction>?,functionsIds: freezed == functionsIds ? _self.functionsIds : functionsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,conciergeForms: freezed == conciergeForms ? _self.conciergeForms : conciergeForms // ignore: cast_nullable_to_non_nullable
as List<ConciergeForm>?,conciergeFormsIds: freezed == conciergeFormsIds ? _self.conciergeFormsIds : conciergeFormsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,reportTemplates: freezed == reportTemplates ? _self.reportTemplates : reportTemplates // ignore: cast_nullable_to_non_nullable
as List<ReportTemplate>?,reportTemplatesIds: freezed == reportTemplatesIds ? _self.reportTemplatesIds : reportTemplatesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,charts: freezed == charts ? _self.charts : charts // ignore: cast_nullable_to_non_nullable
as List<LayrzChart>?,chartsIds: freezed == chartsIds ? _self.chartsIds : chartsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,workspaces: freezed == workspaces ? _self.workspaces : workspaces // ignore: cast_nullable_to_non_nullable
as List<Workspace>?,workspacesIds: freezed == workspacesIds ? _self.workspacesIds : workspacesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,visionProfiles: freezed == visionProfiles ? _self.visionProfiles : visionProfiles // ignore: cast_nullable_to_non_nullable
as List<VisionProfile>?,visionProfilesIds: freezed == visionProfilesIds ? _self.visionProfilesIds : visionProfilesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitRoutes: freezed == mappitRoutes ? _self.mappitRoutes : mappitRoutes // ignore: cast_nullable_to_non_nullable
as List<MappitRoute>?,mappitRoutesIds: freezed == mappitRoutesIds ? _self.mappitRoutesIds : mappitRoutesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,exchangeServices: freezed == exchangeServices ? _self.exchangeServices : exchangeServices // ignore: cast_nullable_to_non_nullable
as List<ExchangeService>?,exchangeServicesIds: freezed == exchangeServicesIds ? _self.exchangeServicesIds : exchangeServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,sensorsIds: freezed == sensorsIds ? _self.sensorsIds : sensorsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<Sensor>?,
  ));
}
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}/// Create a copy of Tag
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


/// Adds pattern-matching-related methods to [Tag].
extension TagPatterns on Tag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tag value)  $default,){
final _that = this;
switch (_that) {
case _Tag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tag value)?  $default,){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<User>? users,  List<String>? usersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Trigger>? triggers,  List<String>? triggersIds,  List<Action>? actions,  List<String>? actionsIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Asset>? assets,  List<String>? assetsIds,  List<Device>? devices,  List<String>? devicesIds,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<ExternalAccount>? externalAccounts,  List<String>? externalAccountsIds,  List<Preset>? presets,  List<String>? presetsIds,  List<Reference>? references,  List<String>? referencesIds,  List<Checkpoint>? checkpoints,  List<String>? checkpointsIds,  List<CareProtocol>? careProtocols,  List<String>? careProtocolsIds,  List<InboundService>? inboundServices,  List<String>? inboundServicesIds,  List<LayrzFunction>? functions,  List<String>? functionsIds,  List<ConciergeForm>? conciergeForms,  List<String>? conciergeFormsIds,  List<ReportTemplate>? reportTemplates,  List<String>? reportTemplatesIds,  List<LayrzChart>? charts,  List<String>? chartsIds,  List<Workspace>? workspaces,  List<String>? workspacesIds,  List<VisionProfile>? visionProfiles,  List<String>? visionProfilesIds,  List<MappitRoute>? mappitRoutes,  List<String>? mappitRoutesIds,  List<ExchangeService>? exchangeServices,  List<String>? exchangeServicesIds,  List<Access>? access,  User? owner,  String? ownerId,  List<String>? sensorsIds,  List<Sensor>? sensors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.users,_that.usersIds,_that.outboundServices,_that.outboundServicesIds,_that.triggers,_that.triggersIds,_that.actions,_that.actionsIds,_that.operations,_that.operationsIds,_that.assets,_that.assetsIds,_that.devices,_that.devicesIds,_that.geofences,_that.geofencesIds,_that.externalAccounts,_that.externalAccountsIds,_that.presets,_that.presetsIds,_that.references,_that.referencesIds,_that.checkpoints,_that.checkpointsIds,_that.careProtocols,_that.careProtocolsIds,_that.inboundServices,_that.inboundServicesIds,_that.functions,_that.functionsIds,_that.conciergeForms,_that.conciergeFormsIds,_that.reportTemplates,_that.reportTemplatesIds,_that.charts,_that.chartsIds,_that.workspaces,_that.workspacesIds,_that.visionProfiles,_that.visionProfilesIds,_that.mappitRoutes,_that.mappitRoutesIds,_that.exchangeServices,_that.exchangeServicesIds,_that.access,_that.owner,_that.ownerId,_that.sensorsIds,_that.sensors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<User>? users,  List<String>? usersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Trigger>? triggers,  List<String>? triggersIds,  List<Action>? actions,  List<String>? actionsIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Asset>? assets,  List<String>? assetsIds,  List<Device>? devices,  List<String>? devicesIds,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<ExternalAccount>? externalAccounts,  List<String>? externalAccountsIds,  List<Preset>? presets,  List<String>? presetsIds,  List<Reference>? references,  List<String>? referencesIds,  List<Checkpoint>? checkpoints,  List<String>? checkpointsIds,  List<CareProtocol>? careProtocols,  List<String>? careProtocolsIds,  List<InboundService>? inboundServices,  List<String>? inboundServicesIds,  List<LayrzFunction>? functions,  List<String>? functionsIds,  List<ConciergeForm>? conciergeForms,  List<String>? conciergeFormsIds,  List<ReportTemplate>? reportTemplates,  List<String>? reportTemplatesIds,  List<LayrzChart>? charts,  List<String>? chartsIds,  List<Workspace>? workspaces,  List<String>? workspacesIds,  List<VisionProfile>? visionProfiles,  List<String>? visionProfilesIds,  List<MappitRoute>? mappitRoutes,  List<String>? mappitRoutesIds,  List<ExchangeService>? exchangeServices,  List<String>? exchangeServicesIds,  List<Access>? access,  User? owner,  String? ownerId,  List<String>? sensorsIds,  List<Sensor>? sensors)  $default,) {final _that = this;
switch (_that) {
case _Tag():
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.users,_that.usersIds,_that.outboundServices,_that.outboundServicesIds,_that.triggers,_that.triggersIds,_that.actions,_that.actionsIds,_that.operations,_that.operationsIds,_that.assets,_that.assetsIds,_that.devices,_that.devicesIds,_that.geofences,_that.geofencesIds,_that.externalAccounts,_that.externalAccountsIds,_that.presets,_that.presetsIds,_that.references,_that.referencesIds,_that.checkpoints,_that.checkpointsIds,_that.careProtocols,_that.careProtocolsIds,_that.inboundServices,_that.inboundServicesIds,_that.functions,_that.functionsIds,_that.conciergeForms,_that.conciergeFormsIds,_that.reportTemplates,_that.reportTemplatesIds,_that.charts,_that.chartsIds,_that.workspaces,_that.workspacesIds,_that.visionProfiles,_that.visionProfilesIds,_that.mappitRoutes,_that.mappitRoutesIds,_that.exchangeServices,_that.exchangeServicesIds,_that.access,_that.owner,_that.ownerId,_that.sensorsIds,_that.sensors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  Avatar? dynamicIcon,  List<User>? users,  List<String>? usersIds,  List<OutboundService>? outboundServices,  List<String>? outboundServicesIds,  List<Trigger>? triggers,  List<String>? triggersIds,  List<Action>? actions,  List<String>? actionsIds,  List<Operation>? operations,  List<String>? operationsIds,  List<Asset>? assets,  List<String>? assetsIds,  List<Device>? devices,  List<String>? devicesIds,  List<Geofence>? geofences,  List<String>? geofencesIds,  List<ExternalAccount>? externalAccounts,  List<String>? externalAccountsIds,  List<Preset>? presets,  List<String>? presetsIds,  List<Reference>? references,  List<String>? referencesIds,  List<Checkpoint>? checkpoints,  List<String>? checkpointsIds,  List<CareProtocol>? careProtocols,  List<String>? careProtocolsIds,  List<InboundService>? inboundServices,  List<String>? inboundServicesIds,  List<LayrzFunction>? functions,  List<String>? functionsIds,  List<ConciergeForm>? conciergeForms,  List<String>? conciergeFormsIds,  List<ReportTemplate>? reportTemplates,  List<String>? reportTemplatesIds,  List<LayrzChart>? charts,  List<String>? chartsIds,  List<Workspace>? workspaces,  List<String>? workspacesIds,  List<VisionProfile>? visionProfiles,  List<String>? visionProfilesIds,  List<MappitRoute>? mappitRoutes,  List<String>? mappitRoutesIds,  List<ExchangeService>? exchangeServices,  List<String>? exchangeServicesIds,  List<Access>? access,  User? owner,  String? ownerId,  List<String>? sensorsIds,  List<Sensor>? sensors)?  $default,) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.dynamicIcon,_that.users,_that.usersIds,_that.outboundServices,_that.outboundServicesIds,_that.triggers,_that.triggersIds,_that.actions,_that.actionsIds,_that.operations,_that.operationsIds,_that.assets,_that.assetsIds,_that.devices,_that.devicesIds,_that.geofences,_that.geofencesIds,_that.externalAccounts,_that.externalAccountsIds,_that.presets,_that.presetsIds,_that.references,_that.referencesIds,_that.checkpoints,_that.checkpointsIds,_that.careProtocols,_that.careProtocolsIds,_that.inboundServices,_that.inboundServicesIds,_that.functions,_that.functionsIds,_that.conciergeForms,_that.conciergeFormsIds,_that.reportTemplates,_that.reportTemplatesIds,_that.charts,_that.chartsIds,_that.workspaces,_that.workspacesIds,_that.visionProfiles,_that.visionProfilesIds,_that.mappitRoutes,_that.mappitRoutesIds,_that.exchangeServices,_that.exchangeServicesIds,_that.access,_that.owner,_that.ownerId,_that.sensorsIds,_that.sensors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tag implements Tag {
  const _Tag({required this.id, required this.name, @ColorConverter() required this.color, this.dynamicIcon, this.users, this.usersIds, this.outboundServices, this.outboundServicesIds, this.triggers, this.triggersIds, this.actions, this.actionsIds, this.operations, this.operationsIds, this.assets, this.assetsIds, this.devices, this.devicesIds, this.geofences, this.geofencesIds, this.externalAccounts, this.externalAccountsIds, this.presets, this.presetsIds, this.references, this.referencesIds, this.checkpoints, this.checkpointsIds, this.careProtocols, this.careProtocolsIds, this.inboundServices, this.inboundServicesIds, this.functions, this.functionsIds, this.conciergeForms, this.conciergeFormsIds, this.reportTemplates, this.reportTemplatesIds, this.charts, this.chartsIds, this.workspaces, this.workspacesIds, this.visionProfiles, this.visionProfilesIds, this.mappitRoutes, this.mappitRoutesIds, this.exchangeServices, this.exchangeServicesIds, this.access, this.owner, this.ownerId, this.sensorsIds, this.sensors});
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

/// The ID of the tag.
@override final  String id;
/// The name of the tag.
@override final  String name;
/// The color of the tag.
@override@ColorConverter() final  Color color;
/// The dynamic icon of the tag.
@override final  Avatar? dynamicIcon;
/// The list of associated users for this tag.
@override final  List<User>? users;
/// The list of IDs of associated users for this tag.
@override final  List<String>? usersIds;
/// The list of associated outbound services for this tag.
@override final  List<OutboundService>? outboundServices;
/// The list of IDs of associated outbound services for this tag.
@override final  List<String>? outboundServicesIds;
/// The list of associated triggers for this tag.
@override final  List<Trigger>? triggers;
/// The list of IDs of associated triggers for this tag.
@override final  List<String>? triggersIds;
/// The list of associated actions for this tag.
@override final  List<Action>? actions;
/// The list of IDs of associated actions for this tag.
@override final  List<String>? actionsIds;
/// The list of associated operations for this tag.
@override final  List<Operation>? operations;
/// The list of IDs of associated operations for this tag.
@override final  List<String>? operationsIds;
/// The list of associated assets for this tag.
@override final  List<Asset>? assets;
/// The list of IDs of associated assets for this tag.
@override final  List<String>? assetsIds;
/// The list of associated devices for this tag.
@override final  List<Device>? devices;
/// The list of IDs of associated devices for this tag.
@override final  List<String>? devicesIds;
/// The list of associated geofences for this tag.
@override final  List<Geofence>? geofences;
/// The list of IDs of associated geofences for this tag.
@override final  List<String>? geofencesIds;
/// The list of associated external accounts for this tag.
@override final  List<ExternalAccount>? externalAccounts;
/// The list of IDs of associated external accounts for this tag.
@override final  List<String>? externalAccountsIds;
/// The list of associated presets for this tag.
@override final  List<Preset>? presets;
/// The list of IDs of associated presets for this tag.
@override final  List<String>? presetsIds;
/// The list of associated references for this tag.
@override final  List<Reference>? references;
/// The list of IDs of associated references for this tag.
@override final  List<String>? referencesIds;
/// The list of associated checkpoints for this tag.
@override final  List<Checkpoint>? checkpoints;
/// The list of IDs of associated checkpoints for this tag.
@override final  List<String>? checkpointsIds;
/// The list of associated care protocols for this tag.
@override final  List<CareProtocol>? careProtocols;
/// The list of IDs of associated care protocols for this tag.
@override final  List<String>? careProtocolsIds;
/// The list of associated inbound services for this tag.
@override final  List<InboundService>? inboundServices;
/// The list of IDs of associated inbound services for this tag.
@override final  List<String>? inboundServicesIds;
/// The list of associated functions for this tag.
@override final  List<LayrzFunction>? functions;
/// The list of IDs of associated functions for this tag.
@override final  List<String>? functionsIds;
/// The list of associated concierge forms for this tag.
@override final  List<ConciergeForm>? conciergeForms;
/// The list of IDs of associated concierge forms for this tag.
@override final  List<String>? conciergeFormsIds;
/// The list of associated report templates for this tag.
@override final  List<ReportTemplate>? reportTemplates;
/// The list of IDs of associated report templates for this tag.
@override final  List<String>? reportTemplatesIds;
/// The list of associated charts for this tag.
@override final  List<LayrzChart>? charts;
/// The list of IDs of associated charts for this tag.
@override final  List<String>? chartsIds;
/// The list of associated workspaces for this tag.
@override final  List<Workspace>? workspaces;
/// The list of IDs of associated workspaces for this tag.
@override final  List<String>? workspacesIds;
/// The list of associated vision profiles for this tag.
@override final  List<VisionProfile>? visionProfiles;
/// The list of IDs of associated vision profiles for this tag.
@override final  List<String>? visionProfilesIds;
/// The list of associated Mappit routes for this tag.
@override final  List<MappitRoute>? mappitRoutes;
/// The list of IDs of associated Mappit routes for this tag.
@override final  List<String>? mappitRoutesIds;
/// The list of associated exchange services for this tag.
@override final  List<ExchangeService>? exchangeServices;
/// The list of IDs of associated exchange services for this tag.
@override final  List<String>? exchangeServicesIds;
/// The list of granted access entries for this tag.
@override final  List<Access>? access;
/// The owner of this tag.
@override final  User? owner;
/// The ID of the owner of this tag.
@override final  String? ownerId;
/// The list of IDs of associated sensors for this tag.
@override final  List<String>? sensorsIds;
/// The list of associated sensors for this tag.
@override final  List<Sensor>? sensors;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.usersIds, usersIds)&&const DeepCollectionEquality().equals(other.outboundServices, outboundServices)&&const DeepCollectionEquality().equals(other.outboundServicesIds, outboundServicesIds)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&const DeepCollectionEquality().equals(other.triggersIds, triggersIds)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.actionsIds, actionsIds)&&const DeepCollectionEquality().equals(other.operations, operations)&&const DeepCollectionEquality().equals(other.operationsIds, operationsIds)&&const DeepCollectionEquality().equals(other.assets, assets)&&const DeepCollectionEquality().equals(other.assetsIds, assetsIds)&&const DeepCollectionEquality().equals(other.devices, devices)&&const DeepCollectionEquality().equals(other.devicesIds, devicesIds)&&const DeepCollectionEquality().equals(other.geofences, geofences)&&const DeepCollectionEquality().equals(other.geofencesIds, geofencesIds)&&const DeepCollectionEquality().equals(other.externalAccounts, externalAccounts)&&const DeepCollectionEquality().equals(other.externalAccountsIds, externalAccountsIds)&&const DeepCollectionEquality().equals(other.presets, presets)&&const DeepCollectionEquality().equals(other.presetsIds, presetsIds)&&const DeepCollectionEquality().equals(other.references, references)&&const DeepCollectionEquality().equals(other.referencesIds, referencesIds)&&const DeepCollectionEquality().equals(other.checkpoints, checkpoints)&&const DeepCollectionEquality().equals(other.checkpointsIds, checkpointsIds)&&const DeepCollectionEquality().equals(other.careProtocols, careProtocols)&&const DeepCollectionEquality().equals(other.careProtocolsIds, careProtocolsIds)&&const DeepCollectionEquality().equals(other.inboundServices, inboundServices)&&const DeepCollectionEquality().equals(other.inboundServicesIds, inboundServicesIds)&&const DeepCollectionEquality().equals(other.functions, functions)&&const DeepCollectionEquality().equals(other.functionsIds, functionsIds)&&const DeepCollectionEquality().equals(other.conciergeForms, conciergeForms)&&const DeepCollectionEquality().equals(other.conciergeFormsIds, conciergeFormsIds)&&const DeepCollectionEquality().equals(other.reportTemplates, reportTemplates)&&const DeepCollectionEquality().equals(other.reportTemplatesIds, reportTemplatesIds)&&const DeepCollectionEquality().equals(other.charts, charts)&&const DeepCollectionEquality().equals(other.chartsIds, chartsIds)&&const DeepCollectionEquality().equals(other.workspaces, workspaces)&&const DeepCollectionEquality().equals(other.workspacesIds, workspacesIds)&&const DeepCollectionEquality().equals(other.visionProfiles, visionProfiles)&&const DeepCollectionEquality().equals(other.visionProfilesIds, visionProfilesIds)&&const DeepCollectionEquality().equals(other.mappitRoutes, mappitRoutes)&&const DeepCollectionEquality().equals(other.mappitRoutesIds, mappitRoutesIds)&&const DeepCollectionEquality().equals(other.exchangeServices, exchangeServices)&&const DeepCollectionEquality().equals(other.exchangeServicesIds, exchangeServicesIds)&&const DeepCollectionEquality().equals(other.access, access)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other.sensorsIds, sensorsIds)&&const DeepCollectionEquality().equals(other.sensors, sensors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,color,dynamicIcon,const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(usersIds),const DeepCollectionEquality().hash(outboundServices),const DeepCollectionEquality().hash(outboundServicesIds),const DeepCollectionEquality().hash(triggers),const DeepCollectionEquality().hash(triggersIds),const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(actionsIds),const DeepCollectionEquality().hash(operations),const DeepCollectionEquality().hash(operationsIds),const DeepCollectionEquality().hash(assets),const DeepCollectionEquality().hash(assetsIds),const DeepCollectionEquality().hash(devices),const DeepCollectionEquality().hash(devicesIds),const DeepCollectionEquality().hash(geofences),const DeepCollectionEquality().hash(geofencesIds),const DeepCollectionEquality().hash(externalAccounts),const DeepCollectionEquality().hash(externalAccountsIds),const DeepCollectionEquality().hash(presets),const DeepCollectionEquality().hash(presetsIds),const DeepCollectionEquality().hash(references),const DeepCollectionEquality().hash(referencesIds),const DeepCollectionEquality().hash(checkpoints),const DeepCollectionEquality().hash(checkpointsIds),const DeepCollectionEquality().hash(careProtocols),const DeepCollectionEquality().hash(careProtocolsIds),const DeepCollectionEquality().hash(inboundServices),const DeepCollectionEquality().hash(inboundServicesIds),const DeepCollectionEquality().hash(functions),const DeepCollectionEquality().hash(functionsIds),const DeepCollectionEquality().hash(conciergeForms),const DeepCollectionEquality().hash(conciergeFormsIds),const DeepCollectionEquality().hash(reportTemplates),const DeepCollectionEquality().hash(reportTemplatesIds),const DeepCollectionEquality().hash(charts),const DeepCollectionEquality().hash(chartsIds),const DeepCollectionEquality().hash(workspaces),const DeepCollectionEquality().hash(workspacesIds),const DeepCollectionEquality().hash(visionProfiles),const DeepCollectionEquality().hash(visionProfilesIds),const DeepCollectionEquality().hash(mappitRoutes),const DeepCollectionEquality().hash(mappitRoutesIds),const DeepCollectionEquality().hash(exchangeServices),const DeepCollectionEquality().hash(exchangeServicesIds),const DeepCollectionEquality().hash(access),owner,ownerId,const DeepCollectionEquality().hash(sensorsIds),const DeepCollectionEquality().hash(sensors)]);

@override
String toString() {
  return 'Tag(id: $id, name: $name, color: $color, dynamicIcon: $dynamicIcon, users: $users, usersIds: $usersIds, outboundServices: $outboundServices, outboundServicesIds: $outboundServicesIds, triggers: $triggers, triggersIds: $triggersIds, actions: $actions, actionsIds: $actionsIds, operations: $operations, operationsIds: $operationsIds, assets: $assets, assetsIds: $assetsIds, devices: $devices, devicesIds: $devicesIds, geofences: $geofences, geofencesIds: $geofencesIds, externalAccounts: $externalAccounts, externalAccountsIds: $externalAccountsIds, presets: $presets, presetsIds: $presetsIds, references: $references, referencesIds: $referencesIds, checkpoints: $checkpoints, checkpointsIds: $checkpointsIds, careProtocols: $careProtocols, careProtocolsIds: $careProtocolsIds, inboundServices: $inboundServices, inboundServicesIds: $inboundServicesIds, functions: $functions, functionsIds: $functionsIds, conciergeForms: $conciergeForms, conciergeFormsIds: $conciergeFormsIds, reportTemplates: $reportTemplates, reportTemplatesIds: $reportTemplatesIds, charts: $charts, chartsIds: $chartsIds, workspaces: $workspaces, workspacesIds: $workspacesIds, visionProfiles: $visionProfiles, visionProfilesIds: $visionProfilesIds, mappitRoutes: $mappitRoutes, mappitRoutesIds: $mappitRoutesIds, exchangeServices: $exchangeServices, exchangeServicesIds: $exchangeServicesIds, access: $access, owner: $owner, ownerId: $ownerId, sensorsIds: $sensorsIds, sensors: $sensors)';
}


}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, Avatar? dynamicIcon, List<User>? users, List<String>? usersIds, List<OutboundService>? outboundServices, List<String>? outboundServicesIds, List<Trigger>? triggers, List<String>? triggersIds, List<Action>? actions, List<String>? actionsIds, List<Operation>? operations, List<String>? operationsIds, List<Asset>? assets, List<String>? assetsIds, List<Device>? devices, List<String>? devicesIds, List<Geofence>? geofences, List<String>? geofencesIds, List<ExternalAccount>? externalAccounts, List<String>? externalAccountsIds, List<Preset>? presets, List<String>? presetsIds, List<Reference>? references, List<String>? referencesIds, List<Checkpoint>? checkpoints, List<String>? checkpointsIds, List<CareProtocol>? careProtocols, List<String>? careProtocolsIds, List<InboundService>? inboundServices, List<String>? inboundServicesIds, List<LayrzFunction>? functions, List<String>? functionsIds, List<ConciergeForm>? conciergeForms, List<String>? conciergeFormsIds, List<ReportTemplate>? reportTemplates, List<String>? reportTemplatesIds, List<LayrzChart>? charts, List<String>? chartsIds, List<Workspace>? workspaces, List<String>? workspacesIds, List<VisionProfile>? visionProfiles, List<String>? visionProfilesIds, List<MappitRoute>? mappitRoutes, List<String>? mappitRoutesIds, List<ExchangeService>? exchangeServices, List<String>? exchangeServicesIds, List<Access>? access, User? owner, String? ownerId, List<String>? sensorsIds, List<Sensor>? sensors
});


@override $AvatarCopyWith<$Res>? get dynamicIcon;@override $UserCopyWith<$Res>? get owner;

}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? dynamicIcon = freezed,Object? users = freezed,Object? usersIds = freezed,Object? outboundServices = freezed,Object? outboundServicesIds = freezed,Object? triggers = freezed,Object? triggersIds = freezed,Object? actions = freezed,Object? actionsIds = freezed,Object? operations = freezed,Object? operationsIds = freezed,Object? assets = freezed,Object? assetsIds = freezed,Object? devices = freezed,Object? devicesIds = freezed,Object? geofences = freezed,Object? geofencesIds = freezed,Object? externalAccounts = freezed,Object? externalAccountsIds = freezed,Object? presets = freezed,Object? presetsIds = freezed,Object? references = freezed,Object? referencesIds = freezed,Object? checkpoints = freezed,Object? checkpointsIds = freezed,Object? careProtocols = freezed,Object? careProtocolsIds = freezed,Object? inboundServices = freezed,Object? inboundServicesIds = freezed,Object? functions = freezed,Object? functionsIds = freezed,Object? conciergeForms = freezed,Object? conciergeFormsIds = freezed,Object? reportTemplates = freezed,Object? reportTemplatesIds = freezed,Object? charts = freezed,Object? chartsIds = freezed,Object? workspaces = freezed,Object? workspacesIds = freezed,Object? visionProfiles = freezed,Object? visionProfilesIds = freezed,Object? mappitRoutes = freezed,Object? mappitRoutesIds = freezed,Object? exchangeServices = freezed,Object? exchangeServicesIds = freezed,Object? access = freezed,Object? owner = freezed,Object? ownerId = freezed,Object? sensorsIds = freezed,Object? sensors = freezed,}) {
  return _then(_Tag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>?,usersIds: freezed == usersIds ? _self.usersIds : usersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,outboundServices: freezed == outboundServices ? _self.outboundServices : outboundServices // ignore: cast_nullable_to_non_nullable
as List<OutboundService>?,outboundServicesIds: freezed == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,triggersIds: freezed == triggersIds ? _self.triggersIds : triggersIds // ignore: cast_nullable_to_non_nullable
as List<String>?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<Action>?,actionsIds: freezed == actionsIds ? _self.actionsIds : actionsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,operations: freezed == operations ? _self.operations : operations // ignore: cast_nullable_to_non_nullable
as List<Operation>?,operationsIds: freezed == operationsIds ? _self.operationsIds : operationsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,assets: freezed == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>?,assetsIds: freezed == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,devices: freezed == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<Device>?,devicesIds: freezed == devicesIds ? _self.devicesIds : devicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,geofences: freezed == geofences ? _self.geofences : geofences // ignore: cast_nullable_to_non_nullable
as List<Geofence>?,geofencesIds: freezed == geofencesIds ? _self.geofencesIds : geofencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,externalAccounts: freezed == externalAccounts ? _self.externalAccounts : externalAccounts // ignore: cast_nullable_to_non_nullable
as List<ExternalAccount>?,externalAccountsIds: freezed == externalAccountsIds ? _self.externalAccountsIds : externalAccountsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,presets: freezed == presets ? _self.presets : presets // ignore: cast_nullable_to_non_nullable
as List<Preset>?,presetsIds: freezed == presetsIds ? _self.presetsIds : presetsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,references: freezed == references ? _self.references : references // ignore: cast_nullable_to_non_nullable
as List<Reference>?,referencesIds: freezed == referencesIds ? _self.referencesIds : referencesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,checkpoints: freezed == checkpoints ? _self.checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<Checkpoint>?,checkpointsIds: freezed == checkpointsIds ? _self.checkpointsIds : checkpointsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,careProtocols: freezed == careProtocols ? _self.careProtocols : careProtocols // ignore: cast_nullable_to_non_nullable
as List<CareProtocol>?,careProtocolsIds: freezed == careProtocolsIds ? _self.careProtocolsIds : careProtocolsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,inboundServices: freezed == inboundServices ? _self.inboundServices : inboundServices // ignore: cast_nullable_to_non_nullable
as List<InboundService>?,inboundServicesIds: freezed == inboundServicesIds ? _self.inboundServicesIds : inboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,functions: freezed == functions ? _self.functions : functions // ignore: cast_nullable_to_non_nullable
as List<LayrzFunction>?,functionsIds: freezed == functionsIds ? _self.functionsIds : functionsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,conciergeForms: freezed == conciergeForms ? _self.conciergeForms : conciergeForms // ignore: cast_nullable_to_non_nullable
as List<ConciergeForm>?,conciergeFormsIds: freezed == conciergeFormsIds ? _self.conciergeFormsIds : conciergeFormsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,reportTemplates: freezed == reportTemplates ? _self.reportTemplates : reportTemplates // ignore: cast_nullable_to_non_nullable
as List<ReportTemplate>?,reportTemplatesIds: freezed == reportTemplatesIds ? _self.reportTemplatesIds : reportTemplatesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,charts: freezed == charts ? _self.charts : charts // ignore: cast_nullable_to_non_nullable
as List<LayrzChart>?,chartsIds: freezed == chartsIds ? _self.chartsIds : chartsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,workspaces: freezed == workspaces ? _self.workspaces : workspaces // ignore: cast_nullable_to_non_nullable
as List<Workspace>?,workspacesIds: freezed == workspacesIds ? _self.workspacesIds : workspacesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,visionProfiles: freezed == visionProfiles ? _self.visionProfiles : visionProfiles // ignore: cast_nullable_to_non_nullable
as List<VisionProfile>?,visionProfilesIds: freezed == visionProfilesIds ? _self.visionProfilesIds : visionProfilesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mappitRoutes: freezed == mappitRoutes ? _self.mappitRoutes : mappitRoutes // ignore: cast_nullable_to_non_nullable
as List<MappitRoute>?,mappitRoutesIds: freezed == mappitRoutesIds ? _self.mappitRoutesIds : mappitRoutesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,exchangeServices: freezed == exchangeServices ? _self.exchangeServices : exchangeServices // ignore: cast_nullable_to_non_nullable
as List<ExchangeService>?,exchangeServicesIds: freezed == exchangeServicesIds ? _self.exchangeServicesIds : exchangeServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as User?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,sensorsIds: freezed == sensorsIds ? _self.sensorsIds : sensorsIds // ignore: cast_nullable_to_non_nullable
as List<String>?,sensors: freezed == sensors ? _self.sensors : sensors // ignore: cast_nullable_to_non_nullable
as List<Sensor>?,
  ));
}

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarCopyWith<$Res>? get dynamicIcon {
    if (_self.dynamicIcon == null) {
    return null;
  }

  return $AvatarCopyWith<$Res>(_self.dynamicIcon!, (value) {
    return _then(_self.copyWith(dynamicIcon: value));
  });
}/// Create a copy of Tag
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

// dart format on
