import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('LintError', () {
    test('round trip keeps every field', () {
      final error = LintError.fromJson({
        'code': 'E001',
        'line': 4,
        'name': 'SyntaxError',
        'expected': 'int',
        'received': {'a': 1},
      });

      expect(error.code, 'E001');
      expect(error.line, 4);
      expect(error.name, 'SyntaxError');
      expect(error.expected, 'int');
      expect(error.received, {'a': 1});

      final copy = LintError.fromJson(jsonDecode(jsonEncode(error.toJson())) as Map<String, dynamic>);
      expect(copy, error);
    });

    test('line defaults to 1 and optional fields can be missing', () {
      final error = LintError.fromJson({'code': 'E002'});

      expect(error.line, 1);
      expect(error.name, isNull);
      expect(error.expected, isNull);
      expect(error.received, isNull);
    });
  });

  group('PythonScope', () {
    const wire = {
      PythonScope.sensors: 'SENSORS',
      PythonScope.triggers: 'TRIGGERS',
      PythonScope.fixedTriggers: 'FIXED_TRIGGERS',
      PythonScope.charts: 'CHARTS',
      PythonScope.reports: 'REPORTS',
      PythonScope.dynamicSensors: 'DYNAMIC_SENSORS',
    };

    test('wire values', () {
      expect(wire.length, PythonScope.values.length);
      wire.forEach((value, json) {
        expect(value.toJson(), json);
        expect(PythonScope.fromJson(json), value);
        expect(value.toString(), json);
      });
    });

    test('unknown value falls back to sensors', () {
      expect(PythonScope.fromJson('NOPE'), PythonScope.sensors);
    });
  });

  group('PythonSource', () {
    const wire = {
      PythonSource.messages: 'MESSAGES',
      PythonSource.cases: 'CASES',
      PythonSource.checkpoints: 'CHECKPOINTS',
      PythonSource.events: 'EVENTS',
      PythonSource.coreProcesses: 'CORE_PROCESSES',
      PythonSource.broadcasts: 'BROADCASTS',
      PythonSource.atsOperations: 'ATS_OPERATIONS',
      PythonSource.atsPurchaseorders: 'ATS_PURCHASEORDERS',
    };

    test('wire values', () {
      expect(wire.length, PythonSource.values.length);
      wire.forEach((value, json) {
        expect(value.toJson(), json);
        expect(PythonSource.fromJson(json), value);
        expect(value.toString(), json);
      });
    });

    test('unknown value falls back to messages', () {
      expect(PythonSource.fromJson('NOPE'), PythonSource.messages);
    });
  });
}
