// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Operation {

/// The unique identifier of the operation.
 String get id;/// The name of the operation.
 String get name;/// The type of the operation.
@JsonKey(unknownEnumValue: OperationType.unknown) OperationType get operationType;/// The HTTP request type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? get requestType;/// The URL to perform the request against.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 String? get url;/// The headers to send in the HTTP request.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 List<HttpHeader>? get headers;/// The payload to send in the submission.
 String? get payload;/// The language identifier of the message. Used to define the default
/// language of the message.
 String? get languageId;/// The timezone of the message. Used to define the default timezone of
/// the message.
@Deprecated('Use `timezoneName` instead') Timezone? get timezone;/// The IANA name of the timezone.
 String get timezoneName;/// The date/time format to use for the operation.
///
/// This overrides the user's date/time format preference.
 String get dateTimeFormat;/// The reception email addresses to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 List<String>? get receptionEmails;/// The subject of the email.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 String? get emailSubject;/// The color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() Color? get color;/// The text color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() Color? get textColor;/// The receiver phone numbers to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
 List<PhoneNumber>? get destinationPhones;/// The notification type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? get notificationType;/// The identifier of the external account of the operation.
@JsonKey(name: 'accountId') String? get externalAccountId;/// The list of granted access entries of the operation.
 List<Access>? get access;/// The list of triggers (directly or indirectly) associated with the
/// operation.
 List<Trigger>? get triggers;/// Whether to use the asset contacts instead of the submission
/// contacts.
 bool? get useAssetContactsInstead;/// Whether to attach the image of the submission to the email.
 bool? get attachImage;/// The identifier of the email template of the operation.
 String? get emailTemplateId;/// The list of platforms where the operation should be received.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? get pushPlatforms;/// The title of the push notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
 String? get pushTitle;/// The sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect get soundEffect;/// The URI of the sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
 String? get soundEffectUri;/// The icon of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@IconOrNullConverter() MdiRemapIcon? get icon;/// The duration of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@DurationOrNullConverter() Duration? get duration;/// The content SID to use for [OperationType.sms] and
/// [OperationType.whatsappMessage].
 String? get layrzTemplate;/// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
/// its identifier. Set via mutation.
 String? get appId;
/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationCopyWith<Operation> get copyWith => _$OperationCopyWithImpl<Operation>(this as Operation, _$identity);

  /// Serializes this Operation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Operation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneName, timezoneName) || other.timezoneName == timezoneName)&&(identical(other.dateTimeFormat, dateTimeFormat) || other.dateTimeFormat == dateTimeFormat)&&const DeepCollectionEquality().equals(other.receptionEmails, receptionEmails)&&(identical(other.emailSubject, emailSubject) || other.emailSubject == emailSubject)&&(identical(other.color, color) || other.color == color)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&const DeepCollectionEquality().equals(other.destinationPhones, destinationPhones)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.externalAccountId, externalAccountId) || other.externalAccountId == externalAccountId)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&(identical(other.useAssetContactsInstead, useAssetContactsInstead) || other.useAssetContactsInstead == useAssetContactsInstead)&&(identical(other.attachImage, attachImage) || other.attachImage == attachImage)&&(identical(other.emailTemplateId, emailTemplateId) || other.emailTemplateId == emailTemplateId)&&const DeepCollectionEquality().equals(other.pushPlatforms, pushPlatforms)&&(identical(other.pushTitle, pushTitle) || other.pushTitle == pushTitle)&&(identical(other.soundEffect, soundEffect) || other.soundEffect == soundEffect)&&(identical(other.soundEffectUri, soundEffectUri) || other.soundEffectUri == soundEffectUri)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.layrzTemplate, layrzTemplate) || other.layrzTemplate == layrzTemplate)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,operationType,requestType,url,const DeepCollectionEquality().hash(headers),payload,languageId,timezone,timezoneName,dateTimeFormat,const DeepCollectionEquality().hash(receptionEmails),emailSubject,color,textColor,const DeepCollectionEquality().hash(destinationPhones),notificationType,externalAccountId,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(triggers),useAssetContactsInstead,attachImage,emailTemplateId,const DeepCollectionEquality().hash(pushPlatforms),pushTitle,soundEffect,soundEffectUri,icon,duration,layrzTemplate,appId]);

@override
String toString() {
  return 'Operation(id: $id, name: $name, operationType: $operationType, requestType: $requestType, url: $url, headers: $headers, payload: $payload, languageId: $languageId, timezone: $timezone, timezoneName: $timezoneName, dateTimeFormat: $dateTimeFormat, receptionEmails: $receptionEmails, emailSubject: $emailSubject, color: $color, textColor: $textColor, destinationPhones: $destinationPhones, notificationType: $notificationType, externalAccountId: $externalAccountId, access: $access, triggers: $triggers, useAssetContactsInstead: $useAssetContactsInstead, attachImage: $attachImage, emailTemplateId: $emailTemplateId, pushPlatforms: $pushPlatforms, pushTitle: $pushTitle, soundEffect: $soundEffect, soundEffectUri: $soundEffectUri, icon: $icon, duration: $duration, layrzTemplate: $layrzTemplate, appId: $appId)';
}


}

/// @nodoc
abstract mixin class $OperationCopyWith<$Res>  {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) _then) = _$OperationCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: OperationType.unknown) OperationType operationType,@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType, String? url, List<HttpHeader>? headers, String? payload, String? languageId,@Deprecated('Use `timezoneName` instead') Timezone? timezone, String timezoneName, String dateTimeFormat, List<String>? receptionEmails, String? emailSubject,@ColorOrNullConverter() Color? color,@ColorOrNullConverter() Color? textColor, List<PhoneNumber>? destinationPhones,@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType,@JsonKey(name: 'accountId') String? externalAccountId, List<Access>? access, List<Trigger>? triggers, bool? useAssetContactsInstead, bool? attachImage, String? emailTemplateId,@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms, String? pushTitle,@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect soundEffect, String? soundEffectUri,@IconOrNullConverter() MdiRemapIcon? icon,@DurationOrNullConverter() Duration? duration, String? layrzTemplate, String? appId
});


