part of '../ats.dart';

/// The physical medium of an [AtsAuthenticationCard].
///
/// If deserialization encounters an unrecognized value, it defaults to
/// [cardboard].
enum AtsSelectCard {
  /// A printed cardboard card. API reference: `CARDBOARD`.
  cardboard,

  /// An NFC card. API reference: `NFC`.
  nfc,

  /// A tag-based credential. API reference: `TAG`.
  tag;

  @override
  String toString() => toJson();

  /// Converts this [AtsSelectCard] to its wire JSON string.
  String toJson() {
    switch (this) {
      case AtsSelectCard.cardboard:
        return 'CARDBOARD';

      case AtsSelectCard.nfc:
        return 'NFC';

      case AtsSelectCard.tag:
        return 'TAG';
    }
  }

  /// Converts a JSON string to an [AtsSelectCard].
  ///
  /// Returns [cardboard] when the input does not match any known value.
  static AtsSelectCard fromJson(String json) {
    switch (json) {
      case 'NFC':
        return AtsSelectCard.nfc;

      case 'TAG':
        return AtsSelectCard.tag;

      case 'CARDBOARD':
      default:
        return AtsSelectCard.cardboard;
    }
  }
}

/// An authentication card used to authorize ATS operations.
///
/// [AtsAuthenticationCard] represents a physical/NFC/tag credential
/// ([typeId]) identified by its printed [number] and external identifier,
/// optionally bound to an [asset] and/or an [owner], with its
/// [AtsHistoryAuthenticationCard] audit trail available in [history].
@freezed
abstract class AtsAuthenticationCard with _$AtsAuthenticationCard {
  /// Constructs an immutable [AtsAuthenticationCard].
  const factory AtsAuthenticationCard({
    /// The unique identifier of the card.
    required String id,

    /// The number printed on the card.
    required int number,

    /// The external identifier of the card, in decimal format.
    required int externalIdentifier,

    /// The external identifier of the card, in hexadecimal format.
    required String externalIdentifierHex,

    /// The [Asset] linked to this card, or null when not bound.
    Asset? asset,

    /// The [User] who owns this card, or null when not assigned.
    User? owner,

    /// Whether the card is suspended, or null when not applicable.
    bool? isSuspended,

    /// The physical medium of the card.
    @AtsSelectCardConverter() required AtsSelectCard typeId,

    /// The audit trail of this card, or null when not requested.
    List<AtsHistoryAuthenticationCard>? history,

    /// The date the card was created, or null when unknown.
    @TimestampOrNullConverter() DateTime? createdAt,
  }) = _AtsAuthenticationCard;

  /// Deserializes an [AtsAuthenticationCard] from a JSON map.
  factory AtsAuthenticationCard.fromJson(Map<String, dynamic> json) => _$AtsAuthenticationCardFromJson(json);
}

/// A [JsonConverter] that converts between [AtsSelectCard] and [String].
class AtsSelectCardConverter implements JsonConverter<AtsSelectCard, String> {
  /// Creates an [AtsSelectCardConverter].
  const AtsSelectCardConverter();

  @override
  AtsSelectCard fromJson(String json) => AtsSelectCard.fromJson(json);

  @override
  String toJson(AtsSelectCard object) => object.toJson();
}

/// A [JsonConverter] that converts between nullable [AtsSelectCard] and
/// nullable [String].
class AtsSelectCardOrNullConverter implements JsonConverter<AtsSelectCard?, String?> {
  /// Creates an [AtsSelectCardOrNullConverter].
  const AtsSelectCardOrNullConverter();

  @override
  AtsSelectCard? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsSelectCard.fromJson(json);
  }

  @override
  String? toJson(AtsSelectCard? object) => object?.toJson();
}
