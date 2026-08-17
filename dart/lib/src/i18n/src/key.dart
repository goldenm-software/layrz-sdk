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
  factory I18nKey.fromJson(Map<String, dynamic> json) => _$I18nKeyFromJson(json);
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
  factory I18nKeyInput.fromJson(Map<String, dynamic> json) => _$I18nKeyInputFromJson(json);
}
