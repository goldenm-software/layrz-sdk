part of '../operations.dart';

/// The kind of action an [Operation] performs when it is triggered.
enum OperationType {
  /// The webhook operation type. Sends a request to a webhook URL.
  ///
  /// Layrz API equivalent: `WEBHOOKS`
  @JsonValue('WEBHOOKS')
  webhook,

  /// The email operation type. Sends an email to one or more recipients.
  ///
  /// Layrz API equivalent: `SENDEMAIL`
  @JsonValue('SENDEMAIL')
  email,

  /// The register-in-asset operation type. Registers the event into the asset.
  ///
  /// Layrz API equivalent: `ACTIVATEASSET`
  @JsonValue('ACTIVATEASSET')
  registerInAsset,

  /// The in-app notification operation type. Sends an in-app notification to the user. To
  /// receive the notification, the user must be logged in.
  ///
  /// Layrz API equivalent: `INAPPNOTIFICATION`
  @JsonValue('INAPPNOTIFICATION')
  inAppNotification,

  /// The Twilio operation type. Sends an SMS message to a phone number.
  ///
  /// Layrz API equivalent: `TWILIO`
  @JsonValue('TWILIO')
  twilio,

  /// The mobile popup notification operation type. Sends a popup notification to the user's
  /// mobile device.
  ///
  /// Layrz API equivalent: `MOBILE_POPUP_NOTIFICATION`
  @JsonValue('MOBILE_POPUP_NOTIFICATION')
  mobilePopupNotification,

  /// The BHS push operation type. Sends a push notification to the user's mobile device. Only
  /// used by the Brickhouse Security sub-ecosystem.
  ///
  /// Layrz API equivalent: `BHS_PUSH`
  @JsonValue('BHS_PUSH')
  bhsPush,

  /// The push notification operation type. Sends a push notification to the user's mobile or
  /// desktop device, using our own push notification system.
  ///
  /// Layrz API equivalent: `PUSH_NOTIFICATION`
  @JsonValue('PUSH_NOTIFICATION')
  pushNotification,

  /// The SMS operation type. Sends an SMS message to a phone number.
  ///
  /// This operation type works using the Layrz Messaging Engine, it is not customizable. To
  /// ensure compatibility with the engine, the number must be in E.164 format.
  ///
  /// Layrz API equivalent: `SMS`
  @JsonValue('SMS')
  sms,

  /// The voice call operation type. Makes a voice call to a phone number.
  ///
  /// This operation type works using the Layrz Messaging Engine, it is not customizable. To
  /// ensure compatibility with the engine, the number must be in E.164 format.
  ///
  /// Layrz API equivalent: `VOICE_CALL`
  @JsonValue('VOICE_CALL')
  voiceCall,

  /// The WhatsApp message operation type. Sends a WhatsApp message to a phone number.
  ///
  /// This operation type works using the Layrz Messaging Engine, it is not customizable. To
  /// ensure compatibility with the engine, the number must be in E.164 format.
  ///
  /// Layrz API equivalent: `WHATSAPP_MESSAGE`
  @JsonValue('WHATSAPP_MESSAGE')
  whatsappMessage,

  /// The unknown operation type. Used when the operation type is not recognized.
  ///
  /// Layrz API equivalent: `UNKNOWN`
  @JsonValue('UNKNOWN')
  unknown;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$OperationTypeEnumMap[this] ?? 'UNKNOWN';

  /// Deserializes an [OperationType] from the raw string sent by the backend, defaulting to
  /// [OperationType.unknown] when [json] does not match a known value.
  static OperationType fromJson(String json) {
    final found = _$OperationTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? OperationType.unknown;
  }

  /// The translation key for this operation type's display name.
  String get translationKey => 'operations.types.${toJson()}';

  /// The icon representing this operation type.
  IconData get icon {
    switch (this) {
      case .email:
        return MdiIcons.emailFastOutline;

      case .inAppNotification:
        return MdiIcons.bellRingOutline;

      case .registerInAsset:
        return MdiIcons.contentSave;

      case .webhook:
        return MdiIcons.webhook;

      case .twilio:
        return MdiIcons.phoneOutline;

      case .mobilePopupNotification:
        return MdiIcons.cellphoneSound;

      case .bhsPush:
        return MdiIcons.firebase;

      case .pushNotification:
        return MdiIcons.squareRoundedBadgeOutline;

      case .sms:
        return MdiIcons.messageAlert;

      case .voiceCall:
        return MdiIcons.phoneHangup;

      case .whatsappMessage:
        return MdiIcons.whatsapp;

      default:
        return MdiIcons.bellOutline;
    }
  }

  /// The color representing this operation type.
  Color get color {
    switch (this) {
      case .email:
        return const Color(0xFF4CAF50);

      case .inAppNotification:
        return const Color(0xFF4CAF50);

      case .registerInAsset:
        return const Color(0xFFFF9800);

      case .webhook:
        return const Color(0xFFF44336);

      case .twilio:
        return const Color(0xFF9C27B0);

      case .mobilePopupNotification:
        return const Color(0xFFE91E63);

      case .bhsPush:
        return const Color(0xFF795548);

      case .pushNotification:
        return const Color(0xFF4CAF50);

      case .sms:
        return const Color(0xFF009688);

      case .voiceCall:
        return const Color(0xFF3F51B5);

      case .whatsappMessage:
        return const Color(0xff25d366);

      default:
        return const Color(0xFF9E9E9E);
    }
  }
}
