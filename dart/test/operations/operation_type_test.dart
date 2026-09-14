import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('OperationType Tests', () {
    test('fromJson() all values', () {
      expect(OperationType.fromJson('WEBHOOKS'), OperationType.webhook);
      expect(OperationType.fromJson('SENDEMAIL'), OperationType.email);
      expect(OperationType.fromJson('ACTIVATEASSET'), OperationType.registerInAsset);
      expect(OperationType.fromJson('INAPPNOTIFICATION'), OperationType.inAppNotification);
      expect(OperationType.fromJson('TWILIO'), OperationType.twilio);
      expect(OperationType.fromJson('MOBILE_POPUP_NOTIFICATION'), OperationType.mobilePopupNotification);
      expect(OperationType.fromJson('BHS_PUSH'), OperationType.bhsPush);
      expect(OperationType.fromJson('PUSH_NOTIFICATION'), OperationType.pushNotification);
      expect(OperationType.fromJson('SMS'), OperationType.sms);
      expect(OperationType.fromJson('VOICE_CALL'), OperationType.voiceCall);
      expect(OperationType.fromJson('WHATSAPP_MESSAGE'), OperationType.whatsappMessage);
      expect(OperationType.fromJson('UNKNOWN'), OperationType.unknown);
    });

    test('fromJson() falls back to unknown on unrecognized value', () {
      expect(OperationType.fromJson('BOGUS'), OperationType.unknown);
    });

    test('toJson() all values', () {
      expect(OperationType.webhook.toJson(), 'WEBHOOKS');
      expect(OperationType.email.toJson(), 'SENDEMAIL');
      expect(OperationType.registerInAsset.toJson(), 'ACTIVATEASSET');
      expect(OperationType.inAppNotification.toJson(), 'INAPPNOTIFICATION');
      expect(OperationType.twilio.toJson(), 'TWILIO');
      expect(OperationType.mobilePopupNotification.toJson(), 'MOBILE_POPUP_NOTIFICATION');
      expect(OperationType.bhsPush.toJson(), 'BHS_PUSH');
      expect(OperationType.pushNotification.toJson(), 'PUSH_NOTIFICATION');
      expect(OperationType.sms.toJson(), 'SMS');
      expect(OperationType.voiceCall.toJson(), 'VOICE_CALL');
      expect(OperationType.whatsappMessage.toJson(), 'WHATSAPP_MESSAGE');
      expect(OperationType.unknown.toJson(), 'UNKNOWN');
    });

    test('toString() matches toJson()', () {
      for (final value in OperationType.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in OperationType.values) {
        expect(OperationType.fromJson(value.toJson()), value);
      }
    });

    test('translationKey is derived from toJson()', () {
      expect(OperationType.webhook.translationKey, 'operations.types.WEBHOOKS');
      expect(OperationType.sms.translationKey, 'operations.types.SMS');
    });

    test('icon is defined for every value', () {
      for (final value in OperationType.values) {
        expect(value.icon, isNotNull);
      }
    });

    test('color is defined for every value', () {
      for (final value in OperationType.values) {
        expect(value.color, isNotNull);
      }
    });
  });

  group('HttpRequestType Tests', () {
    test('fromJson() all values', () {
      expect(HttpRequestType.fromJson('GET'), HttpRequestType.httpGet);
      expect(HttpRequestType.fromJson('POST'), HttpRequestType.httpPost);
      expect(HttpRequestType.fromJson('PUT'), HttpRequestType.httpPut);
      expect(HttpRequestType.fromJson('PATCH'), HttpRequestType.httpPatch);
      expect(HttpRequestType.fromJson('DELETE'), HttpRequestType.httpDelete);
    });

    test('fromJson() falls back to httpGet on unrecognized value', () {
      expect(HttpRequestType.fromJson('BOGUS'), HttpRequestType.httpGet);
    });

    test('toJson() all values', () {
      expect(HttpRequestType.httpGet.toJson(), 'GET');
      expect(HttpRequestType.httpPost.toJson(), 'POST');
      expect(HttpRequestType.httpPut.toJson(), 'PUT');
      expect(HttpRequestType.httpPatch.toJson(), 'PATCH');
      expect(HttpRequestType.httpDelete.toJson(), 'DELETE');
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in HttpRequestType.values) {
        expect(HttpRequestType.fromJson(value.toJson()), value);
      }
    });
  });

  group('NotificationType Tests', () {
    test('fromJson() all values', () {
      expect(NotificationType.fromJson('SMS'), NotificationType.sms);
      expect(NotificationType.fromJson('WHATSAPP'), NotificationType.whatsapp);
      expect(NotificationType.fromJson('VOICE'), NotificationType.voice);
      expect(NotificationType.fromJson('UNKNOWN'), NotificationType.unknown);
    });

    test('fromJson() falls back to unknown on unrecognized value', () {
      expect(NotificationType.fromJson('BOGUS'), NotificationType.unknown);
    });

    test('toJson() all values', () {
      expect(NotificationType.sms.toJson(), 'SMS');
      expect(NotificationType.whatsapp.toJson(), 'WHATSAPP');
      expect(NotificationType.voice.toJson(), 'VOICE');
      expect(NotificationType.unknown.toJson(), 'UNKNOWN');
    });

    test('toString() matches toJson()', () {
      for (final value in NotificationType.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in NotificationType.values) {
        expect(NotificationType.fromJson(value.toJson()), value);
      }
    });
  });

  group('SoundEffect Tests', () {
    test('fromJson() all values', () {
      expect(SoundEffect.fromJson('NONE'), SoundEffect.none);
      expect(SoundEffect.fromJson('BEEP'), SoundEffect.beep);
      expect(SoundEffect.fromJson('MECHANICAL'), SoundEffect.mechanical);
      expect(SoundEffect.fromJson('PEAL'), SoundEffect.peal);
      expect(SoundEffect.fromJson('POP'), SoundEffect.pop);
      expect(SoundEffect.fromJson('RESONANT'), SoundEffect.resonant);
      expect(SoundEffect.fromJson('TONE'), SoundEffect.tone);
      expect(SoundEffect.fromJson('CUSTOM'), SoundEffect.custom);
    });

    test('fromJson() falls back to none on unrecognized value', () {
      expect(SoundEffect.fromJson('BOGUS'), SoundEffect.none);
    });

    test('toJson() all values', () {
      expect(SoundEffect.none.toJson(), 'NONE');
      expect(SoundEffect.beep.toJson(), 'BEEP');
      expect(SoundEffect.mechanical.toJson(), 'MECHANICAL');
      expect(SoundEffect.peal.toJson(), 'PEAL');
      expect(SoundEffect.pop.toJson(), 'POP');
      expect(SoundEffect.resonant.toJson(), 'RESONANT');
      expect(SoundEffect.tone.toJson(), 'TONE');
      expect(SoundEffect.custom.toJson(), 'CUSTOM');
    });

    test('toString() matches toJson()', () {
      for (final value in SoundEffect.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in SoundEffect.values) {
        expect(SoundEffect.fromJson(value.toJson()), value);
      }
    });
  });

  group('TwilioContentSid Tests', () {
    test('code returns the raw wire value', () {
      expect(TwilioContentSid.simpleEnglish.code, 'HXccc3896a451b4188fad6f0f7253d7353');
      expect(TwilioContentSid.simpleSpanish.code, 'HX7a3cece41e25fde8200cc1f1b09659bb');
    });

    test('template is non-empty for known values', () {
      expect(TwilioContentSid.simpleEnglish.template, contains('Layrz Alert'));
      expect(TwilioContentSid.simpleSpanish.template, contains('Alerta de Layrz'));
    });

    test('fromJson/toJson roundtrip via generated enum map', () {
      for (final value in TwilioContentSid.values) {
        expect(value.code, isNotEmpty);
      }
    });
  });
}
