// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportJobInput {

/// Is the language ID that overrides the language detected for the user.
 String? get languageId;/// Is the language ID that overrides the language detected for the user.
 set languageId(String? value);/// Is the ID of the app from which the report is requested.
 String? get appId;/// Is the ID of the app from which the report is requested.
 set appId(String? value);/// Is the ID of the custom report template. Mutually exclusive with [templateCode].
 String? get templateId;/// Is the ID of the custom report template. Mutually exclusive with [templateCode].
 set templateId(String? value);/// Is the code of the default report template. Mutually exclusive with [templateId].
 String? get templateCode;/// Is the code of the default report template. Mutually exclusive with [templateId].
 set templateCode(String? value);/// Is the start of the reported range. Sent as Unix seconds.
@TimestampConverter() DateTime get startAt;/// Is the start of the reported range. Sent as Unix seconds.
@TimestampConverter() set startAt(DateTime value);/// Is the end of the reported range. Sent as Unix seconds.
@TimestampConverter() DateTime get endAt;/// Is the end of the reported range. Sent as Unix seconds.
@TimestampConverter() set endAt(DateTime value);/// Is the list of asset IDs to report. Defaults to an empty list.
 List<String> get assetsIds;/// Is the list of asset IDs to report. Defaults to an empty list.
 set assetsIds(List<String> value);/// Is the list of outbound service IDs to report. Defaults to an empty list.
 List<String> get outboundServicesIds;/// Is the list of outbound service IDs to report. Defaults to an empty list.
 set outboundServicesIds(List<String> value);/// Is the list of function IDs to run. Defaults to an empty list.
 List<String> get functionsIds;/// Is the list of function IDs to run. Defaults to an empty list.
 set functionsIds(List<String> value);/// Is the difference, in minutes, between UTC and the timezone of the report. Defaults to `0` (UTC).
 int get utcOffset;/// Is the difference, in minutes, between UTC and the timezone of the report. Defaults to `0` (UTC).
 set utcOffset(int value);
/// Create a copy of ReportJobInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportJobInputCopyWith<ReportJobInput> get copyWith => _$ReportJobInputCopyWithImpl<ReportJobInput>(this as ReportJobInput, _$identity);

  /// Serializes this ReportJobInput to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'ReportJobInput(languageId: $languageId, appId: $appId, templateId: $templateId, templateCode: $templateCode, startAt: $startAt, endAt: $endAt, assetsIds: $assetsIds, outboundServicesIds: $outboundServicesIds, functionsIds: $functionsIds, utcOffset: $utcOffset)';
}


}

