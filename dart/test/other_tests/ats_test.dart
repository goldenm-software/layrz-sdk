import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test(
    "AtsExit test",
    () {
      Map<String, dynamic> data = {
        'id': '2',
        'fromAssetId': '1',
        'fromAsset': {
          'id': '14',
          'name': 'test',
        },
      };
      AtsExit? exit;
      exit = AtsExit.fromJson(data);

      expect(exit, isA<AtsExit>());
    },
  );

  // NOTE: The original "Ats Operation test" group (AtsOperation, AtsPurchaseOrderCategoriesEntity) was
  // removed here. Those types are peripheral ATS models that stayed in layrz_models and were not
  // ported to layrz_sdk, so a test exercising them cannot compile against this package.
}
