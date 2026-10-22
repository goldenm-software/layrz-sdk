import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ReportJob.parsePollPayload', () {
    test('reads the file URI of a finished job', () {
      expect(
        ReportJob.parsePollPayload({
          'status': 'OK',
          'errors': null,
          'result': {'fileUri': 'files/report.xlsx'},
        }),
        (status: 'OK', fileUri: 'files/report.xlsx'),
      );
    });

    test('keeps the raw pending status', () {
      final result = ReportJob.parsePollPayload({'status': 'UNPROCESSABLE_ENTITY', 'result': null});
      expect(result.status, ReportJob.pendingStatus);
      expect(result.fileUri, isNull);
    });

    test('answers INTERNAL_ERROR without a status', () {
      expect(ReportJob.parsePollPayload({}).status, 'INTERNAL_ERROR');
    });
  });
}
