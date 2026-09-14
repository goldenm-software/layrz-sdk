part of '../asset.dart';

/// Immutable connectivity thresholds for an [Asset].
///
/// [Connection] defines how long an asset may go without reporting before it is considered in
/// hibernation, and separately, offline.
@freezed
abstract class Connection with _$Connection {
  /// Constructs an immutable [Connection].
  const factory Connection({
    /// Time in seconds to consider online.
    @DurationOrNullConverter() Duration? online,

    /// Time in seconds to consider in hibernation.
    @DurationOrNullConverter() Duration? hibernation,
  }) = _Connection;

  /// Deserializes a [Connection] from a JSON map.
  factory Connection.fromJson(Map<String, dynamic> json) => _$ConnectionFromJson(json);
}

/// Mutable input data for creating or updating a [Connection].
@unfreezed
abstract class ConnectionInput with _$ConnectionInput {
  /// Constructs a mutable [ConnectionInput].
  factory ConnectionInput({
    /// Time in seconds to consider online. Defaults to 5 minutes.
    @DurationConverter() @Default(Duration(minutes: 5)) Duration online,

    /// Time in seconds to consider in hibernation. Defaults to 1 hour.
    @DurationConverter() @Default(Duration(hours: 1)) Duration hibernation,
  }) = _ConnectionInput;

  /// Deserializes a [ConnectionInput] from a JSON map.
  factory ConnectionInput.fromJson(Map<String, dynamic> json) => _$ConnectionInputFromJson(json);
}
