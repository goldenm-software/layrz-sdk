part of '../triggers.dart';

/// The geofence detection mode of a [Trigger].
///
/// Only relevant when [Trigger.kind] is [TriggerType.presenceInGeofences].
@JsonEnum(alwaysCreate: true)
enum TriggerGeofenceDetectionMode {
  /// [entrance] detects geofence entrance.
  ///
  /// Layrz API Reference: `ENTRANCE`
  @JsonValue('ENTRANCE')
  entrance,

  /// [exit] detects geofence exit.
  ///
  /// Layrz API Reference: `EXIT`
  @JsonValue('EXIT')
  exit,

  /// [both] detects both entrance and exit.
  ///
  /// Layrz API Reference: `BOTH`
  @JsonValue('BOTH')
  both,
  ;

  @override
  String toString() => toJson();

  /// Converts this [TriggerGeofenceDetectionMode] to its wire representation.
  String toJson() => _$TriggerGeofenceDetectionModeEnumMap[this] ?? 'BOTH';

  /// Converts a wire representation [json] to a [TriggerGeofenceDetectionMode].
  ///
  /// Returns [TriggerGeofenceDetectionMode.both] when [json] does not match
  /// any known value.
  static TriggerGeofenceDetectionMode fromJson(String json) {
    final value = _$TriggerGeofenceDetectionModeEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? TriggerGeofenceDetectionMode.both;
  }
}
