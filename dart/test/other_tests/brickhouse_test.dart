import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

// NOTE: The original file also covered BrickHouseWorkspaceInput, NullablePhoneNumber, MessageOfTheDay
// (+ MessageOfTheDayInput) and BrickhouseAlert. Those types are peripheral Brickhouse models that
// stayed in layrz_models and were not ported to layrz_sdk, so tests exercising them were removed —
// only the BHSPermissionTier(+Input) groups (moved types) remain.
void main() {
  test('Tiers input test', () {
    final Map<String, dynamic> data = {
      "id": "1",
      "name": "basic",
      "description": "",
      "tierLevel": 1,
      "customProperties": <String, dynamic>{},
      "billingPeriod": 'YEARLY',
    };

    final tier = BHSPermissionTierInput.fromJson(data);
    final tier2 = BHSPermissionTier.fromJson(data);

    expect(tier, isA<BHSPermissionTierInput>());
    expect(tier2, isA<BHSPermissionTier>());
    expect(tier2.billingPeriod, equals(BrickhouseBillingPeriod.yearly));
  });

  test('Brickhouse permission Tier', () {
    final data = {
      "id": "1",
      "name": "test",
      "tierLevel": 1,
      "customProperties": null,
    };

    final permissionTier = BHSPermissionTier.fromJson(data);

    expect(permissionTier, isA<BHSPermissionTier>());
  });

  test('Brickhouse permission Tier', () {
    final data = BHSPermissionTierInput();

    expect(data.tierLevel, equals(1));
  });
}
