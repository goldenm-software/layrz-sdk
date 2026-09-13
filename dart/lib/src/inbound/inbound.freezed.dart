// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InboundProtocol {

/// The protocol ID
 String get id;/// The name of the protocol
 String get name;/// Indicates the color assigned to the protocol
@ColorConverter() Color get color;/// Indicates if the protocol is enabled and available for use, or disabled and not available for use.
 bool get isEnabled;/// Indicates the operation mode of the protocol.
@JsonKey(unknownEnumValue: OperationMode.unknown) OperationMode get operationMode;/// [host] is the host or IP of the protocol. May or may not be provided depending of the protocol
 String? get host;/// [port] is the port of the protocol. May or may not be provided depending of the protocol
///
/// Sometimes, this field marks 0 or null, when this happens, the port is not required to connect to the protocol.
 int? get port;/// [mqttTopic] is the host or IP of the MQTT protocol. May or may not be provided depending of
/// the protocol
 String? get mqttTopic;/// Indicates if the protocol has support for commands sent via the protocol itself.
 bool? get hasNativeCommands;/// Indicates if the protocol has support for commands sent via SMS gateway.
 bool? get hasSmsCommands;/// Indicates if the protocol has support for command ACK, only valid for [hasNativeCommands] = true
 bool? get hasCommandsResult;/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates if the protocol is from Flespi or not
 bool? get isFlespi;/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates the Flespi Channel ID.
 int? get channelId;/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates the ID of the protocol in Flespi.
 String? get flespiId;/// Indicates the structure or required fields for the protocol use.
 List<CredentialField>? get requiredFields;/// Indicates if the devices only can be created through import
 bool? get isImported;/// Indicates the list of categories assigned to the protocol
 List<String>? get categoriesIds;/// Indicates if the protocol has support for Firmware Over The Air (FOTA)
 bool? get canFota;/// Indicates the list of models linked to the protocol
 List<Model>? get models;/// Indicates if the protocol has support for ACK through the protocol itself.
/// [hasAck] is the [bool] value that indicates if the protocol has support for ACK.
/// and [ackTopicFormat] is the [String] value that indicates the format of the topic to send the ACK.
/// Currently only works for Layrz Link protocol.
 bool? get hasAck;/// [ackTopicFormat] is the format of the topic to send the ACK.
 String? get ackTopicFormat;/// [dynamicIcon] is the icon of the inbound protocol.
/// This is the new schema of the icon
 Avatar? get dynamicIcon;/// [cycleId] is the ID of the cycle that the protocol belongs to.
 String? get cycleId;/// [cycle] is the cycle that the protocol belongs to.
 SimulationCycle? get cycle;/// [hasModbus] is the [bool] value that indicates if the protocol has support for Modbus.
 bool? get hasModbus;/// [modbusPorts] is the list of Modbus ports that the protocol has.
 List<String> get modbusPorts;/// [usage] is the usage of the protocol. This field shuld be only used to show the popularity of the protocol.
/// For marketing purposes.
 int? get usage;/// [requiresFlespiToken] indicates if the protocol requires a Flespi token to work.
 bool? get requiresFlespiToken;/// [flespiAcl] refers to the ACL for the token generation.
 List<FlespiAcl>? get flespiAcl;/// [webhookStructure] defines the specific methods required to handle a complete webhook operation.
 WebhookStructure? get webhookStructure;/// [requiresExternalAccount] indicates if the protocol requires an external account to work.
 bool get requiresExternalAccount;/// [requiresStructure] indicates if the protocol requires a structure to work.
 bool get requiresStructure;/// [commandsStructure] is the structure of the commands for the protocol.
 List<CommandDefinition> get commandsStructure;/// [configStructure] is the structure of the configuration for the protocol.
 List<ConfigGrouping> get configStructure;/// [confiotCapable] is the boolean that indicates if the protocol is capable of using the Confiot platform.
 bool get confiotCapable;/// [peripheralIdentifier] is the identifier of the peripheral device.
 String? get peripheralIdentifier;/// [peripheralParserSpec] is the parser specification for the peripheral device.
 Map<String, dynamic>? get peripheralParserSpec;
/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundProtocolCopyWith<InboundProtocol> get copyWith => _$InboundProtocolCopyWithImpl<InboundProtocol>(this as InboundProtocol, _$identity);

  /// Serializes this InboundProtocol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboundProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.operationMode, operationMode) || other.operationMode == operationMode)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.mqttTopic, mqttTopic) || other.mqttTopic == mqttTopic)&&(identical(other.hasNativeCommands, hasNativeCommands) || other.hasNativeCommands == hasNativeCommands)&&(identical(other.hasSmsCommands, hasSmsCommands) || other.hasSmsCommands == hasSmsCommands)&&(identical(other.hasCommandsResult, hasCommandsResult) || other.hasCommandsResult == hasCommandsResult)&&(identical(other.isFlespi, isFlespi) || other.isFlespi == isFlespi)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.flespiId, flespiId) || other.flespiId == flespiId)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.isImported, isImported) || other.isImported == isImported)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.canFota, canFota) || other.canFota == canFota)&&const DeepCollectionEquality().equals(other.models, models)&&(identical(other.hasAck, hasAck) || other.hasAck == hasAck)&&(identical(other.ackTopicFormat, ackTopicFormat) || other.ackTopicFormat == ackTopicFormat)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&(identical(other.cycleId, cycleId) || other.cycleId == cycleId)&&(identical(other.cycle, cycle) || other.cycle == cycle)&&(identical(other.hasModbus, hasModbus) || other.hasModbus == hasModbus)&&const DeepCollectionEquality().equals(other.modbusPorts, modbusPorts)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.requiresFlespiToken, requiresFlespiToken) || other.requiresFlespiToken == requiresFlespiToken)&&const DeepCollectionEquality().equals(other.flespiAcl, flespiAcl)&&(identical(other.webhookStructure, webhookStructure) || other.webhookStructure == webhookStructure)&&(identical(other.requiresExternalAccount, requiresExternalAccount) || other.requiresExternalAccount == requiresExternalAccount)&&(identical(other.requiresStructure, requiresStructure) || other.requiresStructure == requiresStructure)&&const DeepCollectionEquality().equals(other.commandsStructure, commandsStructure)&&const DeepCollectionEquality().equals(other.configStructure, configStructure)&&(identical(other.confiotCapable, confiotCapable) || other.confiotCapable == confiotCapable)&&(identical(other.peripheralIdentifier, peripheralIdentifier) || other.peripheralIdentifier == peripheralIdentifier)&&const DeepCollectionEquality().equals(other.peripheralParserSpec, peripheralParserSpec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,color,isEnabled,operationMode,host,port,mqttTopic,hasNativeCommands,hasSmsCommands,hasCommandsResult,isFlespi,channelId,flespiId,const DeepCollectionEquality().hash(requiredFields),isImported,const DeepCollectionEquality().hash(categoriesIds),canFota,const DeepCollectionEquality().hash(models),hasAck,ackTopicFormat,dynamicIcon,cycleId,cycle,hasModbus,const DeepCollectionEquality().hash(modbusPorts),usage,requiresFlespiToken,const DeepCollectionEquality().hash(flespiAcl),webhookStructure,requiresExternalAccount,requiresStructure,const DeepCollectionEquality().hash(commandsStructure),const DeepCollectionEquality().hash(configStructure),confiotCapable,peripheralIdentifier,const DeepCollectionEquality().hash(peripheralParserSpec)]);

