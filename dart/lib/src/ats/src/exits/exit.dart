part of '../../ats.dart';

/// A completed fuel exit (dispatch) record in the ATS domain.
///
/// [AtsExit] represents the movement of fuel from a source pump [Asset]
/// ([fromAsset]) to a receiving [Asset] ([toAsset]), including the measured
/// volumes, fluxometer readings, timing, and the attendant who performed it.
@freezed
abstract class AtsExit with _$AtsExit {
  /// Constructs an immutable [AtsExit].
  const factory AtsExit({
    /// The unique identifier of the exit.
    String? id,

    /// The exit identifier.
    int? identifier,

    /// The identifier of the pump [Asset] that generated the exit.
    String? fromAssetId,

    /// The pump [Asset] that generated the exit.
    Asset? fromAsset,

    /// The identifier of the [Asset] that received the fuel.
    String? toAssetId,

    /// The [Asset] that received the fuel.
    Asset? toAsset,

    /// The error percent between reception and sensor entry.
    double? errorPercent,

    /// The total liters of the exit.
    double? totalLiters,

    /// The odometer reading of the receiving asset.
    double? toAssetMileage,

    /// The start date of the exit.
    @TimestampOrNullConverter() DateTime? startAt,

    /// The end date of the exit.
    @TimestampOrNullConverter() DateTime? endAt,

    /// The total exit time, as a human-readable string.
    String? totalTime,

    /// The total exit duration, in seconds.
    @DurationOrNullConverter() Duration? totalTimeDuration,

    /// The initial fluxometer reading of the day.
    double? initialFluxometer,

    /// The final fluxometer reading of the day.
    double? finalFluxometer,

    /// The initial tank volume of the day.
    double? initialTankVolume,

    /// The final tank volume of the day.
    double? finalTankVolume,

    /// The unit price per liter of the exit.
    double? price,

    /// The name of the attendant who performed the exit.
    String? attendantName,

    /// The identifier of the attendant who performed the exit.
    String? attendantId,
  }) = _AtsExit;

  /// Deserializes an [AtsExit] from a JSON map.
  factory AtsExit.fromJson(Map<String, dynamic> json) => _$AtsExitFromJson(json);
}
