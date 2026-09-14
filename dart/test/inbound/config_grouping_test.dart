import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ConfigGrouping Tests', () {
    test('ConfigGrouping deserialization with minimal fields', () {
      final Map<String, dynamic> json = {
        'name': 'grouping.name',
        'kind': 'GROUPING',
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.name, 'grouping.name');
      expect(grouping.kind, ConfigKind.grouping);
      expect(grouping.description, null);
      expect(grouping.setupCapable, null);
      expect(grouping.items, []);
    });

    test('ConfigGrouping deserialization with all fields', () {
      final Map<String, dynamic> json = {
        'name': 'system.config',
        'kind': 'GROUPING',
        'description': 'System configuration',
        'setupCapable': true,
        'items': [
          {
            'parameter': 'param1',
            'dataType': 'STRING',
          },
          {
            'parameter': 'param2',
            'dataType': 'INTEGER',
            'minValue': 0,
            'maxValue': 100,
          },
        ],
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.name, 'system.config');
      expect(grouping.kind, ConfigKind.grouping);
      expect(grouping.description, 'System configuration');
      expect(grouping.setupCapable, true);
      expect(grouping.items.length, 2);
      expect(grouping.items[0].parameter, 'param1');
      expect(grouping.items[1].parameter, 'param2');
    });

    test('ConfigGrouping with listing kind', () {
      final Map<String, dynamic> json = {
        'name': 'advanced.options',
        'kind': 'LISTING',
        'setupCapable': false,
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.kind, ConfigKind.listing);
    });

    test('ConfigGrouping serialization roundtrip', () {
      final original = ConfigGrouping(
        name: 'network.config',
        kind: ConfigKind.grouping,
        description: 'Network settings',
        setupCapable: true,
        items: [
          const ConfigDefinition(
            parameter: 'host',
            dataType: ConfigPayloadDataType.string,
          ),
        ],
      );

      final json = original.toJson();
      final restored = ConfigGrouping.fromJson(json);

      expect(restored.name, original.name);
      expect(restored.kind, original.kind);
      expect(restored.description, original.description);
      expect(restored.setupCapable, original.setupCapable);
      expect(restored.items.length, original.items.length);
    });

    test('ConfigGrouping with unknown kind defaults to unknown', () {
      final Map<String, dynamic> json = {
        'name': 'test.group',
        'kind': 'INVALID_KIND',
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.kind, ConfigKind.unknown);
    });

    test('ConfigGrouping with empty name', () {
      final Map<String, dynamic> json = {
        'name': '',
        'kind': 'GROUPING',
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.name, '');
      expect(grouping.kind, ConfigKind.grouping);
    });

    test('ConfigGrouping with nested items', () {
      final Map<String, dynamic> json = {
        'name': 'root.config',
        'kind': 'GROUPING',
        'items': [
          {
            'parameter': 'hostname',
            'dataType': 'STRING',
            'minLength': 1,
            'maxLength': 255,
          },
          {
            'parameter': 'port',
            'dataType': 'INTEGER',
            'minValue': 1,
            'maxValue': 65535,
          },
          {
            'parameter': 'enabled',
            'dataType': 'BOOLEAN',
          },
        ],
      };

      final ConfigGrouping grouping = ConfigGrouping.fromJson(json);

      expect(grouping.items.length, 3);
      expect(grouping.items[0].dataType, ConfigPayloadDataType.string);
      expect(grouping.items[1].dataType, ConfigPayloadDataType.integer);
      expect(grouping.items[2].dataType, ConfigPayloadDataType.boolean);
    });
  });
}