@override
String toString() {
  return 'InboundProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, operationMode: $operationMode, host: $host, port: $port, mqttTopic: $mqttTopic, hasNativeCommands: $hasNativeCommands, hasSmsCommands: $hasSmsCommands, hasCommandsResult: $hasCommandsResult, isFlespi: $isFlespi, channelId: $channelId, flespiId: $flespiId, requiredFields: $requiredFields, isImported: $isImported, categoriesIds: $categoriesIds, canFota: $canFota, models: $models, hasAck: $hasAck, ackTopicFormat: $ackTopicFormat, dynamicIcon: $dynamicIcon, cycleId: $cycleId, cycle: $cycle, hasModbus: $hasModbus, modbusPorts: $modbusPorts, usage: $usage, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, webhookStructure: $webhookStructure, requiresExternalAccount: $requiresExternalAccount, requiresStructure: $requiresStructure, commandsStructure: $commandsStructure, configStructure: $configStructure, confiotCapable: $confiotCapable, peripheralIdentifier: $peripheralIdentifier, peripheralParserSpec: $peripheralParserSpec)';
}


}

/// @nodoc
abstract mixin class $InboundProtocolCopyWith<$Res>  {
  factory $InboundProtocolCopyWith(InboundProtocol value, $Res Function(InboundProtocol) _then) = _$InboundProtocolCopyWithImpl;
@useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled,@JsonKey(unknownEnumValue: OperationMode.unknown) OperationMode operationMode, String? host, int? port, String? mqttTopic, bool? hasNativeCommands, bool? hasSmsCommands, bool? hasCommandsResult, bool? isFlespi, int? channelId, String? flespiId, List<CredentialField>? requiredFields, bool? isImported, List<String>? categoriesIds, bool? canFota, List<Model>? models, bool? hasAck, String? ackTopicFormat, Avatar? dynamicIcon, String? cycleId, SimulationCycle? cycle, bool? hasModbus, List<String> modbusPorts, int? usage, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, WebhookStructure? webhookStructure, bool requiresExternalAccount, bool requiresStructure, List<CommandDefinition> commandsStructure, List<ConfigGrouping> configStructure, bool confiotCapable, String? peripheralIdentifier, Map<String, dynamic>? peripheralParserSpec
});


$AvatarCopyWith<$Res>? get dynamicIcon;$SimulationCycleCopyWith<$Res>? get cycle;$WebhookStructureCopyWith<$Res>? get webhookStructure;

}
/// @nodoc
class _$InboundProtocolCopyWithImpl<$Res>
    implements $InboundProtocolCopyWith<$Res> {
  _$InboundProtocolCopyWithImpl(this._self, this._then);

  final InboundProtocol _self;
  final $Res Function(InboundProtocol) _then;

/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? operationMode = null,Object? host = freezed,Object? port = freezed,Object? mqttTopic = freezed,Object? hasNativeCommands = freezed,Object? hasSmsCommands = freezed,Object? hasCommandsResult = freezed,Object? isFlespi = freezed,Object? channelId = freezed,Object? flespiId = freezed,Object? requiredFields = freezed,Object? isImported = freezed,Object? categoriesIds = freezed,Object? canFota = freezed,Object? models = freezed,Object? hasAck = freezed,Object? ackTopicFormat = freezed,Object? dynamicIcon = freezed,Object? cycleId = freezed,Object? cycle = freezed,Object? hasModbus = freezed,Object? modbusPorts = null,Object? usage = freezed,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? webhookStructure = freezed,Object? requiresExternalAccount = null,Object? requiresStructure = null,Object? commandsStructure = null,Object? configStructure = null,Object? confiotCapable = null,Object? peripheralIdentifier = freezed,Object? peripheralParserSpec = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,operationMode: null == operationMode ? _self.operationMode : operationMode // ignore: cast_nullable_to_non_nullable
as OperationMode,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,mqttTopic: freezed == mqttTopic ? _self.mqttTopic : mqttTopic // ignore: cast_nullable_to_non_nullable
as String?,hasNativeCommands: freezed == hasNativeCommands ? _self.hasNativeCommands : hasNativeCommands // ignore: cast_nullable_to_non_nullable
as bool?,hasSmsCommands: freezed == hasSmsCommands ? _self.hasSmsCommands : hasSmsCommands // ignore: cast_nullable_to_non_nullable
as bool?,hasCommandsResult: freezed == hasCommandsResult ? _self.hasCommandsResult : hasCommandsResult // ignore: cast_nullable_to_non_nullable
as bool?,isFlespi: freezed == isFlespi ? _self.isFlespi : isFlespi // ignore: cast_nullable_to_non_nullable
as bool?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as int?,flespiId: freezed == flespiId ? _self.flespiId : flespiId // ignore: cast_nullable_to_non_nullable
as String?,requiredFields: freezed == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>?,isImported: freezed == isImported ? _self.isImported : isImported // ignore: cast_nullable_to_non_nullable
as bool?,categoriesIds: freezed == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,canFota: freezed == canFota ? _self.canFota : canFota // ignore: cast_nullable_to_non_nullable
as bool?,models: freezed == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<Model>?,hasAck: freezed == hasAck ? _self.hasAck : hasAck // ignore: cast_nullable_to_non_nullable
as bool?,ackTopicFormat: freezed == ackTopicFormat ? _self.ackTopicFormat : ackTopicFormat // ignore: cast_nullable_to_non_nullable
as String?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,cycleId: freezed == cycleId ? _self.cycleId : cycleId // ignore: cast_nullable_to_non_nullable
as String?,cycle: freezed == cycle ? _self.cycle : cycle // ignore: cast_nullable_to_non_nullable
as SimulationCycle?,hasModbus: freezed == hasModbus ? _self.hasModbus : hasModbus // ignore: cast_nullable_to_non_nullable
as bool?,modbusPorts: null == modbusPorts ? _self.modbusPorts : modbusPorts // ignore: cast_nullable_to_non_nullable
as List<String>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,webhookStructure: freezed == webhookStructure ? _self.webhookStructure : webhookStructure // ignore: cast_nullable_to_non_nullable
as WebhookStructure?,requiresExternalAccount: null == requiresExternalAccount ? _self.requiresExternalAccount : requiresExternalAccount // ignore: cast_nullable_to_non_nullable
as bool,requiresStructure: null == requiresStructure ? _self.requiresStructure : requiresStructure // ignore: cast_nullable_to_non_nullable
as bool,commandsStructure: null == commandsStructure ? _self.commandsStructure : commandsStructure // ignore: cast_nullable_to_non_nullable
as List<CommandDefinition>,configStructure: null == configStructure ? _self.configStructure : configStructure // ignore: cast_nullable_to_non_nullable
as List<ConfigGrouping>,confiotCapable: null == confiotCapable ? _self.confiotCapable : confiotCapable // ignore: cast_nullable_to_non_nullable
as bool,peripheralIdentifier: freezed == peripheralIdentifier ? _self.peripheralIdentifier : peripheralIdentifier // ignore: cast_nullable_to_non_nullable
as String?,peripheralParserSpec: freezed == peripheralParserSpec ? _self.peripheralParserSpec : peripheralParserSpec // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of InboundProtocol
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
}/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimulationCycleCopyWith<$Res>? get cycle {
    if (_self.cycle == null) {
    return null;
  }

  return $SimulationCycleCopyWith<$Res>(_self.cycle!, (value) {
    return _then(_self.copyWith(cycle: value));
  });
}/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookStructureCopyWith<$Res>? get webhookStructure {
    if (_self.webhookStructure == null) {
    return null;
  }

  return $WebhookStructureCopyWith<$Res>(_self.webhookStructure!, (value) {
    return _then(_self.copyWith(webhookStructure: value));
  });
}
}


