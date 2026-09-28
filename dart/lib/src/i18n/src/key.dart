part of '../i18n.dart';

/// Immutable translation key model for the Layrz platform.
///
/// Represents a unique translation identifier with multilingual support. Each key can have
/// multiple [I18nTranslation]s, one for each supported language. Includes audit fields
/// ([createdBy], [updatedBy]) to track ownership and modifications. This is a read-only
/// model; use [I18nKeyInput] for creating or updating keys.
@freezed
abstract class I18nKey with _$I18nKey {
  /// Constructs an immutable [I18nKey].
  const I18nKey._();

  /// Constructs an immutable [I18nKey].
  ///
  /// Parameters:
  ///   - [id]: Unique identifier in UUIDv4 format
  ///   - [code]: Application-level identifier for the key (e.g., "WELCOME_MESSAGE")
  ///   - [progress]: Optional translation completion progress (0.0 to 1.0). Null if not set.
  ///   - [translations]: List of [I18nTranslation]s in different languages, defaults to empty list
  ///   - [createdAt]: Timestamp when the key was created (converted from Unix timestamp)
  ///   - [createdBy]: [Employee] who created the key
  ///   - [updatedAt]: Timestamp when the key was last updated (converted from Unix timestamp)
  ///   - [updatedBy]: [Employee] who last updated the key
  const factory I18nKey({
    /// Unique identifier in UUIDv4 format.
    required String id,

    /// Application-level identifier for the key, used to identify the key in the application.
    required String code,

    /// Translation completion progress as a value between 0.0 and 1.0.
    double? progress,

    /// List of translations for this key across different languages.
    @Default([]) List<I18nTranslation> translations,

    /// Timestamp indicating when the key was created.
    @TimestampConverter() required DateTime createdAt,

    /// [Employee] who created the key.
    required Employee createdBy,

    /// Timestamp indicating when the key was last updated.
    @TimestampConverter() required DateTime updatedAt,

    /// [Employee] who last updated the key.
    required Employee updatedBy,
  }) = _I18nKey;

