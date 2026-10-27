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

  // coverage:ignore-start
  /// The fields of an [AtsExit] selected by [fetchAll]: pump, attendant, vehicle with its cards, flux and tank volumes.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'identifier'),
    GqlField(name: 'fromAssetId'),
    GqlField(
      name: 'fromAsset',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(name: 'attendantName'),
    GqlField(name: 'attendantId'),
    GqlField(name: 'toAssetId'),
    GqlField(
      name: 'toAsset',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(
          name: 'authenticationCardCardboard',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'number'),
            GqlField(name: 'externalIdentifier'),
            GqlField(name: 'externalIdentifierHex'),
            GqlField(name: 'typeId'),
          ],
        ),
        GqlField(
          name: 'authenticationCardNfc',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'number'),
            GqlField(name: 'externalIdentifier'),
            GqlField(name: 'externalIdentifierHex'),
            GqlField(name: 'typeId'),
          ],
        ),
        GqlField(
          name: 'authenticationCardTag',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'number'),
            GqlField(name: 'externalIdentifier'),
            GqlField(name: 'externalIdentifierHex'),
            GqlField(name: 'typeId'),
          ],
        ),
      ],
    ),
    GqlField(name: 'toAssetMileage'),
    GqlField(name: 'totalLiters'),
    GqlField(name: 'initialFluxometer'),
    GqlField(name: 'finalFluxometer'),
    GqlField(name: 'startAt'),
    GqlField(name: 'endAt'),
    GqlField(name: 'totalTimeDuration'),
    GqlField(name: 'initialTankVolume'),
    GqlField(name: 'finalTankVolume'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the exits of the pumps [assetsIds] (`exits`) in the range [startAt]-[endAt].
  ///
  /// Selects [fields] plus [extraFields]. An item that does not decode is logged and skipped. Returns an empty list
  /// on any error.
  static Future<List<AtsExit>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [assetsIds] are the IDs of the assets to filter by, if any.
    List<String>? assetsIds,

    /// [startAt] is the start of the range, if any.
    DateTime? startAt,

    /// [endAt] is the end of the range, if any.
    DateTime? endAt,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) {
    return _atsFetchMonitorEntities(
      operation: 'exits',
      caller: 'AtsExit/fetchAll',
      fields: [...fields, ...?extraFields],
      fromJson: AtsExit.fromJson,
      apiToken: apiToken,
      uri: uri,
      assetsIds: assetsIds,
      startAt: startAt,
      endAt: endAt,
      onResponse: onResponse,
    );
  }
  // coverage:ignore-end
}
