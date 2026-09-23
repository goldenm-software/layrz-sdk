"""Tests for report pages, grouped headers and the report exporters"""

import warnings
from pathlib import Path
from typing import Any

import pytest
from pydantic import ValidationError

from layrz_sdk.entities import (
  Report,
  ReportCol,
  ReportFormat,
  ReportHeader,
  ReportPage,
  ReportRow,
  collapse_header_matrix,
  layout_header_grid,
)

GROUPED_MATRIX: list[list[str]] = [['Asset'], ['Speed', 'Max'], ['Speed', 'Avg']]


def _rows() -> list[ReportRow]:
  """Three cells wide, matching the grouped fixtures"""
  return [ReportRow(content=[ReportCol(content='a'), ReportCol(content='b'), ReportCol(content='c')])]


def _grouped_page(name: str = 'Trips', freeze_header: bool = False) -> ReportPage:
  return ReportPage.from_header_matrix(
    name=name,
    headers=GROUPED_MATRIX,
    rows=_rows(),
    freeze_header=freeze_header,
  )


def test_flat_page_is_unchanged() -> None:
  first = ReportHeader(content='A')
  second = ReportHeader(content='B')
  page = ReportPage(name='Flat', headers=[first, second])

  assert page.header_rows == []
  assert page.resolved_header_rows == [[first, second]]
  assert page.header_depth == 1
  assert page.column_count == 2
  assert page.headers[0] is first


def test_flat_header_defaults_to_unit_spans() -> None:
  header = ReportHeader(content='A')

  assert header.colspan == 1
  assert header.rowspan == 1


def test_grid_coordinates() -> None:
  page = _grouped_page()
  cells, depth, width = layout_header_grid(page.resolved_header_rows)

  assert depth == 2
  assert width == 3
  placed = {
    cell.header.content: (cell.first_row, cell.first_col, cell.last_row, cell.last_col) for cell in cells
  }
  assert placed == {
    'Asset': (0, 0, 1, 0),
    'Speed': (0, 1, 0, 2),
    'Max': (1, 1, 1, 1),
    'Avg': (1, 2, 1, 2),
  }


def test_headers_derived_from_header_rows() -> None:
  page = _grouped_page()

  assert [header.content for header in page.headers] == ['Asset', 'Max', 'Avg']
  assert page.column_count == 3
  assert page.header_depth == 2


def test_leaf_colspan_repeats_per_column() -> None:
  group = ReportHeader(content='Group', colspan=2)
  leaf = ReportHeader(content='Shared', colspan=2)
  page = ReportPage(name='Wide', header_rows=[[group], [leaf]])

  assert page.column_count == 2
  assert page.headers[0] is leaf
  assert page.headers[1] is leaf


def test_is_single_guards_merge_precondition() -> None:
  page = _grouped_page()
  cells, _, _ = layout_header_grid(page.resolved_header_rows)
  singles = {cell.header.content: cell.is_single for cell in cells}

  assert singles == {'Asset': False, 'Speed': False, 'Max': True, 'Avg': True}


def test_hole_raises() -> None:
  with pytest.raises(ValidationError, match='hole'):
    ReportPage(
      name='Holed',
      header_rows=[[ReportHeader(content='A')], [ReportHeader(content='B'), ReportHeader(content='C')]],
    )


def test_overlap_raises() -> None:
  with pytest.raises(ValidationError, match='overlaps'):
    ReportPage(
      name='Overlapping',
      header_rows=[
        [ReportHeader(content='A'), ReportHeader(content='B', rowspan=2)],
        [ReportHeader(content='C', colspan=2)],
      ],
    )


def test_rowspan_overflow_raises() -> None:
  with pytest.raises(ValidationError, match='only has 2 row'):
    ReportPage(
      name='Deep',
      header_rows=[[ReportHeader(content='A', rowspan=3)], [ReportHeader(content='B')]],
    )


def test_headers_and_header_rows_conflict_raises() -> None:
  with pytest.raises(ValidationError, match='resolves to 3'):
    ReportPage(
      name='Conflict',
      headers=[ReportHeader(content='A'), ReportHeader(content='B')],
      header_rows=collapse_header_matrix(GROUPED_MATRIX),
    )


def test_flat_header_with_span_is_validated_at_construction() -> None:
  """A span on a flat `headers` list must fail fast, not halfway through an export"""
  with pytest.raises(ValidationError, match='only has 1 row'):
    ReportPage(name='Flat', headers=[ReportHeader(content='A', rowspan=2)])


def test_negative_span_rejected() -> None:
  with pytest.raises(ValidationError):
    ReportHeader(content='A', colspan=0)


def test_matrix_merges_shared_group() -> None:
  header_rows = collapse_header_matrix(GROUPED_MATRIX)

  assert [[(h.content, h.colspan, h.rowspan) for h in row] for row in header_rows] == [
    [('Asset', 1, 2), ('Speed', 2, 1)],
    [('Max', 1, 1), ('Avg', 1, 1)],
  ]


def test_matrix_keeps_distinct_groups_apart() -> None:
  """Two unrelated groups sharing a leaf label must not merge"""
  header_rows = collapse_header_matrix([['In', 'Total'], ['Out', 'Total']])

  assert [[(h.content, h.colspan, h.rowspan) for h in row] for row in header_rows] == [
    [('In', 1, 1), ('Out', 1, 1)],
    [('Total', 1, 1), ('Total', 1, 1)],
  ]


