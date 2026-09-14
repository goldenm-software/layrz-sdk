part of '../checkpoint.dart';

/// The role a [Waypoint] plays within a [Checkpoint]'s route.
///
/// [WaypointKind] distinguishes between the travel time linking two
/// waypoints and the dwell time spent inside a geofence.
enum WaypointKind {
  /// [pathway] - This is the identification of the time between one waypoint
  /// and another.
  pathway,

  /// [point] - This refers to the time inside of a geofence.
  point,
  ;

  /// Converts this [WaypointKind] to its wire JSON string (e.g., `'PATHWAY'`,
  /// `'POINT'`).
  @override
  String toString() => toJson();

  /// Converts this [WaypointKind] to its wire JSON string.
  String toJson() {
    switch (this) {
      case WaypointKind.pathway:
        return 'PATHWAY';
      case WaypointKind.point:
        return 'POINT';
    }
  }

  /// Converts a JSON string to a [WaypointKind].
  ///
  /// Throws an [Exception] if [json] does not match a known value.
  static WaypointKind fromJson(String json) {
    switch (json) {
      case 'PATHWAY':
        return WaypointKind.pathway;
      case 'POINT':
        return WaypointKind.point;
      default:
        throw Exception('Unknown WaypointKind: $json');
    }
  }
}

/// A [JsonConverter] that converts between [WaypointKind] and its wire string.
class WaypointKindConverter implements JsonConverter<WaypointKind, String> {
  /// Creates a [WaypointKindConverter].
  const WaypointKindConverter();

  @override
  WaypointKind fromJson(String json) {
    return WaypointKind.fromJson(json);
  }

  @override
  String toJson(WaypointKind object) => object.toJson();
}

/// A [JsonConverter] that converts between nullable [WaypointKind] and its
/// nullable wire string.
class WaypointKindOrNullConverter implements JsonConverter<WaypointKind?, String?> {
  /// Creates a [WaypointKindOrNullConverter].
  const WaypointKindOrNullConverter();

  @override
  WaypointKind? fromJson(String? json) {
    if (json == null) return null;
    return WaypointKind.fromJson(json);
  }

  @override
  String? toJson(WaypointKind? object) => object?.toJson();
}

/// A single stop or pathway segment within a [Checkpoint]'s route.
///
/// [Waypoint] represents either a geofence to pause at ([WaypointKind.point])
/// or the travel segment between two stops ([WaypointKind.pathway]).
@freezed
abstract class Waypoint with _$Waypoint {
  /// Constructs an immutable [Waypoint].
  const factory Waypoint({
    /// ID of the waypoint entity. This ID is unique.
    required String id,

    /// Geofence ID associated to the route as checkpoint, or null if not set.
    String? geofenceId,

    /// Geofence associated to the route as checkpoint, or null if not set.
    Geofence? geofence,

    /// This is the time between two waypoints or the time inside of the geofence.
    String? time,

    /// It can be [WaypointKind.point] or [WaypointKind.pathway]. See [WaypointKind] for more
    /// information.
    @WaypointKindOrNullConverter() WaypointKind? kind,
  }) = _Waypoint;

  /// Deserializes a [Waypoint] from a JSON map.
  factory Waypoint.fromJson(Map<String, dynamic> json) => _$WaypointFromJson(json);
}
