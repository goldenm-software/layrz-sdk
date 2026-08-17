import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ApiStatus serialization', () {
    test('all enum values round-trip through toJson/fromJson', () {
      for (final status in ApiStatus.values) {
        final json = status.toJson();
        final restored = ApiStatus.fromJson(json);

        expect(
          restored,
          equals(status),
          reason: 'Status ${status.name} should round-trip through toJson/fromJson',
        );
      }
    });

    test('ok status serializes to OK', () {
      expect(ApiStatus.ok.toJson(), 'OK');
    });

    test('notfound status serializes to NOT_FOUND', () {
      expect(ApiStatus.notfound.toJson(), 'NOT_FOUND');
    });

    test('unknown status serializes to UNKNOWN', () {
      expect(ApiStatus.unknown.toJson(), 'UNKNOWN');
    });

    test('userNotFound status serializes correctly', () {
      expect(ApiStatus.userNotFound.toJson(), 'USER_NOT_FOUND');
    });

    test('wrongPassword status serializes correctly', () {
      expect(ApiStatus.wrongPassword.toJson(), 'WRONG_PASSWORD');
    });

    test('accountBlocked status serializes correctly', () {
      expect(ApiStatus.accountBlocked.toJson(), 'ACCOUNT_BLOCKED');
    });

    test('internalError status serializes correctly', () {
      expect(ApiStatus.internalError.toJson(), 'INTERNAL_ERROR');
    });

    test('unprocessable status serializes to UNPROCESSABLE', () {
      expect(ApiStatus.unprocessable.toJson(), 'UNPROCESSABLE');
    });

    test('unauthorized status serializes to UNAUTHORIZED', () {
      expect(ApiStatus.unauthorized.toJson(), 'UNAUTHORIZED');
    });

    test('accessDenied status serializes correctly', () {
      expect(ApiStatus.accessDenied.toJson(), 'ACCESS_DENIED');
    });

    test('movedPermanently status serializes correctly', () {
      expect(ApiStatus.movedPermanently.toJson(), 'MOVED_PERMANENTLY');
    });

    test('badRequest status serializes to BAD_REQUEST', () {
      expect(ApiStatus.badRequest.toJson(), 'BAD_REQUEST');
    });

    test('iAmATeapot status serializes to IAMATEAPOT', () {
      expect(ApiStatus.iAmATeapot.toJson(), 'IAMATEAPOT');
    });

    test('paymentRequired status serializes correctly', () {
      expect(ApiStatus.paymentRequired.toJson(), 'PAYMENT_REQUIRED');
    });

    test('serviceUnavailable status serializes correctly', () {
      expect(ApiStatus.serviceUnavailable.toJson(), 'SERVICE_UNAVAILABLE');
    });

    test('limitReached status serializes correctly', () {
      expect(ApiStatus.limitReached.toJson(), 'LIMIT_REACHED');
    });

    test('fileNotFound status serializes correctly', () {
      expect(ApiStatus.fileNotFound.toJson(), 'FILE_NOT_FOUND');
    });

    test('checkumError status serializes correctly', () {
      expect(ApiStatus.checkumError.toJson(), 'CHECKUM_ERROR');
    });

    test('downloadDone status serializes correctly', () {
      expect(ApiStatus.downloadDone.toJson(), 'DOWNLOAD_DONE');
    });

    test('uploadDone status serializes correctly', () {
      expect(ApiStatus.uploadDone.toJson(), 'UPLOAD_DONE');
    });

    test('tokenExpired status serializes correctly', () {
      expect(ApiStatus.tokenExpired.toJson(), 'TOKEN_EXPIRED');
    });

    test('wialonOauthSignNotFound status serializes correctly', () {
      expect(
        ApiStatus.wialonOauthSignNotFound.toJson(),
        'WIALON_OAUTH_SIGN_NOT_FOUND',
      );
    });

    test('wialonOauthRedirectNotFound status serializes correctly', () {
      expect(
        ApiStatus.wialonOauthRedirectNotFound.toJson(),
        'WIALON_OAUTH_REDIRECT_NOT_FOUND',
      );
    });

    test('wialonOauthTokenNotFound status serializes correctly', () {
      expect(
        ApiStatus.wialonOauthTokenNotFound.toJson(),
        'WIALON_OAUTH_TOKEN_NOT_FOUND',
      );
    });

    test('wialonOauthSvcError status serializes correctly', () {
      expect(
        ApiStatus.wialonOauthSvcError.toJson(),
        'WIALON_OAUTH_SVC_ERROR',
      );
    });

    test('externalAccountNotFound status serializes correctly', () {
      expect(
        ApiStatus.externalAccountNotFound.toJson(),
        'EXTERNAL_ACCOUNT_NOT_FOUND',
      );
    });

    test('externalSyncFailed status serializes correctly', () {
      expect(
        ApiStatus.externalSyncFailed.toJson(),
        'EXTERNAL_SYNC_FAILED',
      );
    });

    test('mqttBrokerError status serializes correctly', () {
      expect(ApiStatus.mqttBrokerError.toJson(), 'MQTT_BROKER_ERROR');
    });

    test('flespiUnavailable status serializes correctly', () {
      expect(ApiStatus.flespiUnavailable.toJson(), 'FLESPI_UNAVAILABLE');
    });

    test('inmutablEentity status serializes correctly', () {
      expect(ApiStatus.inmutablEentity.toJson(), 'INMUTABLE_ENTITY');
    });

    test('mfaRequired status serializes correctly', () {
      expect(ApiStatus.mfaRequired.toJson(), 'MFA_REQUIRED');
    });

    test('mfaAlreadyEnabled status serializes correctly', () {
      expect(ApiStatus.mfaAlreadyEnabled.toJson(), 'MFA_ALREADY_ENABLED');
    });

    test('mfaNotEnabled status serializes correctly', () {
      expect(ApiStatus.mfaNotEnabled.toJson(), 'MFA_NOT_ENABLED');
    });

    test('mfaInvalid status serializes correctly', () {
      expect(ApiStatus.mfaInvalid.toJson(), 'MFA_INVALID');
    });

    test('mfaMustBeEnabled status serializes correctly', () {
      expect(ApiStatus.mfaMustBeEnabled.toJson(), 'MFA_MUST_BE_ENABLED');
    });

    test('cannotEdit status serializes correctly', () {
      expect(ApiStatus.cannotEdit.toJson(), 'CANNOT_EDIT');
    });

    test('cannotDelete status serializes correctly', () {
      expect(ApiStatus.cannotDelete.toJson(), 'CANNOT_DELETE');
    });

    test('gptDisabled status serializes correctly', () {
      expect(ApiStatus.gptDisabled.toJson(), 'GPT_DISABLED');
    });

    test('passwordUsedBefore status serializes correctly', () {
      expect(ApiStatus.passwordUsedBefore.toJson(), 'PASSWORD_USED_BEFORE');
    });
  });

  group('ApiStatus deserialization', () {
    test('fromJson with modern format returns correct status', () {
      expect(ApiStatus.fromJson('OK'), ApiStatus.ok);
      expect(ApiStatus.fromJson('NOT_FOUND'), ApiStatus.notfound);
      expect(ApiStatus.fromJson('USER_NOT_FOUND'), ApiStatus.userNotFound);
    });

    test('fromJson with unknown value returns unknown status', () {
      expect(ApiStatus.fromJson('INVALID_STATUS'), ApiStatus.unknown);
      expect(ApiStatus.fromJson('NONEXISTENT'), ApiStatus.unknown);
      expect(ApiStatus.fromJson(''), ApiStatus.unknown);
    });

    test('fromJson deserializes all known values correctly', () {
      final testCases = {
        'OK': ApiStatus.ok,
        'UNKNOWN': ApiStatus.unknown,
        'NOT_FOUND': ApiStatus.notfound,
        'USER_NOT_FOUND': ApiStatus.userNotFound,
        'WRONG_PASSWORD': ApiStatus.wrongPassword,
        'ACCOUNT_BLOCKED': ApiStatus.accountBlocked,
        'INTERNAL_ERROR': ApiStatus.internalError,
        'UNPROCESSABLE': ApiStatus.unprocessable,
        'UNAUTHORIZED': ApiStatus.unauthorized,
        'ACCESS_DENIED': ApiStatus.accessDenied,
        'MOVED_PERMANENTLY': ApiStatus.movedPermanently,
        'BAD_REQUEST': ApiStatus.badRequest,
        'IAMATEAPOT': ApiStatus.iAmATeapot,
        'PAYMENT_REQUIRED': ApiStatus.paymentRequired,
        'SERVICE_UNAVAILABLE': ApiStatus.serviceUnavailable,
        'LIMIT_REACHED': ApiStatus.limitReached,
        'FILE_NOT_FOUND': ApiStatus.fileNotFound,
        'CHECKUM_ERROR': ApiStatus.checkumError,
        'DOWNLOAD_DONE': ApiStatus.downloadDone,
        'UPLOAD_DONE': ApiStatus.uploadDone,
        'TOKEN_EXPIRED': ApiStatus.tokenExpired,
        'WIALON_OAUTH_SIGN_NOT_FOUND': ApiStatus.wialonOauthSignNotFound,
        'WIALON_OAUTH_REDIRECT_NOT_FOUND': ApiStatus.wialonOauthRedirectNotFound,
        'WIALON_OAUTH_TOKEN_NOT_FOUND': ApiStatus.wialonOauthTokenNotFound,
        'WIALON_OAUTH_SVC_ERROR': ApiStatus.wialonOauthSvcError,
        'EXTERNAL_ACCOUNT_NOT_FOUND': ApiStatus.externalAccountNotFound,
        'EXTERNAL_SYNC_FAILED': ApiStatus.externalSyncFailed,
        'MQTT_BROKER_ERROR': ApiStatus.mqttBrokerError,
        'FLESPI_UNAVAILABLE': ApiStatus.flespiUnavailable,
        'INMUTABLE_ENTITY': ApiStatus.inmutablEentity,
        'MFA_REQUIRED': ApiStatus.mfaRequired,
        'MFA_ALREADY_ENABLED': ApiStatus.mfaAlreadyEnabled,
        'MFA_NOT_ENABLED': ApiStatus.mfaNotEnabled,
        'MFA_INVALID': ApiStatus.mfaInvalid,
        'MFA_MUST_BE_ENABLED': ApiStatus.mfaMustBeEnabled,
        'CANNOT_EDIT': ApiStatus.cannotEdit,
        'CANNOT_DELETE': ApiStatus.cannotDelete,
        'GPT_DISABLED': ApiStatus.gptDisabled,
        'PASSWORD_USED_BEFORE': ApiStatus.passwordUsedBefore,
      };

      for (final entry in testCases.entries) {
        expect(
          ApiStatus.fromJson(entry.key),
          equals(entry.value),
          reason: 'fromJson(${entry.key}) should return ${entry.value}',
        );
      }
    });
  });

  group('ApiStatus toString', () {
    test('toString returns the same as toJson', () {
      expect(ApiStatus.ok.toString(), ApiStatus.ok.toJson());
      expect(ApiStatus.notfound.toString(), ApiStatus.notfound.toJson());
      expect(ApiStatus.unknown.toString(), ApiStatus.unknown.toJson());
    });

    test('all statuses have meaningful toString representations', () {
      for (final status in ApiStatus.values) {
        final str = status.toString();
        expect(str, isNotEmpty);
        expect(str, contains(RegExp(r'[A-Z_]')));
      }
    });
  });

  group('ApiStatus comparison', () {
    test('same status values are equal', () {
      expect(ApiStatus.ok, equals(ApiStatus.ok));
      expect(ApiStatus.notfound, equals(ApiStatus.notfound));
    });

    test('different status values are not equal', () {
      expect(ApiStatus.ok, isNot(equals(ApiStatus.notfound)));
      expect(ApiStatus.unauthorized, isNot(equals(ApiStatus.accessDenied)));
    });
  });

  group('ApiStatus edge cases', () {
    test('fromJson is idempotent: fromJson(toJson(x)) == x', () {
      for (final status in ApiStatus.values) {
        final json = status.toJson();
        final restored = ApiStatus.fromJson(json);
        expect(
          restored,
          equals(status),
          reason: 'Round-trip should preserve all statuses',
        );
      }
    });

    test('fromJson returns unknown for empty string', () {
      expect(ApiStatus.fromJson(''), ApiStatus.unknown);
    });

    test('fromJson returns unknown for null-like strings', () {
      expect(ApiStatus.fromJson('null'), ApiStatus.unknown);
      expect(ApiStatus.fromJson('NULL'), ApiStatus.unknown);
    });

    test('from default ApiStatus constructor defaults to unknown', () {
      // ApiStatus.unknown is the fallback
      expect(ApiStatus.unknown.toJson(), 'UNKNOWN');
    });
  });

  group('ApiStatus in context', () {
    test('ApiStatus used in ApiResponse', () {
      final response = ApiResponse<Map<String, dynamic>, dynamic>(
        status: ApiStatus.ok,
        result: {'id': '1', 'name': 'test'},
      );

      expect(response.status, ApiStatus.ok);
      expect(response.status.toJson(), 'OK');
    });

    test('ApiResponse with error status', () {
      final response = ApiResponse<dynamic, Map<String, dynamic>>(
        status: ApiStatus.unauthorized,
        errors: {'reason': 'invalid token'},
      );

      expect(response.status, ApiStatus.unauthorized);
      expect(response.status.toJson(), 'UNAUTHORIZED');
      expect(response.result, isNull);
    });

    test('multiple statuses can be compared', () {
      final statusList = [
        ApiStatus.ok,
        ApiStatus.notfound,
        ApiStatus.unauthorized,
      ];

      expect(statusList.first, ApiStatus.ok);
      expect(statusList[1], ApiStatus.notfound);
      expect(statusList[2], ApiStatus.unauthorized);
    });
  });
}
