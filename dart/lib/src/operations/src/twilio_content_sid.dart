part of '../operations.dart';

/// The Twilio Content SID (pre-approved WhatsApp template) used to notify an [Operation]'s recipients.
@JsonEnum(alwaysCreate: true)
enum TwilioContentSid {
  /// [simpleEnglish] is the Twilio Content SID for Simple English.
  /// SID: `HXccc3896a451b4188fad6f0f7253d7353`
  @JsonValue('HXccc3896a451b4188fad6f0f7253d7353')
  simpleEnglish,

  /// [simpleSpanish] is the Twilio Content SID for Simple Spanish.
  /// SID: `HX7a3cece41e25fde8200cc1f1b09659bb`
  @JsonValue('HX7a3cece41e25fde8200cc1f1b09659bb')
  simpleSpanish,
  ;

  /// [code] is the raw Twilio Content SID wire value for this template.
  String get code => _$TwilioContentSidEnumMap[this]!;

  /// [template] is the template text that will be sent for this Content SID.
  String get template {
    switch (this) {
      case .simpleEnglish:
        return """
Layrz Alert 🚨

An operational alert was triggered.

Asset: {{assetName}}
Alert: {{triggerName}}
Date: {{executedAt}}

Review details and take action in Layrz.
""";

      case .simpleSpanish:
        return """
Alerta de Layrz 🚨

Se activó una alerta operativa.

Activo: {{assetName}}
Alerta: {{triggerName}}
Fecha: {{executedAt}}

Revisa los detalles y toma acción en Layrz
""";

      default:
        return '';
    }
  }
}
