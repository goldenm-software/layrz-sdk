part of '../presets.dart';

/// Immutable, reusable set of [Trigger]s that can be applied to a case.
@freezed
abstract class Preset with _$Preset {
  /// Private constructor used by the code generator.
  const Preset._();

  /// Constructs an immutable [Preset].
  const factory Preset({
    /// Is the ID.
    required String id,

    /// Is the name, only used as reference.
    required String name,

    /// Is the maximum valid time of the preset.
    @TimestampOrNullConverter() DateTime? validBefore,

    /// Indicates if the preset is expired or not.
    @Default(true) bool isExpired,

    /// Is the list of associated triggers.
    List<Trigger>? triggers,

    /// Is the list of IDs of the associated triggers.
    List<String>? triggersIds,

    /// Is the comment to place on the case when the preset is applied.
    String? comment,

    /// Is the list of granted access.
    List<Access>? access,
  }) = _Preset;

  /// Deserializes a [Preset] from a JSON map.
  factory Preset.fromJson(Map<String, dynamic> json) => _$PresetFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying preset fields.
  ///
  /// Includes `isExpired` because the model defaults it to `true` when the field is missing.
  static GqlFragment get fragment => GqlFragment(
    name: 'presetFragment',
    onType: 'Preset',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'triggersIds'),
      GqlField(name: 'validBefore'),
      GqlField(name: 'comment'),
      GqlField(name: 'isExpired'),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment definition for querying a preset with its triggers resolved.
  ///
  /// Extends [fragment] with the `triggers` selection (`id`, `name`, `code` and `kind`, the latter
  /// being required to decode a [Trigger]). Used by [fetch].
  static GqlFragment get detailFragment => GqlFragment(
    name: 'presetDetailFragment',
    onType: 'Preset',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'triggersIds'),
      GqlField(name: 'validBefore'),
      GqlField(name: 'comment'),
      GqlField(name: 'isExpired'),
      GqlField(name: 'triggers')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'code'))
        ..add(GqlField(name: 'kind')),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all presets available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`presets`). Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server
  /// error). Errors are logged internally.
  static Future<List<Preset>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'presets')..add(
          GqlField(name: 'presets')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _presetListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Preset/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single preset by its [id], with its triggers resolved.
  ///
  /// Makes an authenticated GraphQL query (`presets`) filtered by [id]. The backend always
  /// returns `result` as a list, so the first element (if any) is returned. Authentication is
  /// carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `null` on any error or when no preset matches.
  static Future<Preset?> fetch({
    /// The ID of the [Preset] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'presets',
        )..add(
          GqlField(name: 'presets', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: detailFragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Preset/fetch(): No result in list");
            return null;
          }
          return _presetDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Preset/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple presets by their [ids].
  ///
  /// Sends the `deletePresets` mutation. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> deleteMultiple({
    /// The IDs of the presets to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'deletePresets',
        )..add(
          GqlField(
            name: 'deletePresets',
            args: {'ids': 'ids'},
          )..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Preset/deleteMultiple(): General exception => $e\n$stack",
      );
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_presetDecoder] decodes a single-object `result` payload into a [Preset].
/// Used by result-bearing mutations and single-item fetches.
Preset _presetDecoder(Object? json) {
  return Preset.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_presetListDecoder] decodes a raw listing `result` payload into a list of [Preset].
/// Used by listing queries (fetchAll).
List<Preset> _presetListDecoder(Object? json) {
  return List<Preset>.from(
    (json as List? ?? []).map(
      (e) => Preset.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
