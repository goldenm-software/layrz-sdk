import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('PresetInput Tests', () {
    test('constructs with defaults', () {
      final input = PresetInput(validBefore: DateTime.fromMillisecondsSinceEpoch(0));

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.comment, '');
      expect(input.triggersIds, isEmpty);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'preset-1',
        'name': 'Night shift',
        'validBefore': 1893456000,
        'comment': 'Applied automatically',
        'triggersIds': ['trig-1', 'trig-2'],
      };

      final input = PresetInput.fromJson(json);
      expect(input.id, 'preset-1');
      expect(input.name, 'Night shift');
      expect(input.validBefore, DateTime.fromMillisecondsSinceEpoch(1893456000 * 1000));
      expect(input.comment, 'Applied automatically');
      expect(input.triggersIds, ['trig-1', 'trig-2']);

      final restored = input.toJson();
      expect(restored['id'], 'preset-1');
      expect(restored['name'], 'Night shift');
      expect(restored['validBefore'], 1893456000);
      expect(restored['comment'], 'Applied automatically');
      expect(restored['triggersIds'], ['trig-1', 'trig-2']);
    });

    test('is mutable', () {
      final input = PresetInput(validBefore: DateTime.fromMillisecondsSinceEpoch(0));
      input.name = 'Renamed';
      input.triggersIds = ['trig-9'];

      expect(input.name, 'Renamed');
      expect(input.triggersIds, ['trig-9']);
    });

    test('id is null when creating a new preset', () {
      final input = PresetInput(validBefore: DateTime.fromMillisecondsSinceEpoch(0));

      expect(input.toJson()['id'], isNull);
    });
  });
}