$TimezoneCopyWith<$Res>? get timezone;

}
/// @nodoc
class _$OperationCopyWithImpl<$Res>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._self, this._then);

  final Operation _self;
  final $Res Function(Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? operationType = null,Object? requestType = freezed,Object? url = freezed,Object? headers = freezed,Object? payload = freezed,Object? languageId = freezed,Object? timezone = freezed,Object? timezoneName = null,Object? dateTimeFormat = null,Object? receptionEmails = freezed,Object? emailSubject = freezed,Object? color = freezed,Object? textColor = freezed,Object? destinationPhones = freezed,Object? notificationType = freezed,Object? externalAccountId = freezed,Object? access = freezed,Object? triggers = freezed,Object? useAssetContactsInstead = freezed,Object? attachImage = freezed,Object? emailTemplateId = freezed,Object? pushPlatforms = freezed,Object? pushTitle = freezed,Object? soundEffect = null,Object? soundEffectUri = freezed,Object? icon = freezed,Object? duration = freezed,Object? layrzTemplate = freezed,Object? appId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as OperationType,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as HttpRequestType?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<HttpHeader>?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as Timezone?,timezoneName: null == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,receptionEmails: freezed == receptionEmails ? _self.receptionEmails : receptionEmails // ignore: cast_nullable_to_non_nullable
as List<String>?,emailSubject: freezed == emailSubject ? _self.emailSubject : emailSubject // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,destinationPhones: freezed == destinationPhones ? _self.destinationPhones : destinationPhones // ignore: cast_nullable_to_non_nullable
as List<PhoneNumber>?,notificationType: freezed == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as NotificationType?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,useAssetContactsInstead: freezed == useAssetContactsInstead ? _self.useAssetContactsInstead : useAssetContactsInstead // ignore: cast_nullable_to_non_nullable
as bool?,attachImage: freezed == attachImage ? _self.attachImage : attachImage // ignore: cast_nullable_to_non_nullable
as bool?,emailTemplateId: freezed == emailTemplateId ? _self.emailTemplateId : emailTemplateId // ignore: cast_nullable_to_non_nullable
as String?,pushPlatforms: freezed == pushPlatforms ? _self.pushPlatforms : pushPlatforms // ignore: cast_nullable_to_non_nullable
as List<AppPlatform>?,pushTitle: freezed == pushTitle ? _self.pushTitle : pushTitle // ignore: cast_nullable_to_non_nullable
as String?,soundEffect: null == soundEffect ? _self.soundEffect : soundEffect // ignore: cast_nullable_to_non_nullable
as SoundEffect,soundEffectUri: freezed == soundEffectUri ? _self.soundEffectUri : soundEffectUri // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,layrzTemplate: freezed == layrzTemplate ? _self.layrzTemplate : layrzTemplate // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimezoneCopyWith<$Res>? get timezone {
    if (_self.timezone == null) {
    return null;
  }

  return $TimezoneCopyWith<$Res>(_self.timezone!, (value) {
    return _then(_self.copyWith(timezone: value));
  });
}
}


/// Adds pattern-matching-related methods to [Operation].
extension OperationPatterns on Operation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Operation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Operation value)  $default,){
final _that = this;
switch (_that) {
case _Operation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Operation value)?  $default,){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeader>? headers,  String? payload,  String? languageId, @Deprecated('Use `timezoneName` instead')  Timezone? timezone,  String timezoneName,  String dateTimeFormat,  List<String>? receptionEmails,  String? emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumber>? destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType, @JsonKey(name: 'accountId')  String? externalAccountId,  List<Access>? access,  List<Trigger>? triggers,  bool? useAssetContactsInstead,  bool? attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationOrNullConverter()  Duration? duration,  String? layrzTemplate,  String? appId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezone,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.access,_that.triggers,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeader>? headers,  String? payload,  String? languageId, @Deprecated('Use `timezoneName` instead')  Timezone? timezone,  String timezoneName,  String dateTimeFormat,  List<String>? receptionEmails,  String? emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumber>? destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType, @JsonKey(name: 'accountId')  String? externalAccountId,  List<Access>? access,  List<Trigger>? triggers,  bool? useAssetContactsInstead,  bool? attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationOrNullConverter()  Duration? duration,  String? layrzTemplate,  String? appId)  $default,) {final _that = this;
switch (_that) {
case _Operation():
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezone,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.access,_that.triggers,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeader>? headers,  String? payload,  String? languageId, @Deprecated('Use `timezoneName` instead')  Timezone? timezone,  String timezoneName,  String dateTimeFormat,  List<String>? receptionEmails,  String? emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumber>? destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType, @JsonKey(name: 'accountId')  String? externalAccountId,  List<Access>? access,  List<Trigger>? triggers,  bool? useAssetContactsInstead,  bool? attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationOrNullConverter()  Duration? duration,  String? layrzTemplate,  String? appId)?  $default,) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezone,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.access,_that.triggers,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Operation extends Operation {
  const _Operation({required this.id, required this.name, @JsonKey(unknownEnumValue: OperationType.unknown) required this.operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet) this.requestType, this.url, this.headers = const [], this.payload, this.languageId, @Deprecated('Use `timezoneName` instead') this.timezone, this.timezoneName = 'UTC', this.dateTimeFormat = '%Y-%m-%d %I:%M %p', this.receptionEmails = const [], this.emailSubject, @ColorOrNullConverter() this.color, @ColorOrNullConverter() this.textColor, this.destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown) this.notificationType, @JsonKey(name: 'accountId') this.externalAccountId, this.access, this.triggers, this.useAssetContactsInstead, this.attachImage, this.emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web) this.pushPlatforms, this.pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none) this.soundEffect = SoundEffect.none, this.soundEffectUri, @IconOrNullConverter() this.icon, @DurationOrNullConverter() this.duration, this.layrzTemplate, this.appId}): super._();
  factory _Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);

