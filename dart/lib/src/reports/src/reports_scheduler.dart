part of '../reports.dart';

@freezed
abstract class ReportScheduler with _$ReportScheduler {
  const ReportScheduler._();

  const factory ReportScheduler({
    /// ID of the report scheduler.
    required String id,

    /// Name of the report scheduler.
    String? name,

    /// Owner user of the report scheduler.
    ///
    /// The backend does not expose this field in `ReportScheduler`, so it is never selected by [fragment] and is
    /// always `null` when decoding a backend response. Selecting it makes the whole query fail.
    @Deprecated('The backend does not expose the owner of a report scheduler. It is always null.') String? ownerId,

    /// List of asset IDs associated with the report scheduler.
    @Default([]) List<String> assetsIds,

    /// List of outbound service IDs associated with the report scheduler.
    @Default([]) List<String> outboundServicesIds,

    /// Code of the report template used for this report scheduler.
    String? templateCode,

    /// ID of the report template used for this report scheduler.
    String? templateId,

    /// Relative time for the report, used to determine the time range for the report.
    @JsonKey(unknownEnumValue: RelativeChoices.unknown) @Default(RelativeChoices.unknown) RelativeChoices relativeTime,

    /// List of emails to which the report should be sent.
    @Default([]) List<String> sendTo,

    /// Days of the week when the report should be executed.
    @JsonKey(unknownEnumValue: Weekday.monday) @Default([]) List<Weekday> execWeekdays,

    /// Time of day when the report should be executed. The stored value is in HH:MM format (24 hours format).
    @TimeOfDayOrNullConverter() TimeOfDay? execTime,

    /// Time zone for the execution time of the report. The stored value is a valid IANA timezone name.
    @Default('UTC') String execTz,

    /// Date of last update.
    @TimestampConverter() DateTime? updatedAt,

    /// User id who last updated the report scheduler.
    String? updatedById,

    /// User last updated the report scheduler.
    User? updatedBy,

    /// Date of creation.
    @TimestampConverter() DateTime? createdAt,

    /// User who created the report scheduler.
    String? createdById,

    /// User who created the report scheduler.
    User? createdBy,

    /// Subject of the report email
    String? subject,

    /// List of custom [access] permissions.
    List<Access>? access,

    /// Indicates whether the report scheduler is enabled or not.
    bool? enabled,
  }) = _ReportScheduler;

