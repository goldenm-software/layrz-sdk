import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Preset Tests', () {
    test('constructs with required fields and defaults', () {
      final preset = Preset(id: 'preset-1', name: 'Default Preset');

      expect(preset.id, 'preset-1');
      expect(preset.name, 'Default Preset');
      expect(preset.validBefore, isNull);
      expect(preset.isExpired, isTrue);
      expect(preset.triggers, isNull);
      expect(preset.triggersIds, isNull);
      expect(preset.comment, isNull);
      expect(preset.access, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'preset-2',
        'name': 'Active Preset',
        'validBefore': 1893456000,
        'isExpired': false,
        'triggersIds': ['trig-1', 'trig-2'],
        'comment': 'Applied automatically',
      };

      final preset = Preset.fromJson(json);
      expect(preset.id, 'preset-2');
      expect(preset.name, 'Active Preset');
      expect(preset.validBefore, isNotNull);
      expect(preset.isExpired, isFalse);
      expect(preset.triggersIds, ['trig-1', 'trig-2']);
      expect(preset.comment, 'Applied automatically');

      final restored = preset.toJson();
      expect(restored['id'], 'preset-2');
      expect(restored['name'], 'Active Preset');
      expect(restored['isExpired'], false);
    });

    test('fromJson with nested triggers', () {
      final json = {
        'id': 'preset-3',
        'name': 'Trigger Preset',
        'triggers': [
          {'id': 'trig-1', 'name': 'Speeding', 'code': 'SPD', 'kind': 'FORMULA'},
        ],
      };

      final preset = Preset.fromJson(json);
      expect(preset.triggers, hasLength(1));
      expect(preset.triggers!.first.name, 'Speeding');
    });

    test('copyWith updates fields', () {
      final preset = Preset(id: 'a', name: 'A');
      final updated = preset.copyWith(name: 'B', isExpired: false);

      expect(updated.name, 'B');
      expect(updated.isExpired, isFalse);
    });

    test('equality', () {
      final a = Preset(id: 'x', name: 'X');
      final b = Preset(id: 'x', name: 'X');
      final c = Preset(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });
  });
}