/// Adds pattern-matching-related methods to [InboundProtocol].
extension InboundProtocolPatterns on InboundProtocol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundProtocol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundProtocol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundProtocol value)  $default,){
final _that = this;
switch (_that) {
case _InboundProtocol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundProtocol value)?  $default,){
final _that = this;
switch (_that) {
case _InboundProtocol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled, @JsonKey(unknownEnumValue: OperationMode.unknown)  OperationMode operationMode,  String? host,  int? port,  String? mqttTopic,  bool? hasNativeCommands,  bool? hasSmsCommands,  bool? hasCommandsResult,  bool? isFlespi,  int? channelId,  String? flespiId,  List<CredentialField>? requiredFields,  bool? isImported,  List<String>? categoriesIds,  bool? canFota,  List<Model>? models,  bool? hasAck,  String? ackTopicFormat,  Avatar? dynamicIcon,  String? cycleId,  SimulationCycle? cycle,  bool? hasModbus,  List<String> modbusPorts,  int? usage,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  WebhookStructure? webhookStructure,  bool requiresExternalAccount,  bool requiresStructure,  List<CommandDefinition> commandsStructure,  List<ConfigGrouping> configStructure,  bool confiotCapable,  String? peripheralIdentifier,  Map<String, dynamic>? peripheralParserSpec)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.operationMode,_that.host,_that.port,_that.mqttTopic,_that.hasNativeCommands,_that.hasSmsCommands,_that.hasCommandsResult,_that.isFlespi,_that.channelId,_that.flespiId,_that.requiredFields,_that.isImported,_that.categoriesIds,_that.canFota,_that.models,_that.hasAck,_that.ackTopicFormat,_that.dynamicIcon,_that.cycleId,_that.cycle,_that.hasModbus,_that.modbusPorts,_that.usage,_that.requiresFlespiToken,_that.flespiAcl,_that.webhookStructure,_that.requiresExternalAccount,_that.requiresStructure,_that.commandsStructure,_that.configStructure,_that.confiotCapable,_that.peripheralIdentifier,_that.peripheralParserSpec);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled, @JsonKey(unknownEnumValue: OperationMode.unknown)  OperationMode operationMode,  String? host,  int? port,  String? mqttTopic,  bool? hasNativeCommands,  bool? hasSmsCommands,  bool? hasCommandsResult,  bool? isFlespi,  int? channelId,  String? flespiId,  List<CredentialField>? requiredFields,  bool? isImported,  List<String>? categoriesIds,  bool? canFota,  List<Model>? models,  bool? hasAck,  String? ackTopicFormat,  Avatar? dynamicIcon,  String? cycleId,  SimulationCycle? cycle,  bool? hasModbus,  List<String> modbusPorts,  int? usage,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  WebhookStructure? webhookStructure,  bool requiresExternalAccount,  bool requiresStructure,  List<CommandDefinition> commandsStructure,  List<ConfigGrouping> configStructure,  bool confiotCapable,  String? peripheralIdentifier,  Map<String, dynamic>? peripheralParserSpec)  $default,) {final _that = this;
switch (_that) {
case _InboundProtocol():
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.operationMode,_that.host,_that.port,_that.mqttTopic,_that.hasNativeCommands,_that.hasSmsCommands,_that.hasCommandsResult,_that.isFlespi,_that.channelId,_that.flespiId,_that.requiredFields,_that.isImported,_that.categoriesIds,_that.canFota,_that.models,_that.hasAck,_that.ackTopicFormat,_that.dynamicIcon,_that.cycleId,_that.cycle,_that.hasModbus,_that.modbusPorts,_that.usage,_that.requiresFlespiToken,_that.flespiAcl,_that.webhookStructure,_that.requiresExternalAccount,_that.requiresStructure,_that.commandsStructure,_that.configStructure,_that.confiotCapable,_that.peripheralIdentifier,_that.peripheralParserSpec);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @ColorConverter()  Color color,  bool isEnabled, @JsonKey(unknownEnumValue: OperationMode.unknown)  OperationMode operationMode,  String? host,  int? port,  String? mqttTopic,  bool? hasNativeCommands,  bool? hasSmsCommands,  bool? hasCommandsResult,  bool? isFlespi,  int? channelId,  String? flespiId,  List<CredentialField>? requiredFields,  bool? isImported,  List<String>? categoriesIds,  bool? canFota,  List<Model>? models,  bool? hasAck,  String? ackTopicFormat,  Avatar? dynamicIcon,  String? cycleId,  SimulationCycle? cycle,  bool? hasModbus,  List<String> modbusPorts,  int? usage,  bool? requiresFlespiToken,  List<FlespiAcl>? flespiAcl,  WebhookStructure? webhookStructure,  bool requiresExternalAccount,  bool requiresStructure,  List<CommandDefinition> commandsStructure,  List<ConfigGrouping> configStructure,  bool confiotCapable,  String? peripheralIdentifier,  Map<String, dynamic>? peripheralParserSpec)?  $default,) {final _that = this;
switch (_that) {
case _InboundProtocol() when $default != null:
return $default(_that.id,_that.name,_that.color,_that.isEnabled,_that.operationMode,_that.host,_that.port,_that.mqttTopic,_that.hasNativeCommands,_that.hasSmsCommands,_that.hasCommandsResult,_that.isFlespi,_that.channelId,_that.flespiId,_that.requiredFields,_that.isImported,_that.categoriesIds,_that.canFota,_that.models,_that.hasAck,_that.ackTopicFormat,_that.dynamicIcon,_that.cycleId,_that.cycle,_that.hasModbus,_that.modbusPorts,_that.usage,_that.requiresFlespiToken,_that.flespiAcl,_that.webhookStructure,_that.requiresExternalAccount,_that.requiresStructure,_that.commandsStructure,_that.configStructure,_that.confiotCapable,_that.peripheralIdentifier,_that.peripheralParserSpec);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboundProtocol extends InboundProtocol {
  const _InboundProtocol({required this.id, required this.name, @ColorConverter() required this.color, required this.isEnabled, @JsonKey(unknownEnumValue: OperationMode.unknown) required this.operationMode, this.host, this.port, this.mqttTopic, this.hasNativeCommands, this.hasSmsCommands, this.hasCommandsResult, this.isFlespi, this.channelId, this.flespiId, this.requiredFields, this.isImported, this.categoriesIds, this.canFota, this.models, this.hasAck, this.ackTopicFormat, this.dynamicIcon, this.cycleId, this.cycle, this.hasModbus, this.modbusPorts = const [], this.usage, this.requiresFlespiToken, this.flespiAcl, this.webhookStructure, this.requiresExternalAccount = false, this.requiresStructure = false, this.commandsStructure = const [], this.configStructure = const [], this.confiotCapable = false, this.peripheralIdentifier, this.peripheralParserSpec}): super._();
  factory _InboundProtocol.fromJson(Map<String, dynamic> json) => _$InboundProtocolFromJson(json);

/// The protocol ID
@override final  String id;
/// The name of the protocol
@override final  String name;
/// Indicates the color assigned to the protocol
@override@ColorConverter() final  Color color;
/// Indicates if the protocol is enabled and available for use, or disabled and not available for use.
@override final  bool isEnabled;
/// Indicates the operation mode of the protocol.
@override@JsonKey(unknownEnumValue: OperationMode.unknown) final  OperationMode operationMode;
/// [host] is the host or IP of the protocol. May or may not be provided depending of the protocol
@override final  String? host;
/// [port] is the port of the protocol. May or may not be provided depending of the protocol
///
/// Sometimes, this field marks 0 or null, when this happens, the port is not required to connect to the protocol.
@override final  int? port;
/// [mqttTopic] is the host or IP of the MQTT protocol. May or may not be provided depending of
/// the protocol
@override final  String? mqttTopic;
/// Indicates if the protocol has support for commands sent via the protocol itself.
@override final  bool? hasNativeCommands;
/// Indicates if the protocol has support for commands sent via SMS gateway.
@override final  bool? hasSmsCommands;
/// Indicates if the protocol has support for command ACK, only valid for [hasNativeCommands] = true
@override final  bool? hasCommandsResult;
/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates if the protocol is from Flespi or not
@override final  bool? isFlespi;
/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates the Flespi Channel ID.
@override final  int? channelId;
/// [isFlespi], [channelId] and [flespiId] are the fields for Flespi protocols.
/// Indicates the ID of the protocol in Flespi.
@override final  String? flespiId;
/// Indicates the structure or required fields for the protocol use.
@override final  List<CredentialField>? requiredFields;
/// Indicates if the devices only can be created through import
@override final  bool? isImported;
/// Indicates the list of categories assigned to the protocol
@override final  List<String>? categoriesIds;
/// Indicates if the protocol has support for Firmware Over The Air (FOTA)
@override final  bool? canFota;
/// Indicates the list of models linked to the protocol
@override final  List<Model>? models;
/// Indicates if the protocol has support for ACK through the protocol itself.
/// [hasAck] is the [bool] value that indicates if the protocol has support for ACK.
/// and [ackTopicFormat] is the [String] value that indicates the format of the topic to send the ACK.
/// Currently only works for Layrz Link protocol.
@override final  bool? hasAck;
/// [ackTopicFormat] is the format of the topic to send the ACK.
@override final  String? ackTopicFormat;
/// [dynamicIcon] is the icon of the inbound protocol.
/// This is the new schema of the icon
@override final  Avatar? dynamicIcon;
/// [cycleId] is the ID of the cycle that the protocol belongs to.
@override final  String? cycleId;
/// [cycle] is the cycle that the protocol belongs to.
@override final  SimulationCycle? cycle;
/// [hasModbus] is the [bool] value that indicates if the protocol has support for Modbus.
@override final  bool? hasModbus;
/// [modbusPorts] is the list of Modbus ports that the protocol has.
@override@JsonKey() final  List<String> modbusPorts;
/// [usage] is the usage of the protocol. This field shuld be only used to show the popularity of the protocol.
/// For marketing purposes.
@override final  int? usage;
/// [requiresFlespiToken] indicates if the protocol requires a Flespi token to work.
@override final  bool? requiresFlespiToken;
/// [flespiAcl] refers to the ACL for the token generation.
@override final  List<FlespiAcl>? flespiAcl;
/// [webhookStructure] defines the specific methods required to handle a complete webhook operation.
@override final  WebhookStructure? webhookStructure;
/// [requiresExternalAccount] indicates if the protocol requires an external account to work.
@override@JsonKey() final  bool requiresExternalAccount;
/// [requiresStructure] indicates if the protocol requires a structure to work.
@override@JsonKey() final  bool requiresStructure;
/// [commandsStructure] is the structure of the commands for the protocol.
@override@JsonKey() final  List<CommandDefinition> commandsStructure;
/// [configStructure] is the structure of the configuration for the protocol.
@override@JsonKey() final  List<ConfigGrouping> configStructure;
/// [confiotCapable] is the boolean that indicates if the protocol is capable of using the Confiot platform.
@override@JsonKey() final  bool confiotCapable;
/// [peripheralIdentifier] is the identifier of the peripheral device.
@override final  String? peripheralIdentifier;
/// [peripheralParserSpec] is the parser specification for the peripheral device.
@override final  Map<String, dynamic>? peripheralParserSpec;

/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundProtocolCopyWith<_InboundProtocol> get copyWith => __$InboundProtocolCopyWithImpl<_InboundProtocol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboundProtocolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboundProtocol&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.operationMode, operationMode) || other.operationMode == operationMode)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.mqttTopic, mqttTopic) || other.mqttTopic == mqttTopic)&&(identical(other.hasNativeCommands, hasNativeCommands) || other.hasNativeCommands == hasNativeCommands)&&(identical(other.hasSmsCommands, hasSmsCommands) || other.hasSmsCommands == hasSmsCommands)&&(identical(other.hasCommandsResult, hasCommandsResult) || other.hasCommandsResult == hasCommandsResult)&&(identical(other.isFlespi, isFlespi) || other.isFlespi == isFlespi)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.flespiId, flespiId) || other.flespiId == flespiId)&&const DeepCollectionEquality().equals(other.requiredFields, requiredFields)&&(identical(other.isImported, isImported) || other.isImported == isImported)&&const DeepCollectionEquality().equals(other.categoriesIds, categoriesIds)&&(identical(other.canFota, canFota) || other.canFota == canFota)&&const DeepCollectionEquality().equals(other.models, models)&&(identical(other.hasAck, hasAck) || other.hasAck == hasAck)&&(identical(other.ackTopicFormat, ackTopicFormat) || other.ackTopicFormat == ackTopicFormat)&&(identical(other.dynamicIcon, dynamicIcon) || other.dynamicIcon == dynamicIcon)&&(identical(other.cycleId, cycleId) || other.cycleId == cycleId)&&(identical(other.cycle, cycle) || other.cycle == cycle)&&(identical(other.hasModbus, hasModbus) || other.hasModbus == hasModbus)&&const DeepCollectionEquality().equals(other.modbusPorts, modbusPorts)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.requiresFlespiToken, requiresFlespiToken) || other.requiresFlespiToken == requiresFlespiToken)&&const DeepCollectionEquality().equals(other.flespiAcl, flespiAcl)&&(identical(other.webhookStructure, webhookStructure) || other.webhookStructure == webhookStructure)&&(identical(other.requiresExternalAccount, requiresExternalAccount) || other.requiresExternalAccount == requiresExternalAccount)&&(identical(other.requiresStructure, requiresStructure) || other.requiresStructure == requiresStructure)&&const DeepCollectionEquality().equals(other.commandsStructure, commandsStructure)&&const DeepCollectionEquality().equals(other.configStructure, configStructure)&&(identical(other.confiotCapable, confiotCapable) || other.confiotCapable == confiotCapable)&&(identical(other.peripheralIdentifier, peripheralIdentifier) || other.peripheralIdentifier == peripheralIdentifier)&&const DeepCollectionEquality().equals(other.peripheralParserSpec, peripheralParserSpec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,color,isEnabled,operationMode,host,port,mqttTopic,hasNativeCommands,hasSmsCommands,hasCommandsResult,isFlespi,channelId,flespiId,const DeepCollectionEquality().hash(requiredFields),isImported,const DeepCollectionEquality().hash(categoriesIds),canFota,const DeepCollectionEquality().hash(models),hasAck,ackTopicFormat,dynamicIcon,cycleId,cycle,hasModbus,const DeepCollectionEquality().hash(modbusPorts),usage,requiresFlespiToken,const DeepCollectionEquality().hash(flespiAcl),webhookStructure,requiresExternalAccount,requiresStructure,const DeepCollectionEquality().hash(commandsStructure),const DeepCollectionEquality().hash(configStructure),confiotCapable,peripheralIdentifier,const DeepCollectionEquality().hash(peripheralParserSpec)]);