  factory ReportScheduler.fromJson(Map<String, dynamic> json) => _$ReportSchedulerFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with the definition of a [ReportScheduler] as the backend exposes it. It never selects
  /// `ownerId` (the backend entity has no such field and selecting it fails the whole query) nor `access` (the
  /// backend does not filter the schedulers by access).
  static GqlFragment get fragment => GqlFragment(name: 'reportSchedulerFragment', onType: 'ReportScheduler')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'assetsIds'))
    ..add(GqlField(name: 'outboundServicesIds'))
    ..add(GqlField(name: 'templateCode'))
    ..add(GqlField(name: 'templateId'))
    ..add(GqlField(name: 'relativeTime'))
    ..add(GqlField(name: 'sendTo'))
    ..add(GqlField(name: 'subject'))
    ..add(GqlField(name: 'execWeekdays'))
    ..add(GqlField(name: 'execTime'))
    ..add(GqlField(name: 'execTz'))
    ..add(GqlField(name: 'enabled'))
    ..add(GqlField(name: 'createdAt'))
    ..add(GqlField(name: 'createdById'))
    ..add(
      GqlField(name: 'createdBy')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name')),
    )
    ..add(GqlField(name: 'updatedAt'))
    ..add(GqlField(name: 'updatedById'))
    ..add(
      GqlField(name: 'updatedBy')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name')),
    );
  // coverage:ignore-end

  /// Builds the `reportSchedulers` listing query with the full [fragment].
  @visibleForTesting
  static GqlQuery listQuery() => GqlQuery(variables: [], name: 'reportSchedulers')
    ..add(
      GqlField(name: 'reportSchedulers')
        ..add(GqlField(name: 'status'))
        ..add(GqlField(name: 'errors'))
        ..add(GqlField(name: 'result', fragment: fragment)),
    );

  /// Builds the `reportSchedulers` query that fetches the report scheduler identified by [id] with the full
  /// [fragment]. The backend declares its `id` argument as `ID`.
  @visibleForTesting
  static GqlQuery detailQuery(String id) =>
      GqlQuery(
        variables: [
          GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
        ],
        name: 'reportSchedulers',
      )..add(
        GqlField(name: 'reportSchedulers', args: {'id': 'id'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: fragment)),
      );

  /// Builds the `deleteReportScheduler` mutation. The backend declares its `ids` argument as `[ID]` (optional), so
  /// the variable is declared exactly like that.
  @visibleForTesting
  static GqlMutation deleteMutation(List<String> ids) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'ids',
            type: .list(of: .id),
            value: ids,
          ),
        ],
        name: 'deleteReportScheduler',
      )..add(
        GqlField(name: 'deleteReportScheduler', args: {'ids': 'ids'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors')),
      );

  /// Builds the `toggleReportScheduler` mutation. The backend declares its `ids` argument as `[ID]` (optional).
  /// It selects only `status` and `errors`: the backend declares `result` as a `ReportScheduler` but resolves a
  /// list of strings, so selecting it breaks the response.
  @visibleForTesting
  static GqlMutation toggleMutation(List<String> ids) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'ids',
            type: .list(of: .id),
            value: ids,
          ),
        ],
        name: 'toggleReportScheduler',
      )..add(
        GqlField(name: 'toggleReportScheduler', args: {'ids': 'ids'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors')),
      );

  // coverage:ignore-start
  /// Fetches every report scheduler visible to the authenticated user, with the full [fragment].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the list of report schedulers, or an empty list on any error ([onResponse] receives the status).
  static Future<List<ReportScheduler>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(listQuery(), _reportSchedulerListDecoder);

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportScheduler/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single report scheduler by [id], with the full [fragment].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the report scheduler, or `null` when it does not exist or on any error ([onResponse] receives the
  /// status).
  static Future<ReportScheduler?> fetch({
    /// The identifier of the report scheduler to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(detailQuery(id), (json) {
        final resultList = json as List<dynamic>?;
        if (resultList == null || resultList.isEmpty) {
          Log.warning("layrz_sdk/ReportScheduler/fetch(): No result in list");
          return null;
        }
        return _reportSchedulerDecoder(resultList.first);
      });

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportScheduler/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the report schedulers identified by [ids].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> deleteMultiple({
    /// The identifiers of the report schedulers to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(deleteMutation(ids));

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportScheduler/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Toggles (enables or disables) the report schedulers identified by [ids].
  ///
  /// The backend only toggles the schedulers owned by the user and answers `OK` even when none changed.
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> toggle({
    /// The identifiers of the report schedulers to toggle.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(toggleMutation(ids));

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportScheduler/toggle(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a single-object `result` payload into a [ReportScheduler].
ReportScheduler _reportSchedulerDecoder(Object? json) {
  return ReportScheduler.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Decodes a listing `result` payload into a list of [ReportScheduler].
List<ReportScheduler> _reportSchedulerListDecoder(Object? json) {
  return List<ReportScheduler>.from(
    (json as List? ?? []).map((e) => ReportScheduler.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

@unfreezed
abstract class ReportSchedulerInput with _$ReportSchedulerInput {
  const ReportSchedulerInput._();
  factory ReportSchedulerInput({
    /// ID of the report scheduler.
    String? id,

    /// Name of the report scheduler.
    String? name,

    /// List of asset IDs associated with the report scheduler.
    @Default([]) List<String> assetsIds,

    /// List of outbound service IDs associated with the report scheduler.
    @Default([]) List<String> outboundServicesIds,

    /// Code of the report template used for this report scheduler.
    String? templateCode,

    /// ID of the report template used for this report scheduler. If provided, templateCode must not be provided.
    String? templateId,

    /// Relative time for the report, used to determine the time range for the report. Defaults to
    /// [RelativeChoices.yesterday], which is also the backend default. [RelativeChoices.unknown] is never sent to
    /// the backend, see [payload].
    @JsonKey(unknownEnumValue: RelativeChoices.unknown)
    @Default(RelativeChoices.yesterday)
    RelativeChoices relativeTime,

    /// List of emails to which the report should be sent.
    @Default([]) List<String> sendTo,

    /// Days of the week when the report should be executed.
    @JsonKey(unknownEnumValue: Weekday.monday) @Default([]) List<Weekday> execWeekdays,

    /// Time of day when the report should be executed. The stored value is in HH:MM format (24 hours format).
    @TimeOfDayOrNullConverter() TimeOfDay? execTime,

    /// Time zone for the execution time of the report. The stored value is a valid IANA timezone name.
    @Default('UTC') String execTz,

    /// Indicates whether the report scheduler is enabled or not.
    @Default(true) bool enabled,

    /// Subject of the report email.
    String? subject,
  }) = _ReportSchedulerInput;

  factory ReportSchedulerInput.fromJson(Map<String, dynamic> json) => _$ReportSchedulerInputFromJson(json);

  /// The JSON payload sent to the server: [toJson] where a [RelativeChoices.unknown] `relativeTime` is replaced by
  /// the safe default [RelativeChoices.yesterday]. The backend enum does not have an `UNKNOWN` value and rejects
  /// the whole mutation when it receives it.
  @visibleForTesting
  Map<String, dynamic> get payload {
    final json = toJson();
    if (relativeTime == RelativeChoices.unknown) {
      json['relativeTime'] = RelativeChoices.yesterday.toJson();
    }
    return json;
  }

  /// Builds the [operation] (`addReportScheduler` or `editReportScheduler`) mutation with [data] as
  /// `ReportSchedulerInput!` (the backend declares it nullable, a required variable is valid there).
  @visibleForTesting
  static GqlMutation saveMutation(String operation, Map<String, dynamic> data) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'data',
            type: GqlVariableType.input(of: 'ReportSchedulerInput'),
            isRequired: true,
            value: data,
          ),
        ],
        name: operation,
      )..add(
        GqlField(name: operation, args: {'data': 'data'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: ReportScheduler.fragment)),
      );

  // coverage:ignore-start
  /// Creates or updates this report scheduler on the server.
  ///
  /// Sends `addReportScheduler` when [id] is `null` and `editReportScheduler` otherwise (the backend ignores
  /// [enabled] on edit, use [ReportScheduler.toggle] for that), serializing this input as the
  /// `ReportSchedulerInput` GraphQL input type through [payload]. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, ReportScheduler?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedReportScheduler)`.
  Future<StandardResponse<ReportScheduler>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addReportScheduler' : 'editReportScheduler';
    try {
      final response = await connector.mutate(saveMutation(operation, payload), _reportSchedulerDecoder);

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportSchedulerInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
