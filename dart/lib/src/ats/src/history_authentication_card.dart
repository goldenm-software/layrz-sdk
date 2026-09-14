part of '../ats.dart';

/// An audit trail entry for an [AtsAuthenticationCard].
///
/// [AtsHistoryAuthenticationCard] records a single [operation] performed on
/// an authentication card, who performed it ([createdBy]) and when
/// ([createdAt]), along with the [asset] and/or [owner] the card was bound
/// to at the time.
@freezed
abstract class AtsHistoryAuthenticationCard with _$AtsHistoryAuthenticationCard {
  /// Constructs an immutable [AtsHistoryAuthenticationCard].
  const factory AtsHistoryAuthenticationCard({
    /// The unique identifier of this history entry.
    required String id,

    /// The operation performed on the card.
    @AtsHistoryAuthenticationCardOperationConverter() required AtsHistoryAuthenticationCardOperation operation,

    /// The [Asset] linked to the card at the time of the operation, or null
    /// when not applicable.
    Asset? asset,

    /// The [User] who owned the card at the time of the operation, or null
    /// when not applicable.
    User? owner,

    /// The [User] who performed the operation.
    required User createdBy,

    /// The date the operation was performed.
    @TimestampConverter() required DateTime createdAt,
  }) = _AtsHistoryAuthenticationCard;

  /// Deserializes an [AtsHistoryAuthenticationCard] from a JSON map.
  factory AtsHistoryAuthenticationCard.fromJson(Map<String, dynamic> json) =>
      _$AtsHistoryAuthenticationCardFromJson(json);
}

/// The kind of operation recorded by an [AtsHistoryAuthenticationCard].
///
/// If deserialization encounters an unrecognized value, it defaults to
/// [unknown].
enum AtsHistoryAuthenticationCardOperation {
  /// An asset was assigned to the card. API reference: `ASSIGN_ASSET`.
  assignAsset,

  /// An asset was unassigned from the card. API reference: `UNASSIGN_ASSET`.
  unassignAsset,

  /// A user was assigned to the card. API reference: `ASSIGN_USER`.
  assignUser,

  /// A user was unassigned from the card. API reference: `UNASSIGN_USER`.
  unassignUser,

  /// The card was suspended. API reference: `SUSPEND_CARD`.
  suspendCard,

  /// The card was unsuspended. API reference: `UNSUSPEND_CARD`.
  unsuspendCard,

  /// A command result was recorded. API reference: `COMMAND_RESULT`.
  commandResult,

  /// Unknown operation. Fallback value used when an unrecognized operation
  /// value is received.
  unknown;

  @override
  String toString() => toJson();

  /// Converts this [AtsHistoryAuthenticationCardOperation] to its wire JSON
  /// string.
  String toJson() {
    switch (this) {
      case AtsHistoryAuthenticationCardOperation.assignAsset:
        return 'ASSIGN_ASSET';
      case AtsHistoryAuthenticationCardOperation.unassignAsset:
        return 'UNASSIGN_ASSET';
      case AtsHistoryAuthenticationCardOperation.assignUser:
        return 'ASSIGN_USER';
      case AtsHistoryAuthenticationCardOperation.unassignUser:
        return 'UNASSIGN_USER';
      case AtsHistoryAuthenticationCardOperation.suspendCard:
        return 'SUSPEND_CARD';
      case AtsHistoryAuthenticationCardOperation.unsuspendCard:
        return 'UNSUSPEND_CARD';
      case AtsHistoryAuthenticationCardOperation.commandResult:
        return 'COMMAND_RESULT';
      case AtsHistoryAuthenticationCardOperation.unknown:
        return 'UNKNOWN';
    }
  }

  /// Converts a JSON string to an [AtsHistoryAuthenticationCardOperation].
  ///
  /// Returns [unknown] when the input does not match any known value.
  static AtsHistoryAuthenticationCardOperation fromJson(String json) {
    switch (json) {
      case 'ASSIGN_ASSET':
        return AtsHistoryAuthenticationCardOperation.assignAsset;
      case 'UNASSIGN_ASSET':
        return AtsHistoryAuthenticationCardOperation.unassignAsset;
      case 'ASSIGN_USER':
        return AtsHistoryAuthenticationCardOperation.assignUser;
      case 'UNASSIGN_USER':
        return AtsHistoryAuthenticationCardOperation.unassignUser;
      case 'SUSPEND_CARD':
        return AtsHistoryAuthenticationCardOperation.suspendCard;
      case 'UNSUSPEND_CARD':
        return AtsHistoryAuthenticationCardOperation.unsuspendCard;
      case 'COMMAND_RESULT':
        return AtsHistoryAuthenticationCardOperation.commandResult;
      default:
        return AtsHistoryAuthenticationCardOperation.unknown;
    }
  }
}

/// A [JsonConverter] that converts between
/// [AtsHistoryAuthenticationCardOperation] and [String].
class AtsHistoryAuthenticationCardOperationConverter
    implements JsonConverter<AtsHistoryAuthenticationCardOperation, String> {
  /// Creates an [AtsHistoryAuthenticationCardOperationConverter].
  const AtsHistoryAuthenticationCardOperationConverter();

  @override
  AtsHistoryAuthenticationCardOperation fromJson(String json) => AtsHistoryAuthenticationCardOperation.fromJson(json);

  @override
  String toJson(AtsHistoryAuthenticationCardOperation object) => object.toJson();
}

/// A [JsonConverter] that converts between nullable
/// [AtsHistoryAuthenticationCardOperation] and nullable [String].
class AtsHistoryAuthenticationCardOperationOrNullConverter
    implements JsonConverter<AtsHistoryAuthenticationCardOperation?, String?> {
  /// Creates an [AtsHistoryAuthenticationCardOperationOrNullConverter].
  const AtsHistoryAuthenticationCardOperationOrNullConverter();

  @override
  AtsHistoryAuthenticationCardOperation? fromJson(String? json) =>
      json == null ? null : AtsHistoryAuthenticationCardOperation.fromJson(json);

  @override
  String? toJson(AtsHistoryAuthenticationCardOperation? object) => object?.toJson();
}