@override
String toString() {
  return 'InboundProtocol(id: $id, name: $name, color: $color, isEnabled: $isEnabled, operationMode: $operationMode, host: $host, port: $port, mqttTopic: $mqttTopic, hasNativeCommands: $hasNativeCommands, hasSmsCommands: $hasSmsCommands, hasCommandsResult: $hasCommandsResult, isFlespi: $isFlespi, channelId: $channelId, flespiId: $flespiId, requiredFields: $requiredFields, isImported: $isImported, categoriesIds: $categoriesIds, canFota: $canFota, models: $models, hasAck: $hasAck, ackTopicFormat: $ackTopicFormat, dynamicIcon: $dynamicIcon, cycleId: $cycleId, cycle: $cycle, hasModbus: $hasModbus, modbusPorts: $modbusPorts, usage: $usage, requiresFlespiToken: $requiresFlespiToken, flespiAcl: $flespiAcl, webhookStructure: $webhookStructure, requiresExternalAccount: $requiresExternalAccount, requiresStructure: $requiresStructure, commandsStructure: $commandsStructure, configStructure: $configStructure, confiotCapable: $confiotCapable, peripheralIdentifier: $peripheralIdentifier, peripheralParserSpec: $peripheralParserSpec)';
}


}

/// @nodoc
abstract mixin class _$InboundProtocolCopyWith<$Res> implements $InboundProtocolCopyWith<$Res> {
  factory _$InboundProtocolCopyWith(_InboundProtocol value, $Res Function(_InboundProtocol) _then) = __$InboundProtocolCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@ColorConverter() Color color, bool isEnabled,@JsonKey(unknownEnumValue: OperationMode.unknown) OperationMode operationMode, String? host, int? port, String? mqttTopic, bool? hasNativeCommands, bool? hasSmsCommands, bool? hasCommandsResult, bool? isFlespi, int? channelId, String? flespiId, List<CredentialField>? requiredFields, bool? isImported, List<String>? categoriesIds, bool? canFota, List<Model>? models, bool? hasAck, String? ackTopicFormat, Avatar? dynamicIcon, String? cycleId, SimulationCycle? cycle, bool? hasModbus, List<String> modbusPorts, int? usage, bool? requiresFlespiToken, List<FlespiAcl>? flespiAcl, WebhookStructure? webhookStructure, bool requiresExternalAccount, bool requiresStructure, List<CommandDefinition> commandsStructure, List<ConfigGrouping> configStructure, bool confiotCapable, String? peripheralIdentifier, Map<String, dynamic>? peripheralParserSpec
});


