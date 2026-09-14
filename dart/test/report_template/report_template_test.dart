import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('ReportSource Tests', () {
    test('fromJson() all values', () {
      expect(ReportSource.fromJson('MESSAGES'), ReportSource.messages);
      expect(ReportSource.fromJson('CASES'), ReportSource.cases);
      expect(ReportSource.fromJson('CHECKPOINTS'), ReportSource.checkpoints);
      expect(ReportSource.fromJson('EVENTS'), ReportSource.events);
      expect(ReportSource.fromJson('BROADCASTS'), ReportSource.broadcast);
      expect(ReportSource.fromJson('LAST_MESSAGES'), ReportSource.lastMessages);
    });

    test('fromJson() falls back to messages on unknown value', () {
      expect(ReportSource.fromJson('UNKNOWN'), ReportSource.messages);
    });

    test('toJson() all values', () {
      expect(ReportSource.messages.toJson(), 'MESSAGES');
      expect(ReportSource.cases.toJson(), 'CASES');
      expect(ReportSource.checkpoints.toJson(), 'CHECKPOINTS');
      expect(ReportSource.events.toJson(), 'EVENTS');
      expect(ReportSource.broadcast.toJson(), 'BROADCASTS');
      expect(ReportSource.lastMessages.toJson(), 'LAST_MESSAGES');
    });

    test('toString() matches toJson()', () {
      for (final value in ReportSource.values) {
        expect(value.toString(), value.toJson());
      }
    });

    test('roundtrip fromJson(toJson())', () {
      for (final value in ReportSource.values) {
        expect(ReportSource.fromJson(value.toJson()), value);
      }
    });
  });

  group('ReportAlgorithm Tests', () {
    test('fromJson() all values', () {
      expect(ReportAlgorithm.fromJson('AUTO'), ReportAlgorithm.auto);
      expect(ReportAlgorithm.fromJson('PYTHON'), ReportAlgorithm.python);
    });

    test('fromJson() falls back to auto on unknown value', () {
      expect(ReportAlgorithm.fromJson('UNKNOWN'), ReportAlgorithm.auto);
    });

    test('toJson() all values', () {
      expect(ReportAlgorithm.auto.toJson(), 'AUTO');
      expect(ReportAlgorithm.python.toJson(), 'PYTHON');
    });

    test('toString() matches toJson()', () {
      for (final value in ReportAlgorithm.values) {
        expect(value.toString(), value.toJson());
      }
    });
  });

  group('ReportTemplateCol Tests', () {
    test('constructs with required fields', () {
      final col = ReportTemplateCol(
        name: 'Name',
        field: 'name',
        visible: true,
        isCustom: false,
      );

      expect(col.name, 'Name');
      expect(col.field, 'name');
      expect(col.visible, isTrue);
      expect(col.isCustom, isFalse);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'name': 'Speed',
        'field': 'speed',
        'visible': true,
        'isCustom': false,
      };

      final col = ReportTemplateCol.fromJson(json);
      expect(col.name, 'Speed');
      expect(col.field, 'speed');
      expect(col.visible, isTrue);
      expect(col.isCustom, isFalse);

      final restored = col.toJson();
      expect(restored['name'], 'Speed');
      expect(restored['field'], 'speed');
      expect(restored['visible'], true);
      expect(restored['isCustom'], false);
    });

    test('copyWith updates fields', () {
      final col = ReportTemplateCol(name: 'A', field: 'a', visible: true, isCustom: false);
      final updated = col.copyWith(name: 'B', isCustom: true);

      expect(updated.name, 'B');
      expect(updated.field, 'a');
      expect(updated.isCustom, isTrue);
    });

    test('equality', () {
      final a = ReportTemplateCol(name: 'A', field: 'a', visible: true, isCustom: false);
      final b = ReportTemplateCol(name: 'A', field: 'a', visible: true, isCustom: false);
      final c = ReportTemplateCol(name: 'C', field: 'c', visible: false, isCustom: true);

      expect(a, b);
      expect(a, isNot(c));
    });

    test('ReportTemplateColInput defaults', () {
      final input = ReportTemplateColInput();

      expect(input.name, '');
      expect(input.field, '');
      expect(input.visible, isTrue);
      expect(input.isCustom, isFalse);
    });

    test('ReportTemplateColInput fromJson/toJson roundtrip', () {
      final json = {'name': 'Col', 'field': 'col', 'visible': false, 'isCustom': true};
      final input = ReportTemplateColInput.fromJson(json);

      expect(input.name, 'Col');
      expect(input.visible, isFalse);
      expect(input.isCustom, isTrue);

      final restored = input.toJson();
      expect(restored['name'], 'Col');
      expect(restored['isCustom'], true);
    });
  });

  group('ReportTemplatePage Tests', () {
    test('constructs with required fields and defaults', () {
      final page = ReportTemplatePage(title: 'Page 1', source: ReportSource.messages);

      expect(page.title, 'Page 1');
      expect(page.source, ReportSource.messages);
      expect(page.algorithm, ReportAlgorithm.auto);
      expect(page.cols, isNull);
      expect(page.script, isNull);
    });

    test('fromJson/toJson roundtrip with cols', () {
      final json = {
        'title': 'Devices',
        'source': 'CASES',
        'algorithm': 'AUTO',
        'cols': [
          {'name': 'ID', 'field': 'id', 'visible': true, 'isCustom': false},
        ],
      };

      final page = ReportTemplatePage.fromJson(json);
      expect(page.title, 'Devices');
      expect(page.source, ReportSource.cases);
      expect(page.algorithm, ReportAlgorithm.auto);
      expect(page.cols, hasLength(1));
      expect(page.cols!.first.name, 'ID');

      final restored = page.toJson();
      expect(restored['title'], 'Devices');
      expect(restored['source'], 'CASES');
    });

    test('fromJson with python algorithm and script', () {
      final json = {
        'title': 'Custom',
        'source': 'EVENTS',
        'algorithm': 'PYTHON',
        'script': 'print("hi")',
      };

      final page = ReportTemplatePage.fromJson(json);
      expect(page.algorithm, ReportAlgorithm.python);
      expect(page.script, 'print("hi")');
    });

    test('fromJson with unknown source falls back to messages', () {
      final json = {'title': 'Fallback', 'source': 'BOGUS'};
      final page = ReportTemplatePage.fromJson(json);
      expect(page.source, ReportSource.messages);
    });

    test('copyWith updates fields', () {
      final page = ReportTemplatePage(title: 'A', source: ReportSource.messages);
      final updated = page.copyWith(title: 'B', algorithm: ReportAlgorithm.python);

      expect(updated.title, 'B');
      expect(updated.algorithm, ReportAlgorithm.python);
    });

    test('ReportTemplatePageInput defaults', () {
      final input = ReportTemplatePageInput();

      expect(input.title, 'Page');
      expect(input.source, ReportSource.messages);
      expect(input.algorithm, ReportAlgorithm.auto);
      expect(input.cols, isEmpty);
      expect(input.script, '');
    });

    test('ReportTemplatePageInput fromJson/toJson roundtrip', () {
      final json = {
        'title': 'Input Page',
        'source': 'CHECKPOINTS',
        'algorithm': 'AUTO',
        'cols': [
          {'name': 'Field', 'field': 'field', 'visible': true, 'isCustom': false},
        ],
        'script': '',
      };

      final input = ReportTemplatePageInput.fromJson(json);
      expect(input.title, 'Input Page');
      expect(input.source, ReportSource.checkpoints);
      expect(input.cols, hasLength(1));

      final restored = input.toJson();
      expect(restored['title'], 'Input Page');
      expect(restored['source'], 'CHECKPOINTS');
    });
  });

  group('ReportTemplate Tests', () {
    test('constructs with required fields', () {
      final template = ReportTemplate(id: 'rt-1', name: 'Monthly Report');

      expect(template.id, 'rt-1');
      expect(template.name, 'Monthly Report');
      expect(template.structure, isNull);
      expect(template.assets, isNull);
      expect(template.assetsIds, isNull);
      expect(template.outboundServices, isNull);
      expect(template.outboundServicesIds, isNull);
      expect(template.access, isNull);
    });

    test('fromJson/toJson roundtrip with nested structure', () {
      final json = {
        'id': 'rt-2',
        'name': 'Full Report',
        'structure': [
          {
            'title': 'Page 1',
            'source': 'MESSAGES',
            'algorithm': 'AUTO',
            'cols': [
              {'name': 'Name', 'field': 'name', 'visible': true, 'isCustom': false},
            ],
          },
        ],
        'assetsIds': ['asset-1', 'asset-2'],
        'outboundServicesIds': ['out-1'],
      };

      final template = ReportTemplate.fromJson(json);
      expect(template.id, 'rt-2');
      expect(template.name, 'Full Report');
      expect(template.structure, hasLength(1));
      expect(template.structure!.first.title, 'Page 1');
      expect(template.assetsIds, ['asset-1', 'asset-2']);
      expect(template.outboundServicesIds, ['out-1']);

      final restored = template.toJson();
      expect(restored['id'], 'rt-2');
      expect(restored['name'], 'Full Report');
      expect(restored['assetsIds'], ['asset-1', 'asset-2']);
    });

    test('fromJson with linked assets and outbound services objects', () {
      final json = {
        'id': 'rt-3',
        'name': 'Linked Report',
        'assets': [
          {'id': 'a-1', 'name': 'Truck 1'},
        ],
        'outboundServices': [
          {'id': 'o-1', 'name': 'Webhook Out'},
        ],
      };

      final template = ReportTemplate.fromJson(json);
      expect(template.assets, hasLength(1));
      expect(template.assets!.first.id, 'a-1');
      expect(template.outboundServices, hasLength(1));
      expect(template.outboundServices!.first.name, 'Webhook Out');
    });

    test('copyWith updates fields', () {
      final template = ReportTemplate(id: 'a', name: 'A');
      final updated = template.copyWith(name: 'B');

      expect(updated.id, 'a');
      expect(updated.name, 'B');
    });

    test('equality', () {
      final a = ReportTemplate(id: 'x', name: 'X');
      final b = ReportTemplate(id: 'x', name: 'X');
      final c = ReportTemplate(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });

    test('ReportTemplateInput defaults', () {
      final input = ReportTemplateInput();

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.assetsIds, isEmpty);
      expect(input.outboundServicesIds, isEmpty);
      expect(input.structure, isEmpty);
    });

    test('ReportTemplateInput fromJson/toJson roundtrip', () {
      final json = {
        'id': 'input-1',
        'name': 'Input Template',
        'assetsIds': ['a-1'],
        'outboundServicesIds': ['o-1'],
        'structure': [
          {'title': 'Page', 'source': 'MESSAGES', 'algorithm': 'AUTO', 'cols': [], 'script': ''},
        ],
      };

      final input = ReportTemplateInput.fromJson(json);
      expect(input.id, 'input-1');
      expect(input.name, 'Input Template');
      expect(input.assetsIds, ['a-1']);
      expect(input.structure, hasLength(1));

      final restored = input.toJson();
      expect(restored['id'], 'input-1');
      expect(restored['name'], 'Input Template');
    });
  });
}
