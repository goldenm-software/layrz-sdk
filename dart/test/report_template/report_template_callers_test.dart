import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _backendJson() => {
  'id': '12',
  'name': 'Daily',
  'assetsIds': ['1', '2'],
  'outboundServicesIds': <String>[],
  'structure': [
    {
      'title': 'Messages',
      'source': 'MESSAGES',
      'algorithm': 'AUTO',
      'cols': [
        {'name': 'Asset', 'field': 'asset.name', 'visible': true, 'isCustom': false},
        {'name': 'Custom', 'field': 'x.y', 'visible': null, 'isCustom': null},
        {'name': 'Bare', 'field': 'z'},
      ],
      'script': null,
    },
    {'title': null, 'source': null, 'algorithm': null, 'cols': null, 'script': null},
    {'cols': <Map<String, dynamic>>[]},
  ],
  'access': [
    {
      'id': '3',
      'read': true,
      'write': false,
      'manage': false,
      'objectId': '12',
      'userId': '9',
      'module': 'REPORTTEMPLATES',
    },
  ],
};

void main() {
  group('ReportTemplate decoding', () {
    test('tolerates null or absent page title/source and col visible/isCustom', () {
      final template = ReportTemplate.fromJson(_backendJson());
      final pages = template.structure!;

      expect(pages, hasLength(3));
      expect(pages[0].cols![1].visible, true);
      expect(pages[0].cols![1].isCustom, false);
      expect(pages[0].cols![2].visible, true);
      expect(pages[0].cols![2].isCustom, false);
      expect(pages[1].title, '');
      expect(pages[1].source, ReportSource.messages);
      expect(pages[1].algorithm, ReportAlgorithm.auto);
      expect(pages[2].title, '');
      expect(template.access, hasLength(1));
    });

    test('lightweight listing payload decodes without source', () {
      final template = ReportTemplate.fromJson({
        'id': '1',
        'name': 'A',
        'structure': [
          {'title': 'P1'},
          {'title': 'P2'},
        ],
      });

      expect(template.structure, hasLength(2));
      expect(template.assetsIds, isNull);
    });

    test('tolerates a null name', () {
      expect(ReportTemplate.fromJson({'id': '1', 'name': null}).name, '');
    });

    test('edit pattern ReportTemplateInput.fromJson(toJson()) keeps the data', () {
      final template = ReportTemplate.fromJson(_backendJson());
      final input = ReportTemplateInput.fromJson(template.toJson());

      expect(input.id, '12');
      expect(input.name, 'Daily');
      expect(input.assetsIds, ['1', '2']);
      expect(input.structure, hasLength(3));
      expect(input.structure.first.cols, hasLength(3));
      expect(input.structure.first.cols[0].field, 'asset.name');
      expect(input.structure.first.cols[1].visible, true);
    });
  });

  group('ReportTemplateInput.removeNulls', () {
    test('removes nested nulls in maps and lists of maps', () {
      expect(
        ReportTemplateInput.removeNulls({
          'id': null,
          'name': 'x',
          'structure': [
            {
              'title': 't',
              'script': null,
              'cols': [
                {'name': 'n', 'field': null, 'visible': false},
              ],
            },
          ],
        }),
        {
          'name': 'x',
          'structure': [
            {
              'title': 't',
              'cols': [
                {'name': 'n', 'visible': false},
              ],
            },
          ],
        },
      );
    });

    test('keeps non-null values such as false, zero and empty values', () {
      final source = {
        'a': false,
        'b': 0,
        'c': '',
        'd': <String>[],
        'e': <String, dynamic>{},
      };

      expect(ReportTemplateInput.removeNulls(source), source);
    });

    test('payload of a new template has no id and no null at any depth', () {
      final payload = ReportTemplateInput(
        name: 'New',
        structure: [
          ReportTemplatePageInput(
            title: 'P',
            cols: [ReportTemplateColInput(name: 'a', field: 'b')],
          ),
        ],
      ).payload;

      expect(payload.containsKey('id'), false);
      expect(payload['name'], 'New');
      expect(((payload['structure'] as List).first as Map)['source'], 'MESSAGES');
    });
  });

  group('GraphQL documents', () {
    test('deleteMutation declares ids exactly as the backend, [ID]!', () {
      final document = ReportTemplate.deleteMutation(['1', '2']).generated;

      expect(document, contains(r'$ids: [ID]!'));
      expect(document, isNot(contains('[ID!]')));
      expect(document, contains(r'deleteReportTemplates(ids: $ids)'));
    });

    test('listQuery selects the lightweight fields only', () {
      final document = ReportTemplate.listQuery().generated;

      expect(document, contains('reportTemplates'));
      expect(document, contains('structure'));
      expect(document, contains('title'));
      expect(document, isNot(contains('cols')));
      expect(document, isNot(contains('access')));
      expect(document, isNot(contains('script')));
    });

    test('detailQuery uses the full fragment with ID based access', () {
      final document = ReportTemplate.detailQuery('5').generated;

      expect(document, contains(r'query reportTemplates($id: ID!)'));
      expect(document, contains('fragment reportTemplateFragment on ReportTemplate'));
      expect(document, contains('fragment accessFragment on AccessPermission'));
      expect(document, isNot(contains('AccessPermissionUuid')));
      for (final field in ['assetsIds', 'outboundServicesIds', 'algorithm', 'isCustom', 'visible', 'script']) {
        expect(document, contains(field));
      }
    });

    test('saveMutation declares data as ReportTemplateInput!', () {
      final document = ReportTemplateInput.saveMutation('addReportTemplate', {}).generated;

      expect(document, contains(r'$data: ReportTemplateInput!'));
      expect(document, contains(r'addReportTemplate(data: $data)'));
      expect(ReportTemplateInput.saveMutation('editReportTemplate', {}).generated, contains('editReportTemplate'));
    });
  });
}
