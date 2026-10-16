import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('WialonAccount Tests', () {
    test('WialonAccount.fromJson() and roundtrip', () {
      final account = WialonAccount.fromJson(<String, dynamic>{'wialonId': '123', 'name': 'Main resource'});

      expect(account.wialonId, '123');
      expect(account.name, 'Main resource');
      expect(account.toJson(), {'wialonId': '123', 'name': 'Main resource'});
    });

    test('WialonAccount.fragment selects wialonId and name', () {
      final query = GqlQuery(variables: [])
        ..add(GqlField(name: 'wialonAccounts')..add(GqlField(name: 'result', fragment: WialonAccount.fragment)));
      final doc = query.generated;

      expect(doc, contains('wialonId'));
      expect(doc, contains('on WialonAccount'));
    });
  });

  group('WialonAccountsInput Tests', () {
    test('defaults wialonIds to an empty list', () {
      final input = WialonAccountsInput(externalAccountId: 'ext_1');

      expect(input.externalAccountId, 'ext_1');
      expect(input.wialonIds, isEmpty);
    });

    test('toJson() and fromJson() roundtrip', () {
      final input = WialonAccountsInput(externalAccountId: 'ext_1', wialonIds: ['1', '2']);

      final json = input.toJson();
      expect(json['externalAccountId'], 'ext_1');
      expect(json['wialonIds'], ['1', '2']);

      final restored = WialonAccountsInput.fromJson(json);
      expect(restored.externalAccountId, 'ext_1');
      expect(restored.wialonIds, ['1', '2']);
    });

    test('is mutable', () {
      final input = WialonAccountsInput(externalAccountId: 'ext_1');
      input.wialonIds = ['9'];
      expect(input.wialonIds, ['9']);
    });
  });
}
