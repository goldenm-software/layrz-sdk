import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _backendJson() => {
  'id': '5b1c5c1e-8f4a-4a52-9a43-2f8bb0f4d111',
  'name': 'Weekly',
  'assetsIds': ['1'],
  'outboundServicesIds': <String>[],
  'templateCode': null,
  'templateId': '12',
  'relativeTime': 'LAST_7_DAYS',
  'sendTo': ['a@b.com'],
  'subject': 'Report',
  'execWeekdays': ['MON', 'FRI'],
  'execTime': '08:30:00',
  'execTz': 'America/Mexico_City',
  'enabled': true,
  'createdAt': 1700000000.5,
  'createdById': '3',
  'createdBy': {'id': '3', 'name': 'Ada'},
  'updatedAt': 1700000100,
  'updatedById': '4',
  'updatedBy': {'id': '4', 'name': 'Bob'},
};

void main() {
  group('ReportScheduler decoding', () {
    test('decodes a backend payload without ownerId', () {
      final scheduler = ReportScheduler.fromJson(_backendJson());

      expect(scheduler.id, '5b1c5c1e-8f4a-4a52-9a43-2f8bb0f4d111');
      // ignore: deprecated_member_use_from_same_package
      expect(scheduler.ownerId, isNull);
      expect(scheduler.relativeTime, RelativeChoices.last7Days);
      expect(scheduler.execWeekdays, [Weekday.monday, Weekday.friday]);
      expect(scheduler.execTime, const TimeOfDay(hour: 8, minute: 30));
      expect(scheduler.createdBy?.name, 'Ada');
      expect(scheduler.updatedBy?.name, 'Bob');
      expect(scheduler.access, isNull);
    });

    test('edit pattern ReportSchedulerInput.fromJson(toJson()) keeps the data', () {
      final scheduler = ReportScheduler.fromJson(_backendJson());
      final input = ReportSchedulerInput.fromJson(scheduler.toJson());

      expect(input.id, scheduler.id);
      expect(input.name, 'Weekly');
      expect(input.templateId, '12');
      expect(input.relativeTime, RelativeChoices.last7Days);
      expect(input.sendTo, ['a@b.com']);
      expect(input.execWeekdays, [Weekday.monday, Weekday.friday]);
      expect(input.execTime, const TimeOfDay(hour: 8, minute: 30));
      expect(input.execTz, 'America/Mexico_City');
      expect(input.subject, 'Report');
    });
  });

  group('ReportSchedulerInput relativeTime', () {
    test('defaults to yesterday', () {
      expect(ReportSchedulerInput().relativeTime, RelativeChoices.yesterday);
      expect(ReportSchedulerInput.fromJson(<String, dynamic>{}).relativeTime, RelativeChoices.yesterday);
    });

    test('unknown is never serialized in the payload', () {
      final payload = ReportSchedulerInput(relativeTime: RelativeChoices.unknown).payload;

      expect(payload['relativeTime'], 'YESTERDAY');
      expect(payload.values, isNot(contains('UNKNOWN')));
    });

    test('a valid value is kept in the payload', () {
      expect(ReportSchedulerInput(relativeTime: RelativeChoices.last48Hours).payload['relativeTime'], 'LAST_48_HOURS');
    });
  });

  group('GraphQL documents', () {
    test('no fragment selects ownerId or access', () {
      final documents = [
        ReportScheduler.listQuery().generated,
        ReportScheduler.detailQuery('1').generated,
        ReportSchedulerInput.saveMutation('addReportScheduler', {}).generated,
      ];

      for (final document in documents) {
        expect(document, isNot(contains('ownerId')));
        expect(document, isNot(contains('access')));
        expect(document, contains('fragment reportSchedulerFragment on ReportScheduler'));
      }
    });

    test('listQuery selects the audit users', () {
      final document = ReportScheduler.listQuery().generated;

      for (final field in ['createdBy', 'updatedBy', 'execWeekdays', 'execTime', 'relativeTime', 'sendTo']) {
        expect(document, contains(field));
      }
    });

    test('detailQuery declares id as ID', () {
      final document = ReportScheduler.detailQuery('1').generated;

      expect(document, contains(r'query reportSchedulers($id: ID!)'));
      expect(document, contains(r'reportSchedulers(id: $id)'));
    });

    test('deleteMutation declares ids as the optional [ID] of the backend', () {
      final document = ReportScheduler.deleteMutation(['1']).generated;

      expect(document, contains(r'$ids: [ID])'));
      expect(document, isNot(contains('[ID]!')));
      expect(document, contains(r'deleteReportScheduler(ids: $ids)'));
    });

    test('toggleMutation declares [ID] and selects only status and errors', () {
      final document = ReportScheduler.toggleMutation(['1']).generated;

      expect(document, contains(r'$ids: [ID])'));
      expect(document, contains(r'toggleReportScheduler(ids: $ids)'));
      expect(document, contains('status'));
      expect(document, contains('errors'));
      expect(document, isNot(contains('result')));
    });

    test('saveMutation declares data as ReportSchedulerInput!', () {
      final document = ReportSchedulerInput.saveMutation('editReportScheduler', {}).generated;

      expect(document, contains(r'$data: ReportSchedulerInput!'));
      expect(document, contains(r'editReportScheduler(data: $data)'));
    });
  });
}
