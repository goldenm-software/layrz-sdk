import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ReportSource.toPythonSource', () {
    test('broadcast maps to broadcasts and lastMessages to messages', () {
      expect(ReportSource.broadcast.toPythonSource, PythonSource.broadcasts);
      expect(ReportSource.lastMessages.toPythonSource, PythonSource.messages);
    });

    test('the remaining sources map to the source with the same name', () {
      expect(ReportSource.messages.toPythonSource, PythonSource.messages);
      expect(ReportSource.cases.toPythonSource, PythonSource.cases);
      expect(ReportSource.checkpoints.toPythonSource, PythonSource.checkpoints);
      expect(ReportSource.events.toPythonSource, PythonSource.events);
    });

    test('every mapped value is valid on the backend enum', () {
      const backend = {'MESSAGES', 'CASES', 'CHECKPOINTS', 'EVENTS', 'CORE_PROCESSES', 'BROADCASTS'};

      for (final source in ReportSource.values) {
        expect(backend, contains(source.toPythonSource.toJson()));
      }
    });
  });
}
