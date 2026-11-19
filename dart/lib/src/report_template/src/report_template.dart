part of '../report_template.dart';

/// Immutable definition of a reusable report, made of an ordered list of [ReportTemplatePage]s.
@freezed
abstract class ReportTemplate with _$ReportTemplate {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplate._();

  /// Constructs an immutable [ReportTemplate].
  const factory ReportTemplate({
    /// Is the report template ID.
    required String id,

    /// Is the report template name. The backend allows a null value, which is read as an empty string.
    @Default('') String name,

    /// Is the structure of the report template, as an ordered list of pages.
    List<ReportTemplatePage>? structure,

    /// Is the report template linked assets.
    List<Asset>? assets,

    /// Is the report template linked assets' IDs.
    List<String>? assetsIds,

    /// Is the report template linked outbound services.
    List<OutboundService>? outboundServices,

    /// Is the report template linked outbound services' IDs.
    List<String>? outboundServicesIds,

    /// Controls the access of this entity.
    List<Access>? access,
  }) = _ReportTemplate;

  /// Deserializes a [ReportTemplate] from a JSON map.
  factory ReportTemplate.fromJson(Map<String, dynamic> json) => _$ReportTemplateFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with the full definition of a [ReportTemplate]: linked asset and outbound service IDs, its
  /// structure (pages with their columns and script) and its access grants (ID based, since the templates use a
  /// numeric ID).
  static GqlFragment get fragment => GqlFragment(name: 'reportTemplateFragment', onType: 'ReportTemplate')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'assetsIds'))
    ..add(GqlField(name: 'outboundServicesIds'))
    ..add(
      GqlField(name: 'structure')
        ..add(GqlField(name: 'title'))
        ..add(GqlField(name: 'source'))
        ..add(GqlField(name: 'algorithm'))
        ..add(
          GqlField(name: 'cols')
            ..add(GqlField(name: 'name'))
            ..add(GqlField(name: 'field'))
            ..add(GqlField(name: 'visible'))
            ..add(GqlField(name: 'isCustom')),
        )
        ..add(GqlField(name: 'script')),
    )
    ..add(GqlField(name: 'access', fragment: Access.idFragment));
  // coverage:ignore-end

  /// Builds the `reportTemplates` listing query with the lightweight selection: `id`, `name` and the `title` of
  /// each page of the `structure` (enough to list the templates and count their pages).
  @visibleForTesting
  static GqlQuery listQuery() => GqlQuery(variables: [], name: 'reportTemplates')
    ..add(
      GqlField(name: 'reportTemplates')
        ..add(GqlField(name: 'status'))
        ..add(GqlField(name: 'errors'))
        ..add(
          GqlField(name: 'result')
            ..add(GqlField(name: 'id'))
            ..add(GqlField(name: 'name'))
            ..add(GqlField(name: 'structure')..add(GqlField(name: 'title'))),
        ),
    );

  /// Builds the `reportTemplates` query that fetches the report template identified by [id] with the full
  /// [fragment]. The backend declares its `id` argument as `ID`.
  @visibleForTesting
  static GqlQuery detailQuery(String id) =>
      GqlQuery(
        variables: [
          GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
        ],
        name: 'reportTemplates',
      )..add(
        GqlField(name: 'reportTemplates', args: {'id': 'id'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: fragment)),
      );

  /// Builds the `deleteReportTemplates` mutation. The backend declares its `ids` argument as `[ID]!`, so the
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
        name: 'deleteReportTemplates',
      )..add(
        GqlField(name: 'deleteReportTemplates', args: {'ids': 'ids'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors')),
      );

  // coverage:ignore-start
  /// Fetches every report template visible to the authenticated user.
  ///
  /// Uses a lightweight selection (`id`, `name` and the `title` of each page of the `structure`), enough to list
  /// them and count their pages. Use [fetch] to get the full [fragment] of a single template. Authentication is
  /// carried solely via the connector's `Authorization` header.
  ///
  /// Returns the list of report templates, or an empty list on any error ([onResponse] receives the status).
  static Future<List<ReportTemplate>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(listQuery(), _reportTemplateListDecoder);

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportTemplate/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single report template by [id], with the full [fragment] (structure and access included).
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the report template, or `null` when it does not exist or on any error ([onResponse] receives the
  /// status).
  static Future<ReportTemplate?> fetch({
    /// The identifier of the report template to fetch.
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
          Log.warning("layrz_sdk/ReportTemplate/fetch(): No result in list");
          return null;
        }
        return _reportTemplateDecoder(resultList.first);
      });

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReportTemplate/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the report templates identified by [ids].
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> deleteMultiple({
    /// The identifiers of the report templates to delete.
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
      Log.critical("layrz_sdk/ReportTemplate/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a single-object `result` payload into a [ReportTemplate].
ReportTemplate _reportTemplateDecoder(Object? json) {
  return ReportTemplate.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Decodes a listing `result` payload into a list of [ReportTemplate].
List<ReportTemplate> _reportTemplateListDecoder(Object? json) {
  return List<ReportTemplate>.from(
    (json as List? ?? []).map((e) => ReportTemplate.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// Mutable input data for creating or updating a [ReportTemplate].
@unfreezed
abstract class ReportTemplateInput with _$ReportTemplateInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplateInput._();

  /// Constructs a mutable [ReportTemplateInput].
  factory ReportTemplateInput({
    /// Is the report template ID, or null when creating a new one.
    String? id,

    /// Is the report template name. Defaults to an empty string.
    @Default('') String name,

    /// Is the report template linked assets' IDs. Defaults to an empty list.
    @Default([]) List<String> assetsIds,

    /// Is the report template linked outbound services' IDs. Defaults to an empty list.
    @Default([]) List<String> outboundServicesIds,

    /// Is the structure of the report template, as an ordered list of pages. Defaults to an
    /// empty list.
    @Default([]) List<ReportTemplatePageInput> structure,
  }) = _ReportTemplateInput;

  /// Deserializes a [ReportTemplateInput] from a JSON map.
  factory ReportTemplateInput.fromJson(Map<String, dynamic> json) => _$ReportTemplateInputFromJson(json);

  /// Recursively removes every `null` value from [value], both in maps and in (lists of) nested maps. Non-null
  /// values are kept untouched, so the payload sent to the backend never carries an explicit nested `null`.
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

  /// Builds the [operation] (`addReportTemplate` or `editReportTemplate`) mutation with [data] as
  /// `ReportTemplateInput!` (the backend declares it nullable, a required variable is valid there).
  @visibleForTesting
  static GqlMutation saveMutation(String operation, Map<String, dynamic> data) =>
      GqlMutation(
        variables: [
          GqlVariable(
            name: 'data',
            type: GqlVariableType.input(of: 'ReportTemplateInput'),
            isRequired: true,
            value: data,
          ),
        ],
        name: operation,
      )..add(
        GqlField(name: operation, args: {'data': 'data'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fragment: ReportTemplate.fragment)),
      );

  // coverage:ignore-start
  /// Creates or updates this report template on the server.
  ///
  /// Sends `addReportTemplate` when [id] is `null` and `editReportTemplate` otherwise, serializing this input as
  /// the `ReportTemplateInput` GraphQL input type. Nested `null` values are removed from the payload.
  /// Authentication is carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, ReportTemplate?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedReportTemplate)`.
  Future<StandardResponse<ReportTemplate>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addReportTemplate' : 'editReportTemplate';
    try {
      final response = await connector.mutate(saveMutation(operation, payload), _reportTemplateDecoder);

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
      Log.critical("layrz_sdk/ReportTemplateInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
