part of '../realtime.dart';

/// Immutable envelope for a realtime/websocket message in Layrz.
///
/// [RealtimeMessage] represents a single message received from or sent to a
/// realtime/websocket channel, identified by its [topic] and carrying an
/// arbitrary [payload] of message-specific data.
@freezed
abstract class RealtimeMessage with _$RealtimeMessage {
  /// Private constructor to allow custom getters/methods on [RealtimeMessage].
  const RealtimeMessage._();

  /// Constructs an immutable [RealtimeMessage].
  const factory RealtimeMessage({
    /// The topic/channel this message belongs to.
    required String topic,

    /// The message payload, whose shape depends on [topic].
    required Map<String, dynamic> payload,
  }) = _RealtimeMessage;

  /// Deserializes a [RealtimeMessage] from a JSON map.
  factory RealtimeMessage.fromJson(Map<String, dynamic> json) => _$RealtimeMessageFromJson(json);
}
