import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _jsonRoundTrip(Map<String, dynamic> json) => jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

String _generated(List<GqlField> fields) =>
    (GqlQuery(name: 'probe')..add(GqlField(name: 'result', fields: fields))).generated;

const _avatar = {'type': 'ICON', 'url': null, 'icon': 'mdi-card', 'emoji': null};

const _cardJson = {
  'id': '10',
  'number': 42,
  'externalIdentifier': 123456,
  'externalIdentifierHex': '1E240',
  'isSuspended': false,
  'createdAt': 1700000000,
  'typeId': 'NFC',
  'asset': {'id': '3', 'name': 'Truck', 'plate': 'ABC-123', 'dynamicIcon': _avatar},
  'owner': {'id': '5', 'name': 'Driver', 'dynamicAvatar': _avatar},
};

const _historyJson = {
  'id': '99',
  'operation': 'COMMAND_RESULT',
  'asset': null,
  'owner': {'id': '5', 'name': 'Driver', 'dynamicAvatar': _avatar},
  'createdBy': {'id': '1', 'name': 'Admin', 'dynamicAvatar': _avatar},
  'createdAt': 1700000100,
};

void main() {
  group('AtsAuthenticationCard selection', () {
    test('fields selects what the list reads', () {
      final generated = _generated(AtsAuthenticationCard.fields);
      for (final field in [
        'id',
        'number',
        'externalIdentifier',
        'externalIdentifierHex',
        'isSuspended',
        'createdAt',
        'typeId',
        'plate',
        'dynamicIcon',
        'owner',
        'dynamicAvatar',
      ]) {
        expect(generated, contains(field), reason: field);
      }
      expect(generated, isNot(contains('history')));
    });

    test('history fields select the audit trail', () {
      final generated = _generated(AtsHistoryAuthenticationCard.fields);
      for (final field in ['operation', 'createdBy', 'createdAt', 'asset', 'owner']) {
        expect(generated, contains(field), reason: field);
      }
    });
  });

  group('AtsAuthenticationCard decoding', () {
    test('decodes the list payload', () {
      final card = AtsAuthenticationCard.fromJson(_jsonRoundTrip(_cardJson));
      expect(card.id, '10');
      expect(card.typeId, AtsSelectCard.nfc);
      expect(card.asset?.plate, 'ABC-123');
      expect(card.owner?.name, 'Driver');
      expect(card.createdAt, DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000));
      expect(card.history, isNull);
    });

    test('decodes the detail payload with history', () {
      final card = AtsAuthenticationCard.fromJson(
        _jsonRoundTrip({
          ..._cardJson,
          'history': [_historyJson],
        }),
      );
      final entry = card.history!.single;
      expect(entry.operation, AtsHistoryAuthenticationCardOperation.commandResult);
      expect(entry.createdBy.name, 'Admin');
      expect(entry.asset, isNull);
    });
  });

  group('AtsSelectCard wire values', () {
    test('round trip', () {
      for (final (value, wire) in [
        (AtsSelectCard.cardboard, 'CARDBOARD'),
        (AtsSelectCard.nfc, 'NFC'),
        (AtsSelectCard.tag, 'TAG'),
      ]) {
        expect(value.toJson(), wire);
        expect(AtsSelectCard.fromJson(wire), value);
      }
    });
  });

  group('AtsAssignCardsResult', () {
    test('round trip', () {
      final result = AtsAssignCardsResult.fromJson({'assigned': 2, 'updated': 1});
      expect(result.assigned, 2);
      expect(result.updated, 1);
      expect(result.toJson(), {'assigned': 2, 'updated': 1});
    });

    test('missing counts default to zero', () {
      final result = AtsAssignCardsResult.fromJson({'assigned': null});
      expect(result.assigned, 0);
      expect(result.updated, 0);
    });
  });

  group('AtsCommandResult', () {
    test('round trip with executedAt as seconds', () {
      final json = {'request': 'GET_STATUS', 'response': 'OK', 'executedAt': 1700000200};
      final result = AtsCommandResult.fromJson(json);
      expect(result.request, 'GET_STATUS');
      expect(result.response, 'OK');
      expect(result.executedAt, DateTime.fromMillisecondsSinceEpoch(1700000200 * 1000));
      expect(_jsonRoundTrip(result.toJson()), json);
    });

    test('accepts null values', () {
      final result = AtsCommandResult.fromJson({'request': null, 'response': null, 'executedAt': null});
      expect(result.request, isNull);
      expect(result.response, isNull);
      expect(result.executedAt, isNull);
    });
  });

  group('AtsAuthenticationCard.parseUploadResponse', () {
    Map<String, dynamic> body(Map<String, dynamic> envelope) => {
      'data': {'uploadCardsFromFileV2': envelope},
    };

    test('maps UNPROCESSABLE_ENTITY and keeps the row list', () {
      final (status, errors, _) = AtsAuthenticationCard.parseUploadResponse(
        body({
          'status': 'UNPROCESSABLE_ENTITY',
          'errors': [3, 7],
        }),
      );
      expect(status, ApiStatus.unprocessable);
      expect(errors, {
        AtsAuthenticationCard.uploadRowErrorsKey: [3, 7],
      });
      expect(AtsAuthenticationCard.uploadErrorRows(errors), [3, 7]);
    });

    test('keeps map errors as they are', () {
      final (status, errors, _) = AtsAuthenticationCard.parseUploadResponse(
        body({
          'status': 'BAD_REQUEST',
          'errors': {
            'authenticationCardsFile': [
              {'code': 'required'},
            ],
          },
        }),
      );
      expect(status, ApiStatus.badRequest);
      expect(errors?.keys, ['authenticationCardsFile']);
      expect(AtsAuthenticationCard.uploadErrorRows(errors), isEmpty);
    });

    test('drops string errors', () {
      final (status, errors, _) = AtsAuthenticationCard.parseUploadResponse(
        body({'status': 'INTERNAL_ERROR', 'errors': 'Card already exists with the same external identifier.'}),
      );
      expect(status, ApiStatus.internalError);
      expect(errors, isNull);
    });

    test('returns OK without errors', () {
      final (status, errors, _) = AtsAuthenticationCard.parseUploadResponse(body({'status': 'OK', 'errors': null}));
      expect(status, ApiStatus.ok);
      expect(errors, isNull);
    });

    test('an unexpected body is an internal error', () {
      expect(AtsAuthenticationCard.parseUploadResponse('nope').$1, ApiStatus.internalError);
      expect(AtsAuthenticationCard.parseUploadResponse({'data': null}).$1, ApiStatus.internalError);
    });

    test('uploadErrorRows ignores non numeric rows', () {
      expect(
        AtsAuthenticationCard.uploadErrorRows({
          AtsAuthenticationCard.uploadRowErrorsKey: [2, 'x', 4.0],
        }),
        [2, 4],
      );
      expect(AtsAuthenticationCard.uploadErrorRows(null), isEmpty);
    });
  });
}
