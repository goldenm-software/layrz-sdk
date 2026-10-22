import 'dart:convert';

import 'package:flutter/widgets.dart' show Color;
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

String _generated(GqlFragment fragment) =>
    (GqlQuery(variables: [], name: 'probe')..add(GqlField(name: 'result', fragment: fragment))).generated;

Map<String, dynamic> _detailPayload({Map<String, dynamic>? structure}) => {
  'id': '7',
  'name': 'Omega',
  'credentials': {
    'host': 'example.com',
    'nested': {
      'port': 8080,
      'tags': ['a', 'b'],
    },
  },
  'protocolId': '1',
  'externalAccountId': null,
  'isEnabled': true,
  'protocol': {
    'id': '1',
    'name': 'Inbound Universal REST',
    'color': '#FF0000',
    'isEnabled': true,
    'operationMode': 'WEBHOOK',
    'isImported': false,
    'dynamicIcon': {'type': 'ICON', 'icon': 'mdiApi'},
  },
  'structure':
      structure ??
      {
        'hasPosition': true,
        'position': {
          'latitude': true,
          'longitude': true,
          'speed': false,
          'direction': false,
          'altitude': false,
          'satellites': false,
          'hdop': false,
        },
        'hasPayload': true,
        'payload': [
          {'field': 'temp', 'type': 'FLOAT'},
        ],
      },
  'access': [
    {
      'id': '3',
      'read': true,
      'write': false,
      'manage': false,
      'objectId': '7',
      'userId': '2',
      'module': 'INBOUND_SERVICES',
    },
  ],
};

