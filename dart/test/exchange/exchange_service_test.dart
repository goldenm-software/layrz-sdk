import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ExchangeService Tests', () {
    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'svc-1',
        'name': 'My service',
        'credentials': {'apiKey': 'xxx'},
        'protocolId': 'proto-1',
        'isEnabled': true,
        'assetsIds': ['1', '2'],
        'tagsIds': ['3'],
        'geofencesIds': <String>[],
        'geofencesGroupsIds': ['4'],
      };

      final service = ExchangeService.fromJson(json);
      expect(service.id, 'svc-1');
      expect(service.name, 'My service');
      expect(service.credentials, {'apiKey': 'xxx'});
      expect(service.protocolId, 'proto-1');
      expect(service.isEnabled, isTrue);
      expect(service.assetsIds, ['1', '2']);
      expect(service.tagsIds, ['3']);
      expect(service.geofencesIds, isEmpty);
      expect(service.geofencesGroupsIds, ['4']);
      expect(service.protocol, isNull);

      final restored = service.toJson();
      expect(restored['id'], 'svc-1');
      expect(restored['name'], 'My service');
      expect(restored['assetsIds'], ['1', '2']);
    });

    test('fragment targets the ExchangeService type', () {
      final fragment = ExchangeService.fragment;
      expect(fragment.name, 'exchangeServiceFragment');
      expect(fragment.onType, 'ExchangeService');
    });
  });

  group('ExchangeServiceInput Tests', () {
    test('defaults', () {
      final input = ExchangeServiceInput();
      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.credentials, isEmpty);
      expect(input.protocolId, isNull);
      expect(input.isEnabled, isTrue);
      expect(input.assetsIds, isEmpty);
      expect(input.tagsIds, isEmpty);
      expect(input.geofencesIds, isEmpty);
      expect(input.geofencesGroupsIds, isEmpty);
    });

    test('fromJson/toJson roundtrip and mutability', () {
      final input = ExchangeServiceInput.fromJson({
        'id': 'svc-2',
        'name': 'Service',
        'credentials': {'token': 'token'},
        'protocolId': 'proto-2',
        'isEnabled': false,
        'assetsIds': ['1'],
        'tagsIds': ['2'],
        'geofencesIds': ['3'],
        'geofencesGroupsIds': ['4'],
      });

      expect(input.isEnabled, isFalse);
      input.name = 'Renamed';

      final json = input.toJson();
      expect(json['id'], 'svc-2');
      expect(json['name'], 'Renamed');
      expect(json['credentials'], {'token': 'token'});
      expect(json['protocolId'], 'proto-2');
      expect(json['isEnabled'], isFalse);
      expect(json['assetsIds'], ['1']);
      expect(json['tagsIds'], ['2']);
      expect(json['geofencesIds'], ['3']);
      expect(json['geofencesGroupsIds'], ['4']);
    });
  });
}
