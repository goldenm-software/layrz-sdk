import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('ApiResponse generic serialization with Map model', () {
    // Adapted from layrz_models api_test.dart — using Map<String, dynamic>
    // instead of Model since that type is not migrated to layrz_sdk.
    // The test intent is to verify ApiResponse<T, Q> round-trip serialization.
    final modelJson = {'id': '1', 'name': 'Test'};
    final json = {
      'status': 'OK',
      'errors': {'hello': 'world'},
      'result': [modelJson],
    };

    // Deserialize
    final apiResponse = ApiResponse<List<Map<String, dynamic>>, Map<String, dynamic>>.fromJson(
      json,
      (json) => (json as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
      (json) => (json as Map<String, dynamic>),
    );

    expect(apiResponse.status, ApiStatus.ok);
    expect(apiResponse.errors, isA<Map<String, dynamic>>());
    expect(apiResponse.result, isA<List<Map<String, dynamic>>>());
    expect(apiResponse.result!.first['id'], '1');
    expect(apiResponse.result!.first['name'], 'Test');

    // Serialize
    final serialized = apiResponse.toJson(
      (value) => value.map((e) => e).toList(),
      (value) => value,
    );

    expect(serialized, json);
  });
}
