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
  });
}