@override $AvatarCopyWith<$Res>? get dynamicIcon;@override $SimulationCycleCopyWith<$Res>? get cycle;@override $WebhookStructureCopyWith<$Res>? get webhookStructure;

}
/// @nodoc
class __$InboundProtocolCopyWithImpl<$Res>
    implements _$InboundProtocolCopyWith<$Res> {
  __$InboundProtocolCopyWithImpl(this._self, this._then);

  final _InboundProtocol _self;
  final $Res Function(_InboundProtocol) _then;

/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? color = null,Object? isEnabled = null,Object? operationMode = null,Object? host = freezed,Object? port = freezed,Object? mqttTopic = freezed,Object? hasNativeCommands = freezed,Object? hasSmsCommands = freezed,Object? hasCommandsResult = freezed,Object? isFlespi = freezed,Object? channelId = freezed,Object? flespiId = freezed,Object? requiredFields = freezed,Object? isImported = freezed,Object? categoriesIds = freezed,Object? canFota = freezed,Object? models = freezed,Object? hasAck = freezed,Object? ackTopicFormat = freezed,Object? dynamicIcon = freezed,Object? cycleId = freezed,Object? cycle = freezed,Object? hasModbus = freezed,Object? modbusPorts = null,Object? usage = freezed,Object? requiresFlespiToken = freezed,Object? flespiAcl = freezed,Object? webhookStructure = freezed,Object? requiresExternalAccount = null,Object? requiresStructure = null,Object? commandsStructure = null,Object? configStructure = null,Object? confiotCapable = null,Object? peripheralIdentifier = freezed,Object? peripheralParserSpec = freezed,}) {
  return _then(_InboundProtocol(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,operationMode: null == operationMode ? _self.operationMode : operationMode // ignore: cast_nullable_to_non_nullable
as OperationMode,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,mqttTopic: freezed == mqttTopic ? _self.mqttTopic : mqttTopic // ignore: cast_nullable_to_non_nullable
as String?,hasNativeCommands: freezed == hasNativeCommands ? _self.hasNativeCommands : hasNativeCommands // ignore: cast_nullable_to_non_nullable
as bool?,hasSmsCommands: freezed == hasSmsCommands ? _self.hasSmsCommands : hasSmsCommands // ignore: cast_nullable_to_non_nullable
as bool?,hasCommandsResult: freezed == hasCommandsResult ? _self.hasCommandsResult : hasCommandsResult // ignore: cast_nullable_to_non_nullable
as bool?,isFlespi: freezed == isFlespi ? _self.isFlespi : isFlespi // ignore: cast_nullable_to_non_nullable
as bool?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as int?,flespiId: freezed == flespiId ? _self.flespiId : flespiId // ignore: cast_nullable_to_non_nullable
as String?,requiredFields: freezed == requiredFields ? _self.requiredFields : requiredFields // ignore: cast_nullable_to_non_nullable
as List<CredentialField>?,isImported: freezed == isImported ? _self.isImported : isImported // ignore: cast_nullable_to_non_nullable
as bool?,categoriesIds: freezed == categoriesIds ? _self.categoriesIds : categoriesIds // ignore: cast_nullable_to_non_nullable
as List<String>?,canFota: freezed == canFota ? _self.canFota : canFota // ignore: cast_nullable_to_non_nullable
as bool?,models: freezed == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<Model>?,hasAck: freezed == hasAck ? _self.hasAck : hasAck // ignore: cast_nullable_to_non_nullable
as bool?,ackTopicFormat: freezed == ackTopicFormat ? _self.ackTopicFormat : ackTopicFormat // ignore: cast_nullable_to_non_nullable
as String?,dynamicIcon: freezed == dynamicIcon ? _self.dynamicIcon : dynamicIcon // ignore: cast_nullable_to_non_nullable
as Avatar?,cycleId: freezed == cycleId ? _self.cycleId : cycleId // ignore: cast_nullable_to_non_nullable
as String?,cycle: freezed == cycle ? _self.cycle : cycle // ignore: cast_nullable_to_non_nullable
as SimulationCycle?,hasModbus: freezed == hasModbus ? _self.hasModbus : hasModbus // ignore: cast_nullable_to_non_nullable
as bool?,modbusPorts: null == modbusPorts ? _self.modbusPorts : modbusPorts // ignore: cast_nullable_to_non_nullable
as List<String>,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as int?,requiresFlespiToken: freezed == requiresFlespiToken ? _self.requiresFlespiToken : requiresFlespiToken // ignore: cast_nullable_to_non_nullable
as bool?,flespiAcl: freezed == flespiAcl ? _self.flespiAcl : flespiAcl // ignore: cast_nullable_to_non_nullable
as List<FlespiAcl>?,webhookStructure: freezed == webhookStructure ? _self.webhookStructure : webhookStructure // ignore: cast_nullable_to_non_nullable
as WebhookStructure?,requiresExternalAccount: null == requiresExternalAccount ? _self.requiresExternalAccount : requiresExternalAccount // ignore: cast_nullable_to_non_nullable
as bool,requiresStructure: null == requiresStructure ? _self.requiresStructure : requiresStructure // ignore: cast_nullable_to_non_nullable
as bool,commandsStructure: null == commandsStructure ? _self.commandsStructure : commandsStructure // ignore: cast_nullable_to_non_nullable
as List<CommandDefinition>,configStructure: null == configStructure ? _self.configStructure : configStructure // ignore: cast_nullable_to_non_nullable
as List<ConfigGrouping>,confiotCapable: null == confiotCapable ? _self.confiotCapable : confiotCapable // ignore: cast_nullable_to_non_nullable
as bool,peripheralIdentifier: freezed == peripheralIdentifier ? _self.peripheralIdentifier : peripheralIdentifier // ignore: cast_nullable_to_non_nullable
as String?,peripheralParserSpec: freezed == peripheralParserSpec ? _self.peripheralParserSpec : peripheralParserSpec // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of InboundProtocol
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
}/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimulationCycleCopyWith<$Res>? get cycle {
    if (_self.cycle == null) {
    return null;
  }

  return $SimulationCycleCopyWith<$Res>(_self.cycle!, (value) {
    return _then(_self.copyWith(cycle: value));
  });
}/// Create a copy of InboundProtocol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebhookStructureCopyWith<$Res>? get webhookStructure {
    if (_self.webhookStructure == null) {
    return null;
  }

  return $WebhookStructureCopyWith<$Res>(_self.webhookStructure!, (value) {
    return _then(_self.copyWith(webhookStructure: value));
  });
}
}