/// The unique identifier of the operation.
@override final  String id;
/// The name of the operation.
@override final  String name;
/// The type of the operation.
@override@JsonKey(unknownEnumValue: OperationType.unknown) final  OperationType operationType;
/// The HTTP request type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override@JsonKey(unknownEnumValue: HttpRequestType.httpGet) final  HttpRequestType? requestType;
/// The URL to perform the request against.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override final  String? url;
/// The headers to send in the HTTP request.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override@JsonKey() final  List<HttpHeader>? headers;
/// The payload to send in the submission.
@override final  String? payload;
/// The language identifier of the message. Used to define the default
/// language of the message.
@override final  String? languageId;
/// The timezone of the message. Used to define the default timezone of
/// the message.
@override@Deprecated('Use `timezoneName` instead') final  Timezone? timezone;
/// The IANA name of the timezone.
@override@JsonKey() final  String timezoneName;
/// The date/time format to use for the operation.
///
/// This overrides the user's date/time format preference.
@override@JsonKey() final  String dateTimeFormat;
/// The reception email addresses to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
@override@JsonKey() final  List<String>? receptionEmails;
/// The subject of the email.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
@override final  String? emailSubject;
/// The color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@ColorOrNullConverter() final  Color? color;
/// The text color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@ColorOrNullConverter() final  Color? textColor;
/// The receiver phone numbers to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@override final  List<PhoneNumber>? destinationPhones;
/// The notification type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@override@JsonKey(unknownEnumValue: NotificationType.unknown) final  NotificationType? notificationType;
/// The identifier of the external account of the operation.
@override@JsonKey(name: 'accountId') final  String? externalAccountId;
/// The list of granted access entries of the operation.
@override final  List<Access>? access;
/// The list of triggers (directly or indirectly) associated with the
/// operation.
@override final  List<Trigger>? triggers;
/// Whether to use the asset contacts instead of the submission
/// contacts.
@override final  bool? useAssetContactsInstead;
/// Whether to attach the image of the submission to the email.
@override final  bool? attachImage;
/// The identifier of the email template of the operation.
@override final  String? emailTemplateId;
/// The list of platforms where the operation should be received.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@override@JsonKey(unknownEnumValue: AppPlatform.web) final  List<AppPlatform>? pushPlatforms;
/// The title of the push notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@override final  String? pushTitle;
/// The sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@JsonKey(unknownEnumValue: SoundEffect.none) final  SoundEffect soundEffect;
/// The URI of the sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override final  String? soundEffectUri;
/// The icon of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@IconOrNullConverter() final  MdiRemapIcon? icon;
/// The duration of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@DurationOrNullConverter() final  Duration? duration;
/// The content SID to use for [OperationType.sms] and
/// [OperationType.whatsappMessage].
@override final  String? layrzTemplate;
/// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
/// its identifier. Set via mutation.
@override final  String? appId;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationCopyWith<_Operation> get copyWith => __$OperationCopyWithImpl<_Operation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Operation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.operationType, operationType) || other.operationType == operationType)&&(identical(other.requestType, requestType) || other.requestType == requestType)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneName, timezoneName) || other.timezoneName == timezoneName)&&(identical(other.dateTimeFormat, dateTimeFormat) || other.dateTimeFormat == dateTimeFormat)&&const DeepCollectionEquality().equals(other.receptionEmails, receptionEmails)&&(identical(other.emailSubject, emailSubject) || other.emailSubject == emailSubject)&&(identical(other.color, color) || other.color == color)&&(identical(other.textColor, textColor) || other.textColor == textColor)&&const DeepCollectionEquality().equals(other.destinationPhones, destinationPhones)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.externalAccountId, externalAccountId) || other.externalAccountId == externalAccountId)&&const DeepCollectionEquality().equals(other.access, access)&&const DeepCollectionEquality().equals(other.triggers, triggers)&&(identical(other.useAssetContactsInstead, useAssetContactsInstead) || other.useAssetContactsInstead == useAssetContactsInstead)&&(identical(other.attachImage, attachImage) || other.attachImage == attachImage)&&(identical(other.emailTemplateId, emailTemplateId) || other.emailTemplateId == emailTemplateId)&&const DeepCollectionEquality().equals(other.pushPlatforms, pushPlatforms)&&(identical(other.pushTitle, pushTitle) || other.pushTitle == pushTitle)&&(identical(other.soundEffect, soundEffect) || other.soundEffect == soundEffect)&&(identical(other.soundEffectUri, soundEffectUri) || other.soundEffectUri == soundEffectUri)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.layrzTemplate, layrzTemplate) || other.layrzTemplate == layrzTemplate)&&(identical(other.appId, appId) || other.appId == appId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,operationType,requestType,url,const DeepCollectionEquality().hash(headers),payload,languageId,timezone,timezoneName,dateTimeFormat,const DeepCollectionEquality().hash(receptionEmails),emailSubject,color,textColor,const DeepCollectionEquality().hash(destinationPhones),notificationType,externalAccountId,const DeepCollectionEquality().hash(access),const DeepCollectionEquality().hash(triggers),useAssetContactsInstead,attachImage,emailTemplateId,const DeepCollectionEquality().hash(pushPlatforms),pushTitle,soundEffect,soundEffectUri,icon,duration,layrzTemplate,appId]);

@override
String toString() {
  return 'Operation(id: $id, name: $name, operationType: $operationType, requestType: $requestType, url: $url, headers: $headers, payload: $payload, languageId: $languageId, timezone: $timezone, timezoneName: $timezoneName, dateTimeFormat: $dateTimeFormat, receptionEmails: $receptionEmails, emailSubject: $emailSubject, color: $color, textColor: $textColor, destinationPhones: $destinationPhones, notificationType: $notificationType, externalAccountId: $externalAccountId, access: $access, triggers: $triggers, useAssetContactsInstead: $useAssetContactsInstead, attachImage: $attachImage, emailTemplateId: $emailTemplateId, pushPlatforms: $pushPlatforms, pushTitle: $pushTitle, soundEffect: $soundEffect, soundEffectUri: $soundEffectUri, icon: $icon, duration: $duration, layrzTemplate: $layrzTemplate, appId: $appId)';
}


}

