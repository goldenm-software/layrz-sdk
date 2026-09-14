part of '../operations.dart';

/// The delivery channel used by a Twilio-backed [Operation].
enum NotificationType {
  /// Sends the Twilio notification to an SMS number.
  ///
  /// Layrz API equivalent: `SMS`
  @JsonValue('SMS')
  sms,

  /// Sends the Twilio notification to a WhatsApp number.
  ///
  /// Layrz API equivalent: `WHATSAPP`
  @JsonValue('WHATSAPP')
  whatsapp,

  /// Makes a phone call to the user.
  ///
  /// Layrz API equivalent: `VOICE`
  @JsonValue('VOICE')
  voice,

  /// The unknown notification type.
  ///
  /// Layrz API equivalent: `UNKNOWN`
  @JsonValue('UNKNOWN')
  unknown;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$NotificationTypeEnumMap[this] ?? 'UNKNOWN';

  /// Deserializes a [NotificationType] from the raw string sent by the backend, defaulting to
  /// [NotificationType.unknown] when [json] does not match a known value.
  static NotificationType fromJson(String json) {
    final found = _$NotificationTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? NotificationType.unknown;
  }
}
