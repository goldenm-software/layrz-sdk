import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Asset Tests', () {
    test('Asset.fromJson deserializes assetsInStorageTerminal relation', () {
      final json = {
        'id': 'terminal-1',
        'name': 'Terminal 1',
        'linkedStorageTerminalsIds': ['other-terminal'],
        'assetsInStorageTerminalIds': ['parent-1', 'parent-2'],
        'assetsInStorageTerminal': [
          {'id': 'parent-1', 'name': 'Parent Asset 1'},
          {'id': 'parent-2', 'name': 'Parent Asset 2'},
        ],
      };

      final asset = Asset.fromJson(json);

      expect(asset.assetsInStorageTerminalIds, ['parent-1', 'parent-2']);
      expect(asset.assetsInStorageTerminal?.length, 2);
      expect(asset.assetsInStorageTerminal?[0].id, 'parent-1');
      expect(asset.assetsInStorageTerminal?[0].name, 'Parent Asset 1');
      expect(asset.assetsInStorageTerminal?[1].id, 'parent-2');
    });

    test('Asset.fromJson without assetsInStorageTerminal relation defaults to null', () {
      final json = {'id': 'terminal-1', 'name': 'Terminal 1'};

      final asset = Asset.fromJson(json);

      expect(asset.assetsInStorageTerminal, isNull);
      expect(asset.assetsInStorageTerminalIds, isNull);
    });

    test('Asset roundtrip preserves assetsInStorageTerminal relation', () {
      final original = Asset(
        id: 'terminal-1',
        name: 'Terminal 1',
        assetsInStorageTerminalIds: ['parent-1'],
        assetsInStorageTerminal: [Asset(id: 'parent-1', name: 'Parent Asset 1')],
      );

      final restored = Asset.fromJson(original.toJson());

      expect(restored.assetsInStorageTerminalIds, ['parent-1']);
      expect(restored.assetsInStorageTerminal?.single.id, 'parent-1');
      expect(restored.assetsInStorageTerminal?.single.name, 'Parent Asset 1');
    });

    test('Asset.fromJson deserializes the audit fields', () {
      final json = {
        'id': 'asset-1',
        'name': 'Asset 1',
        'createdAt': 1700000000,
        'createdBy': {'id': 'user-1', 'name': 'Creator'},
        'updatedAt': 1700003600.5,
        'updatedBy': {'id': 'user-2', 'name': 'Editor'},
      };

      final asset = Asset.fromJson(json);

      expect(asset.createdAt, DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000));
      expect(asset.createdBy?.id, 'user-1');
      expect(asset.createdBy?.name, 'Creator');
      expect(asset.updatedAt, DateTime.fromMillisecondsSinceEpoch(1700003600500));
      expect(asset.updatedBy?.id, 'user-2');
      expect(asset.updatedBy?.name, 'Editor');
    });

    test('Asset.fromJson accepts the audit dates as numeric strings, as the API returns them', () {
      final asset = Asset.fromJson({
        'id': '34',
        'name': 'NZK8363',
        'plate': '973195',
        'createdAt': '1631723578.06322',
        'createdBy': null,
        'updatedAt': '1785534610.174561',
        'updatedBy': null,
      });

      expect(asset.createdAt, DateTime.fromMillisecondsSinceEpoch(1631723578063));
      expect(asset.updatedAt, DateTime.fromMillisecondsSinceEpoch(1785534610174));
      expect(asset.createdBy, isNull);
      expect(asset.updatedBy, isNull);
    });

    test('Asset.fromJson without audit fields leaves them null', () {
      final asset = Asset.fromJson({'id': 'asset-1', 'name': 'Asset 1'});

      expect(asset.createdAt, isNull);
      expect(asset.createdBy, isNull);
      expect(asset.updatedAt, isNull);
      expect(asset.updatedBy, isNull);
    });

    test('Asset.fromJson accepts null audit values', () {
      final asset = Asset.fromJson({
        'id': 'asset-1',
        'name': 'Asset 1',
        'createdAt': null,
        'createdBy': null,
        'updatedAt': null,
        'updatedBy': null,
      });

      expect(asset.createdAt, isNull);
      expect(asset.createdBy, isNull);
      expect(asset.updatedAt, isNull);
      expect(asset.updatedBy, isNull);
    });

    test('Asset roundtrip preserves the audit fields', () {
      final original = Asset(
        id: 'asset-1',
        name: 'Asset 1',
        createdAt: DateTime.fromMillisecondsSinceEpoch(1700000000000),
        createdBy: User(id: 'user-1', name: 'Creator'),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(1700003600000),
        updatedBy: User(id: 'user-2', name: 'Editor'),
      );

      final restored = Asset.fromJson(original.toJson());

      expect(restored.createdAt, original.createdAt);
      expect(restored.createdBy?.name, 'Creator');
      expect(restored.updatedAt, original.updatedAt);
      expect(restored.updatedBy?.name, 'Editor');
    });
  });
}
