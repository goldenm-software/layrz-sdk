part of '../actions.dart';

/// The kind of side effect an [Action] performs when triggered.
///
/// Each value is serialized to JSON as an uppercase string matching the Layrz API
/// reference. If deserialization encounters an unknown value, it defaults to
/// [performOperation].
@JsonEnum(alwaysCreate: true)
enum ActionType {
  /// Links or unlinks an asset. Layrz API reference: `LINK`.
  @JsonValue('LINK')
  link,

  /// Performs one or more [Operation]s. Layrz API reference: `PERFORMOPERATION`.
  @JsonValue('PERFORMOPERATION')
  performOperation,

  /// Performs a command on a tag of devices. Layrz API reference: `PERFORMCOMMAND`.
  @JsonValue('PERFORMCOMMAND')
  performCommand,

  /// Broadcasts to an outbound service. Layrz API reference: `SENDTOOMEGA`.
  @JsonValue('SENDTOOMEGA')
  sendToOutbound,

  /// Sends data to the monitor center. Layrz API reference: `TOMONITORCENTER`.
  @JsonValue('TOMONITORCENTER')
  sendToMonitorCenter,

  /// Sends data to a checkpoint route. Layrz API reference: `TOCHECKPOINTROUTE`.
  @JsonValue('TOCHECKPOINTROUTE')
  sendToCheckpoint,

  /// Creates a geofence. Layrz API reference: `CREATE_GEOFENCE`.
  @JsonValue('CREATE_GEOFENCE')
  createGeofence,

  /// Applies Zigbee settings to a device. Layrz API reference: `ZIGBEE_CHANGE`.
  @JsonValue('ZIGBEE_CHANGE')
  zigbeeChange,
  ;

  /// Returns the JSON representation of this action type (e.g., `LINK`,
  /// `PERFORMOPERATION`).
  @override
  String toString() => toJson();

  /// Converts this [ActionType] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is
  /// not found in the generated map (should never occur), defaults to
  /// `'PERFORMOPERATION'`.
  String toJson() => _$ActionTypeEnumMap[this] ?? 'PERFORMOPERATION';

  /// Converts a JSON string to an [ActionType].
  ///
  /// Accepts the uppercase JSON values from the server wire format. If the input does
  /// not match any known value, returns [performOperation] as the fallback default.
  static ActionType fromJson(String json) =>
      _$ActionTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? ActionType.performOperation;
}
