part of '../mappit.dart';

/// A Mappit recalculation request: reprocesses the messages of an [asset] between [recalcStartAt] and
/// [recalcEndAt]. List them with [fetchAll] and queue a new one with [request].
@freezed
abstract class MappitRecalculate with _$MappitRecalculate {
  const MappitRecalculate._();

  const factory MappitRecalculate({
    /// [id] represents the ID of the recalculate request. In UUIDv4 format.
    required String id,

    /// [assetId] represents the ID of the asset to recalculate.
    required String assetId,

    /// [asset] represents the asset to recalculate.
    Asset? asset,

    /// [requestedById] represents the ID of the user who requested the recalculate.
    required String requestedById,

    /// [requestedBy] represents the user who requested the recalculate.
    User? requestedBy,

    /// [requestedByIp] represents the IP address of the user who requested the recalculate.
    required String requestedByIp,

    /// [progress] represents the progress of the recalculate request, from 0 to 100.
    @Default(0) double progress,

    /// [requestedAt] represents the date and time when the recalculate was requested.
    @TimestampConverter() required DateTime requestedAt,

    /// [recalcStartAt] represents the date and time when the recalculate started.
    @TimestampConverter() required DateTime recalcStartAt,

    /// [recalcEndAt] represents the date and time when the recalculate ended.
    @TimestampConverter() required DateTime recalcEndAt,

    /// [status] represents the status of the recalculate request.
    @JsonKey(unknownEnumValue: MappitRecalculateStatus.scheduled) required MappitRecalculateStatus status,
  }) = _MappitRecalculate;

  factory MappitRecalculate.fromJson(Map<String, dynamic> json) => _$MappitRecalculateFromJson(json);

  // coverage:ignore-start
  /// The selection used by [fetchAll]: the request with its asset and requester.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'assetId'),
    GqlField(
      name: 'asset',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'mode'),
        GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      ],
    ),
    GqlField(name: 'requestedById'),
    GqlField(
      name: 'requestedBy',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
      ],
    ),
    GqlField(name: 'requestedAt'),
    GqlField(name: 'requestedByIp'),
    GqlField(name: 'recalcStartAt'),
    GqlField(name: 'recalcEndAt'),
    GqlField(name: 'status'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the recalculation requests, newest first (`mappitRecalculates`, Mappit and public APIs).
  ///
  /// [limit] and [offset] paginate (the API defaults are 100 and 0). Selects [fields] plus [extraFields].
  /// Returns an empty list on any error.
  static Future<List<MappitRecalculate>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [limit] is the maximum number of requests to return.
    int? limit,

    /// [offset] is the pagination offset.
    int? offset,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'mappitRecalculates',
          variables: [
            if (limit != null) GqlVariable(name: 'limit', value: limit, type: .int),
            if (offset != null) GqlVariable(name: 'offset', value: offset, type: .int),
          ],
        )..add(
          GqlField(
              name: 'mappitRecalculates',
              args: {
                if (limit != null) 'limit': 'limit',
                if (offset != null) 'offset': 'offset',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: [...fields, ...?extraFields])),
        ),
        _mappitRecalculateListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRecalculate/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRecalculate/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Queues a recalculation of the asset [assetId] between [startAt] and [endAt] (`requestMappitRecalc`).
  ///
  /// Returns the status and, on a rejected request, the field errors (for example `outsideRange` when
  /// [startAt] is after [endAt]).
  static Future<StandardResponse<void>> request({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [assetId] is the ID of the asset to recalculate.
    required String assetId,

    /// [startAt] is the start of the range to recalculate.
    required DateTime startAt,

    /// [endAt] is the end of the range to recalculate.
    required DateTime endAt,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'requestMappitRecalc',
          variables: [
            GqlVariable(name: 'assetId', value: assetId, type: .id, isRequired: true),
            GqlVariable(name: 'startAt', value: startAt.millisecondsSinceEpoch ~/ 1000, type: .unix, isRequired: true),
            GqlVariable(name: 'endAt', value: endAt.millisecondsSinceEpoch ~/ 1000, type: .unix, isRequired: true),
          ],
        )..add(
          GqlField(
              name: 'requestMappitRecalc',
              args: {'assetId': 'assetId', 'startAt': 'startAt', 'endAt': 'endAt'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitRecalculate/request(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (ApiStatus.ok, null, null);
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitRecalculate/request(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}

List<MappitRecalculate> _mappitRecalculateListDecoder(Object? json) {
  if (json is! List) return [];
  return [for (final item in json) MappitRecalculate.fromJson(Map<String, dynamic>.from(item as Map))];
}

@JsonEnum(alwaysCreate: true)
enum MappitRecalculateStatus {
  /// [scheduled] represents a recalculate request that has been scheduled.
  @JsonValue('SCHEDULED')
  scheduled,

  /// [pending] represents a recalculate request that is pending, basically waiting for processing.
  @JsonValue('PENDING')
  pending,

  /// [processing] represents a recalculate request that is currently being processed.
  @JsonValue('RUNNING')
  processing,

  /// [completed] represents a recalculate request that has been completed.
  @JsonValue('FINISHED')
  completed,
  ;

  @override
  String toString() => toJson();

  String toJson() => _$MappitRecalculateStatusEnumMap[this] ?? 'SCHEDULED';

  static MappitRecalculateStatus fromJson(String value) {
    return _$MappitRecalculateStatusEnumMap.entries
            .firstWhereOrNull(
              (element) => element.value == value,
            )
            ?.key ??
        MappitRecalculateStatus.scheduled;
  }

  Color get color {
    switch (this) {
      case MappitRecalculateStatus.scheduled:
      case MappitRecalculateStatus.pending:
        return const Color(0xFFFF9800);
      case MappitRecalculateStatus.processing:
        return const Color(0xFF2196F3);
      case MappitRecalculateStatus.completed:
        return const Color(0xFF4CAF50);
    }
  }
}