/// @nodoc
abstract mixin class _$OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$OperationCopyWith(_Operation value, $Res Function(_Operation) _then) = __$OperationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: OperationType.unknown) OperationType operationType,@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType, String? url, List<HttpHeader>? headers, String? payload, String? languageId,@Deprecated('Use `timezoneName` instead') Timezone? timezone, String timezoneName, String dateTimeFormat, List<String>? receptionEmails, String? emailSubject,@ColorOrNullConverter() Color? color,@ColorOrNullConverter() Color? textColor, List<PhoneNumber>? destinationPhones,@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType,@JsonKey(name: 'accountId') String? externalAccountId, List<Access>? access, List<Trigger>? triggers, bool? useAssetContactsInstead, bool? attachImage, String? emailTemplateId,@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms, String? pushTitle,@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect soundEffect, String? soundEffectUri,@IconOrNullConverter() MdiRemapIcon? icon,@DurationOrNullConverter() Duration? duration, String? layrzTemplate, String? appId
});


@override $TimezoneCopyWith<$Res>? get timezone;

}
/// @nodoc
class __$OperationCopyWithImpl<$Res>
    implements _$OperationCopyWith<$Res> {
  __$OperationCopyWithImpl(this._self, this._then);

  final _Operation _self;
  final $Res Function(_Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? operationType = null,Object? requestType = freezed,Object? url = freezed,Object? headers = freezed,Object? payload = freezed,Object? languageId = freezed,Object? timezone = freezed,Object? timezoneName = null,Object? dateTimeFormat = null,Object? receptionEmails = freezed,Object? emailSubject = freezed,Object? color = freezed,Object? textColor = freezed,Object? destinationPhones = freezed,Object? notificationType = freezed,Object? externalAccountId = freezed,Object? access = freezed,Object? triggers = freezed,Object? useAssetContactsInstead = freezed,Object? attachImage = freezed,Object? emailTemplateId = freezed,Object? pushPlatforms = freezed,Object? pushTitle = freezed,Object? soundEffect = null,Object? soundEffectUri = freezed,Object? icon = freezed,Object? duration = freezed,Object? layrzTemplate = freezed,Object? appId = freezed,}) {
  return _then(_Operation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as OperationType,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as HttpRequestType?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<HttpHeader>?,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as Timezone?,timezoneName: null == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,receptionEmails: freezed == receptionEmails ? _self.receptionEmails : receptionEmails // ignore: cast_nullable_to_non_nullable
as List<String>?,emailSubject: freezed == emailSubject ? _self.emailSubject : emailSubject // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,destinationPhones: freezed == destinationPhones ? _self.destinationPhones : destinationPhones // ignore: cast_nullable_to_non_nullable
as List<PhoneNumber>?,notificationType: freezed == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as NotificationType?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as List<Access>?,triggers: freezed == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as List<Trigger>?,useAssetContactsInstead: freezed == useAssetContactsInstead ? _self.useAssetContactsInstead : useAssetContactsInstead // ignore: cast_nullable_to_non_nullable
as bool?,attachImage: freezed == attachImage ? _self.attachImage : attachImage // ignore: cast_nullable_to_non_nullable
as bool?,emailTemplateId: freezed == emailTemplateId ? _self.emailTemplateId : emailTemplateId // ignore: cast_nullable_to_non_nullable
as String?,pushPlatforms: freezed == pushPlatforms ? _self.pushPlatforms : pushPlatforms // ignore: cast_nullable_to_non_nullable
as List<AppPlatform>?,pushTitle: freezed == pushTitle ? _self.pushTitle : pushTitle // ignore: cast_nullable_to_non_nullable
as String?,soundEffect: null == soundEffect ? _self.soundEffect : soundEffect // ignore: cast_nullable_to_non_nullable
as SoundEffect,soundEffectUri: freezed == soundEffectUri ? _self.soundEffectUri : soundEffectUri // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,layrzTemplate: freezed == layrzTemplate ? _self.layrzTemplate : layrzTemplate // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimezoneCopyWith<$Res>? get timezone {
    if (_self.timezone == null) {
    return null;
  }

  return $TimezoneCopyWith<$Res>(_self.timezone!, (value) {
    return _then(_self.copyWith(timezone: value));
  });
}
}


