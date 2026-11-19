part of '../care_protocols.dart';

/// A checklist or set of form pages that must be completed before a case can
/// be submitted.
///
/// A [CareProtocol] operates in one of two [CareProtocolMode]s: [tasks] is
/// used when [mode] is [CareProtocolMode.simple], while [pages] is used when
/// [mode] is [CareProtocolMode.concierge]. Use [CareProtocolInput] to create
/// or update a care protocol.
@freezed
abstract class CareProtocol with _$CareProtocol {
  const CareProtocol._();

  /// Creates a new [CareProtocol].
  const factory CareProtocol({
    /// [id] is the unique identifier of the care protocol.
    required String id,

    /// [name] is the name of the care protocol.
    required String name,

    /// [mode] indicates the design mode of the care protocol.
    @JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode? mode,

    /// [tasks] is the list of tasks to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.simple].
    @Default([]) List<CareTask> tasks,

    /// [pages] is the list of pages to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.concierge].
    @Default([]) List<ConciergeFormPage> pages,

    /// [associatedTriggers] is a list of triggers associated to this care
    /// protocol.
    List<Trigger>? associatedTriggers,

    /// [numOfTasks] represents the number of tasks created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.simple].
    int? numOfTasks,

    /// [numOfPages] represents the number of pages created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.concierge].
    int? numOfPages,

    /// [numOfBlocks] represents the number of blocks created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.concierge].
    int? numOfBlocks,

    /// [access] is the list of granted access to this care protocol.
    List<Access>? access,
  }) = _CareProtocol;

