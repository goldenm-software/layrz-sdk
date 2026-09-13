import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('FlespiSubmoduleConfig Tests', () {
    test('FlespiSubmoduleConfig.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'name': 'telemetry',
        'methods': ['GET', 'POST'],
      };

      final config = FlespiSubmoduleConfig.fromJson(json);

      expect(config, isA<FlespiSubmoduleConfig>());
      expect(config.name, FlespiSubmodule.telemetry);
      expect(config.methods.length, 2);
      expect(config.methods[0], FlespiMethod.httpGet);
      expect(config.methods[1], FlespiMethod.httpPost);
    });

    test('FlespiSubmoduleConfig.fromJson() with empty methods', () {
      final json = <String, dynamic>{
        'name': 'packets',
        'methods': [],
      };

      final config = FlespiSubmoduleConfig.fromJson(json);

      expect(config.name, FlespiSubmodule.packets);
      expect(config.methods.isEmpty, true);
    });

    test('FlespiSubmoduleConfig.fromJson() with default methods', () {
      final json = <String, dynamic>{
        'name': 'commands',
      };

      final config = FlespiSubmoduleConfig.fromJson(json);

      expect(config.name, FlespiSubmodule.commands);
      expect(config.methods.isEmpty, true);
    });

    test('FlespiSubmoduleConfig.toJson() and roundtrip', () {
      final original = FlespiSubmoduleConfig(
        name: FlespiSubmodule.settings,
        methods: [FlespiMethod.httpGet, FlespiMethod.httpPut],
      );

      final json = original.toJson();
      final restored = FlespiSubmoduleConfig.fromJson(json);

      expect(restored.name, original.name);
      expect(restored.methods.length, original.methods.length);
      expect(restored.methods[0], original.methods[0]);
    });

    test('FlespiSubmoduleConfig.toJson() preserves wire format', () {
      final config = FlespiSubmoduleConfig(
        name: FlespiSubmodule.calculate,
        methods: [FlespiMethod.httpDelete],
      );

      final json = config.toJson();

      expect(json['name'], 'calculate');
      expect(json['methods'], ['DELETE']);
    });
  });

  group('FlespiAcl Tests', () {
    test('FlespiAcl.fromJson() with required uri only', () {
      final json = <String, dynamic>{
        'uri': 'gw/devices',
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl, isA<FlespiAcl>());
      expect(acl.uri, FlespiUri.devices);
      expect(acl.topic, isNull);
      expect(acl.actions, isNull);
      expect(acl.methods, isNull);
      expect(acl.ids, isNull);
      expect(acl.submodules, isNull);
    });

    test('FlespiAcl.fromJson() with MQTT topic and actions', () {
      final json = <String, dynamic>{
        'uri': 'mqtt',
        'topic': 'device/+/telemetry',
        'actions': ['publish', 'subscribe'],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.mqtt);
      expect(acl.topic, 'device/+/telemetry');
      expect(acl.actions!.length, 2);
      expect(acl.actions![0], FlespiAction.publish);
      expect(acl.actions![1], FlespiAction.subscribe);
    });

    test('FlespiAcl.fromJson() with methods and submodules', () {
      final json = <String, dynamic>{
        'uri': 'gw/channels',
        'methods': ['GET', 'POST'],
        'submodules': [
          {
            'name': 'connections',
            'methods': ['GET'],
          },
          {
            'name': 'logs',
            'methods': [],
          },
        ],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.channels);
      expect(acl.methods!.length, 2);
      expect(acl.methods![0], FlespiMethod.httpGet);
      expect(acl.submodules!.length, 2);
      expect(acl.submodules![0].name, FlespiSubmodule.connections);
    });

    test('FlespiAcl.fromJson() with ids list', () {
      final json = <String, dynamic>{
        'uri': 'gw/streams',
        'ids': ['stream_1', 'stream_2', 'stream_3'],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.streams);
      expect(acl.ids!.length, 3);
      expect(acl.ids!, ['stream_1', 'stream_2', 'stream_3']);
    });

    test('FlespiAcl.toJson() and roundtrip', () {
      final submodules = [
        FlespiSubmoduleConfig(
          name: FlespiSubmodule.snapshots,
          methods: [FlespiMethod.httpGet, FlespiMethod.httpPut],
        ),
      ];

      final original = FlespiAcl(
        uri: FlespiUri.modems,
        methods: [FlespiMethod.httpGet, FlespiMethod.httpPost],
        submodules: submodules,
        ids: ['modem_123'],
      );

      final json = original.toJson();
      final restored = FlespiAcl.fromJson(json);

      expect(restored.uri, original.uri);
      expect(restored.methods!.length, original.methods!.length);
      expect(restored.submodules!.length, original.submodules!.length);
      expect(restored.ids, original.ids);
    });

    test('FlespiAcl.toJson() preserves wire format', () {
      final acl = FlespiAcl(
        uri: FlespiUri.geofences,
        actions: [FlespiAction.subscribe],
      );

      final json = acl.toJson();

      expect(json['uri'], 'gw/geofences');
      expect(json['actions'], ['subscribe']);
    });

    test('FlespiAcl with MQTT uri and only subscribe action', () {
      final json = <String, dynamic>{
        'uri': 'mqtt',
        'topic': 'alerts/+',
        'actions': ['subscribe'],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.mqtt);
      expect(acl.topic, 'alerts/+');
      expect(acl.actions!.length, 1);
      expect(acl.actions![0], FlespiAction.subscribe);
    });

    test('FlespiAcl with containers uri', () {
      final json = <String, dynamic>{
        'uri': 'storage/containers',
        'methods': ['GET', 'POST', 'PUT'],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.containers);
      expect(acl.methods!.length, 3);
    });

    test('FlespiAcl with CDNs uri and files submodule', () {
      final json = <String, dynamic>{
        'uri': 'storage/cdns',
        'submodules': [
          {
            'name': 'files',
            'methods': ['GET'],
          },
        ],
      };

      final acl = FlespiAcl.fromJson(json);

      expect(acl.uri, FlespiUri.cdns);
      expect(acl.submodules!.length, 1);
      expect(acl.submodules![0].name, FlespiSubmodule.files);
    });
  });
}