void main() {
  group('InboundService.fragment', () {
    final generated = _generated(InboundService.fragment);

    test('is named inboundServiceFragment on InboundService', () {
      expect(generated, contains('fragment inboundServiceFragment on InboundService'));
    });

    test('selects the lightweight list fields', () {
      for (final field in ['id', 'name', 'isEnabled', 'protocolId', 'protocol', 'color', 'operationMode']) {
        expect(generated, contains(field), reason: field);
      }
      expect(generated, contains('dynamicIcon'));
    });

    test('does not select the detail fields', () {
      final body = generated.split('fragment inboundServiceFragment on InboundService').last;
      for (final field in ['credentials', 'structure', 'access', 'token', 'webhookStructure', 'isImported']) {
        expect(body, isNot(contains(field)), reason: field);
      }
    });
  });

  group('InboundService.detailedFragment', () {
    final generated = _generated(InboundService.detailedFragment);
    final body = generated.split('fragment inboundServiceDetailedFragment on InboundService').last;

    test('selects every field the form reads', () {
      for (final field in [
        'credentials',
        'protocolId',
        'externalAccountId',
        'isEnabled',
        'isImported',
        'operationMode',
        'hasPosition',
        'latitude',
        'longitude',
        'speed',
        'direction',
        'altitude',
        'satellites',
        'hdop',
        'hasPayload',
        'field',
        'type',
        'access',
      ]) {
        expect(body, contains(field), reason: field);
      }
    });

    test('does not select the token nor the resolved webhook structure', () {
      expect(body, isNot(contains('token')));
      expect(body, isNot(contains('webhookStructure')));
    });
  });

  group('InboundService decoding', () {
    test('decodes the exact payload the detail selection returns', () {
      final service = InboundService.fromJson(_detailPayload());

      expect(service.id, '7');
      expect(service.isEnabled, true);
      expect(service.protocol?.operationMode, OperationMode.webhook);
      expect(service.protocol?.isImported, false);
      expect(service.structure?.hasPosition, true);
      expect(service.structure?.position?.latitude, true);
      expect(service.structure?.payload.single.field, 'temp');
      expect(service.structure?.payload.single.type, InboundPayloadStructureType.float);
      expect(service.access?.single.id, '3');
      expect(service.credentials?['nested'], {
        'port': 8080,
        'tags': ['a', 'b'],
      });
    });

    test('decodes a structure with null fields using the backend defaults', () {
      final service = InboundService.fromJson(
        _detailPayload(structure: {'hasPosition': null, 'position': null, 'hasPayload': null, 'payload': null}),
      );

      expect(service.structure?.hasPosition, false);
      expect(service.structure?.position, isNull);
      expect(service.structure?.hasPayload, false);
      expect(service.structure?.payload, isEmpty);
    });

    test('decodes an empty structure object', () {
      final service = InboundService.fromJson(_detailPayload(structure: {}));

      expect(service.structure?.hasPosition, false);
      expect(service.structure?.payload, isEmpty);
    });

    test('decodes the lightweight list payload', () {
      final service = InboundService.fromJson({
        'id': '9',
        'name': 'MQTT',
        'isEnabled': false,
        'protocolId': '4',
        'protocol': {'id': '4', 'name': 'MQTT', 'color': '#00FF00', 'isEnabled': true, 'operationMode': 'REALTIME'},
      });

      expect(service.protocol?.name, 'MQTT');
      expect(service.structure, isNull);
    });
  });

  group('InboundServiceInput.fromInboundService', () {
    test('copies the editable fields', () {
      final input = InboundServiceInput.fromInboundService(InboundService.fromJson(_detailPayload()));

      expect(input.id, '7');
      expect(input.name, 'Omega');
      expect(input.protocolId, '1');
      expect(input.externalAccountId, isNull);
      expect(input.structure.hasPosition, true);
      expect(input.structure.position?.latitude, true);
      expect(input.structure.position?.speed, false);
      expect(input.structure.hasPayload, true);
      expect(input.structure.payload.single.field, 'temp');
      expect(input.structure.payload.single.type, InboundPayloadStructureType.float);
    });

    test('deep copies the credentials', () {
      final service = InboundService.fromJson(_detailPayload());
      final input = InboundServiceInput.fromInboundService(service);

      (input.credentials['nested'] as Map)['port'] = 1;
      ((input.credentials['nested'] as Map)['tags'] as List).add('c');
      input.credentials['host'] = 'changed';

      expect(service.credentials?['host'], 'example.com');
      expect(service.credentials?['nested'], {
        'port': 8080,
        'tags': ['a', 'b'],
      });
    });

    test('falls back to the protocol id and default structure', () {
      final input = InboundServiceInput.fromInboundService(
        const InboundService(
          id: '1',
          name: 'N',
          protocol: InboundProtocol(
            id: '5',
            name: 'P',
            color: Color(0xFF000000),
            isEnabled: true,
            operationMode: .realtime,
          ),
        ),
      );

      expect(input.protocolId, '5');
      expect(input.credentials, isEmpty);
      expect(input.structure.hasPosition, true);
      expect(input.structure.hasPayload, false);
      expect(input.structure.position, isNotNull);
      expect(input.structure.payload, isEmpty);
    });
  });

  group('InboundServiceInput JSON', () {
    test('round trips through toJson/fromJson', () {
      final input = InboundServiceInput.fromInboundService(InboundService.fromJson(_detailPayload()));

      final json = jsonDecode(jsonEncode(input.toJson())) as Map<String, dynamic>;
      final restored = InboundServiceInput.fromJson(json);

      expect(json['structure']['payload'], [
        {'field': 'temp', 'type': 'FLOAT'},
      ]);
      expect(restored.toJson(), json);
    });

    test('fromJson(toJson()) does not alias the credentials', () {
      final input = InboundServiceInput(
        name: 'N',
        credentials: {
          'nested': {'a': 1},
        },
        structure: InboundStructureInput(position: null),
      );

      final copy = InboundServiceInput.fromJson(input.toJson());
      (copy.credentials['nested'] as Map)['a'] = 2;
      copy.credentials['b'] = true;

      expect(input.credentials, {
        'nested': {'a': 1},
      });
    });
  });
}
