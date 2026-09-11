import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('RealtimeMessage Tests', () {
    test('RealtimeMessage.fromJson() with required fields', () {
      final json = <String, dynamic>{
        'topic': 'device.updated',
        'payload': <String, dynamic>{'id': 'dev_123', 'status': 'online'},
      };

      final message = RealtimeMessage.fromJson(json);

      expect(message, isA<RealtimeMessage>());
      expect(message.topic, 'device.updated');
      expect(message.payload, <String, dynamic>{'id': 'dev_123', 'status': 'online'});
    });

    test('RealtimeMessage.fromJson() with empty payload', () {
      final json = <String, dynamic>{
        'topic': 'ping',
        'payload': <String, dynamic>{},
      };

      final message = RealtimeMessage.fromJson(json);

      expect(message.topic, 'ping');
      expect(message.payload, isEmpty);
    });

    test('RealtimeMessage.toJson() roundtrip', () {
      final original = RealtimeMessage(
        topic: 'asset.telemetry',
        payload: <String, dynamic>{'speed': 42, 'ignition': true},
      );

      final json = original.toJson();
      final restored = RealtimeMessage.fromJson(json);

      expect(restored.topic, original.topic);
      expect(restored.payload, original.payload);
      expect(restored, original);
    });

    test('RealtimeMessage equality', () {
      final a = RealtimeMessage(topic: 'topic.a', payload: <String, dynamic>{'x': 1});
      final b = RealtimeMessage(topic: 'topic.a', payload: <String, dynamic>{'x': 1});
      final c = RealtimeMessage(topic: 'topic.b', payload: <String, dynamic>{'x': 1});

      expect(a, b);
      expect(a == c, isFalse);
    });

    test('RealtimeMessage.copyWith() overrides topic only', () {
      final original = RealtimeMessage(
        topic: 'original.topic',
        payload: <String, dynamic>{'foo': 'bar'},
      );

      final copy = original.copyWith(topic: 'new.topic');

      expect(copy.topic, 'new.topic');
      expect(copy.payload, original.payload);
      expect(copy, isNot(original));
    });

    test('RealtimeMessage.copyWith() overrides payload only', () {
      final original = RealtimeMessage(
        topic: 'same.topic',
        payload: <String, dynamic>{'foo': 'bar'},
      );

      final copy = original.copyWith(payload: <String, dynamic>{'baz': 'qux'});

      expect(copy.topic, original.topic);
      expect(copy.payload, <String, dynamic>{'baz': 'qux'});
    });

    test('RealtimeMessage with nested payload structures', () {
      final json = <String, dynamic>{
        'topic': 'complex.event',
        'payload': <String, dynamic>{
          'nested': <String, dynamic>{
            'list': [1, 2, 3],
            'flag': false,
          },
        },
      };

      final message = RealtimeMessage.fromJson(json);

      expect(message.payload['nested']['list'], [1, 2, 3]);
      expect(message.payload['nested']['flag'], false);
    });
  });
}
