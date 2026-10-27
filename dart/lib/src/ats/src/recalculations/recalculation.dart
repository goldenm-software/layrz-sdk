part of '../../ats.dart';

/// A recalculation of ATS entities, run over [assets] or over the transport of an [operation].
@freezed
abstract class AtsRecalculation with _$AtsRecalculation {
  /// Constructs an immutable [AtsRecalculation].
  const factory AtsRecalculation({
    /// The unique identifier of the recalculation.
    String? id,

    /// The [User] who requested the recalculation.
    User? user,

    /// The ID of the user who requested the recalculation.
    String? userId,

    /// The start of the recalculated range.
    @TimestampOrNullConverter() DateTime? startAt,

    /// The end of the recalculated range.
    @TimestampOrNullConverter() DateTime? endAt,

    /// When the recalculation was generated.
    @TimestampOrNullConverter() DateTime? at,

    /// Whether the recalculation finished.
    @Default(false) bool isFinished,

    /// The assets selected to recalculate.
    @Default([]) List<Asset> assets,

    /// The operation linked to the recalculation, if any.
    AtsOperation? operation,
  }) = _AtsRecalculation;

  /// Deserializes an [AtsRecalculation] from a JSON map.
  factory AtsRecalculation.fromJson(Map<String, dynamic> json) => _$AtsRecalculationFromJson(json);

  // coverage:ignore-start
  /// The fields of an [AtsRecalculation] selected by [fetchAll]: user, dates, assets and operation transport.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(
      name: 'user',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(name: 'startAt'),
    GqlField(name: 'endAt'),
    GqlField(name: 'at'),
    GqlField(name: 'isFinished'),
    GqlField(
      name: 'assets',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(
      name: 'operation',
      fields: [
        GqlField(name: 'id'),
        GqlField(
          name: 'transportAsset',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
          ],
        ),
      ],
    ),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the recalculations (`recalculations`) of the assets [assetsIds] in the range [startAt]-[endAt].
  ///
  /// Selects [fields] plus [extraFields]. An item that does not decode is logged and skipped. Returns an empty list
  /// on any error.
  static Future<List<AtsRecalculation>> fetchAll({
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
      operation: 'recalculations',
      caller: 'AtsRecalculation/fetchAll',
      fields: [...fields, ...?extraFields],
      fromJson: AtsRecalculation.fromJson,
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
