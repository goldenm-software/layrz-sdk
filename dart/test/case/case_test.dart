import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  final asset = Asset(id: 'asset-1', name: 'Truck 1');
  final trigger = Trigger(id: 'trig-1', name: 'Geofence Enter', code: 'GEO001', kind: TriggerType.presenceInGeofences);

  group('CaseStatus Tests', () {
    test('fromJson() all values', () {
      expect(CaseStatus.fromJson('PENDING'), CaseStatus.pending);
      expect(CaseStatus.fromJson('FOLLOWED'), CaseStatus.followed);
      expect(CaseStatus.fromJson('CLOSED'), CaseStatus.closed);
    });

    test('fromJson() falls back to pending on unknown value', () {
      expect(CaseStatus.fromJson('BOGUS'), CaseStatus.pending);
    });

    test('toJson() all values', () {
      expect(CaseStatus.pending.toJson(), 'PENDING');
      expect(CaseStatus.followed.toJson(), 'FOLLOWED');
      expect(CaseStatus.closed.toJson(), 'CLOSED');
    });

    test('toString() matches toJson()', () {
      for (final value in CaseStatus.values) {
        expect(value.toString(), value.toJson());
      }
    });
  });

  group('CaseIgnoredStatus Tests', () {
    test('fromJson() all values', () {
      expect(CaseIgnoredStatus.fromJson('NORMAL'), CaseIgnoredStatus.normal);
      expect(CaseIgnoredStatus.fromJson('IGNORED'), CaseIgnoredStatus.ignored);
      expect(CaseIgnoredStatus.fromJson('PRESET'), CaseIgnoredStatus.preset);
      expect(CaseIgnoredStatus.fromJson('EXPIRED'), CaseIgnoredStatus.expired);
      expect(CaseIgnoredStatus.fromJson('AUTO'), CaseIgnoredStatus.auto);
    });

    test('fromJson() falls back to normal on unknown value', () {
      expect(CaseIgnoredStatus.fromJson('BOGUS'), CaseIgnoredStatus.normal);
    });

    test('toJson() all values', () {
      expect(CaseIgnoredStatus.normal.toJson(), 'NORMAL');
      expect(CaseIgnoredStatus.ignored.toJson(), 'IGNORED');
      expect(CaseIgnoredStatus.preset.toJson(), 'PRESET');
      expect(CaseIgnoredStatus.expired.toJson(), 'EXPIRED');
      expect(CaseIgnoredStatus.auto.toJson(), 'AUTO');
    });

    test('toString() matches toJson()', () {
      for (final value in CaseIgnoredStatus.values) {
        expect(value.toString(), value.toJson());
      }
    });
  });

  group('CommentOwner Tests', () {
    test('constructs with required fields', () {
      final owner = CommentOwner(id: 'owner-1', name: 'Jane Doe');

      expect(owner.id, 'owner-1');
      expect(owner.name, 'Jane Doe');
      expect(owner.avatar, isNull);
      expect(owner.dynamicAvatar, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {'id': 'owner-2', 'name': 'John Doe', 'avatar': 'https://example.com/a.png'};
      final owner = CommentOwner.fromJson(json);

      expect(owner.id, 'owner-2');
      expect(owner.avatar, 'https://example.com/a.png');

      final restored = owner.toJson();
      expect(restored['id'], 'owner-2');
      expect(restored['name'], 'John Doe');
    });

    test('equality', () {
      final a = CommentOwner(id: 'x', name: 'X');
      final b = CommentOwner(id: 'x', name: 'X');
      final c = CommentOwner(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });
  });

  group('CaseComment Tests', () {
    test('constructs with required fields and defaults', () {
      final comment = CaseComment(id: 'cm-1', at: DateTime.utc(2026, 1, 1), comment: 'Looks good');

      expect(comment.id, 'cm-1');
      expect(comment.at, DateTime.utc(2026, 1, 1));
      expect(comment.comment, 'Looks good');
      expect(comment.owner, isNull);
      expect(comment.metadata, isEmpty);
      expect(comment.file, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'cm-2',
        'at': 1735689600,
        'comment': 'Resolved',
        'owner': {'id': 'owner-1', 'name': 'Jane Doe'},
        'metadata': {'source': 'mobile'},
      };

      final comment = CaseComment.fromJson(json);
      expect(comment.id, 'cm-2');
      expect(comment.comment, 'Resolved');
      expect(comment.owner, isNotNull);
      expect(comment.owner!.name, 'Jane Doe');
      expect(comment.metadata, {'source': 'mobile'});

      final restored = comment.toJson();
      expect(restored['id'], 'cm-2');
      expect(restored['comment'], 'Resolved');
    });

    test('copyWith updates fields', () {
      final comment = CaseComment(id: 'a', at: DateTime.utc(2026, 1, 1), comment: 'A');
      final updated = comment.copyWith(comment: 'B');

      expect(updated.comment, 'B');
    });

    test('equality', () {
      final at = DateTime.utc(2026, 1, 1);
      final a = CaseComment(id: 'x', at: at, comment: 'X');
      final b = CaseComment(id: 'x', at: at, comment: 'X');

      expect(a, b);
    });
  });

  group('Case Tests', () {
    test('constructs with required fields and defaults', () {
      final $case = Case(
        id: 'case-1',
        receivedAt: DateTime.utc(2026, 1, 1),
        status: CaseStatus.pending,
        asset: asset,
        trigger: trigger,
      );

      expect($case.id, 'case-1');
      expect($case.status, CaseStatus.pending);
      expect($case.asset, asset);
      expect($case.trigger, trigger);
      expect($case.geofences, isEmpty);
      expect($case.comments, isEmpty);
      expect($case.stackCount, 1);
      expect($case.sequence, isNull);
      expect($case.position, isNull);
      expect($case.payload, isNull);
      expect($case.sensors, isNull);
      expect($case.file, isNull);
      expect($case.ignoredStatus, isNull);
    });

    test('fromJson/toJson roundtrip with nested comments', () {
      final json = {
        'id': 'case-2',
        'dateReceived': 1735689600,
        'status': 'FOLLOWED',
        'ignoredStatus': 'IGNORED',
        'asset': {'id': 'asset-2', 'name': 'Truck 2'},
        'trigger': {'id': 'trig-2', 'name': 'Speeding', 'code': 'SPD001', 'kind': 'FORMULA'},
        'sequence': 3,
        'stackCount': 2,
        'comments': [
          {'id': 'cm-1', 'at': 1735689600, 'comment': 'First comment'},
        ],
      };

      final $case = Case.fromJson(json);
      expect($case.id, 'case-2');
      expect($case.status, CaseStatus.followed);
      expect($case.ignoredStatus, CaseIgnoredStatus.ignored);
      expect($case.asset.name, 'Truck 2');
      expect($case.trigger.name, 'Speeding');
      expect($case.sequence, 3);
      expect($case.stackCount, 2);
      expect($case.comments, hasLength(1));
      expect($case.comments.first.comment, 'First comment');

      final restored = $case.toJson();
      expect(restored['id'], 'case-2');
      expect(restored['status'], 'FOLLOWED');
    });

    test('fromJson with unknown status falls back to pending', () {
      final json = {
        'id': 'case-3',
        'dateReceived': 1735689600,
        'status': 'BOGUS',
        'asset': {'id': 'asset-3', 'name': 'Truck 3'},
        'trigger': {'id': 'trig-3', 'name': 'Trig 3', 'code': 'C3', 'kind': 'FORMULA'},
      };

      final $case = Case.fromJson(json);
      expect($case.status, CaseStatus.pending);
    });

    test('copyWith updates fields', () {
      final $case = Case(
        id: 'a',
        receivedAt: DateTime.utc(2026, 1, 1),
        status: CaseStatus.pending,
        asset: asset,
        trigger: trigger,
      );
      final updated = $case.copyWith(status: CaseStatus.closed, stackCount: 5);

      expect(updated.status, CaseStatus.closed);
      expect(updated.stackCount, 5);
    });

    test('equality', () {
      final receivedAt = DateTime.utc(2026, 1, 1);
      final a = Case(id: 'x', receivedAt: receivedAt, status: CaseStatus.pending, asset: asset, trigger: trigger);
      final b = Case(id: 'x', receivedAt: receivedAt, status: CaseStatus.pending, asset: asset, trigger: trigger);

      expect(a, b);
    });

    test('fromJson with geofences list', () {
      final json = {
        'id': 'case-4',
        'dateReceived': 1735689600,
        'status': 'PENDING',
        'asset': {'id': 'asset-4', 'name': 'Truck 4'},
        'trigger': {'id': 'trig-4', 'name': 'Trig 4', 'code': 'C4', 'kind': 'FORMULA'},
        'geofences': [
          {'id': 'geo-1', 'name': 'Zone A', 'mode': 'RADIAL'},
        ],
      };

      final $case = Case.fromJson(json);
      expect($case.geofences, hasLength(1));
      expect($case.geofences.first.name, 'Zone A');
    });
  });
}
