part of '../i18n.dart';

/// Immutable audit trail entry for translation key changes.
///
/// Records a single modification to a translation key, capturing who made the change,
/// when it occurred, and the before/after values. This is immutable and represents
/// historical data about translations. Includes [performedBy] to track the [Employee]
/// responsible for the change.
@freezed
abstract class I18nKeyHistory with _$I18nKeyHistory {
  /// Constructs an immutable [I18nKeyHistory].
  const I18nKeyHistory._();

  /// Constructs an immutable [I18nKeyHistory].
  ///
  /// Parameters:
  ///   - [id]: Unique identifier for this history entry
  ///   - [languageId]: Identifier of the [Language] that was affected by this change
  ///   - [before]: The previous/old value of the translation
  ///   - [after]: The new value of the translation
  ///   - [performedAt]: Timestamp indicating when the change was made
  ///   - [performedBy]: [Employee] who made the change
  const factory I18nKeyHistory({
    /// Unique identifier for this history entry.
    required String id,

    /// Identifier of the [Language] affected by this change.
    required String languageId,

    /// The previous/old value of the translation.
    required String before,

    /// The new value of the translation.
    required String after,

    /// Timestamp indicating when the change was made.
    required DateTime performedAt,

    /// [Employee] who made the change.
    required Employee performedBy,
  }) = _I18nKeyHistory;

  /// Deserializes an [I18nKeyHistory] from a JSON map.
  factory I18nKeyHistory.fromJson(Map<String, dynamic> json) =>
      _$I18nKeyHistoryFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying translation key history fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'i18nKeyHistoryFragment',
    onType: 'I18nKeyHistoryType',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'languageId'),
      GqlField(name: 'before'),
      GqlField(name: 'after'),
      GqlField(name: 'performedAt'),
      // Inline: the API does not resolve fragments nested in fragments here.
      GqlField(name: 'performedBy')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(
          GqlField(name: 'dynamicAvatar')
            ..add(GqlField(name: 'type'))
            ..add(GqlField(name: 'emoji'))
            ..add(GqlField(name: 'icon'))
            ..add(GqlField(name: 'url')),
        ),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the change history of the translation key identified by [keyId].
  ///
  /// Makes an authenticated GraphQL query (`requestI18nKeyHistory`).
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, server error, or an unknown key). Errors are logged internally.
  static Future<List<I18nKeyHistory>> fetchAll({
    /// The ID of the [I18nKey] whose history should be fetched.
    required String keyId,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(
              name: 'id',
              type: .uuid,
              isRequired: true,
              value: keyId,
            ),
          ],
          name: 'requestI18nKeyHistory',
        )..add(
          GqlField(name: 'requestI18nKeyHistory', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _i18nKeyHistoryListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/I18nKeyHistory/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_i18nKeyHistoryListDecoder] decodes a raw listing `result` payload into a list of [I18nKeyHistory].
/// Used by listing queries (fetchAll).
List<I18nKeyHistory> _i18nKeyHistoryListDecoder(Object? json) {
  return List<I18nKeyHistory>.from(
    (json as List? ?? []).map(
      (e) => I18nKeyHistory.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