/// @nodoc
mixin _$ConfigGrouping {

/// [name] is the name of the grouping.
/// This is the translation key.
 String get name;/// [kind] is the kind of the grouping.
@JsonKey(unknownEnumValue: ConfigKind.unknown) ConfigKind get kind;/// [description] is the fallback name of the grouping, when the translation is not available.
/// This is the translation key.
 String? get description;/// [setupCapable] is the flag that indicates if the grouping is capable of being set up.
 bool? get setupCapable;/// [items] is the list of items of the grouping.
 List<ConfigDefinition> get items;
/// Create a copy of ConfigGrouping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfigGroupingCopyWith<ConfigGrouping> get copyWith => _$ConfigGroupingCopyWithImpl<ConfigGrouping>(this as ConfigGrouping, _$identity);

  /// Serializes this ConfigGrouping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfigGrouping&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.description, description) || other.description == description)&&(identical(other.setupCapable, setupCapable) || other.setupCapable == setupCapable)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,kind,description,setupCapable,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ConfigGrouping(name: $name, kind: $kind, description: $description, setupCapable: $setupCapable, items: $items)';
}


}

/// @nodoc
abstract mixin class $ConfigGroupingCopyWith<$Res>  {
  factory $ConfigGroupingCopyWith(ConfigGrouping value, $Res Function(ConfigGrouping) _then) = _$ConfigGroupingCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(unknownEnumValue: ConfigKind.unknown) ConfigKind kind, String? description, bool? setupCapable, List<ConfigDefinition> items
});




}
/// @nodoc
class _$ConfigGroupingCopyWithImpl<$Res>
    implements $ConfigGroupingCopyWith<$Res> {
  _$ConfigGroupingCopyWithImpl(this._self, this._then);

  final ConfigGrouping _self;
  final $Res Function(ConfigGrouping) _then;

/// Create a copy of ConfigGrouping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? kind = null,Object? description = freezed,Object? setupCapable = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ConfigKind,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,setupCapable: freezed == setupCapable ? _self.setupCapable : setupCapable // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ConfigDefinition>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfigGrouping].
extension ConfigGroupingPatterns on ConfigGrouping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfigGrouping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfigGrouping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfigGrouping value)  $default,){
final _that = this;
switch (_that) {
case _ConfigGrouping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfigGrouping value)?  $default,){
final _that = this;
switch (_that) {
case _ConfigGrouping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(unknownEnumValue: ConfigKind.unknown)  ConfigKind kind,  String? description,  bool? setupCapable,  List<ConfigDefinition> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfigGrouping() when $default != null:
return $default(_that.name,_that.kind,_that.description,_that.setupCapable,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(unknownEnumValue: ConfigKind.unknown)  ConfigKind kind,  String? description,  bool? setupCapable,  List<ConfigDefinition> items)  $default,) {final _that = this;
switch (_that) {
case _ConfigGrouping():
return $default(_that.name,_that.kind,_that.description,_that.setupCapable,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(unknownEnumValue: ConfigKind.unknown)  ConfigKind kind,  String? description,  bool? setupCapable,  List<ConfigDefinition> items)?  $default,) {final _that = this;
switch (_that) {
case _ConfigGrouping() when $default != null:
return $default(_that.name,_that.kind,_that.description,_that.setupCapable,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfigGrouping implements ConfigGrouping {
  const _ConfigGrouping({required this.name, @JsonKey(unknownEnumValue: ConfigKind.unknown) required this.kind, this.description, this.setupCapable, this.items = const []});
  factory _ConfigGrouping.fromJson(Map<String, dynamic> json) => _$ConfigGroupingFromJson(json);

/// [name] is the name of the grouping.
/// This is the translation key.
@override final  String name;
/// [kind] is the kind of the grouping.
@override@JsonKey(unknownEnumValue: ConfigKind.unknown) final  ConfigKind kind;
/// [description] is the fallback name of the grouping, when the translation is not available.
/// This is the translation key.
@override final  String? description;
/// [setupCapable] is the flag that indicates if the grouping is capable of being set up.
@override final  bool? setupCapable;
/// [items] is the list of items of the grouping.
@override@JsonKey() final  List<ConfigDefinition> items;

/// Create a copy of ConfigGrouping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfigGroupingCopyWith<_ConfigGrouping> get copyWith => __$ConfigGroupingCopyWithImpl<_ConfigGrouping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfigGroupingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfigGrouping&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.description, description) || other.description == description)&&(identical(other.setupCapable, setupCapable) || other.setupCapable == setupCapable)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,kind,description,setupCapable,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ConfigGrouping(name: $name, kind: $kind, description: $description, setupCapable: $setupCapable, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ConfigGroupingCopyWith<$Res> implements $ConfigGroupingCopyWith<$Res> {
  factory _$ConfigGroupingCopyWith(_ConfigGrouping value, $Res Function(_ConfigGrouping) _then) = __$ConfigGroupingCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(unknownEnumValue: ConfigKind.unknown) ConfigKind kind, String? description, bool? setupCapable, List<ConfigDefinition> items
});




}
/// @nodoc
class __$ConfigGroupingCopyWithImpl<$Res>
    implements _$ConfigGroupingCopyWith<$Res> {
  __$ConfigGroupingCopyWithImpl(this._self, this._then);

  final _ConfigGrouping _self;
  final $Res Function(_ConfigGrouping) _then;

/// Create a copy of ConfigGrouping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? kind = null,Object? description = freezed,Object? setupCapable = freezed,Object? items = null,}) {
  return _then(_ConfigGrouping(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ConfigKind,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,setupCapable: freezed == setupCapable ? _self.setupCapable : setupCapable // ignore: cast_nullable_to_non_nullable
as bool?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ConfigDefinition>,
  ));
}


}


/// @nodoc
mixin _$ConfigDefinition {

/// [sources] is the list of sources that the command can be executed.
@JsonKey(unknownEnumValue: ConfigSource.unknown) List<ConfigSource>? get sources;/// [parameter] is the name of the parameter, this is also the translation key.
 String get parameter;/// [description] is the fallback name of the parameter, when the translation is not available.
 String? get description;/// [dataType] is the data type of the parameter.
@JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown) ConfigPayloadDataType? get dataType;/// [minValue] is the minimum value of the parameter.
/// Only for [ConfigPayloadDataType.integer] and [ConfigPayloadDataType.float]
 num? get minValue;/// [maxValue] is the maximum value of the parameter.
/// Only for [ConfigPayloadDataType.integer] and [ConfigPayloadDataType.float]
 num? get maxValue;/// [minLength] is the minimum length of the parameter.
/// Only for [ConfigPayloadDataType.string]
 int? get minLength;/// [maxLength] is the maximum length of the parameter.
/// Only for [ConfigPayloadDataType.string]
 int? get maxLength;/// [choices] is the list of choices of the parameter.
/// Only for [ConfigPayloadDataType.choice]
 List<String>? get choices;/// [regexPattern] is the regex pattern of the parameter.
@RegExpOrNullConverter() RegExp? get regexPattern;/// [setupCapable] is the flag that indicates if the parameter is capable of being set up.
 bool? get setupCapable;
/// Create a copy of ConfigDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfigDefinitionCopyWith<ConfigDefinition> get copyWith => _$ConfigDefinitionCopyWithImpl<ConfigDefinition>(this as ConfigDefinition, _$identity);

  /// Serializes this ConfigDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfigDefinition&&const DeepCollectionEquality().equals(other.sources, sources)&&(identical(other.parameter, parameter) || other.parameter == parameter)&&(identical(other.description, description) || other.description == description)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&(identical(other.setupCapable, setupCapable) || other.setupCapable == setupCapable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sources),parameter,description,dataType,minValue,maxValue,minLength,maxLength,const DeepCollectionEquality().hash(choices),regexPattern,setupCapable);

@override
String toString() {
  return 'ConfigDefinition(sources: $sources, parameter: $parameter, description: $description, dataType: $dataType, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, setupCapable: $setupCapable)';
}


}

/// @nodoc
abstract mixin class $ConfigDefinitionCopyWith<$Res>  {
  factory $ConfigDefinitionCopyWith(ConfigDefinition value, $Res Function(ConfigDefinition) _then) = _$ConfigDefinitionCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: ConfigSource.unknown) List<ConfigSource>? sources, String parameter, String? description,@JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown) ConfigPayloadDataType? dataType, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, bool? setupCapable
});




}
/// @nodoc
class _$ConfigDefinitionCopyWithImpl<$Res>
    implements $ConfigDefinitionCopyWith<$Res> {
  _$ConfigDefinitionCopyWithImpl(this._self, this._then);

  final ConfigDefinition _self;
  final $Res Function(ConfigDefinition) _then;

/// Create a copy of ConfigDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sources = freezed,Object? parameter = null,Object? description = freezed,Object? dataType = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? setupCapable = freezed,}) {
  return _then(_self.copyWith(
sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<ConfigSource>?,parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as ConfigPayloadDataType?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,setupCapable: freezed == setupCapable ? _self.setupCapable : setupCapable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfigDefinition].
extension ConfigDefinitionPatterns on ConfigDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfigDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfigDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfigDefinition value)  $default,){
final _that = this;
switch (_that) {
case _ConfigDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfigDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _ConfigDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ConfigSource.unknown)  List<ConfigSource>? sources,  String parameter,  String? description, @JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown)  ConfigPayloadDataType? dataType,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  bool? setupCapable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfigDefinition() when $default != null:
return $default(_that.sources,_that.parameter,_that.description,_that.dataType,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.setupCapable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: ConfigSource.unknown)  List<ConfigSource>? sources,  String parameter,  String? description, @JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown)  ConfigPayloadDataType? dataType,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  bool? setupCapable)  $default,) {final _that = this;
switch (_that) {
case _ConfigDefinition():
return $default(_that.sources,_that.parameter,_that.description,_that.dataType,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.setupCapable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: ConfigSource.unknown)  List<ConfigSource>? sources,  String parameter,  String? description, @JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown)  ConfigPayloadDataType? dataType,  num? minValue,  num? maxValue,  int? minLength,  int? maxLength,  List<String>? choices, @RegExpOrNullConverter()  RegExp? regexPattern,  bool? setupCapable)?  $default,) {final _that = this;
switch (_that) {
case _ConfigDefinition() when $default != null:
return $default(_that.sources,_that.parameter,_that.description,_that.dataType,_that.minValue,_that.maxValue,_that.minLength,_that.maxLength,_that.choices,_that.regexPattern,_that.setupCapable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfigDefinition implements ConfigDefinition {
  const _ConfigDefinition({@JsonKey(unknownEnumValue: ConfigSource.unknown) this.sources, required this.parameter, this.description, @JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown) this.dataType, this.minValue, this.maxValue, this.minLength, this.maxLength, this.choices, @RegExpOrNullConverter() this.regexPattern, this.setupCapable});
  factory _ConfigDefinition.fromJson(Map<String, dynamic> json) => _$ConfigDefinitionFromJson(json);

/// [sources] is the list of sources that the command can be executed.
@override@JsonKey(unknownEnumValue: ConfigSource.unknown) final  List<ConfigSource>? sources;
/// [parameter] is the name of the parameter, this is also the translation key.
@override final  String parameter;
/// [description] is the fallback name of the parameter, when the translation is not available.
@override final  String? description;
/// [dataType] is the data type of the parameter.
@override@JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown) final  ConfigPayloadDataType? dataType;
/// [minValue] is the minimum value of the parameter.
/// Only for [ConfigPayloadDataType.integer] and [ConfigPayloadDataType.float]
@override final  num? minValue;
/// [maxValue] is the maximum value of the parameter.
/// Only for [ConfigPayloadDataType.integer] and [ConfigPayloadDataType.float]
@override final  num? maxValue;
/// [minLength] is the minimum length of the parameter.
/// Only for [ConfigPayloadDataType.string]
@override final  int? minLength;
/// [maxLength] is the maximum length of the parameter.
/// Only for [ConfigPayloadDataType.string]
@override final  int? maxLength;
/// [choices] is the list of choices of the parameter.
/// Only for [ConfigPayloadDataType.choice]
@override final  List<String>? choices;
/// [regexPattern] is the regex pattern of the parameter.
@override@RegExpOrNullConverter() final  RegExp? regexPattern;
/// [setupCapable] is the flag that indicates if the parameter is capable of being set up.
@override final  bool? setupCapable;

/// Create a copy of ConfigDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfigDefinitionCopyWith<_ConfigDefinition> get copyWith => __$ConfigDefinitionCopyWithImpl<_ConfigDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfigDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfigDefinition&&const DeepCollectionEquality().equals(other.sources, sources)&&(identical(other.parameter, parameter) || other.parameter == parameter)&&(identical(other.description, description) || other.description == description)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&(identical(other.setupCapable, setupCapable) || other.setupCapable == setupCapable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sources),parameter,description,dataType,minValue,maxValue,minLength,maxLength,const DeepCollectionEquality().hash(choices),regexPattern,setupCapable);

@override
String toString() {
  return 'ConfigDefinition(sources: $sources, parameter: $parameter, description: $description, dataType: $dataType, minValue: $minValue, maxValue: $maxValue, minLength: $minLength, maxLength: $maxLength, choices: $choices, regexPattern: $regexPattern, setupCapable: $setupCapable)';
}


}

/// @nodoc
abstract mixin class _$ConfigDefinitionCopyWith<$Res> implements $ConfigDefinitionCopyWith<$Res> {
  factory _$ConfigDefinitionCopyWith(_ConfigDefinition value, $Res Function(_ConfigDefinition) _then) = __$ConfigDefinitionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: ConfigSource.unknown) List<ConfigSource>? sources, String parameter, String? description,@JsonKey(unknownEnumValue: ConfigPayloadDataType.unknown) ConfigPayloadDataType? dataType, num? minValue, num? maxValue, int? minLength, int? maxLength, List<String>? choices,@RegExpOrNullConverter() RegExp? regexPattern, bool? setupCapable
});




}
/// @nodoc
class __$ConfigDefinitionCopyWithImpl<$Res>
    implements _$ConfigDefinitionCopyWith<$Res> {
  __$ConfigDefinitionCopyWithImpl(this._self, this._then);

  final _ConfigDefinition _self;
  final $Res Function(_ConfigDefinition) _then;

/// Create a copy of ConfigDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sources = freezed,Object? parameter = null,Object? description = freezed,Object? dataType = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? choices = freezed,Object? regexPattern = freezed,Object? setupCapable = freezed,}) {
  return _then(_ConfigDefinition(
sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<ConfigSource>?,parameter: null == parameter ? _self.parameter : parameter // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dataType: freezed == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as ConfigPayloadDataType?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as num?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as num?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,choices: freezed == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<String>?,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as RegExp?,setupCapable: freezed == setupCapable ? _self.setupCapable : setupCapable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
