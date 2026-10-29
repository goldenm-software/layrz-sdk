part of '../mappit.dart';

/// A Mappit free day: a named date on which the linked sellers ([assets]) do not work.
///
/// Its operations exist with the same names on the Mappit API (`/mappit/graphql`) and on the public
/// Layrz API (`/graphql`); [uri] selects the schema. Use [MappitFreeDayInput] to create or update one.
@freezed
abstract class MappitFreeDay with _$MappitFreeDay {
  const MappitFreeDay._();

  /// Constructs an immutable [MappitFreeDay].
  const factory MappitFreeDay({
    /// [id] represents the free day ID.
    required String id,

    /// [name] represents the free day name.
    required String name,

    /// [date] represents the free day date (`YYYY-MM-DD`).
    @DateConverter() required DateTime date,

    /// [assets] represents the sellers linked to this free day. Only selected by [detailFields].
    List<Asset>? assets,

    /// [assetsIds] represents the IDs of the sellers linked to this free day.
    List<String>? assetsIds,
  }) = _MappitFreeDay;

  /// Deserializes a [MappitFreeDay] from a JSON map.
  factory MappitFreeDay.fromJson(Map<String, dynamic> json) => _$MappitFreeDayFromJson(json);

  // coverage:ignore-start
  /// The lightweight selection used by [fetchAll] and [MappitFreeDayInput.save].
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'name'),
    GqlField(name: 'date'),
    GqlField(name: 'assetsIds'),
  ];

  /// The full selection used by [fetch]: [fields] plus the linked sellers.
  static List<GqlField> get detailFields => [
    ...fields,
    GqlField(
      name: 'assets',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'mode'),
        GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      ],
    ),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the free days visible to the authenticated user (`mappitFreeDays`).
  ///
  /// Selects [fields] plus [extraFields]. [seePast] `false` keeps only the upcoming free days. Returns an
  /// empty list on any error.
  static Future<List<MappitFreeDay>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [seePast] includes the free days already gone, `true` by default.
    bool seePast = true,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'mappitFreeDays',
          variables: [GqlVariable(name: 'seePast', value: seePast, type: .boolean)],
        )..add(
          GqlField(name: 'mappitFreeDays', args: {'seePast': 'seePast'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: [...fields, ...?extraFields])),
        ),
        _mappitFreeDayListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitFreeDay/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitFreeDay/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this free day ([detailFields]), including its sellers.
  ///
  /// Returns `null` on any error or when the free day is not found ([ApiStatus.notfound]).
  Future<MappitFreeDay?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'mappitFreeDays',
          variables: [GqlVariable(name: 'id', value: id, type: .id, isRequired: true)],
        )..add(
          GqlField(name: 'mappitFreeDays', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: detailFields)),
        ),
        _mappitFreeDayListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitFreeDay/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result?.firstOrNull;
      if (result == null) onResponse?.call(.notfound);
      return result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitFreeDay/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the free days [ids] (`deleteMappitFreeDays`). This cannot be reverted.
  ///
  /// Returns `true` when the API answers ok.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [ids] are the IDs of the free days to delete.
    required List<String> ids,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteMappitFreeDays',
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'deleteMappitFreeDays', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitFreeDay/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitFreeDay/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Links the sellers [sellersIds] to every free day in [freeDaysIds] (`assignMappitFreeDaysToSellers`).
  ///
  /// Sellers already linked stay linked. Returns `true` when the API answers ok.
  static Future<bool> assignToSellers({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [freeDaysIds] are the IDs of the free days to assign.
    required List<String> freeDaysIds,

    /// [sellersIds] are the IDs of the sellers (assets) that receive the free days.
    required List<String> sellersIds,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'assignMappitFreeDaysToSellers',
          variables: [
            GqlVariable(
              name: 'freeDaysIds',
              value: freeDaysIds,
              type: .list(of: .id),
              isRequired: true,
            ),
            GqlVariable(
              name: 'sellersIds',
              value: sellersIds,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(
              name: 'assignMappitFreeDaysToSellers',
              args: {'freeDaysIds': 'freeDaysIds', 'sellersIds': 'sellersIds'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitFreeDay/assignToSellers(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitFreeDay/assignToSellers(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
}

List<MappitFreeDay> _mappitFreeDayListDecoder(Object? json) {
  if (json is! List) return [];
  return [for (final item in json) MappitFreeDay.fromJson(Map<String, dynamic>.from(item as Map))];
}
