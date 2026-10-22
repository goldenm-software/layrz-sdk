import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('OutboundService.fragment', () {
    final generated = (GqlQuery(
      variables: [],
      name: 'probe',
    )..add(GqlField(name: 'result', fragment: OutboundService.fragment))).generated;

    String fragmentBody(String header) {
      final body = generated.split(header).last;
      return body.substring(0, body.indexOf('\n}\n'));
    }

    test('is named outboundServiceFragment on OutboundService', () {
      expect(generated, contains('fragment outboundServiceFragment on OutboundService'));
    });

    test('selects the listing fields', () {
      final body = fragmentBody('fragment outboundServiceFragment on OutboundService');
      for (final field in [
        'id',
        'name',
        'credentials',
        'protocolId',
        'protocol',
        'structure',
        'isEnabled',
        'token',
        'assetsIds',
        'groupsIds',
        'access',
        'atsModel',
      ]) {
        expect(body, contains(field), reason: field);
      }
    });

    test('selects the protocol with a lightweight fragment', () {
      final body = fragmentBody('fragment outboundServiceProtocolFragment on OutboundProtocol');
      for (final field in ['id', 'name', 'color', 'isEnabled']) {
        expect(body, contains(field), reason: field);
      }
      expect(body, isNot(contains('requiredFields')));
    });

    test('spells the structure out to the backend max depth', () {
      final body = fragmentBody('fragment outboundServiceFragment on OutboundService');
      expect(OutboundService.structureMaxDepth, 5);
      expect('nested'.allMatches(body).length, OutboundService.structureMaxDepth);
      expect(body, contains('source'));
    });

    test('selects access through Access.idFragment', () {
      expect(generated, contains('fragment accessFragment on AccessPermission'));
    });
  });

  group('OutboundService.fromJson detail payload', () {
    test('decodes the fetch selection, including assets and groups', () {
      final service = OutboundService.fromJson({
        'id': '1',
        'name': 'Service',
        'credentials': {
          'host': 'example.com',
          'headers': {'x': '1'},
        },
        'protocolId': '60',
        'protocol': {'id': '60', 'name': 'atsStream', 'color': '#FF0000', 'isEnabled': true},
        'structure': [
          {
            'field': 'root',
            'type': 'json',
            'value': '',
            'source': null,
            'nested': [
              {'field': 'child', 'type': 'constant', 'value': 'v', 'source': null},
            ],
          },
        ],
        'isEnabled': true,
        'token': null,
        'assetsIds': ['10'],
        'groupsIds': ['20'],
        'access': [
          {
            'id': '5',
            'read': true,
            'write': false,
            'manage': false,
            'objectId': '1',
            'userId': '7',
            'module': 'OUTBOUND_SERVICES',
          },
        ],
        'atsModel': 'EXIT',
        'assets': [
          {
            'id': '10',
            'name': 'Asset',
            'dynamicIcon': {'type': 'ICON', 'icon': 'mdiTruck', 'url': null, 'emoji': null, 'base64': null},
          },
        ],
        'groups': [
          {
            'id': '20',
            'name': 'Tag',
            'color': '#00FF00',
            'dynamicIcon': {'type': 'NONE'},
            'assets': [
              {'id': '11', 'name': 'Tagged', 'dynamicIcon': null},
            ],
          },
        ],
      });

      expect(service.protocol?.name, 'atsStream');
      expect(service.structure?.first.nested.first.field, 'child');
      expect(service.access?.first.module, AccessModule.outboundServices);
      expect(service.atsModel, AtsStreamModel.exit);
      expect(service.assets?.first.dynamicIcon?.type, AvatarType.icon);
      expect(service.groups?.first.assets?.first.name, 'Tagged');
    });
  });
}
