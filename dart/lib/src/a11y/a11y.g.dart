// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a11y.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) =>
    _UserPreferences(
      timezone: json['timezone'] as String? ?? '',
      dateTimeFormat: json['dateTimeFormat'] as String? ?? '%Y-%m-%d %I:%M %p',
      dateFormat: json['dateFormat'] as String? ?? '%Y-%m-%d',
      timeFormat: json['timeFormat'] as String? ?? '%I:%M %p',
      colorblindMode:
          $enumDecodeNullable(
            _$ColorblindModeEnumMap,
            json['colorblindMode'],
            unknownValue: ColorblindMode.normal,
          ) ??
          ColorblindMode.normal,
      colorblindForce: (json['colorblindForce'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'dateTimeFormat': instance.dateTimeFormat,
      'dateFormat': instance.dateFormat,
      'timeFormat': instance.timeFormat,
      'colorblindMode': instance.colorblindMode.toJson(),
      'colorblindForce': instance.colorblindForce,
    };

const _$ColorblindModeEnumMap = {
  ColorblindMode.protanopia: 'PROTANOPIA',
  ColorblindMode.protanomaly: 'PROTANOMALY',
  ColorblindMode.deuteranopia: 'DEUTERANOPIA',
  ColorblindMode.deuteranomaly: 'DEUTERANOMALY',
  ColorblindMode.tritanopia: 'TRITANOPIA',
  ColorblindMode.tritanomaly: 'TRITANOMALY',
  ColorblindMode.normal: 'NORMAL',
};

_UserPreferencesInput _$UserPreferencesInputFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesInput(
  timezone: json['timezone'] as String? ?? '',
  dateTimeFormat: json['dateTimeFormat'] as String? ?? '%Y-%m-%d %I:%M %p',
  dateFormat: json['dateFormat'] as String? ?? '%Y-%m-%d',
  timeFormat: json['timeFormat'] as String? ?? '%I:%M %p',
  colorblindMode:
      $enumDecodeNullable(
        _$ColorblindModeEnumMap,
        json['colorblindMode'],
        unknownValue: ColorblindMode.normal,
      ) ??
      ColorblindMode.normal,
  colorblindForce: (json['colorblindForce'] as num?)?.toDouble() ?? 1.0,
);

Map<String, dynamic> _$UserPreferencesInputToJson(
  _UserPreferencesInput instance,
) => <String, dynamic>{
  'timezone': instance.timezone,
  'dateTimeFormat': instance.dateTimeFormat,
  'dateFormat': instance.dateFormat,
  'timeFormat': instance.timeFormat,
  'colorblindMode': instance.colorblindMode.toJson(),
  'colorblindForce': instance.colorblindForce,
};
