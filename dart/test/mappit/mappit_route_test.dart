import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('MappitRouteInput', () {
    test('defaults', () {
      final input = MappitRouteInput();

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.geofencesIds, isEmpty);
    });

    test('toJson sends the fields of MappitRouteInput', () {
      final json = MappitRouteInput(id: '1', name: 'Route', geofencesIds: ['g1', 'g2']).toJson();

      expect(json, {
        'id': '1',
        'name': 'Route',
        'geofencesIds': ['g1', 'g2'],
      });
    });

    test('fromRoute copies the editable fields', () {
      const route = MappitRoute(id: '7', name: 'North', geofencesIds: ['g1']);
      final input = MappitRouteInput.fromRoute(route);

      expect(input.id, '7');
      expect(input.name, 'North');
      expect(input.geofencesIds, ['g1']);

      input.geofencesIds.add('g2');
      expect(route.geofencesIds, ['g1']);
    });

    test('fromRoute prefers the resolved geofences when ids are missing', () {
      const route = MappitRoute(
        id: '7',
        name: 'North',
        geofences: [Geofence(id: 'g9', name: 'G9', mode: GeofenceMode.radial)],
      );

      expect(MappitRouteInput.fromRoute(route).geofencesIds, ['g9']);
    });
  });

  group('MappitRoute', () {
    test('decodes the detail payload', () {
      final route = MappitRoute.fromJson({
        'id': '1',
        'name': 'Route',
        'geofencesIds': ['10'],
        'currentSellerId': '5',
        'currentSeller': {
          'id': '5',
          'name': 'Seller',
          'mode': 'SINGLE',
          'dynamicIcon': {'type': 'ICON', 'icon': 'mdiAccount'},
        },
        'geofences': [
          {
            'id': '10',
            'name': 'Geo',
            'mode': 'RADIAL',
            'description': 'Desc',
            'color': '#FF0000',
            'category': 'CUSTOMER',
            'customFields': [
              {'id': 'cf1', 'name': 'Key', 'value': 'Value'},
            ],
          },
        ],
        'secondarySellers': [
          {
            'id': '6',
            'name': 'Other',
            'mode': 'SINGLE',
            'dynamicIcon': {'type': 'EMOJI', 'emoji': 'x'},
          },
        ],
        'assignmentsHistory': [
          {
            'currentSeller': {'id': '5', 'name': 'Seller', 'mode': 'SINGLE'},
            'currentSellerId': '5',
            'performedAt': 1700000000,
            'performedById': '3',
            'performedBy': {
              'id': '3',
              'name': 'Admin',
              'dynamicAvatar': {'type': 'NONE'},
            },
          },
          {'performedAt': 1700000100, 'performedById': '3'},
        ],
      });

      expect(route.currentSeller?.name, 'Seller');
      expect(route.geofences?.single.customFields?.single.value, 'Value');
      expect(route.geofences?.single.category, GeofenceCategory.customer);
      expect(route.secondarySellers?.single.name, 'Other');
      expect(route.assignmentsHistory, hasLength(2));
      expect(route.assignmentsHistory?.last.currentSeller, isNull);
    });
  });

  group('ExternalGeofenceGroup', () {
    test('decodes the externalGeofencesGroups payload', () {
      final group = ExternalGeofenceGroup.fromJson({'wialonId': '42', 'name': 'Group'});

      expect(group.wialonId, '42');
      expect(group.name, 'Group');
    });
  });
}
