import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('VisionProfile Tests', () {
    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': '1',
        'name': 'Gauge',
        'protocolId': '2',
        'config': {'min': 0, 'max': 100},
      };

      final profile = VisionProfile.fromJson(json);
      expect(profile.id, '1');
      expect(profile.name, 'Gauge');
      expect(profile.protocolId, '2');
      expect(profile.config?['max'], 100);
      expect(profile.protocol, isNull);

      final restored = VisionProfile.fromJson(profile.toJson());
      expect(restored, profile);
    });

    test('fullFragment selects the protocol', () {
      expect(VisionProfile.fullFragment.onType, 'VisionProfile');
      expect(VisionProfile.fullFragment.name, isNot(VisionProfile.fragment.name));
    });
  });

  group('VisionProfileInput Tests', () {
    test('defaults', () {
      final input = VisionProfileInput();
      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.protocolId, isNull);
      expect(input.config, isEmpty);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': '1',
        'name': 'Gauge',
        'protocolId': '2',
        'config': {'unit': 'psi'},
      };

      final input = VisionProfileInput.fromJson(json);
      expect(input.id, '1');
      expect(input.name, 'Gauge');
      expect(input.protocolId, '2');
      expect(input.config['unit'], 'psi');

      final out = input.toJson();
      expect(out['id'], '1');
      expect(out['name'], 'Gauge');
      expect(out['protocolId'], '2');
      expect(out['config'], {'unit': 'psi'});
    });

    test('is mutable', () {
      final input = VisionProfileInput();
      input.name = 'New';
      input.protocolId = '5';
      expect(input.toJson()['name'], 'New');
      expect(input.toJson()['protocolId'], '5');
    });
  });
}
