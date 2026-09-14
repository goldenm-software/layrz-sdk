import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('WaypointKind Tests', () {
    test('fromJson() all values', () {
      expect(WaypointKind.fromJson('PATHWAY'), WaypointKind.pathway);
      expect(WaypointKind.fromJson('POINT'), WaypointKind.point);
    });

    test('fromJson() throws on unknown value', () {
      expect(() => WaypointKind.fromJson('BOGUS'), throwsException);
    });

    test('toJson() all values', () {
      expect(WaypointKind.pathway.toJson(), 'PATHWAY');
      expect(WaypointKind.point.toJson(), 'POINT');
    });

    test('toString() matches toJson()', () {
      for (final value in WaypointKind.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('WaypointKindConverter roundtrip', () {
      const converter = WaypointKindConverter();
      for (final value in WaypointKind.values) {
        expect(converter.fromJson(converter.toJson(value)), value);
      }
    });

    test('WaypointKindOrNullConverter handles null', () {
      const converter = WaypointKindOrNullConverter();
      expect(converter.fromJson(null), isNull);
      expect(converter.toJson(null), isNull);
      expect(converter.fromJson('POINT'), WaypointKind.point);
      expect(converter.toJson(WaypointKind.pathway), 'PATHWAY');
    });
  });

  group('LinkedAssetEntity Tests', () {
    test('fromJson() all values', () {
      expect(LinkedAssetEntity.fromJson('ASSET'), LinkedAssetEntity.asset);
      expect(LinkedAssetEntity.fromJson('TAG'), LinkedAssetEntity.tag);
    });

    test('fromJson() throws on unknown value', () {
      expect(() => LinkedAssetEntity.fromJson('BOGUS'), throwsException);
    });

    test('toJson() all values', () {
      expect(LinkedAssetEntity.asset.toJson(), 'ASSET');
      expect(LinkedAssetEntity.tag.toJson(), 'TAG');
    });

    test('toString() matches toJson()', () {
      for (final value in LinkedAssetEntity.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('LinkedAssetEntityConverter roundtrip', () {
      const converter = LinkedAssetEntityConverter();
      for (final value in LinkedAssetEntity.values) {
        expect(converter.fromJson(converter.toJson(value)), value);
      }
    });
  });

  group('LinkedAssetToCheckpointId Tests', () {
    test('constructs with required fields', () {
      final linked = LinkedAssetToCheckpointId(itemId: 'asset-1', entity: LinkedAssetEntity.asset);

      expect(linked.itemId, 'asset-1');
      expect(linked.entity, LinkedAssetEntity.asset);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {'itemId': 'tag-1', 'entity': 'TAG'};
      final linked = LinkedAssetToCheckpointId.fromJson(json);

      expect(linked.itemId, 'tag-1');
      expect(linked.entity, LinkedAssetEntity.tag);

      final restored = linked.toJson();
      expect(restored['itemId'], 'tag-1');
      expect(restored['entity'], 'TAG');
    });

    test('equality', () {
      final a = LinkedAssetToCheckpointId(itemId: 'x', entity: LinkedAssetEntity.asset);
      final b = LinkedAssetToCheckpointId(itemId: 'x', entity: LinkedAssetEntity.asset);
      final c = LinkedAssetToCheckpointId(itemId: 'y', entity: LinkedAssetEntity.tag);

      expect(a, b);
      expect(a, isNot(c));
    });
  });

  group('Waypoint Tests', () {
    test('constructs with required fields', () {
      final waypoint = Waypoint(id: 'wp-1');

      expect(waypoint.id, 'wp-1');
      expect(waypoint.geofenceId, isNull);
      expect(waypoint.geofence, isNull);
      expect(waypoint.time, isNull);
      expect(waypoint.kind, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'wp-2',
        'geofenceId': 'geo-1',
        'geofence': {'id': 'geo-1', 'name': 'Zone A', 'mode': 'RADIAL'},
        'time': '00:15:00',
        'kind': 'POINT',
      };

      final waypoint = Waypoint.fromJson(json);
      expect(waypoint.id, 'wp-2');
      expect(waypoint.geofenceId, 'geo-1');
      expect(waypoint.geofence, isNotNull);
      expect(waypoint.geofence!.name, 'Zone A');
      expect(waypoint.time, '00:15:00');
      expect(waypoint.kind, WaypointKind.point);

      final restored = waypoint.toJson();
      expect(restored['id'], 'wp-2');
      expect(restored['kind'], 'POINT');
    });

    test('copyWith updates fields', () {
      final waypoint = Waypoint(id: 'a');
      final updated = waypoint.copyWith(kind: WaypointKind.pathway, time: '00:05:00');

      expect(updated.kind, WaypointKind.pathway);
      expect(updated.time, '00:05:00');
    });

    test('equality', () {
      final a = Waypoint(id: 'x');
      final b = Waypoint(id: 'x');
      final c = Waypoint(id: 'y');

      expect(a, b);
      expect(a, isNot(c));
    });
  });

  group('Checkpoint Tests', () {
    test('constructs with required fields', () {
      final checkpoint = Checkpoint(id: 'cp-1', name: 'Route A');

      expect(checkpoint.id, 'cp-1');
      expect(checkpoint.name, 'Route A');
      expect(checkpoint.assetId, isNull);
      expect(checkpoint.waypoints, isNull);
      expect(checkpoint.isActive, isNull);
      expect(checkpoint.access, isNull);
      expect(checkpoint.linkedAssetsIds, isNull);
    });

    test('fromJson/toJson roundtrip with nested waypoints', () {
      final json = {
        'id': 'cp-2',
        'name': 'Route B',
        'assetId': 'asset-1',
        'isActive': true,
        'waypoints': [
          {'id': 'wp-1', 'kind': 'POINT'},
          {'id': 'wp-2', 'kind': 'PATHWAY'},
        ],
        'linkedAssetsIds': [
          {'itemId': 'asset-1', 'entity': 'ASSET'},
        ],
      };

      final checkpoint = Checkpoint.fromJson(json);
      expect(checkpoint.id, 'cp-2');
      expect(checkpoint.assetId, 'asset-1');
      expect(checkpoint.isActive, isTrue);
      expect(checkpoint.waypoints, hasLength(2));
      expect(checkpoint.waypoints!.first.kind, WaypointKind.point);
      expect(checkpoint.linkedAssetsIds, hasLength(1));
      expect(checkpoint.linkedAssetsIds!.first.itemId, 'asset-1');

      final restored = checkpoint.toJson();
      expect(restored['id'], 'cp-2');
      expect(restored['name'], 'Route B');
    });

    test('copyWith updates fields', () {
      final checkpoint = Checkpoint(id: 'a', name: 'A');
      final updated = checkpoint.copyWith(name: 'B', isActive: true);

      expect(updated.name, 'B');
      expect(updated.isActive, isTrue);
    });

    test('equality', () {
      final a = Checkpoint(id: 'x', name: 'X');
      final b = Checkpoint(id: 'x', name: 'X');
      final c = Checkpoint(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });

    test('CheckpointInput defaults', () {
      final input = CheckpointInput();

      expect(input.id, isNull);
      expect(input.name, isNull);
      expect(input.assetId, isNull);
      expect(input.waypointsJson, isEmpty);
      expect(input.linkedAssetsIds, isEmpty);
    });

    test('CheckpointInput fromJson/toJson roundtrip', () {
      final json = {
        'id': 'input-1',
        'name': 'Input Checkpoint',
        'assetId': 'asset-2',
        'waypointsJson': [
          {'id': 'wp-3'},
        ],
        'linkedAssetsIds': [
          {'itemId': 'tag-1', 'entity': 'TAG'},
        ],
      };

      final input = CheckpointInput.fromJson(json);
      expect(input.id, 'input-1');
      expect(input.name, 'Input Checkpoint');
      expect(input.waypointsJson, hasLength(1));
      expect(input.linkedAssetsIds, hasLength(1));

      final restored = input.toJson();
      expect(restored['id'], 'input-1');
      expect(restored['name'], 'Input Checkpoint');
    });
  });
}
