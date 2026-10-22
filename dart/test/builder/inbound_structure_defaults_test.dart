import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('InboundStructure decodes missing and null flags as empty defaults', () {
    for (final json in [
      <String, dynamic>{},
      {'hasPosition': null, 'hasPayload': null, 'payload': null},
    ]) {
      final structure = InboundStructure.fromJson(json);

      expect(structure.hasPosition, isFalse);
      expect(structure.hasPayload, isFalse);
      expect(structure.payload, isEmpty);
      expect(structure.position, isNull);
    }
  });
}
