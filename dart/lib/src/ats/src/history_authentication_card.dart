part of '../ats.dart';

/// An audit trail entry for an [AtsAuthenticationCard].
///
/// [AtsHistoryAuthenticationCard] records a single [operation] performed on
/// an authentication card, who performed it ([createdBy]) and when
/// ([createdAt]), along with the [asset] and/or [owner] the card was bound
/// to at the time.
@freezed
abstract class AtsHistoryAuthenticationCard with _$AtsHistoryAuthenticationCard {
  const AtsHistoryAuthenticationCard._();

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

  // coverage:ignore-start
  /// The fields of an [AtsHistoryAuthenticationCard] selected by [AtsAuthenticationCard.fetch].
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'operation'),
    _atsCardAssetField(),
    _atsCardUserField('owner'),
    _atsCardUserField('createdBy'),
    GqlField(name: 'createdAt'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the command sent by this entry and the device answer (`getCommandResult`).
  ///
  /// Only meaningful for [AtsHistoryAuthenticationCardOperation.commandResult] entries. Returns `null` when the
  /// result is not found or on any error; a missing result reports [ApiStatus.notfound] through [onResponse].
  Future<AtsCommandResult?> fetchCommandResult({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'getCommandResult',
          variables: [
            GqlVariable(name: 'historyId', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'getCommandResult', args: {'historyId': 'historyId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'request'),
                  GqlField(name: 'response'),
                  GqlField(name: 'executedAt'),
                ],
              ),
            ),
        ),
        (json) => json is Map ? AtsCommandResult.fromJson(Map<String, dynamic>.from(json)) : null,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/AtsHistoryAuthenticationCard/fetchCommandResult(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result;
      if (result == null) onResponse?.call(.notfound);
      return result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsHistoryAuthenticationCard/fetchCommandResult(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end
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

  /// A device was added via a command result. API reference:
  /// `COMMAND_RESULT_ADD`.
  commandResultAdd,

  /// A device was removed via a command result. API reference:
  /// `COMMAND_RESULT_DEL`.
  commandResultDel,

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
      case AtsHistoryAuthenticationCardOperation.commandResultAdd:
        return 'COMMAND_RESULT_ADD';
      case AtsHistoryAuthenticationCardOperation.commandResultDel:
        return 'COMMAND_RESULT_DEL';
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
      case 'COMMAND_RESULT_ADD':
        return AtsHistoryAuthenticationCardOperation.commandResultAdd;
      case 'COMMAND_RESULT_DEL':
        return AtsHistoryAuthenticationCardOperation.commandResultDel;
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