  /// Converts a JSON object to a [CareProtocol].
  factory CareProtocol.fromJson(Map<String, dynamic> json) => _$CareProtocolFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with the full definition of a [CareProtocol] (tasks, pages with their blocks), its
  /// associated triggers, counters and its access grants (ID based).
  static GqlFragment get fragment => GqlFragment(name: 'careProtocolFragment', onType: 'CareProtocol')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'mode'))
    ..add(
      GqlField(name: 'tasks')
        ..add(GqlField(name: 'question'))
        ..add(GqlField(name: 'answer'))
        ..add(GqlField(name: 'minValue'))
        ..add(GqlField(name: 'maxValue'))
        ..add(GqlField(name: 'choices')),
    )
    ..add(
      GqlField(name: 'pages')
        ..add(GqlField(name: 'title'))
        ..add(
          GqlField(name: 'blocks')
            ..add(GqlField(name: 'name'))
            ..add(GqlField(name: 'blockType'))
            ..add(
              GqlField(name: 'showWhen')
                ..add(GqlField(name: 'blockId'))
                ..add(GqlField(name: 'min'))
                ..add(GqlField(name: 'max'))
                ..add(GqlField(name: 'value'))
                ..add(GqlField(name: 'validator'))
                ..add(GqlField(name: 'validatorOperator')),
            )
            ..add(
              GqlField(name: 'configuration')
                ..add(GqlField(name: 'allowEmpty'))
                ..add(GqlField(name: 'isMultiple'))
                ..add(GqlField(name: 'min'))
                ..add(GqlField(name: 'max'))
                ..add(GqlField(name: 'asInt'))
                ..add(GqlField(name: 'choices')),
            ),
        ),
    )
    ..add(
      GqlField(name: 'associatedTriggers')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'code'))
        ..add(GqlField(name: 'kind')),
    )
    ..add(GqlField(name: 'numOfTasks'))
    ..add(GqlField(name: 'numOfPages'))
    ..add(GqlField(name: 'numOfBlocks'))
    ..add(GqlField(name: 'access', fragment: Access.idFragment));
  // coverage:ignore-end

  /// Builds the `careProtocols` listing query with the lightweight selection (`id`, `name`, `mode`, `numOfTasks`,
  /// `numOfPages` and `numOfBlocks`).
  @visibleForTesting
  static GqlQuery listQuery() => GqlQuery(variables: [], name: 'careProtocols')
    ..add(
      GqlField(name: 'careProtocols')
        ..add(GqlField(name: 'status'))
        ..add(GqlField(name: 'errors'))
        ..add(
          GqlField(name: 'result')
            ..add(GqlField(name: 'id'))
            ..add(GqlField(name: 'name'))
            ..add(GqlField(name: 'mode'))
            ..add(GqlField(name: 'numOfTasks'))
            ..add(GqlField(name: 'numOfPages'))
            ..add(GqlField(name: 'numOfBlocks')),
        ),
    );

  /// Builds the `careProtocols` query that fetches the care protocol identified by [id] with the full [fragment].
  @visibleForTesting
  static GqlQuery detailQuery(String id) =>
      GqlQuery(
        variables: [
          GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
        ],
        name: 'careProtocols',
      )..add(
        GqlField(name: 'careProtocols', args: {'id': 'id'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: fragment)),
      );

  /// Builds the `deleteCareProtocols` mutation. The backend declares its `ids` argument as `[ID]!`, so the
  /// variable is declared exactly like that.
  @visibleForTesting
  static GqlMutation deleteMutation(List<String> ids) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'ids',
            type: .list(of: .id),
            isRequired: true,
            value: ids,
          ),
        ],
        name: 'deleteCareProtocols',
      )..add(
        GqlField(name: 'deleteCareProtocols', args: {'ids': 'ids'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors')),
      );

  // coverage:ignore-start
  /// Fetches every care protocol visible to the authenticated user.
  ///
  /// Uses a lightweight selection (`id`, `name`, `mode`, `numOfTasks`, `numOfPages` and `numOfBlocks`), enough to
  /// list them. Use [fetch] to get the full [fragment] of a single care protocol. Authentication is carried solely
  /// via the connector's `Authorization` header.
  ///
  /// Returns the list of care protocols, or an empty list on any error ([onResponse] receives the status).
  static Future<List<CareProtocol>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(listQuery(), _careProtocolListDecoder);

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/CareProtocol/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single care protocol by [id], with the full [fragment] (tasks, pages, associated triggers and
  /// access included).
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the care protocol, or `null` when it does not exist or on any error ([onResponse] receives the
  /// status).
  static Future<CareProtocol?> fetch({
    /// The identifier of the care protocol to fetch.
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
          Log.warning("layrz_sdk/CareProtocol/fetch(): No result in list");
          return null;
        }
        return _careProtocolDecoder(resultList.first);
      });

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/CareProtocol/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the care protocols identified by [ids].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> deleteMultiple({
    /// The identifiers of the care protocols to delete.
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
      Log.critical("layrz_sdk/CareProtocol/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a single-object `result` payload into a [CareProtocol].
CareProtocol _careProtocolDecoder(Object? json) {
  return CareProtocol.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Decodes a listing `result` payload into a list of [CareProtocol].
List<CareProtocol> _careProtocolListDecoder(Object? json) {
  return List<CareProtocol>.from(
    (json as List? ?? []).map((e) => CareProtocol.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// The input variant of [CareProtocol], used to create or update a care
/// protocol.
@unfreezed
abstract class CareProtocolInput with _$CareProtocolInput {
  const CareProtocolInput._();

  /// Creates a new [CareProtocolInput].
  factory CareProtocolInput({
    /// [id] is the unique identifier of the care protocol. Omit to create a
    /// new care protocol.
    String? id,

    /// [name] is the name of the care protocol.
    @Default("") String name,

    /// [mode] indicates the design mode of the care protocol.
    @JsonKey(unknownEnumValue: CareProtocolMode.simple) @Default(CareProtocolMode.simple) CareProtocolMode mode,

    /// [tasks] is the list of tasks to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.simple].
    @Default([]) List<CareTaskInput> tasks,

    /// [pages] is the list of pages to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.concierge].
    @Default([]) List<ConciergeFormPageInput> pages,
  }) = _CareProtocolInput;

  /// Converts a JSON object to a [CareProtocolInput].
  factory CareProtocolInput.fromJson(Map<String, dynamic> json) => _$CareProtocolInputFromJson(json);

  /// Recursively removes every `null` value from [value], both in maps and in (lists of) nested maps. Non-null
  /// values are kept untouched. The backend fails with an internal error when a nested object such as a block
  /// `configuration` arrives as an explicit `null`, so the payload must omit it instead.
  @visibleForTesting
  static Object? removeNulls(Object? value) {
    if (value is Map) {
      return <String, dynamic>{
        for (final entry in value.entries)
          if (entry.value != null) entry.key.toString(): removeNulls(entry.value),
      };
    }

    if (value is List) {
      return [
        for (final item in value)
          if (item != null) removeNulls(item),
      ];
    }

    return value;
  }

  /// The JSON payload sent to the server: [toJson] without any nested `null`.
  @visibleForTesting
  Map<String, dynamic> get payload => removeNulls(toJson()) as Map<String, dynamic>;

  /// Builds the [operation] (`addCareProtocol` or `editCareProtocol`) mutation with [data] as `CareProtocolInput!`.
  @visibleForTesting
  static GqlMutation saveMutation(String operation, Map<String, dynamic> data) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'data',
            type: GqlVariableType.input(of: 'CareProtocolInput'),
            isRequired: true,
            value: data,
          ),
        ],
        name: operation,
      )..add(
        GqlField(name: operation, args: {'data': 'data'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: CareProtocol.fragment)),
      );

  // coverage:ignore-start
  /// Creates or updates this care protocol on the server.
  ///
  /// Sends `addCareProtocol` when [id] is `null` and `editCareProtocol` otherwise, serializing this input as the
  /// `CareProtocolInput` GraphQL input type. Nested `null` values are removed from the payload. Authentication
  /// is carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, CareProtocol?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedCareProtocol)`.
  Future<StandardResponse<CareProtocol>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addCareProtocol' : 'editCareProtocol';
    try {
      final response = await connector.mutate(saveMutation(operation, payload), _careProtocolDecoder);

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
      Log.critical("layrz_sdk/CareProtocolInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
