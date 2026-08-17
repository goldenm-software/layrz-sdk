part of '../i18n.dart';

/// Immutable translation message model for a specific language.
///
/// Represents a translated message for a given [I18nKey] in a specific language.
/// Each translation is uniquely identified by its [id], links to a key via context,
/// and specifies which [Language] it belongs to via [languageId]. This is a read-only
/// model; use [I18nTranslationInput] for creating or updating translations.
@freezed
abstract class I18nTranslation with _$I18nTranslation {
  /// Constructs an immutable [I18nTranslation].
  const I18nTranslation._();

  /// Constructs an immutable [I18nTranslation].
  ///
  /// Parameters:
  ///   - [id]: Unique identifier for this translation
  ///   - [languageId]: Unique identifier of the [Language] this translation belongs to
  ///   - [message]: The translated message text in the specified language
  const factory I18nTranslation({
    /// Unique identifier for this translation.
    required String id,

    /// Identifier of the [Language] this translation belongs to.
    required String languageId,

    /// The translated message text.
    required String message,
  }) = _I18nTranslation;

  /// Deserializes an [I18nTranslation] from a JSON map.
  factory I18nTranslation.fromJson(Map<String, dynamic> json) => _$I18nTranslationFromJson(json);
}

/// Mutable translation message input model for creating or updating translations.
///
/// This is the input variant of [I18nTranslation], used in GraphQL mutations to create or
/// update translations. Unlike [I18nTranslation], this model is mutable (annotated with
/// `@unfreezed`) to allow mutation operations. Use this to submit new translations or
/// modify existing ones for a specific [Language].
@unfreezed
abstract class I18nTranslationInput with _$I18nTranslationInput {
  /// Constructs a mutable [I18nTranslationInput].
  I18nTranslationInput._();

  /// Constructs a mutable [I18nTranslationInput].
  ///
  /// Parameters:
  ///   - [id]: Optional unique identifier; null when creating new translations
  ///   - [languageId]: Optional identifier of the [Language] this translation belongs to
  ///   - [message]: The translated message text, defaults to empty string
  factory I18nTranslationInput({
    String? id,
    String? languageId,
    @Default('') String message,
  }) = _I18nTranslationInput;

  /// Deserializes an [I18nTranslationInput] from a JSON map.
  factory I18nTranslationInput.fromJson(Map<String, dynamic> json) => _$I18nTranslationInputFromJson(json);
}