  /// Deserializes an [I18nKey] from a JSON map.
  factory I18nKey.fromJson(Map<String, dynamic> json) =>
      _$I18nKeyFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying translation key fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'i18nKeyFragment',
    onType: 'I18nKey',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'code'),
      GqlField(name: 'progress'),
      GqlField(name: 'createdAt'),
      // Inline: the API does not resolve fragments nested in fragments here.
      GqlField(name: 'createdBy')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(
          GqlField(name: 'dynamicAvatar')
            ..add(GqlField(name: 'type'))
            ..add(GqlField(name: 'emoji'))
            ..add(GqlField(name: 'icon'))
            ..add(GqlField(name: 'url')),
        ),
      GqlField(name: 'updatedAt'),
      GqlField(name: 'updatedBy')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(
          GqlField(name: 'dynamicAvatar')
            ..add(GqlField(name: 'type'))
            ..add(GqlField(name: 'emoji'))
            ..add(GqlField(name: 'icon'))
            ..add(GqlField(name: 'url')),
        ),
      GqlField(name: 'translations')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'languageId'))
        ..add(GqlField(name: 'message')),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches translation keys from the server, optionally filtered by [ids].
  ///
  /// Makes an authenticated GraphQL query (`i18nKeys`). When [ids] is null or
  /// empty, every [I18nKey] is returned; otherwise only the keys matching the
  /// given identifiers are returned. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<I18nKey>> fetchAll({
    /// Optional list of [I18nKey] identifiers to filter the result by. When
    /// null, every translation key is returned.
    List<String>? ids,

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
              name: 'ids',
              type: GqlVariableType.list(of: .uuid),
              value: ids,
            ),
          ],
          name: 'i18nKeys',
        )..add(
          GqlField(name: 'i18nKeys', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _i18nKeyListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/I18nKey/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single translation key by its [id].
  ///
  /// Makes an authenticated GraphQL query (`i18nKeys`) filtered by [id]. The
  /// backend always returns `result` as a list, even when filtered down to a
  /// single entity, so the first element (if any) is returned. Authentication
  /// is carried solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching translation key). Errors are logged
  /// internally.
  static Future<I18nKey?> fetch({
    /// The ID of the [I18nKey] to fetch.
    required String id,

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
              name: 'ids',
              type: GqlVariableType.list(of: .uuid),
              value: [id],
            ),
          ],
          name: 'i18nKeys',
        )..add(
          GqlField(name: 'i18nKeys', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/I18nKey/fetch(): No result in list");
            return null;
          }
          return I18nKey.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/I18nKey/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}

/// Mutable translation key input model for creating or updating keys.
///
/// This is the input variant of [I18nKey], used in GraphQL mutations to create or update
/// translation keys. Unlike [I18nKey], this model is mutable (annotated with `@unfreezed`)
/// to allow mutation operations. Use this to submit new keys or modify existing ones.
@unfreezed
abstract class I18nKeyInput with _$I18nKeyInput {
  /// Constructs a mutable [I18nKeyInput].
  I18nKeyInput._();

  /// Constructs a mutable [I18nKeyInput].
  ///
  /// Parameters:
  ///   - [id]: Optional unique identifier; null when creating new keys
  ///   - [code]: Application-level key identifier, defaults to empty string
  ///   - [translations]: List of [I18nTranslationInput]s to submit, defaults to empty list
  factory I18nKeyInput({
    String? id,
    @Default('') String code,
    @Default([]) List<I18nTranslationInput> translations,
  }) = _I18nKeyInput;

  /// Deserializes an [I18nKeyInput] from a JSON map.
  factory I18nKeyInput.fromJson(Map<String, dynamic> json) =>
      _$I18nKeyInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this translation key on the server.
  ///
  /// Sends `saveI18nKey` with this input serialized as the `I18nKeyInput`
  /// GraphQL input type. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, I18nKey?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedKey)`.
  Future<StandardResponse<I18nKey>> save({
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
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'I18nKeyInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: 'saveI18nKey',
        )..add(
          GqlField(name: 'saveI18nKey', args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: I18nKey.fragment)),
        ),
        _i18nKeyDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        Log.error(
          "layrz_sdk/I18nKeyInput/save(): ${response.status} => ${response.errors}",
        );
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/I18nKeyInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Creates or updates several translation keys on the server in a single request.
  ///
  /// Sends `saveI18nKeys` with [data] serialized as a list of `I18nKeyInput`
  /// GraphQL input objects. Unlike [save], this mutation does not return the
  /// saved entities, only the resulting [ApiStatus] and field errors.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, bool)`: on an
  /// internal error, `(ApiStatus.internalError, null, false)`; on any other
  /// non-ok status, `(status, errors, false)`; on success, `(status, errors, true)`.
  static Future<StandardResponse<bool>> saveAll({
    /// The [I18nKeyInput] entries to create or update.
    required List<I18nKeyInput> data,

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
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.list(
                of: GqlVariableType.input(of: 'I18nKeyInput'),
              ),
              isRequired: true,
              value: data.map((e) => e.toJson()).toList(),
            ),
          ],
          name: 'saveI18nKeys',
        )..add(
          GqlField(name: 'saveI18nKeys', args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, false);
      }

      if (response.status != .ok) {
        Log.error(
          "layrz_sdk/I18nKeyInput/saveAll(): ${response.status} => ${response.errors}",
        );
        onResponse?.call(response.status);
        return (response.status, response.errors, false);
      }

      return (response.status, response.errors, true);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/I18nKeyInput/saveAll(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, false);
    }
  }
  // coverage:ignore-end
}

/// [_i18nKeyDecoder] decodes a single-object `result` payload into an [I18nKey].
/// Used by result-bearing mutations (save-style).
I18nKey _i18nKeyDecoder(Object? json) {
  return I18nKey.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_i18nKeyListDecoder] decodes a raw listing `result` payload into a list of [I18nKey].
/// Used by listing queries (fetchAll).
List<I18nKey> _i18nKeyListDecoder(Object? json) {
  return List<I18nKey>.from(
    (json as List? ?? []).map(
      (e) => I18nKey.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
