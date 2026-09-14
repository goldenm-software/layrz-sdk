part of '../actions.dart';

/// The owner assignment strategy for an entity created by an [Action].
///
/// Currently used by [ActionGeofenceSettings.whoOwner] to decide who owns a geofence
/// created by an [ActionType.createGeofence] action. Each value is serialized to JSON
/// as an uppercase string matching the Layrz API reference. If deserialization
/// encounters an unknown value, it defaults to [none].
@JsonEnum(alwaysCreate: true)
enum ActionProperty {
  /// No explicit owner; let the system decide. Layrz API reference: `NONE`.
  @JsonValue('NONE')
  none,

  /// The owner should be the asset's owner. Layrz API reference: `ASSET`.
  @JsonValue('ASSET')
  asset,

  /// The owner should be the action's owner. Layrz API reference: `ACTION`.
  @JsonValue('ACTION')
  action,
  ;

  /// Returns the JSON representation of this property (e.g., `NONE`, `ASSET`).
  @override
  String toString() => toJson();

  /// Converts this [ActionProperty] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is
  /// not found in the generated map (should never occur), defaults to `'NONE'`.
  String toJson() => _$ActionPropertyEnumMap[this] ?? 'NONE';

  /// Converts a JSON string to an [ActionProperty].
  ///
  /// Accepts the uppercase JSON values from the server wire format. If the input does
  /// not match any known value, returns [none] as the fallback default.
  static ActionProperty fromJson(String json) =>
      _$ActionPropertyEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? ActionProperty.none;
}
