import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Builds a `registeredApps.result[0]` style payload with null-named entries,
/// as returned by the API for entities the session cannot see.
Map<String, dynamic> _payload() => {
  'id': '12',
  'name': 'App',
  'nickname': 'app',
  'technology': 'FLUTTER',
  'sourceId': '3',
  'importedAssets': [
    {'id': '5672', 'name': null, 'dynamicIcon': null},
    {'id': '5673', 'name': 'Truck'},
    {'id': '5674'},
  ],
  'importedDevices': [
    {'id': '297', 'name': null, 'ident': null},
    {'id': '298', 'name': 'Tracker', 'ident': 'IMEI-1'},
  ],
  'keychain': [
    {'id': '4', 'name': null, 'dynamicAvatar': null},
    {'id': '5', 'name': 'Alice'},
  ],
};

void main() {
  group('RegisteredApp lenient decoding', () {
    test('keeps null-named entries with empty strings', () {
      final app = RegisteredApp.fromJson(_payload());

      expect(app.importedAssets!.map((e) => e.id), ['5672', '5673', '5674']);
      expect(app.importedAssets!.map((e) => e.name), ['', 'Truck', '']);

      expect(app.importedDevices!.map((e) => e.id), ['297', '298']);
      expect(app.importedDevices!.map((e) => e.name), ['', 'Tracker']);
      expect(app.importedDevices!.map((e) => e.ident), ['', 'IMEI-1']);

      expect(app.keychain!.map((e) => e.id), ['4', '5']);
      expect(app.keychain!.map((e) => e.name), ['', 'Alice']);
    });

    test('leaves null lists untouched', () {
      final json = _payload()
        ..['importedAssets'] = null
        ..remove('importedDevices')
        ..['keychain'] = null;
      final app = RegisteredApp.fromJson(json);

      expect(app.importedAssets, isNull);
      expect(app.importedDevices, isNull);
      expect(app.keychain, isNull);
    });

    test('decodes the response result wrapper like fillAuthorizations', () {
      final response = {
        'status': 'OK',
        'errors': null,
        'result': [_payload()],
      };
      final apps = (response['result'] as List)
          .map((e) => RegisteredApp.fromJson(e as Map<String, dynamic>))
          .toList();

      expect(apps, hasLength(1));
      expect(apps.first.importedAssets!.first.id, '5672');
    });

    test('toJson is unaffected and round-trips', () {
      final app = RegisteredApp.fromJson(_payload());
      final again = RegisteredApp.fromJson(app.toJson());

      expect(again.importedAssets!.map((e) => e.id), ['5672', '5673', '5674']);
      expect(again.importedDevices!.first.ident, '');
    });
  });
}
