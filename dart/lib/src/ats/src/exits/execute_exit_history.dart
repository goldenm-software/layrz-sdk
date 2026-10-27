part of '../../ats.dart';

@freezed
abstract class AtsExecuteExitHistory with _$AtsExecuteExitHistory {
  factory AtsExecuteExitHistory({
    /// ID of the recalculation entity. This ID is unique.
    String? id,

    /// User NAME who execute the exit
    String? generatedBy,

    /// Pump asset name
    String? fromAsset,

    /// Vehicle asset name
    String? toAsset,

    /// Date of execution
    @TimestampOrNullConverter() DateTime? createdAt,

    /// Reason of any error in execution
    String? errorResponse,

    /// Execution status to know the process
    @AtsExitExecuteStatusOrNullConverter() AtsExitExecuteStatus? status,
  }) = _AtsExecuteExitHistory;

  factory AtsExecuteExitHistory.fromJson(Map<String, dynamic> json) => _$AtsExecuteExitHistoryFromJson(json);

  // coverage:ignore-start
  /// The fields of an [AtsExecuteExitHistory] selected by [fetchAll].
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'generatedBy'),
    GqlField(name: 'fromAsset'),
    GqlField(name: 'toAsset'),
    GqlField(name: 'createdAt'),
    GqlField(name: 'errorResponse'),
    GqlField(name: 'status'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the exit executions of the pumps [fromAssetIds] (`exitExecutions`) in the range [startAt]-[endAt].
  ///
  /// Selects [fields] plus [extraFields]. An item that does not decode is logged and skipped. Returns an empty list
  /// on any error.
  static Future<List<AtsExecuteExitHistory>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [fromAssetIds] are the IDs of the pumps to filter by, if any.
    List<String>? fromAssetIds,

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
      operation: 'exitExecutions',
      caller: 'AtsExecuteExitHistory/fetchAll',
      fields: [...fields, ...?extraFields],
      fromJson: AtsExecuteExitHistory.fromJson,
      apiToken: apiToken,
      uri: uri,
      assetsArg: 'fromAssetIds',
      assetsType: .list(of: .id, isRequired: true),
      assetsIds: fromAssetIds,
      startAt: startAt,
      endAt: endAt,
      onResponse: onResponse,
    );
  }
  // coverage:ignore-end
}

enum AtsExitExecuteStatus {
  pending,
  failed,
  success;

  @override
  String toString() => toJson();

  String toJson() {
    switch (this) {
      case AtsExitExecuteStatus.pending:
        return 'PENDING';
      case AtsExitExecuteStatus.failed:
        return 'FAILED';
      case AtsExitExecuteStatus.success:
        return 'SUCCESS';
      default:
        throw Exception('Unknown Status');
    }
  }

  static AtsExitExecuteStatus fromJson(String json) {
    switch (json) {
      case 'PENDING':
        return AtsExitExecuteStatus.pending;
      case 'FAILED':
        return AtsExitExecuteStatus.pending;
      case 'SUCCESS':
        return AtsExitExecuteStatus.success;
      default:
        throw Exception('Unknown STATUS');
    }
  }
}

class AtsExitExecuteStatusOrNullConverter implements JsonConverter<AtsExitExecuteStatus?, String?> {
  const AtsExitExecuteStatusOrNullConverter();

  @override
  AtsExitExecuteStatus? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsExitExecuteStatus.fromJson(json);
  }

  @override
  String? toJson(AtsExitExecuteStatus? object) {
    return object?.toJson();
  }
}