def test_matrix_does_not_merge_differently_styled_labels() -> None:
  header_rows = collapse_header_matrix(
    [
      [ReportHeader(content='Speed', color='#ff0000'), ReportHeader(content='Max')],
      [ReportHeader(content='Speed'), ReportHeader(content='Avg')],
    ]
  )

  assert [header.colspan for header in header_rows[0]] == [1, 1]


def test_matrix_pads_short_stack_downward() -> None:
  header_rows = collapse_header_matrix([['Asset'], ['Speed', 'Max']])

  assert header_rows[0][0].content == 'Asset'
  assert header_rows[0][0].rowspan == 2


def test_matrix_rejects_empty_column() -> None:
  with pytest.raises(ValueError, match='Column 1 of the header matrix'):
    collapse_header_matrix([['Asset'], []])


def test_matrix_accepts_report_header_instances() -> None:
  header_rows = collapse_header_matrix([[ReportHeader(content='Asset', bold=True)]])

  assert header_rows[0][0].bold is True


def test_export_json_flat_is_unchanged() -> None:
  page = ReportPage(
    name='Flat',
    headers=[ReportHeader(content='A')],
    rows=[ReportRow(content=[ReportCol(content='a')])],
  )
  exported: dict[str, Any] = Report(name='r', pages=[page]).export(path='.', export_format=ReportFormat.JSON)
  page_json = exported['pages'][0]

  assert 'header_rows' not in page_json
  assert page_json['headers'] == [{'content': 'A', 'text_color': '#000000', 'color': '#ffffff'}]
  assert page_json['rows'][0]['content'] == [
    {'content': 'a', 'text_color': '#000000', 'color': '#ffffff', 'data_type': 'STR'}
  ]


def test_export_json_grouped_shape() -> None:
  exported: dict[str, Any] = Report(name='r', pages=[_grouped_page()]).export(
    path='.', export_format=ReportFormat.JSON
  )
  page_json = exported['pages'][0]

  assert [header['content'] for header in page_json['headers']] == ['Asset', 'Max', 'Avg']
  assert len(page_json['header_rows']) == 2
  assert [(cell['content'], cell['colspan'], cell['rowspan']) for cell in page_json['header_rows'][0]] == [
    ('Asset', 1, 2),
    ('Speed', 2, 1),
  ]


def test_export_xlsx_never_merges_a_single_cell(tmp_path: Path) -> None:
  """xlsxwriter warns and writes nothing when merge_range gets a 1x1 range"""
  report = Report(name='r', pages=[_grouped_page(), ReportPage(name='Flat', headers=[ReportHeader(content='A')])])

  with warnings.catch_warnings(record=True) as caught:
    warnings.simplefilter('always')
    report.export(path=tmp_path, export_format=ReportFormat.MICROSOFT_EXCEL)

  assert [str(w.message) for w in caught if 'merge single cell' in str(w.message)] == []


def test_export_xlsx_without_headers_keeps_blank_first_row(tmp_path: Path) -> None:
  openpyxl = pytest.importorskip('openpyxl')
  page = ReportPage(name='Bare', rows=[ReportRow(content=[ReportCol(content='a')])])
  path = Report(name='r', pages=[page]).export(path=tmp_path, export_format=ReportFormat.MICROSOFT_EXCEL)

  sheet = openpyxl.load_workbook(path).active
  assert sheet['A1'].value is None
  assert sheet['A2'].value == 'a'


def test_export_xlsx_merges_and_offsets(tmp_path: Path) -> None:
  openpyxl = pytest.importorskip('openpyxl')
  path = Report(name='r', pages=[_grouped_page(freeze_header=True)]).export(
    path=tmp_path, export_format=ReportFormat.MICROSOFT_EXCEL
  )

  sheet = openpyxl.load_workbook(path).active
  assert {str(cell_range) for cell_range in sheet.merged_cells.ranges} == {'A1:A2', 'B1:C1'}
  assert sheet['A1'].value == 'Asset'
  assert sheet['B1'].value == 'Speed'
  assert [sheet['B2'].value, sheet['C2'].value] == ['Max', 'Avg']
  assert sheet['A3'].value == 'a'  # data starts below the whole header block
  assert sheet.freeze_panes == 'A3'


def test_export_xlsx_flat_matches_legacy_layout(tmp_path: Path) -> None:
  openpyxl = pytest.importorskip('openpyxl')
  page = ReportPage(
    name='Flat',
    headers=[ReportHeader(content='A'), ReportHeader(content='B')],
    rows=[ReportRow(content=[ReportCol(content='a'), ReportCol(content='b')])],
    freeze_header=True,
  )
  path = Report(name='r', pages=[page]).export(path=tmp_path, export_format=ReportFormat.MICROSOFT_EXCEL)

  sheet = openpyxl.load_workbook(path).active
  assert list(sheet.merged_cells.ranges) == []
  assert [sheet['A1'].value, sheet['B1'].value] == ['A', 'B']
  assert [sheet['A2'].value, sheet['B2'].value] == ['a', 'b']
  assert sheet.freeze_panes == 'A2'
