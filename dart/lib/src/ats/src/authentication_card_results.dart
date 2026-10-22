part of '../ats.dart';

/// The outcome of assigning [AtsAuthenticationCard]s to a user.
///
/// Returned by [AtsAuthenticationCard.assignToUser] and
/// [AtsAuthenticationCard.assignByRangeToUser].
@freezed
abstract class AtsAssignCardsResult with _$AtsAssignCardsResult {
  /// Constructs an immutable [AtsAssignCardsResult].
  const factory AtsAssignCardsResult({
    /// The number of cards that had no owner and were assigned.
    @JsonKey(fromJson: _countFromJson) @Default(0) int assigned,

    /// The number of cards that already had an owner and were reassigned.
    @JsonKey(fromJson: _countFromJson) @Default(0) int updated,
  }) = _AtsAssignCardsResult;

  /// Deserializes an [AtsAssignCardsResult] from a JSON map.
  factory AtsAssignCardsResult.fromJson(Map<String, dynamic> json) => _$AtsAssignCardsResultFromJson(json);
}

int _countFromJson(Object? json) => (json as num?)?.toInt() ?? 0;

/// The command sent to a device by an [AtsHistoryAuthenticationCard] entry, and its answer.
///
/// Returned by [AtsHistoryAuthenticationCard.fetchCommandResult].
@freezed
abstract class AtsCommandResult with _$AtsCommandResult {
  /// Constructs an immutable [AtsCommandResult].
  const factory AtsCommandResult({
    /// The command sent to the device.
    String? request,

    /// The response of the device.
    String? response,

    /// The date the command was executed.
    @TimestampOrNullConverter() DateTime? executedAt,
  }) = _AtsCommandResult;

  /// Deserializes an [AtsCommandResult] from a JSON map.
  factory AtsCommandResult.fromJson(Map<String, dynamic> json) => _$AtsCommandResultFromJson(json);
}