/// @nodoc
mixin _$OperationInput {

/// The unique identifier of the operation. Null when creating a new
/// operation.
 String? get id;/// The unique identifier of the operation. Null when creating a new
/// operation.
 set id(String? value);/// The name of the operation.
 String get name;/// The name of the operation.
 set name(String value);/// The type of the operation.
@JsonKey(unknownEnumValue: OperationType.unknown) OperationType get operationType;/// The type of the operation.
@JsonKey(unknownEnumValue: OperationType.unknown) set operationType(OperationType value);/// The HTTP request type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? get requestType;/// The HTTP request type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@JsonKey(unknownEnumValue: HttpRequestType.httpGet) set requestType(HttpRequestType? value);/// The URL to perform the request against.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 String? get url;/// The URL to perform the request against.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 set url(String? value);/// The headers to send in the HTTP request.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 List<HttpHeaderInput> get headers;/// The headers to send in the HTTP request.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
 set headers(List<HttpHeaderInput> value);/// The payload to send in the submission.
 String? get payload;/// The payload to send in the submission.
 set payload(String? value);/// The language identifier of the message. Used to define the default
/// language of the message.
 String? get languageId;/// The language identifier of the message. Used to define the default
/// language of the message.
 set languageId(String? value);/// The IANA name of the timezone.
 String get timezoneName;/// The IANA name of the timezone.
 set timezoneName(String value);/// The date/time format to use for the operation.
///
/// This overrides the user's date/time format preference.
 String get dateTimeFormat;/// The date/time format to use for the operation.
///
/// This overrides the user's date/time format preference.
 set dateTimeFormat(String value);/// The reception email addresses to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 List<String> get receptionEmails;/// The reception email addresses to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 set receptionEmails(List<String> value);/// The subject of the email.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 String get emailSubject;/// The subject of the email.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
 set emailSubject(String value);/// The color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() Color? get color;/// The color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() set color(Color? value);/// The text color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() Color? get textColor;/// The text color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@ColorOrNullConverter() set textColor(Color? value);/// The receiver phone numbers to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
 List<PhoneNumberInput> get destinationPhones;/// The receiver phone numbers to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
 set destinationPhones(List<PhoneNumberInput> value);/// The notification type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? get notificationType;/// The notification type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@JsonKey(unknownEnumValue: NotificationType.unknown) set notificationType(NotificationType? value);/// The identifier of the external account of the operation.
 String? get externalAccountId;/// The identifier of the external account of the operation.
 set externalAccountId(String? value);/// Whether to use the asset contacts instead of the submission
/// contacts.
 bool get useAssetContactsInstead;/// Whether to use the asset contacts instead of the submission
/// contacts.
 set useAssetContactsInstead(bool value);/// Whether to attach the image of the submission to the email.
 bool get attachImage;/// Whether to attach the image of the submission to the email.
 set attachImage(bool value);/// The identifier of the email template of the operation.
 String? get emailTemplateId;/// The identifier of the email template of the operation.
 set emailTemplateId(String? value);/// The list of platforms where the operation should be received.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? get pushPlatforms;/// The list of platforms where the operation should be received.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@JsonKey(unknownEnumValue: AppPlatform.web) set pushPlatforms(List<AppPlatform>? value);/// The title of the push notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
 String? get pushTitle;/// The title of the push notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
 set pushTitle(String? value);/// The sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect get soundEffect;/// The sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@JsonKey(unknownEnumValue: SoundEffect.none) set soundEffect(SoundEffect value);/// The URI of the sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
 String? get soundEffectUri;/// The URI of the sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
 set soundEffectUri(String? value);/// The icon of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@IconOrNullConverter() MdiRemapIcon? get icon;/// The icon of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@IconOrNullConverter() set icon(MdiRemapIcon? value);/// The duration of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@DurationConverter() Duration get duration;/// The duration of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@DurationConverter() set duration(Duration value);/// The content SID to use for [OperationType.sms] and
/// [OperationType.whatsappMessage].
 String? get layrzTemplate;/// The content SID to use for [OperationType.sms] and
/// [OperationType.whatsappMessage].
 set layrzTemplate(String? value);/// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
/// its identifier. Set via mutation.
 String? get appId;/// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
/// its identifier. Set via mutation.
 set appId(String? value);
/// Create a copy of OperationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationInputCopyWith<OperationInput> get copyWith => _$OperationInputCopyWithImpl<OperationInput>(this as OperationInput, _$identity);

  /// Serializes this OperationInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'OperationInput(id: $id, name: $name, operationType: $operationType, requestType: $requestType, url: $url, headers: $headers, payload: $payload, languageId: $languageId, timezoneName: $timezoneName, dateTimeFormat: $dateTimeFormat, receptionEmails: $receptionEmails, emailSubject: $emailSubject, color: $color, textColor: $textColor, destinationPhones: $destinationPhones, notificationType: $notificationType, externalAccountId: $externalAccountId, useAssetContactsInstead: $useAssetContactsInstead, attachImage: $attachImage, emailTemplateId: $emailTemplateId, pushPlatforms: $pushPlatforms, pushTitle: $pushTitle, soundEffect: $soundEffect, soundEffectUri: $soundEffectUri, icon: $icon, duration: $duration, layrzTemplate: $layrzTemplate, appId: $appId)';
}


}

