import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('TagInput Tests', () {
    test('TagInput defaults', () {
      final input = TagInput();

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.color, const Color(0xFF001E60));
      expect(input.dynamicIcon, isNull);
      expect(input.usersIds, isEmpty);
      expect(input.emailTemplatesIds, isEmpty);
      expect(input.authenticationCardsIds, isEmpty);
      expect(input.exchangeServicesIds, isNull);
      expect(input.tagonBusRoutesIds, isNull);
    });

    test('TagInput is mutable', () {
      final input = TagInput()
        ..name = 'Edited'
        ..assetsIds = ['asset-1'];

      expect(input.name, 'Edited');
      expect(input.assetsIds, ['asset-1']);
    });

    test('TagInput.toJson always sends readable association lists', () {
      final json = TagInput(
        name: 'Tag',
        color: const Color(0xFF2196F3),
      ).toJson();

      expect(json['name'], 'Tag');
      expect(json['color'], isA<String>());
      expect(json['usersIds'], <String>[]);
      expect(json['sensorsIds'], <String>[]);
      expect(json['emailTemplatesIds'], <String>[]);
      expect(json['authenticationCardsIds'], <String>[]);
    });

    test('TagInput.toJson omits write-only lists when unset', () {
      final json = TagInput().toJson();

      expect(json.containsKey('exchangeServicesIds'), isFalse);
      expect(json.containsKey('tagonBusRoutesIds'), isFalse);
    });

    test('TagInput.toJson sends write-only lists when set', () {
      final json = TagInput(
        exchangeServicesIds: ['ex-1'],
        tagonBusRoutesIds: [],
      ).toJson();

      expect(json['exchangeServicesIds'], ['ex-1']);
      expect(json['tagonBusRoutesIds'], <String>[]);
    });

    test('TagInput.fromTag keeps every readable association', () {
      final tag = Tag(
        id: 'tag-1',
        name: 'Tag',
        color: const Color(0xFFF44336),
        usersIds: ['user-1'],
        assetsIds: ['asset-1'],
        emailTemplatesIds: ['email-1'],
        authenticationCardsIds: ['card-1'],
      );

      final input = TagInput.fromTag(tag);

      expect(input.id, 'tag-1');
      expect(input.name, 'Tag');
      expect(input.color, const Color(0xFFF44336));
      expect(input.usersIds, ['user-1']);
      expect(input.assetsIds, ['asset-1']);
      expect(input.devicesIds, isEmpty);
      expect(input.emailTemplatesIds, ['email-1']);
      expect(input.authenticationCardsIds, ['card-1']);
      expect(input.exchangeServicesIds, isNull);
    });

    test('TagInput.fromTag copies lists instead of sharing them', () {
      final ids = ['user-1'];
      final input = TagInput.fromTag(
        Tag(id: 't', name: 'T', color: const Color(0xFF000000), usersIds: ids),
      );

      input.usersIds.add('user-2');

      expect(ids, ['user-1']);
    });

    test('TagInput fromJson/toJson roundtrip', () {
      final input = TagInput(
        id: 'tag-1',
        name: 'Tag',
        referencesIds: ['ref-1'],
      );

      final copy = TagInput.fromJson(input.toJson());

      expect(copy.id, 'tag-1');
      expect(copy.name, 'Tag');
      expect(copy.color, input.color);
      expect(copy.referencesIds, ['ref-1']);
    });
  });

  group('Tag association fields', () {
    test('Tag.fromJson reads email template and authentication card ids', () {
      final tag = Tag.fromJson({
        'id': 'tag-1',
        'name': 'Tag',
        'color': '#2196F3',
        'emailTemplatesIds': ['email-1'],
        'authenticationCardsIds': ['card-1'],
      });

      expect(tag.emailTemplatesIds, ['email-1']);
      expect(tag.authenticationCardsIds, ['card-1']);
    });

    test('Tag.fromJson decodes the detail association payload', () {
      final tag = Tag.fromJson({
        'id': 'tag-1',
        'name': 'Tag',
        'color': '#2196F3',
        'users': [
          {'id': 'u1', 'name': 'User'},
        ],
        'triggers': [
          {'id': 't1', 'name': 'Trigger', 'code': 'c', 'kind': 'ENTRANCE'},
        ],
        'actions': [
          {'id': 'a1', 'name': 'Action', 'kind': 'LINK'},
        ],
        'operations': [
          {'id': 'o1', 'name': 'Operation', 'operationType': 'WEBHOOKS'},
        ],
        'devices': [
          {'id': 'd1', 'name': 'Device', 'ident': 'i'},
        ],
        'geofences': [
          {
            'id': 'g1',
            'name': 'Geofence',
            'color': '#001E60',
            'mode': 'RADIAL',
          },
        ],
        'sensors': [
          {'id': 's1', 'name': 'Sensor', 'slug': 's'},
        ],
      });

      expect(tag.users?.single.name, 'User');
      expect(tag.triggers?.single.name, 'Trigger');
      expect(tag.actions?.single.name, 'Action');
      expect(tag.operations?.single.name, 'Operation');
      expect(tag.devices?.single.name, 'Device');
      expect(tag.geofences?.single.name, 'Geofence');
      expect(tag.sensors?.single.name, 'Sensor');
    });
  });

  group('TagVariant', () {
    test('TagVariant has standard and mappit', () {
      expect(TagVariant.values, [TagVariant.standard, TagVariant.mappit]);
    });
  });
}