/// @nodoc
abstract mixin class $ReportJobInputCopyWith<$Res>  {
  factory $ReportJobInputCopyWith(ReportJobInput value, $Res Function(ReportJobInput) _then) = _$ReportJobInputCopyWithImpl;
@useResult
$Res call({
 String? languageId, String? appId, String? templateId, String? templateCode,@TimestampConverter() DateTime startAt,@TimestampConverter() DateTime endAt, List<String> assetsIds, List<String> outboundServicesIds, List<String> functionsIds, int utcOffset
});




}
/// @nodoc
class _$ReportJobInputCopyWithImpl<$Res>
    implements $ReportJobInputCopyWith<$Res> {
  _$ReportJobInputCopyWithImpl(this._self, this._then);

  final ReportJobInput _self;
  final $Res Function(ReportJobInput) _then;

/// Create a copy of ReportJobInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageId = freezed,Object? appId = freezed,Object? templateId = freezed,Object? templateCode = freezed,Object? startAt = null,Object? endAt = null,Object? assetsIds = null,Object? outboundServicesIds = null,Object? functionsIds = null,Object? utcOffset = null,}) {
  return _then(_self.copyWith(
languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,templateCode: freezed == templateCode ? _self.templateCode : templateCode // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,functionsIds: null == functionsIds ? _self.functionsIds : functionsIds // ignore: cast_nullable_to_non_nullable
as List<String>,utcOffset: null == utcOffset ? _self.utcOffset : utcOffset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportJobInput].
extension ReportJobInputPatterns on ReportJobInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportJobInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportJobInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportJobInput value)  $default,){
final _that = this;
switch (_that) {
case _ReportJobInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportJobInput value)?  $default,){
final _that = this;
switch (_that) {
case _ReportJobInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? languageId,  String? appId,  String? templateId,  String? templateCode, @TimestampConverter()  DateTime startAt, @TimestampConverter()  DateTime endAt,  List<String> assetsIds,  List<String> outboundServicesIds,  List<String> functionsIds,  int utcOffset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportJobInput() when $default != null:
return $default(_that.languageId,_that.appId,_that.templateId,_that.templateCode,_that.startAt,_that.endAt,_that.assetsIds,_that.outboundServicesIds,_that.functionsIds,_that.utcOffset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? languageId,  String? appId,  String? templateId,  String? templateCode, @TimestampConverter()  DateTime startAt, @TimestampConverter()  DateTime endAt,  List<String> assetsIds,  List<String> outboundServicesIds,  List<String> functionsIds,  int utcOffset)  $default,) {final _that = this;
switch (_that) {
case _ReportJobInput():
return $default(_that.languageId,_that.appId,_that.templateId,_that.templateCode,_that.startAt,_that.endAt,_that.assetsIds,_that.outboundServicesIds,_that.functionsIds,_that.utcOffset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? languageId,  String? appId,  String? templateId,  String? templateCode, @TimestampConverter()  DateTime startAt, @TimestampConverter()  DateTime endAt,  List<String> assetsIds,  List<String> outboundServicesIds,  List<String> functionsIds,  int utcOffset)?  $default,) {final _that = this;
switch (_that) {
case _ReportJobInput() when $default != null:
return $default(_that.languageId,_that.appId,_that.templateId,_that.templateCode,_that.startAt,_that.endAt,_that.assetsIds,_that.outboundServicesIds,_that.functionsIds,_that.utcOffset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportJobInput extends ReportJobInput {
   _ReportJobInput({this.languageId, this.appId, this.templateId, this.templateCode, @TimestampConverter() required this.startAt, @TimestampConverter() required this.endAt, this.assetsIds = const [], this.outboundServicesIds = const [], this.functionsIds = const [], this.utcOffset = 0}): super._();
  factory _ReportJobInput.fromJson(Map<String, dynamic> json) => _$ReportJobInputFromJson(json);

/// Is the language ID that overrides the language detected for the user.
@override  String? languageId;
/// Is the ID of the app from which the report is requested.
@override  String? appId;
/// Is the ID of the custom report template. Mutually exclusive with [templateCode].
@override  String? templateId;
/// Is the code of the default report template. Mutually exclusive with [templateId].
@override  String? templateCode;
/// Is the start of the reported range. Sent as Unix seconds.
@override@TimestampConverter()  DateTime startAt;
/// Is the end of the reported range. Sent as Unix seconds.
@override@TimestampConverter()  DateTime endAt;
/// Is the list of asset IDs to report. Defaults to an empty list.
@override@JsonKey()  List<String> assetsIds;
/// Is the list of outbound service IDs to report. Defaults to an empty list.
@override@JsonKey()  List<String> outboundServicesIds;
/// Is the list of function IDs to run. Defaults to an empty list.
@override@JsonKey()  List<String> functionsIds;
/// Is the difference, in minutes, between UTC and the timezone of the report. Defaults to `0` (UTC).
@override@JsonKey()  int utcOffset;

/// Create a copy of ReportJobInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportJobInputCopyWith<_ReportJobInput> get copyWith => __$ReportJobInputCopyWithImpl<_ReportJobInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportJobInputToJson(this, );
}



@override
String toString() {
  return 'ReportJobInput(languageId: $languageId, appId: $appId, templateId: $templateId, templateCode: $templateCode, startAt: $startAt, endAt: $endAt, assetsIds: $assetsIds, outboundServicesIds: $outboundServicesIds, functionsIds: $functionsIds, utcOffset: $utcOffset)';
}


}

/// @nodoc
abstract mixin class _$ReportJobInputCopyWith<$Res> implements $ReportJobInputCopyWith<$Res> {
  factory _$ReportJobInputCopyWith(_ReportJobInput value, $Res Function(_ReportJobInput) _then) = __$ReportJobInputCopyWithImpl;
@override @useResult
$Res call({
 String? languageId, String? appId, String? templateId, String? templateCode,@TimestampConverter() DateTime startAt,@TimestampConverter() DateTime endAt, List<String> assetsIds, List<String> outboundServicesIds, List<String> functionsIds, int utcOffset
});




}
/// @nodoc
class __$ReportJobInputCopyWithImpl<$Res>
    implements _$ReportJobInputCopyWith<$Res> {
  __$ReportJobInputCopyWithImpl(this._self, this._then);

  final _ReportJobInput _self;
  final $Res Function(_ReportJobInput) _then;

/// Create a copy of ReportJobInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageId = freezed,Object? appId = freezed,Object? templateId = freezed,Object? templateCode = freezed,Object? startAt = null,Object? endAt = null,Object? assetsIds = null,Object? outboundServicesIds = null,Object? functionsIds = null,Object? utcOffset = null,}) {
  return _then(_ReportJobInput(
languageId: freezed == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as String?,templateId: freezed == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String?,templateCode: freezed == templateCode ? _self.templateCode : templateCode // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,assetsIds: null == assetsIds ? _self.assetsIds : assetsIds // ignore: cast_nullable_to_non_nullable
as List<String>,outboundServicesIds: null == outboundServicesIds ? _self.outboundServicesIds : outboundServicesIds // ignore: cast_nullable_to_non_nullable
as List<String>,functionsIds: null == functionsIds ? _self.functionsIds : functionsIds // ignore: cast_nullable_to_non_nullable
as List<String>,utcOffset: null == utcOffset ? _self.utcOffset : utcOffset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
