import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ReportJobInput', () {
    test('payload sends Unix seconds, functionsIds and omits null template identifiers', () {
      final payload = ReportJobInput(
        templateId: '12',
        startAt: DateTime.fromMillisecondsSinceEpoch(1700000000000),
        endAt: DateTime.fromMillisecondsSinceEpoch(1700003600000),
        assetsIds: ['1'],
        functionsIds: ['9'],
        utcOffset: -360,
      ).payload;

      expect(payload['startAt'], 1700000000);
      expect(payload['endAt'], 1700003600);
      expect(payload['templateId'], '12');
      expect(payload.containsKey('templateCode'), false);
      expect(payload.containsKey('languageId'), false);
      expect(payload['functionsIds'], ['9']);
      expect(payload['utcOffset'], -360);
      expect(payload['outboundServicesIds'], <String>[]);
    });

    test('defaults and round trip', () {
      final input = ReportJobInput(
        templateCode: 'DEFAULT',
        startAt: DateTime(2026, 1, 1),
        endAt: DateTime(2026, 1, 2),
      );
      final restored = ReportJobInput.fromJson(input.toJson());

      expect(input.utcOffset, 0);
      expect(input.functionsIds, isEmpty);
      expect(restored.templateCode, 'DEFAULT');
      expect(restored.startAt, input.startAt);
    });
  });

  group('GraphQL documents', () {
    test('runMutation declares data as ReportJobInput!', () {
      final document = ReportJob.runMutation({}).generated;

      expect(document, contains(r'$data: ReportJobInput!'));
      expect(document, contains(r'runReportJob(data: $data)'));
    });

    test('pollQuery selects only the fileUri', () {
      final document = ReportJob.pollQuery('abc').generated;

      expect(document, contains(r'$jobId: Uuid!'));
      expect(document, contains(r'pollReportJob(jobId: $jobId)'));
      expect(document, contains('fileUri'));
      expect(document, isNot(contains('preview')));
    });

    test('pollWithPreviewQuery selects the preview tree', () {
      final document = ReportJob.pollWithPreviewQuery('abc').generated;

      for (final field in ['fileUri', 'preview', 'pages', 'headers', 'rows', 'dataType', 'textColor', 'color']) {
        expect(document, contains(field));
      }
    });
  });

  group('ReportJob.parsePollPreviewPayload', () {
    test('decodes the preview of a finished job', () {
      final result = ReportJob.parsePollPreviewPayload({
        'status': 'OK',
        'errors': null,
        'result': {
          'fileUri': 'files/report.xlsx',
          'preview': {
            'name': 'Report',
            'pages': [
              {
                'name': 'Page 1',
                'headers': [
                  {'content': 'Name', 'color': '#112233', 'textColor': null},
                  {'content': null, 'color': null, 'textColor': null},
                ],
                'rows': [
                  {
                    'content': [
                      {'content': 'Ada', 'dataType': 'STR', 'color': null, 'textColor': '#ffffff'},
                      {'content': '3', 'dataType': 'INT', 'color': null, 'textColor': null},
                    ],
                  },
                ],
              },
            ],
          },
        },
      });

      expect(result.status, 'OK');
      expect(result.fileUri, 'files/report.xlsx');
      expect(result.preview?.name, 'Report');
      final page = result.preview!.pages.single;
      expect(page.headers, hasLength(2));
      expect(page.headers[1].content, '');
      expect(page.rows.single.content[1].dataType, ReportDataType.integer);
    });

    test('keeps the status when there is no preview', () {
      final result = ReportJob.parsePollPreviewPayload({'status': ReportJob.pendingStatus, 'result': null});

      expect(result.status, ReportJob.pendingStatus);
      expect(result.fileUri, isNull);
      expect(result.preview, isNull);
    });

    test('an undecodable preview does not hide the file', () {
      final result = ReportJob.parsePollPreviewPayload({
        'status': 'OK',
        'result': {
          'fileUri': 'f',
          'preview': {'pages': 'oops'},
        },
      });

      expect(result.fileUri, 'f');
      expect(result.preview, isNull);
    });
  });
}
