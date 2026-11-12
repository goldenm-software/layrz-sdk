import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Checkpoint serialization', () {
    test('fromJson/toJson roundtrip with nested geofence in waypoints', () {
      final json = {
        'id': 'cp-1',
        'name': 'Route',
        'assetId': 'tag-1',
        'isActive': false,
        'waypoints': [
          {
            'id': 'wp-1',
            'geofenceId': 'geo-1',
            'geofence': {'id': 'geo-1', 'name': 'Zone', 'mode': 'RADIAL'},
            'time': '00:10:00',
            'kind': 'POINT',
          },
          {'id': 'wp-2', 'time': '00:05:00', 'kind': 'PATHWAY'},
        ],
        'linkedAssetsIds': [
          {'itemId': 'asset-1', 'entity': 'ASSET'},
          {'itemId': 'tag-2', 'entity': 'TAG'},
        ],
      };

      final checkpoint = Checkpoint.fromJson(json);
      expect(checkpoint.waypoints, hasLength(2));
      expect(checkpoint.waypoints!.first.geofence!.name, 'Zone');
      expect(checkpoint.linkedAssetsIds!.last.entity, LinkedAssetEntity.tag);

      final restored = Checkpoint.fromJson(Map<String, dynamic>.from(checkpoint.toJson()));
      expect(restored, checkpoint);
    });
  });

  group('Waypoint.toInputJson', () {
    test('keeps only the WaypointInput fields and drops the geofence', () {
      final waypoint = Waypoint.fromJson({
        'id': 'wp-1',
        'geofenceId': 'geo-1',
        'geofence': {'id': 'geo-1', 'name': 'Zone', 'mode': 'RADIAL'},
        'time': '00:10:00',
        'kind': 'POINT',
      });

      final json = waypoint.toInputJson();
      expect(json.keys.toSet(), {'id', 'geofenceId', 'time', 'kind'});
      expect(json['geofenceId'], 'geo-1');
      expect(json['kind'], 'POINT');
      expect(json.containsKey('geofence'), isFalse);
    });
  });

  group('CheckpointInput.toRequestJson', () {
    test('sends waypoints without geofence and linked assets as wire values', () {
      final input = CheckpointInput(
        id: 'cp-1',
        name: 'Route',
        assetId: 'tag-1',
        waypoints: [
          Waypoint.fromJson({
            'id': 'wp-1',
            'geofenceId': 'geo-1',
            'geofence': {'id': 'geo-1', 'name': 'Zone', 'mode': 'RADIAL'},
            'kind': 'POINT',
          }),
        ],
        linkedAssetsIds: [LinkedAssetToCheckpointId(itemId: 'asset-1', entity: LinkedAssetEntity.asset)],
      );

      final json = input.toRequestJson();
      expect(json['id'], 'cp-1');
      expect(json['name'], 'Route');
      expect(json['assetId'], 'tag-1');
      expect(json.containsKey('waypointsJson'), isFalse);

      final waypoints = json['waypoints'] as List;
      expect(waypoints, hasLength(1));
      expect((waypoints.first as Map).containsKey('geofence'), isFalse);
      expect((waypoints.first as Map)['geofenceId'], 'geo-1');

      expect(json['linkedAssetsIds'], [
        {'itemId': 'asset-1', 'entity': 'ASSET'},
      ]);
    });

    test('omits id when creating', () {
      final json = CheckpointInput(name: 'New').toRequestJson();
      expect(json.containsKey('id'), isFalse);
      expect(json['waypoints'], isEmpty);
    });

    test('falls back to the deprecated waypointsJson when waypoints is empty', () {
      final input = CheckpointInput(
        name: 'Legacy',
        // ignore: deprecated_member_use_from_same_package
        waypointsJson: [Waypoint(id: 'wp-1', kind: WaypointKind.pathway)],
      );

      final waypoints = input.toRequestJson()['waypoints'] as List;
      expect(waypoints, hasLength(1));
      expect((waypoints.first as Map)['kind'], 'PATHWAY');
    });

    test('CheckpointInput fromJson accepts waypoints', () {
      final input = CheckpointInput.fromJson({
        'id': 'cp-1',
        'waypoints': [
          {'id': 'wp-1', 'kind': 'POINT'},
        ],
      });
      expect(input.waypoints, hasLength(1));
    });
  });

  group('Fragments', () {
    test('Checkpoint.fragment selects the consumer fields', () {
      final fragment = Checkpoint.fragment;
      expect(fragment.name, 'checkpointFragment');
      expect(fragment.onType, 'Checkpoint');
      final names = fragment.fields.map((f) => f.name).toSet();
      expect(names, containsAll(['id', 'name', 'assetId', 'waypoints', 'linkedAssetsIds', 'isActive', 'access']));
    });
  });
}
