part of '../mappit.dart';

/// A single link or unlink event in a [MappitRoute]'s seller assignment
/// history.
///
/// [MappitRouteLinkingHistory] records who performed the operation
/// ([performedBy]/[performedById]) and when ([performedAt]), along with the
/// seller that resulted from it ([currentSeller]/[currentSellerId]).
@freezed
abstract class MappitRouteLinkingHistory with _$MappitRouteLinkingHistory {
  /// Constructs an immutable [MappitRouteLinkingHistory].
  const factory MappitRouteLinkingHistory({
    /// [currentSeller] represents the current seller of the route. If this field comes null, means
    /// is a unlink.
    Asset? currentSeller,

    /// [currentSellerId] represents the current seller ID of the route. If this field comes null,
    /// means is a unlink.
    String? currentSellerId,

    /// [performedBy] represents the user that performed the operation of link or unlink.
    /// If this field comes null, the relation was soft-deleted (e.g. the user was removed);
    /// [performedById] still holds the plain ID of who performed the operation.
    User? performedBy,

    /// [performedById] represents the user ID that performed the operation of link or unlink.
    required String performedById,

    /// [performedAt] is the timestamp of the operation.
    @TimestampConverter() required DateTime performedAt,
  }) = _MappitRouteLinkingHistory;

  /// Deserializes a [MappitRouteLinkingHistory] from a JSON map.
  factory MappitRouteLinkingHistory.fromJson(Map<String, dynamic> json) => _$MappitRouteLinkingHistoryFromJson(json);
}

/// Immutable route data for Mappit sales/service planning.
///
/// [MappitRoute] links a named route to a set of [geofences], a
/// [currentSeller], optional [secondarySellers], and its full
/// [assignmentsHistory] of seller link/unlink operations.
@freezed
abstract class MappitRoute with _$MappitRoute {
  /// Constructs an immutable [MappitRoute].
  const factory MappitRoute({
    /// [id] represents the route ID.
    required String id,

    /// [name] represents the route name.
    required String name,

    /// [currentSeller] represents the current seller of the route.
    Asset? currentSeller,

    /// [currentSellerId] represents the current seller ID of the route.
    String? currentSellerId,

    /// [geofences] represents the geofences linked to the route.
    List<Geofence>? geofences,

    /// [geofencesIds] represents the geofences IDs linked to the route.
    List<String>? geofencesIds,

    /// [assignmentsHistory] is the history of the link and unlink operations of this route.
    List<MappitRouteLinkingHistory>? assignmentsHistory,

    /// [ownerId] refers to the owner of the route.
    String? ownerId,

    /// [owner] refers to the owner of the route.
    User? owner,

    /// [secondarySellers] represents the secondary sellers of the route.
    List<Asset>? secondarySellers,

    /// [secondarySellersIds] represents the secondary sellers IDs of the route.
    List<String>? secondarySellersIds,
  }) = _MappitRoute;

  /// Deserializes a [MappitRoute] from a JSON map.
  factory MappitRoute.fromJson(Map<String, dynamic> json) => _$MappitRouteFromJson(json);
}