/// @nodoc
abstract mixin class $OperationInputCopyWith<$Res>  {
  factory $OperationInputCopyWith(OperationInput value, $Res Function(OperationInput) _then) = _$OperationInputCopyWithImpl;
@useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: OperationType.unknown) OperationType operationType,@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType, String? url, List<HttpHeaderInput> headers, String? payload, String? languageId, String timezoneName, String dateTimeFormat, List<String> receptionEmails, String emailSubject,@ColorOrNullConverter() Color? color,@ColorOrNullConverter() Color? textColor, List<PhoneNumberInput> destinationPhones,@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType, String? externalAccountId, bool useAssetContactsInstead, bool attachImage, String? emailTemplateId,@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms, String? pushTitle,@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect soundEffect, String? soundEffectUri,@IconOrNullConverter() MdiRemapIcon? icon,@DurationConverter() Duration duration, String? layrzTemplate, String? appId
});




}
/// @nodoc
class _$OperationInputCopyWithImpl<$Res>
    implements $OperationInputCopyWith<$Res> {
  _$OperationInputCopyWithImpl(this._self, this._then);

  final OperationInput _self;
  final $Res Function(OperationInput) _then;

/// Create a copy of OperationInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? operationType = null,Object? requestType = freezed,Object? url = freezed,Object? headers = null,Object? payload = freezed,Object? languageId = freezed,Object? timezoneName = null,Object? dateTimeFormat = null,Object? receptionEmails = null,Object? emailSubject = null,Object? color = freezed,Object? textColor = freezed,Object? destinationPhones = null,Object? notificationType = freezed,Object? externalAccountId = freezed,Object? useAssetContactsInstead = null,Object? attachImage = null,Object? emailTemplateId = freezed,Object? pushPlatforms = freezed,Object? pushTitle = freezed,Object? soundEffect = null,Object? soundEffectUri = freezed,Object? icon = freezed,Object? duration = null,Object? layrzTemplate = freezed,Object? appId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as OperationType,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as HttpRequestType?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<HttpHeaderInput>,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,timezoneName: null == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,receptionEmails: null == receptionEmails ? _self.receptionEmails : receptionEmails // ignore: cast_nullable_to_non_nullable
as List<String>,emailSubject: null == emailSubject ? _self.emailSubject : emailSubject // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,destinationPhones: null == destinationPhones ? _self.destinationPhones : destinationPhones // ignore: cast_nullable_to_non_nullable
as List<PhoneNumberInput>,notificationType: freezed == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as NotificationType?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,useAssetContactsInstead: null == useAssetContactsInstead ? _self.useAssetContactsInstead : useAssetContactsInstead // ignore: cast_nullable_to_non_nullable
as bool,attachImage: null == attachImage ? _self.attachImage : attachImage // ignore: cast_nullable_to_non_nullable
as bool,emailTemplateId: freezed == emailTemplateId ? _self.emailTemplateId : emailTemplateId // ignore: cast_nullable_to_non_nullable
as String?,pushPlatforms: freezed == pushPlatforms ? _self.pushPlatforms : pushPlatforms // ignore: cast_nullable_to_non_nullable
as List<AppPlatform>?,pushTitle: freezed == pushTitle ? _self.pushTitle : pushTitle // ignore: cast_nullable_to_non_nullable
as String?,soundEffect: null == soundEffect ? _self.soundEffect : soundEffect // ignore: cast_nullable_to_non_nullable
as SoundEffect,soundEffectUri: freezed == soundEffectUri ? _self.soundEffectUri : soundEffectUri // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,layrzTemplate: freezed == layrzTemplate ? _self.layrzTemplate : layrzTemplate // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OperationInput].
extension OperationInputPatterns on OperationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperationInput value)  $default,){
final _that = this;
switch (_that) {
case _OperationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperationInput value)?  $default,){
final _that = this;
switch (_that) {
case _OperationInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeaderInput> headers,  String? payload,  String? languageId,  String timezoneName,  String dateTimeFormat,  List<String> receptionEmails,  String emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumberInput> destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType,  String? externalAccountId,  bool useAssetContactsInstead,  bool attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationConverter()  Duration duration,  String? layrzTemplate,  String? appId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperationInput() when $default != null:
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeaderInput> headers,  String? payload,  String? languageId,  String timezoneName,  String dateTimeFormat,  List<String> receptionEmails,  String emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumberInput> destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType,  String? externalAccountId,  bool useAssetContactsInstead,  bool attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationConverter()  Duration duration,  String? layrzTemplate,  String? appId)  $default,) {final _that = this;
switch (_that) {
case _OperationInput():
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String name, @JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType, @JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType,  String? url,  List<HttpHeaderInput> headers,  String? payload,  String? languageId,  String timezoneName,  String dateTimeFormat,  List<String> receptionEmails,  String emailSubject, @ColorOrNullConverter()  Color? color, @ColorOrNullConverter()  Color? textColor,  List<PhoneNumberInput> destinationPhones, @JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType,  String? externalAccountId,  bool useAssetContactsInstead,  bool attachImage,  String? emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms,  String? pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect,  String? soundEffectUri, @IconOrNullConverter()  MdiRemapIcon? icon, @DurationConverter()  Duration duration,  String? layrzTemplate,  String? appId)?  $default,) {final _that = this;
switch (_that) {
case _OperationInput() when $default != null:
return $default(_that.id,_that.name,_that.operationType,_that.requestType,_that.url,_that.headers,_that.payload,_that.languageId,_that.timezoneName,_that.dateTimeFormat,_that.receptionEmails,_that.emailSubject,_that.color,_that.textColor,_that.destinationPhones,_that.notificationType,_that.externalAccountId,_that.useAssetContactsInstead,_that.attachImage,_that.emailTemplateId,_that.pushPlatforms,_that.pushTitle,_that.soundEffect,_that.soundEffectUri,_that.icon,_that.duration,_that.layrzTemplate,_that.appId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperationInput extends OperationInput {
   _OperationInput({this.id, this.name = '', @JsonKey(unknownEnumValue: OperationType.unknown) this.operationType = OperationType.inAppNotification, @JsonKey(unknownEnumValue: HttpRequestType.httpGet) this.requestType, this.url, this.headers = const [], this.payload, this.languageId, this.timezoneName = 'UTC', this.dateTimeFormat = '%Y-%m-%d %I:%M %p', this.receptionEmails = const [], this.emailSubject = '', @ColorOrNullConverter() this.color, @ColorOrNullConverter() this.textColor, this.destinationPhones = const [], @JsonKey(unknownEnumValue: NotificationType.unknown) this.notificationType, this.externalAccountId, this.useAssetContactsInstead = false, this.attachImage = false, this.emailTemplateId, @JsonKey(unknownEnumValue: AppPlatform.web) this.pushPlatforms, this.pushTitle, @JsonKey(unknownEnumValue: SoundEffect.none) this.soundEffect = SoundEffect.none, this.soundEffectUri, @IconOrNullConverter() this.icon, @DurationConverter() this.duration = const Duration(seconds: 5), this.layrzTemplate, this.appId}): super._();
  factory _OperationInput.fromJson(Map<String, dynamic> json) => _$OperationInputFromJson(json);

/// The unique identifier of the operation. Null when creating a new
/// operation.
@override  String? id;
/// The name of the operation.
@override@JsonKey()  String name;
/// The type of the operation.
@override@JsonKey(unknownEnumValue: OperationType.unknown)  OperationType operationType;
/// The HTTP request type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override@JsonKey(unknownEnumValue: HttpRequestType.httpGet)  HttpRequestType? requestType;
/// The URL to perform the request against.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override  String? url;
/// The headers to send in the HTTP request.
///
/// This field is only considered when [operationType] is
/// [OperationType.webhook].
@override@JsonKey()  List<HttpHeaderInput> headers;
/// The payload to send in the submission.
@override  String? payload;
/// The language identifier of the message. Used to define the default
/// language of the message.
@override  String? languageId;
/// The IANA name of the timezone.
@override@JsonKey()  String timezoneName;
/// The date/time format to use for the operation.
///
/// This overrides the user's date/time format preference.
@override@JsonKey()  String dateTimeFormat;
/// The reception email addresses to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
@override@JsonKey()  List<String> receptionEmails;
/// The subject of the email.
///
/// This field is only considered when [operationType] is
/// [OperationType.email].
@override@JsonKey()  String emailSubject;
/// The color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@ColorOrNullConverter()  Color? color;
/// The text color of the inline notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@ColorOrNullConverter()  Color? textColor;
/// The receiver phone numbers to send the message to.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@override@JsonKey()  List<PhoneNumberInput> destinationPhones;
/// The notification type to perform.
///
/// This field is only considered when [operationType] is
/// [OperationType.twilio].
@override@JsonKey(unknownEnumValue: NotificationType.unknown)  NotificationType? notificationType;
/// The identifier of the external account of the operation.
@override  String? externalAccountId;
/// Whether to use the asset contacts instead of the submission
/// contacts.
@override@JsonKey()  bool useAssetContactsInstead;
/// Whether to attach the image of the submission to the email.
@override@JsonKey()  bool attachImage;
/// The identifier of the email template of the operation.
@override  String? emailTemplateId;
/// The list of platforms where the operation should be received.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@override@JsonKey(unknownEnumValue: AppPlatform.web)  List<AppPlatform>? pushPlatforms;
/// The title of the push notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.bhsPush].
@override  String? pushTitle;
/// The sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@JsonKey(unknownEnumValue: SoundEffect.none)  SoundEffect soundEffect;
/// The URI of the sound effect to play when the notification arrives.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override  String? soundEffectUri;
/// The icon of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@IconOrNullConverter()  MdiRemapIcon? icon;
/// The duration of the notification.
///
/// This field is only considered when [operationType] is
/// [OperationType.inAppNotification].
@override@JsonKey()@DurationConverter()  Duration duration;
/// The content SID to use for [OperationType.sms] and
/// [OperationType.whatsappMessage].
@override  String? layrzTemplate;
/// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
/// its identifier. Set via mutation.
@override  String? appId;

/// Create a copy of OperationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationInputCopyWith<_OperationInput> get copyWith => __$OperationInputCopyWithImpl<_OperationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperationInputToJson(this, );
}



@override
String toString() {
  return 'OperationInput(id: $id, name: $name, operationType: $operationType, requestType: $requestType, url: $url, headers: $headers, payload: $payload, languageId: $languageId, timezoneName: $timezoneName, dateTimeFormat: $dateTimeFormat, receptionEmails: $receptionEmails, emailSubject: $emailSubject, color: $color, textColor: $textColor, destinationPhones: $destinationPhones, notificationType: $notificationType, externalAccountId: $externalAccountId, useAssetContactsInstead: $useAssetContactsInstead, attachImage: $attachImage, emailTemplateId: $emailTemplateId, pushPlatforms: $pushPlatforms, pushTitle: $pushTitle, soundEffect: $soundEffect, soundEffectUri: $soundEffectUri, icon: $icon, duration: $duration, layrzTemplate: $layrzTemplate, appId: $appId)';
}


}

/// @nodoc
abstract mixin class _$OperationInputCopyWith<$Res> implements $OperationInputCopyWith<$Res> {
  factory _$OperationInputCopyWith(_OperationInput value, $Res Function(_OperationInput) _then) = __$OperationInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String name,@JsonKey(unknownEnumValue: OperationType.unknown) OperationType operationType,@JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType, String? url, List<HttpHeaderInput> headers, String? payload, String? languageId, String timezoneName, String dateTimeFormat, List<String> receptionEmails, String emailSubject,@ColorOrNullConverter() Color? color,@ColorOrNullConverter() Color? textColor, List<PhoneNumberInput> destinationPhones,@JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType, String? externalAccountId, bool useAssetContactsInstead, bool attachImage, String? emailTemplateId,@JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms, String? pushTitle,@JsonKey(unknownEnumValue: SoundEffect.none) SoundEffect soundEffect, String? soundEffectUri,@IconOrNullConverter() MdiRemapIcon? icon,@DurationConverter() Duration duration, String? layrzTemplate, String? appId
});




}
/// @nodoc
class __$OperationInputCopyWithImpl<$Res>
    implements _$OperationInputCopyWith<$Res> {
  __$OperationInputCopyWithImpl(this._self, this._then);

  final _OperationInput _self;
  final $Res Function(_OperationInput) _then;

/// Create a copy of OperationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? operationType = null,Object? requestType = freezed,Object? url = freezed,Object? headers = null,Object? payload = freezed,Object? languageId = freezed,Object? timezoneName = null,Object? dateTimeFormat = null,Object? receptionEmails = null,Object? emailSubject = null,Object? color = freezed,Object? textColor = freezed,Object? destinationPhones = null,Object? notificationType = freezed,Object? externalAccountId = freezed,Object? useAssetContactsInstead = null,Object? attachImage = null,Object? emailTemplateId = freezed,Object? pushPlatforms = freezed,Object? pushTitle = freezed,Object? soundEffect = null,Object? soundEffectUri = freezed,Object? icon = freezed,Object? duration = null,Object? layrzTemplate = freezed,Object? appId = freezed,}) {
  return _then(_OperationInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,operationType: null == operationType ? _self.operationType : operationType // ignore: cast_nullable_to_non_nullable
as OperationType,requestType: freezed == requestType ? _self.requestType : requestType // ignore: cast_nullable_to_non_nullable
as HttpRequestType?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as List<HttpHeaderInput>,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String?,languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,timezoneName: null == timezoneName ? _self.timezoneName : timezoneName // ignore: cast_nullable_to_non_nullable
as String,dateTimeFormat: null == dateTimeFormat ? _self.dateTimeFormat : dateTimeFormat // ignore: cast_nullable_to_non_nullable
as String,receptionEmails: null == receptionEmails ? _self.receptionEmails : receptionEmails // ignore: cast_nullable_to_non_nullable
as List<String>,emailSubject: null == emailSubject ? _self.emailSubject : emailSubject // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as Color?,destinationPhones: null == destinationPhones ? _self.destinationPhones : destinationPhones // ignore: cast_nullable_to_non_nullable
as List<PhoneNumberInput>,notificationType: freezed == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as NotificationType?,externalAccountId: freezed == externalAccountId ? _self.externalAccountId : externalAccountId // ignore: cast_nullable_to_non_nullable
as String?,useAssetContactsInstead: null == useAssetContactsInstead ? _self.useAssetContactsInstead : useAssetContactsInstead // ignore: cast_nullable_to_non_nullable
as bool,attachImage: null == attachImage ? _self.attachImage : attachImage // ignore: cast_nullable_to_non_nullable
as bool,emailTemplateId: freezed == emailTemplateId ? _self.emailTemplateId : emailTemplateId // ignore: cast_nullable_to_non_nullable
as String?,pushPlatforms: freezed == pushPlatforms ? _self.pushPlatforms : pushPlatforms // ignore: cast_nullable_to_non_nullable
as List<AppPlatform>?,pushTitle: freezed == pushTitle ? _self.pushTitle : pushTitle // ignore: cast_nullable_to_non_nullable
as String?,soundEffect: null == soundEffect ? _self.soundEffect : soundEffect // ignore: cast_nullable_to_non_nullable
as SoundEffect,soundEffectUri: freezed == soundEffectUri ? _self.soundEffectUri : soundEffectUri // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as MdiRemapIcon?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,layrzTemplate: freezed == layrzTemplate ? _self.layrzTemplate : layrzTemplate // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HttpHeader {

/// The name of the header (e.g., `Content-Type`).
 String get name;/// The value of the header.
 String get value;
/// Create a copy of HttpHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HttpHeaderCopyWith<HttpHeader> get copyWith => _$HttpHeaderCopyWithImpl<HttpHeader>(this as HttpHeader, _$identity);

  /// Serializes this HttpHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HttpHeader&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'HttpHeader(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $HttpHeaderCopyWith<$Res>  {
  factory $HttpHeaderCopyWith(HttpHeader value, $Res Function(HttpHeader) _then) = _$HttpHeaderCopyWithImpl;
@useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class _$HttpHeaderCopyWithImpl<$Res>
    implements $HttpHeaderCopyWith<$Res> {
  _$HttpHeaderCopyWithImpl(this._self, this._then);

  final HttpHeader _self;
  final $Res Function(HttpHeader) _then;

/// Create a copy of HttpHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HttpHeader].
extension HttpHeaderPatterns on HttpHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HttpHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HttpHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HttpHeader value)  $default,){
final _that = this;
switch (_that) {
case _HttpHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HttpHeader value)?  $default,){
final _that = this;
switch (_that) {
case _HttpHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HttpHeader() when $default != null:
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String value)  $default,) {final _that = this;
switch (_that) {
case _HttpHeader():
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String value)?  $default,) {final _that = this;
switch (_that) {
case _HttpHeader() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HttpHeader extends HttpHeader {
  const _HttpHeader({required this.name, required this.value}): super._();
  factory _HttpHeader.fromJson(Map<String, dynamic> json) => _$HttpHeaderFromJson(json);

/// The name of the header (e.g., `Content-Type`).
@override final  String name;
/// The value of the header.
@override final  String value;

/// Create a copy of HttpHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpHeaderCopyWith<_HttpHeader> get copyWith => __$HttpHeaderCopyWithImpl<_HttpHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HttpHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HttpHeader&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'HttpHeader(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$HttpHeaderCopyWith<$Res> implements $HttpHeaderCopyWith<$Res> {
  factory _$HttpHeaderCopyWith(_HttpHeader value, $Res Function(_HttpHeader) _then) = __$HttpHeaderCopyWithImpl;
@override @useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class __$HttpHeaderCopyWithImpl<$Res>
    implements _$HttpHeaderCopyWith<$Res> {
  __$HttpHeaderCopyWithImpl(this._self, this._then);

  final _HttpHeader _self;
  final $Res Function(_HttpHeader) _then;

/// Create a copy of HttpHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_HttpHeader(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HttpHeaderInput {

/// The name of the header (e.g., `Content-Type`).
 String get name;/// The name of the header (e.g., `Content-Type`).
 set name(String value);/// The value of the header.
 String get value;/// The value of the header.
 set value(String value);
/// Create a copy of HttpHeaderInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HttpHeaderInputCopyWith<HttpHeaderInput> get copyWith => _$HttpHeaderInputCopyWithImpl<HttpHeaderInput>(this as HttpHeaderInput, _$identity);

  /// Serializes this HttpHeaderInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'HttpHeaderInput(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $HttpHeaderInputCopyWith<$Res>  {
  factory $HttpHeaderInputCopyWith(HttpHeaderInput value, $Res Function(HttpHeaderInput) _then) = _$HttpHeaderInputCopyWithImpl;
@useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class _$HttpHeaderInputCopyWithImpl<$Res>
    implements $HttpHeaderInputCopyWith<$Res> {
  _$HttpHeaderInputCopyWithImpl(this._self, this._then);

  final HttpHeaderInput _self;
  final $Res Function(HttpHeaderInput) _then;

/// Create a copy of HttpHeaderInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HttpHeaderInput].
extension HttpHeaderInputPatterns on HttpHeaderInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HttpHeaderInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HttpHeaderInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HttpHeaderInput value)  $default,){
final _that = this;
switch (_that) {
case _HttpHeaderInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HttpHeaderInput value)?  $default,){
final _that = this;
switch (_that) {
case _HttpHeaderInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HttpHeaderInput() when $default != null:
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String value)  $default,) {final _that = this;
switch (_that) {
case _HttpHeaderInput():
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String value)?  $default,) {final _that = this;
switch (_that) {
case _HttpHeaderInput() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HttpHeaderInput extends HttpHeaderInput {
   _HttpHeaderInput({this.name = '', this.value = ''}): super._();
  factory _HttpHeaderInput.fromJson(Map<String, dynamic> json) => _$HttpHeaderInputFromJson(json);

/// The name of the header (e.g., `Content-Type`).
@override@JsonKey()  String name;
/// The value of the header.
@override@JsonKey()  String value;

/// Create a copy of HttpHeaderInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpHeaderInputCopyWith<_HttpHeaderInput> get copyWith => __$HttpHeaderInputCopyWithImpl<_HttpHeaderInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HttpHeaderInputToJson(this, );
}



@override
String toString() {
  return 'HttpHeaderInput(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$HttpHeaderInputCopyWith<$Res> implements $HttpHeaderInputCopyWith<$Res> {
  factory _$HttpHeaderInputCopyWith(_HttpHeaderInput value, $Res Function(_HttpHeaderInput) _then) = __$HttpHeaderInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String value
});




}
/// @nodoc
class __$HttpHeaderInputCopyWithImpl<$Res>
    implements _$HttpHeaderInputCopyWith<$Res> {
  __$HttpHeaderInputCopyWithImpl(this._self, this._then);

  final _HttpHeaderInput _self;
  final $Res Function(_HttpHeaderInput) _then;

/// Create a copy of HttpHeaderInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_HttpHeaderInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
