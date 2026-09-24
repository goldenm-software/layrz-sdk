"""Header grid layout helpers for report pages"""

from collections.abc import Sequence
from dataclasses import dataclass
from typing import Any, Self

from .report_header import ReportHeader
from .text_alignment import TextAlignment


@dataclass(frozen=True, slots=True)
class HeaderCell:
  """A header placed on the sheet grid, in zero-indexed coordinates relative to the header block"""

  header: ReportHeader
  first_row: int
  first_col: int
  last_row: int
  last_col: int

  @property
  def is_single(self: Self) -> bool:
    """True when the cell covers exactly one sheet cell (xlsxwriter refuses to merge those)"""
    return self.first_row == self.last_row and self.first_col == self.last_col


def layout_header_grid(header_rows: Sequence[Sequence[ReportHeader]]) -> tuple[list[HeaderCell], int, int]:
  """
  Place every header on an absolute grid, HTML-table style.

  Rows are walked top to bottom with a column cursor that skips the cells already claimed by a rowspan
  from a row above, so callers only list the headers that actually start on each row.

  :param header_rows: Header rows, top to bottom
  :return: Tuple of (placed cells, depth, width)
  :raises ValueError: If the definition overlaps, leaves a hole, or overflows its own depth
  """
  depth = len(header_rows)
  if depth == 0:
    return [], 0, 0

  occupied: dict[tuple[int, int], ReportHeader] = {}
  cells: list[HeaderCell] = []

  for row_index, row in enumerate(header_rows):
    col_index = 0
    for header in row:
      while (row_index, col_index) in occupied:  # claimed by a rowspan from a row above
        col_index += 1

      last_row = row_index + header.rowspan - 1
      last_col = col_index + header.colspan - 1

      if last_row >= depth:
        raise ValueError(
          f'Header {header.content!r} on header row {row_index} declares rowspan={header.rowspan}, '
          f'but the header block only has {depth} row(s)'
        )

      for row_cursor in range(row_index, last_row + 1):
        for col_cursor in range(col_index, last_col + 1):
          previous = occupied.get((row_cursor, col_cursor))
          if previous is not None:
            raise ValueError(
              f'Header {header.content!r} on header row {row_index} overlaps {previous.content!r} '
              f'at cell ({row_cursor}, {col_cursor})'
            )
          occupied[(row_cursor, col_cursor)] = header

      cells.append(
        HeaderCell(
          header=header,
          first_row=row_index,
          first_col=col_index,
          last_row=last_row,
          last_col=last_col,
        )
      )
      col_index = last_col + 1

  if not occupied:
    return [], depth, 0

  width = max(col for _, col in occupied) + 1

  for row_index in range(depth):
    for col_index in range(width):
      if (row_index, col_index) not in occupied:
        raise ValueError(
          f'Header grid leaves a hole at row {row_index}, column {col_index}; '
          'every cell of the header block must be covered exactly once'
        )

  return cells, depth, width


def leaf_headers(cells: Sequence[HeaderCell], depth: int, width: int) -> list[ReportHeader]:
  """
  Return the bottom-most header covering each column, one entry per column, left to right.

  A leaf spanning several columns is repeated once per column it covers, so the result always lines up
  with `ReportRow.content`.

  :param cells: Placed cells, as returned by `layout_header_grid`
  :param depth: Number of header rows
  :param width: Number of columns
  :return: One header per column, left to right
  """
  leaves: list[ReportHeader | None] = [None] * width

  for cell in cells:
    if cell.last_row != depth - 1:
      continue
    for col in range(cell.first_col, cell.last_col + 1):
      leaves[col] = cell.header

  return [leaf for leaf in leaves if leaf is not None]


def collapse_header_matrix(columns: Sequence[Sequence[ReportHeader | Any]]) -> list[list[ReportHeader]]:
  """
  Convert a column-major header matrix into row-major header rows carrying explicit spans.

  Each entry of `columns` is one column's label stack, top to bottom, of shape (columns, levels). Entries
  may be `ReportHeader` instances or raw values, which are wrapped with the `ReportHeader` defaults.

  Columns shorter than the deepest one extend their **last** label downward to the bottom row, so
  `['Asset']` beside `['Speed', 'Max']` renders `Asset` with a rowspan of 2.

  Two neighbouring labels merge only when every label above them merges too, so two unrelated groups that
  share a leaf label stay apart::

    [['In', 'Total'], ['Out', 'Total']]  ->  'In' | 'Out'  over  'Total' | 'Total'  (two separate cells)

  Label identity is `(content, color, align, bold)`, so labels that render differently never merge. Two
  columns whose stacks are identical all the way down do merge, which is indistinguishable from a real
  group; build `header_rows` by hand if you need them kept apart.

  :param columns: One top-to-bottom label stack per column
  :return: Header rows, top to bottom, with colspan/rowspan set
  :raises ValueError: If a column declares no headers
  """
  if not columns:
    return []

  stacks: list[list[ReportHeader]] = []
  for index, column in enumerate(columns):
    if not column:
      raise ValueError(f'Column {index} of the header matrix declares no headers')
    stacks.append([item if isinstance(item, ReportHeader) else ReportHeader(content=item) for item in column])

  depth = max(len(stack) for stack in stacks)
  width = len(stacks)

  def path(row: int, col: int) -> tuple[tuple[Any, str, TextAlignment, bool], ...]:
    """Merge identity of a grid position: the labels from the top row down to it, clamped to the stack"""
    stack = stacks[col]
    return tuple(_merge_key(stack[level]) for level in range(min(row, len(stack) - 1) + 1))

  covered: set[tuple[int, int]] = set()
  merged: list[list[ReportHeader]] = []

  for row in range(depth):
    row_cells: list[ReportHeader] = []
    col = 0
    while col < width:
      if (row, col) in covered:
        col += 1
        continue

      key = path(row, col)

      colspan = 1
      while col + colspan < width and (row, col + colspan) not in covered and path(row, col + colspan) == key:
        colspan += 1

      rowspan = 1
      while row + rowspan < depth and all(path(row + rowspan, cursor) == key for cursor in range(col, col + colspan)):
        rowspan += 1

      for row_cursor in range(row, row + rowspan):
        for col_cursor in range(col, col + colspan):
          covered.add((row_cursor, col_cursor))

      stack = stacks[col]
      header = stack[min(row, len(stack) - 1)]
      row_cells.append(header.model_copy(update={'colspan': colspan, 'rowspan': rowspan}))
      col += colspan

    merged.append(row_cells)

  return merged


def _merge_key(header: ReportHeader) -> tuple[Any, str, TextAlignment, bool]:
  """Label identity used to decide whether two neighbouring headers merge"""
  return (header.content, header.color, header.align, header.bold)
