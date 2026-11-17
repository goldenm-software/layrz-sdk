import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Builds an `internalRegisteredApps` style payload with the given [owner].
Map<String, dynamic> _implementation(Object? owner) => {
  'id': '7',
  'name': 'Impl',
  'technology': 'FLUTTER',
  'owner': owner,
};

void main() {
  group('InternalRegisteredApp lenient owner decoding', () {
    test('keeps an owner with a null name as an empty string', () {
      final app = InternalRegisteredApp.fromJson(
        _implementation({'id': '1', 'name': null}),
      );

      expect(app.owner, isNotNull);
      expect(app.owner!.id, '1');
      expect(app.owner!.name, '');
    });

    test('keeps an owner that only carries an id', () {
      final app = InternalRegisteredApp.fromJson(_implementation({'id': '1'}));

      expect(app.owner!.id, '1');
      expect(app.owner!.name, '');
    });

    test('keeps a fully populated owner untouched', () {
      final app = InternalRegisteredApp.fromJson(
        _implementation({'id': '1', 'name': 'Alice'}),
      );

      expect(app.owner!.name, 'Alice');
    });

    test('leaves a null owner null', () {
      expect(
        InternalRegisteredApp.fromJson(_implementation(null)).owner,
        isNull,
      );
      expect(
        InternalRegisteredApp.fromJson({
          'id': '7',
          'name': 'Impl',
          'technology': 'FLUTTER',
        }).owner,
        isNull,
      );
    });
  });

  group('AvailableApp lenient implementations', () {
    test('decodes implementations whose owner only has an id', () {
      final app = AvailableApp.fromJson({
        'id': '3',
        'name': 'Catalog app',
        'appId': 'com.layrz.catalog',
        'onlyCustomized': false,
        'implementations': [
          _implementation({'id': '1'}),
          _implementation({'id': '2', 'name': 'Bob'}),
        ],
      });

      expect(app.implementations!.map((e) => e.owner!.id), ['1', '2']);
      expect(app.implementations!.map((e) => e.owner!.name), ['', 'Bob']);
    });
  });
}
