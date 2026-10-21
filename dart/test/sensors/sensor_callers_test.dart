import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Sensor.fragment', () {
    final generated = (GqlQuery(
      variables: [],
      name: 'probe',
    )..add(GqlField(name: 'result', fragment: Sensor.fragment))).generated;

    test('is named sensorFragment on Sensor', () {
      expect(generated, contains('fragment sensorFragment on Sensor'));
    });

    test('does not select fields missing from the backend Sensor type', () {
      final body = generated.split('fragment sensorFragment on Sensor').last;
      for (final field in ['isGlobal', 'isTemplate', 'externalIdentifiers', 'lastExit', 'parent\n']) {
        expect(body, isNot(contains(field)), reason: field);
      }
    });

    test('selects the shared fields', () {
      for (final field in ['id', 'slug', 'qrCode', 'subtype', 'maxHistorySearch', 'functionId', 'duration']) {
        expect(generated, contains(field), reason: field);
      }
    });
  });

  group('SensorInput.toJson', () {
    test('serializes maxHistorySearch and mask duration as seconds', () {
      final input = SensorInput(
        name: 'S',
        maxHistorySearch: const Duration(minutes: 2),
        mask: [MaskPointInput(value: 'A', duration: const Duration(hours: 1))],
      );

      final json = jsonDecode(jsonEncode(input.toJson())) as Map<String, dynamic>;

      expect(json['maxHistorySearch'], 120);
      expect((json['mask'] as List).first['duration'], 3600);
    });
  });

  group('SensorSubType.v8', () {
    test('round trip', () {
      expect(SensorSubType.v8.toJson(), 'V8');
      expect(SensorSubType.fromJson('V8'), SensorSubType.v8);
      expect(SensorSubType.v8.toString(), 'V8');
    });

    test('unknown subtype still falls back to raw', () {
      expect(SensorSubType.fromJson('NOPE'), SensorSubType.raw);
    });
  });
}
