import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ConfigDefinition Tests', () {
    test('ConfigDefinition deserialization with minimal fields', () {
      final Map<String, dynamic> json = {
        'parameter': 'host_address',
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.parameter, 'host_address');
      expect(definition.sources, null);
      expect(definition.description, null);
      expect(definition.dataType, null);
      expect(definition.minValue, null);
      expect(definition.maxValue, null);
      expect(definition.minLength, null);
      expect(definition.maxLength, null);
      expect(definition.choices, null);
      expect(definition.regexPattern, null);
      expect(definition.setupCapable, null);
    });

    test('ConfigDefinition with string dataType', () {
      final Map<String, dynamic> json = {
        'parameter': 'hostname',
        'dataType': 'STRING',
        'minLength': 1,
        'maxLength': 255,
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.parameter, 'hostname');
      expect(definition.dataType, ConfigPayloadDataType.string);
      expect(definition.minLength, 1);
      expect(definition.maxLength, 255);
    });

    test('ConfigDefinition with integer dataType', () {
      final Map<String, dynamic> json = {
        'parameter': 'port',
        'dataType': 'INTEGER',
        'minValue': 1,
        'maxValue': 65535,
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.parameter, 'port');
      expect(definition.dataType, ConfigPayloadDataType.integer);
      expect(definition.minValue, 1);
      expect(definition.maxValue, 65535);
    });

    test('ConfigDefinition with float dataType', () {
      final Map<String, dynamic> json = {
        'parameter': 'temperature',
        'dataType': 'FLOAT',
        'minValue': -50.5,
        'maxValue': 150.5,
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.dataType, ConfigPayloadDataType.float);
      expect(definition.minValue, -50.5);
      expect(definition.maxValue, 150.5);
    });

    test('ConfigDefinition with choice dataType', () {
      final Map<String, dynamic> json = {
        'parameter': 'mode',
        'dataType': 'CHOICE',
        'choices': ['AUTO', 'MANUAL', 'DEBUG'],
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.dataType, ConfigPayloadDataType.choice);
      expect(definition.choices, ['AUTO', 'MANUAL', 'DEBUG']);
    });

    test('ConfigDefinition with multiple sources', () {
      final Map<String, dynamic> json = {
        'parameter': 'config_param',
        'sources': ['LAYRZ_LINK', 'BLE', 'SERIAL'],
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.sources!.length, 3);
      expect(definition.sources, contains(ConfigSource.layrzLink));
      expect(definition.sources, contains(ConfigSource.ble));
      expect(definition.sources, contains(ConfigSource.serial));
    });

    test('ConfigDefinition with setupCapable flag', () {
      final Map<String, dynamic> json = {
        'parameter': 'setup_param',
        'dataType': 'STRING',
        'setupCapable': true,
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.setupCapable, true);
    });

    test('ConfigDefinition with all fields', () {
      final Map<String, dynamic> json = {
        'parameter': 'ip_address',
        'description': 'Server IP address',
        'dataType': 'STRING',
        'sources': ['LAYRZ_LINK', 'BLE'],
        'minLength': 7,
        'maxLength': 15,
        'setupCapable': true,
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.parameter, 'ip_address');
      expect(definition.description, 'Server IP address');
      expect(definition.dataType, ConfigPayloadDataType.string);
      expect(definition.sources!.length, 2);
      expect(definition.minLength, 7);
      expect(definition.maxLength, 15);
      expect(definition.setupCapable, true);
    });

    test('ConfigDefinition serialization roundtrip', () {
      final original = ConfigDefinition(
        parameter: 'network_timeout',
        description: 'Network timeout in seconds',
        dataType: ConfigPayloadDataType.integer,
        minValue: 1,
        maxValue: 300,
        setupCapable: true,
        sources: [ConfigSource.layrzLink],
      );

      final json = original.toJson();
      final restored = ConfigDefinition.fromJson(json);

      expect(restored.parameter, original.parameter);
      expect(restored.description, original.description);
      expect(restored.dataType, original.dataType);
      expect(restored.minValue, original.minValue);
      expect(restored.maxValue, original.maxValue);
      expect(restored.setupCapable, original.setupCapable);
    });

    test('ConfigDefinition with unknown dataType defaults to unknown', () {
      final Map<String, dynamic> json = {
        'parameter': 'test',
        'dataType': 'INVALID_TYPE',
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.dataType, ConfigPayloadDataType.unknown);
    });

    test('ConfigDefinition with unknown source defaults correctly', () {
      final Map<String, dynamic> json = {
        'parameter': 'test',
        'sources': ['INVALID_SOURCE'],
      };

      final ConfigDefinition definition = ConfigDefinition.fromJson(json);

      expect(definition.sources!.length, 1);
      expect(definition.sources!.first, ConfigSource.unknown);
    });
  });
}
