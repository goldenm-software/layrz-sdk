import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Category Tests', () {
    test('Category.fromJson() with required fields only', () {
      final json = <String, dynamic>{
        'id': 'cat_123',
        'name': 'Trucks',
        'kind': 'ASSET',
      };

      final category = Category.fromJson(json);

      expect(category, isA<Category>());
      expect(category.id, 'cat_123');
      expect(category.name, 'Trucks');
      expect(category.kind, CategoryKind.asset);
      expect(category.assetKind, isNull);
    });

    test('Category.fromJson() with all fields populated', () {
      final json = <String, dynamic>{
        'id': 'cat_456',
        'name': 'Connected Assets',
        'kind': 'ASSET',
        'assetKind': 'CONNECTED',
      };

      final category = Category.fromJson(json);

      expect(category.id, 'cat_456');
      expect(category.name, 'Connected Assets');
      expect(category.kind, CategoryKind.asset);
      expect(category.assetKind, AssetKind.connected);
    });

    test('Category.toJson() roundtrip', () {
      final category = Category(
        id: 'cat_789',
        name: 'Roundtrip Category',
        kind: CategoryKind.device,
        assetKind: null,
      );

      final json = category.toJson();
      final roundtripped = Category.fromJson(json);

      expect(roundtripped.id, category.id);
      expect(roundtripped.name, category.name);
      expect(roundtripped.kind, category.kind);
      expect(roundtripped.assetKind, category.assetKind);
    });

    test('Category equality', () {
      final category1 = Category(
        id: 'id-1',
        name: 'Same',
        kind: CategoryKind.app,
      );
      final category2 = Category(
        id: 'id-1',
        name: 'Same',
        kind: CategoryKind.app,
      );
      final category3 = Category(
        id: 'id-2',
        name: 'Different',
        kind: CategoryKind.user,
      );

      expect(category1, category2);
      expect(category1, isNot(category3));
    });

    test('Category fragment has required fields', () {
      final fragment = Category.fragment;

      expect(fragment.name, 'categoryFragment');
      expect(fragment.onType, 'Category');
      expect(fragment.fields.isNotEmpty, true);
      expect(
        fragment.fields.map((f) => f.name),
        containsAll(['id', 'name', 'kind', 'assetKind']),
      );
    });

    group('CategoryKind enum', () {
      test('toJson() returns the expected wire value for every member', () {
        expect(CategoryKind.asset.toJson(), 'ASSET');
        expect(CategoryKind.app.toJson(), 'APP');
        expect(CategoryKind.user.toJson(), 'USER');
        expect(CategoryKind.service.toJson(), 'SERVICE');
        expect(CategoryKind.function.toJson(), 'FUNCTION');
        expect(CategoryKind.device.toJson(), 'DEVICE');
        expect(CategoryKind.universal.toJson(), 'UNIVERSAL');
      });

      test('fromJson() roundtrips every known value', () {
        for (final kind in CategoryKind.values) {
          expect(CategoryKind.fromJson(kind.toJson()), kind);
        }
      });

      test('fromJson() falls back to universal for unknown values', () {
        expect(
          CategoryKind.fromJson('SOMETHING_UNKNOWN'),
          CategoryKind.universal,
        );
      });

      test('toString() matches toJson()', () {
        expect(CategoryKind.asset.toString(), CategoryKind.asset.toJson());
      });
    });

    group('AssetKind enum', () {
      test('toJson() returns the expected wire value for every member', () {
        expect(AssetKind.connected.toJson(), 'CONNECTED');
        expect(AssetKind.disconnected.toJson(), 'DISCONNECTED');
      });

      test('fromJson() roundtrips every known value', () {
        for (final kind in AssetKind.values) {
          expect(AssetKind.fromJson(kind.toJson()), kind);
        }
      });

      test('fromJson() falls back to disconnected for unknown values', () {
        expect(AssetKind.fromJson('SOMETHING_UNKNOWN'), AssetKind.disconnected);
      });

      test('toString() matches toJson()', () {
        expect(AssetKind.connected.toString(), AssetKind.connected.toJson());
      });
    });
  });
}
