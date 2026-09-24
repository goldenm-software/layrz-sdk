import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// A grouped report preview as it reaches this SDK, in camelCase.
///
/// The structure mirrors what the Python SDK produces for a page built with
/// `ReportPage.from_header_matrix([['Asset'], ['Speed', 'Max'], ['Speed', 'Avg']])`, but the Python
/// exporter emits snake_case keys (`text_color`, `data_type`, `header_rows`). Translating between the
/// two conventions happens outside this repository, so these fixtures use the camelCase form the Dart
/// preview models actually consume.
const Map<String, dynamic> _groupedPreview = {
  'name': 'Fleet',
  'pages': [
    {
      'name': 'Trips',
      'headers': [
        {'content': 'Asset', 'textColor': '#000000', 'color': '#ffffff'},
        {'content': 'Max', 'textColor': '#000000', 'color': '#ffffff'},
        {'content': 'Avg', 'textColor': '#000000', 'color': '#ffffff'},
      ],
      'rows': [
        {
          'content': [
            {'content': 'Truck 1', 'textColor': '#000000', 'color': '#ffffff', 'dataType': 'STR'},
            {'content': 88, 'textColor': '#000000', 'color': '#ffffff', 'dataType': 'INT'},
            {'content': 42.5, 'textColor': '#000000', 'color': '#ffffff', 'dataType': 'FLOAT'},
          ],
          'compact': false,
        },
      ],
      'headerRows': [
        [
          {'content': 'Asset', 'textColor': '#000000', 'color': '#ffffff', 'colspan': 1, 'rowspan': 2},
          {'content': 'Speed', 'textColor': '#000000', 'color': '#ffffff', 'colspan': 2, 'rowspan': 1},
        ],
        [
          {'content': 'Max', 'textColor': '#000000', 'color': '#ffffff', 'colspan': 1, 'rowspan': 1},
          {'content': 'Avg', 'textColor': '#000000', 'color': '#ffffff', 'colspan': 1, 'rowspan': 1},
        ],
      ],
    },
  ],
};

/// A flat, single-header-row page, i.e. a preview produced before grouped headers existed.
const Map<String, dynamic> _flatPage = {
  'name': 'Flat',
  'headers': [
    {'content': 'Asset', 'textColor': '#000000', 'color': '#ffffff'},
  ],
  'rows': [
    {
      'content': [
        {'content': 'Truck 1', 'textColor': '#000000', 'color': '#ffffff', 'dataType': 'STR'},
      ],
      'compact': false,
    },
  ],
};

void main() {
  group('ReportHeader spans', () {
    test('defaults to a single cell', () {
      final header = ReportHeader.fromJson({'content': 'Asset'});

      expect(header.colspan, 1);
      expect(header.rowspan, 1);
    });

    test('reads colspan and rowspan', () {
      final header = ReportHeader.fromJson({'content': 'Speed', 'colspan': 2, 'rowspan': 1});

      expect(header.colspan, 2);
      expect(header.rowspan, 1);
    });

    test('reads the header colors', () {
      final header = ReportHeader.fromJson({
        'content': 'Asset',
        'textColor': '#000000',
        'color': '#ffffff',
      });

      expect(header.textColor, const Color(0xFF000000));
      expect(header.color, const Color(0xFFFFFFFF));
    });

    test('roundtrips through toJson()', () {
      const header = ReportHeader(content: 'Speed', colspan: 2, rowspan: 1);

      expect(ReportHeader.fromJson(header.toJson()), header);
    });
  });

  group('ReportPage flat headers', () {
    test('parses a page without headerRows', () {
      final page = ReportPage.fromJson(_flatPage);

      expect(page.headerRows, isEmpty);
      expect(page.headers.length, 1);
      expect(page.headerDepth, 1);
      expect(page.resolvedHeaderRows, [page.headers]);
    });

    test('headerDepth is 0 when the page declares no headers', () {
      const page = ReportPage(name: 'Bare');

      expect(page.headerDepth, 0);
      expect(page.resolvedHeaderRows, isEmpty);
    });
  });

  group('ReportPage grouped headers', () {
    late ReportPage page;

    setUp(() {
      page = ReportPreview.fromJson(_groupedPreview).pages.first;
    });

    test('headers still hold one leaf per column', () {
      expect(page.headers.map((e) => e.content).toList(), ['Asset', 'Max', 'Avg']);
      expect(page.headers.length, page.rows.first.content.length);
    });

    test('headerRows carry the spans', () {
      expect(page.headerDepth, 2);
      expect(page.headerRows.length, 2);
      expect(
        page.headerRows.first.map((e) => (e.content, e.colspan, e.rowspan)).toList(),
        [('Asset', 1, 2), ('Speed', 2, 1)],
      );
      expect(page.headerRows.last.map((e) => e.content).toList(), ['Max', 'Avg']);
    });

    test('resolvedHeaderRows prefers headerRows over headers', () {
      expect(page.resolvedHeaderRows, page.headerRows);
    });

    test('spans tile the header block exactly once', () {
      final covered = <String>{};
      for (var rowIndex = 0; rowIndex < page.headerRows.length; rowIndex++) {
        var colIndex = 0;
        for (final header in page.headerRows[rowIndex]) {
          while (covered.contains('${rowIndex}_$colIndex')) {
            colIndex++;
          }
          for (var r = rowIndex; r < rowIndex + header.rowspan; r++) {
            for (var c = colIndex; c < colIndex + header.colspan; c++) {
              expect(covered.add('${r}_$c'), isTrue, reason: 'cell ($r, $c) covered twice');
            }
          }
          colIndex += header.colspan;
        }
      }

      expect(covered.length, page.headerDepth * page.headers.length);
    });

    test('cells keep their data types', () {
      expect(
        page.rows.first.content.map((e) => e.dataType).toList(),
        [ReportDataType.string, ReportDataType.integer, ReportDataType.float],
      );
    });

    test('roundtrips through toJson()', () {
      expect(ReportPage.fromJson(page.toJson()), page);
    });
  });
}
