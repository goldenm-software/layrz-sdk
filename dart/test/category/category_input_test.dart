import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('CategoryInput Tests', () {
    test('CategoryInput defaults when constructed with no arguments', () {
      final input = CategoryInput();

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.kind, CategoryKind.asset);
      expect(input.assetKind, isNull);
    });

    test('CategoryInput with all fields populated', () {
      final input = CategoryInput(
        id: 'cat_input_001',
        name: 'Connected Trucks',
        kind: CategoryKind.asset,
        assetKind: AssetKind.connected,
      );

      expect(input.id, 'cat_input_001');
      expect(input.name, 'Connected Trucks');
      expect(input.kind, CategoryKind.asset);
      expect(input.assetKind, AssetKind.connected);
    });

    test('CategoryInput.fromJson() with minimal fields uses defaults', () {
      final json = <String, dynamic>{};

      final input = CategoryInput.fromJson(json);

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.kind, CategoryKind.asset);
      expect(input.assetKind, isNull);
    });

    test('CategoryInput.fromJson() / toJson() roundtrip', () {
      final json = <String, dynamic>{
        'id': 'cat_input_002',
        'name': 'Devices',
        'kind': 'DEVICE',
        'assetKind': null,
      };

      final input = CategoryInput.fromJson(json);
      final roundtripped = input.toJson();

      expect(input.id, 'cat_input_002');
      expect(input.name, 'Devices');
      expect(input.kind, CategoryKind.device);
      expect(roundtripped['id'], 'cat_input_002');
      expect(roundtripped['name'], 'Devices');
      expect(roundtripped['kind'], 'DEVICE');
    });

    test('CategoryInput is mutable', () {
      final input = CategoryInput(name: 'Initial');

      input.name = 'Updated';
      input.kind = CategoryKind.user;
      input.assetKind = AssetKind.disconnected;

      expect(input.name, 'Updated');
      expect(input.kind, CategoryKind.user);
      expect(input.assetKind, AssetKind.disconnected);
    });
  });
}
