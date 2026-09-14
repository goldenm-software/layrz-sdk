part of '../actions.dart';

/// Immutable settings for the geofence created by an [Action] whose [ActionType] is
/// [ActionType.createGeofence].
@freezed
abstract class ActionGeofenceSettings with _$ActionGeofenceSettings {
  /// Private constructor used by the code generator.
  const ActionGeofenceSettings._();

  /// Constructs an immutable [ActionGeofenceSettings].
  const factory ActionGeofenceSettings({
    /// Who should own the geofence to create.
    @JsonKey(unknownEnumValue: ActionProperty.none) @Default(ActionProperty.none) ActionProperty whoOwner,

    /// The name of the geofence to create. This value is an LCL formula.
    String? name,

    /// The category of the geofence to create.
    GeofenceCategory? category,

    /// The radius (in meters) of the geofence to create.
    double? radius,

    /// The ID of the Mappit route the geofence to create is bound to.
    String? mappitRouteId,

    /// The Mappit route the geofence to create is bound to.
    MappitRoute? mappitRoute,
  }) = _ActionGeofenceSettings;

  /// Deserializes an [ActionGeofenceSettings] from a JSON map.
  factory ActionGeofenceSettings.fromJson(Map<String, dynamic> json) =>
      _$ActionGeofenceSettingsFromJson(json);
}

/// Mutable input data for the geofence created by an [ActionInput] whose [kind] is
/// [ActionType.createGeofence].
@unfreezed
abstract class ActionGeofenceSettingsInput with _$ActionGeofenceSettingsInput {
  /// Private constructor used by the code generator.
  const ActionGeofenceSettingsInput._();

  /// Constructs a mutable [ActionGeofenceSettingsInput].
  factory ActionGeofenceSettingsInput({
    /// Who should own the geofence to create. Defaults to [ActionProperty.none].
    @JsonKey(unknownEnumValue: ActionProperty.none) @Default(ActionProperty.none) ActionProperty whoOwner,

    /// The name of the geofence to create. This value is an LCL formula.
    String? name,

    /// The category of the geofence to create.
    @JsonKey(unknownEnumValue: GeofenceCategory.none) @Default(GeofenceCategory.none) GeofenceCategory category,

    /// The radius (in meters) of the geofence to create. Defaults to `10.0`.
    @Default(10.0) double radius,

    /// The ID of the Mappit route the geofence to create is bound to.
    String? mappitRouteId,
  }) = _ActionGeofenceSettingsInput;

  /// Deserializes an [ActionGeofenceSettingsInput] from a JSON map.
  factory ActionGeofenceSettingsInput.fromJson(Map<String, dynamic> json) =>
      _$ActionGeofenceSettingsInputFromJson(json);
}
