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
  factory I18nKeyHistory.fromJson(Map<String, dynamic> json) => _$I18nKeyHistoryFromJson(json);
}
