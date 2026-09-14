import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ExternalAccountVariant Tests', () {
    test('queryName for standard', () {
      expect(ExternalAccountVariant.standard.queryName, 'externalAccounts');
    });

    test('queryName for mappit', () {
      expect(ExternalAccountVariant.mappit.queryName, 'mappitExternalAccounts');
    });

    test('addMutationName for standard', () {
      expect(ExternalAccountVariant.standard.addMutationName, 'addExternalAccount');
    });

    test('addMutationName for mappit', () {
      expect(ExternalAccountVariant.mappit.addMutationName, 'addMappitExternalAccount');
    });

    test('editMutationName for standard', () {
      expect(ExternalAccountVariant.standard.editMutationName, 'editExternalAccount');
    });

    test('editMutationName for mappit', () {
      expect(ExternalAccountVariant.mappit.editMutationName, 'editMappitExternalAccount');
    });

    test('deleteMutationName for standard', () {
      expect(ExternalAccountVariant.standard.deleteMutationName, 'deleteExternalAccounts');
    });

    test('deleteMutationName for mappit', () {
      expect(ExternalAccountVariant.mappit.deleteMutationName, 'deleteMappitExternalAccounts');
    });

    test('all variants have non-empty names', () {
      for (final variant in ExternalAccountVariant.values) {
        expect(variant.queryName, isNotEmpty);
        expect(variant.addMutationName, isNotEmpty);
        expect(variant.editMutationName, isNotEmpty);
        expect(variant.deleteMutationName, isNotEmpty);
      }
    });
  });
}
