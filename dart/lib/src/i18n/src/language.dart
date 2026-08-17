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
  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
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
  factory LanguageInput.fromJson(Map<String, dynamic> json) => _$LanguageInputFromJson(json);
}
