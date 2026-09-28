part of '../i18n.dart';

/// Immutable translation language model for the Layrz platform.
///
/// Represents a language in which translations are available on the Layrz platform.
/// This is a read-only model; use [LanguageInput] for creating or updating languages.
@freezed
abstract class Language with _$Language {
  /// Constructs an immutable [Language].
  const Language._();

  /// Constructs an immutable [Language].
  ///
  /// Parameters:
  ///   - [id]: Unique identifier for the language (typically UUIDv4 format)
  ///   - [name]: Display name of the language (e.g., "English", "Español")
  ///   - [code]: ISO 639-1 language code or similar (e.g., "en", "es", "pt")
  ///   - [progress]: Optional translation completion progress as a value between 0.0 and 1.0,
  ///     where 0.0 = no translations and 1.0 = all keys translated. Defaults to null.
  const factory Language({
    required String id,
    required String name,
    required String code,
    double? progress,
  }) = _Language;

  /// Deserializes a [Language] from a JSON map.
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying language fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'languageFragment',
    onType: 'Language',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'code'),
      GqlField(name: 'progress'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all [Language]s available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`languages`) to retrieve every
  /// [Language] known to the server, along with its translation completion
  /// [Language.progress]. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<Language>> fetchAll({
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
        GqlQuery(name: 'languages')..add(
          GqlField(name: 'languages')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _languageListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Language/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_languageListDecoder] decodes a raw listing `result` payload into a list of [Language].
/// Used by listing queries (fetchAll).
List<Language> _languageListDecoder(Object? json) {
  return List<Language>.from(
    (json as List? ?? []).map(
      (e) => Language.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

/// Mutable translation language input model for creating or updating languages.
///
/// This is the input variant of [Language], used in GraphQL mutations to create or update
/// language records. Unlike [Language], this model is mutable (annotated with `@unfreezed`)
/// to allow mutation operations.
@unfreezed
abstract class LanguageInput with _$LanguageInput {
  /// Constructs a mutable [LanguageInput].
  LanguageInput._();

  /// Constructs a mutable [LanguageInput].
  ///
  /// Parameters:
  ///   - [id]: Optional unique identifier; null when creating new languages
  ///   - [name]: Display name of the language, defaults to empty string
  ///   - [code]: ISO 639-1 language code or similar, defaults to empty string
  factory LanguageInput({
    String? id,
    @Default('') String name,
    @Default('') String code,
  }) = _LanguageInput;

  /// Deserializes a [LanguageInput] from a JSON map.
  factory LanguageInput.fromJson(Map<String, dynamic> json) =>
      _$LanguageInputFromJson(json);
}
