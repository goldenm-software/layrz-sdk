from collections.abc import Sequence
from typing import Any, Self

from pydantic import BaseModel, ConfigDict, Field, model_validator

from .header_layout import collapse_header_matrix, layout_header_grid, leaf_headers
from .report_header import ReportHeader
from .report_row import ReportRow


class ReportPage(BaseModel):
  """Report page definition"""

  model_config = ConfigDict(
    validate_by_name=False,
    validate_by_alias=True,
    serialize_by_alias=True,
  )

  name: str = Field(description='Name of the page. Length should be less than 60 characters')
  headers: list[ReportHeader] = Field(description='List of report headers', default_factory=list)
  header_rows: list[list[ReportHeader]] = Field(
    description='Multi-row (grouped) header definition, top to bottom. Use colspan/rowspan on each header '
    'to build groups. Takes precedence over `headers` when non-empty, and `headers` then becomes a '
    'read-only mirror of the bottom-most header of each column.',
    default_factory=list,
  )
  rows: list[ReportRow] = Field(description='List of report rows', default_factory=list)
  freeze_header: bool = Field(description='Freeze header', default=False)

  @model_validator(mode='after')
  def _normalize_headers(self: Self) -> Self:
    """Validate the header grid and mirror its bottom row into `headers`"""
    cells, depth, width = layout_header_grid(self.resolved_header_rows)

    if not self.header_rows:
      return self

    if self.headers and len(self.headers) != width:
      raise ValueError(
        f'`headers` declares {len(self.headers)} column(s) but `header_rows` resolves to {width}; '
        'pass only `header_rows`, or make both agree'
      )

    if not self.headers:
      self.headers = leaf_headers(cells, depth, width)

    return self

  @classmethod
  def from_header_matrix(
    cls: type[Self],
    name: str,
    headers: Sequence[Sequence[ReportHeader | Any]],
    rows: Sequence[ReportRow] | None = None,
    freeze_header: bool = False,
  ) -> Self:
    """
    Build a page from a column-major header matrix, of shape (columns, levels).

    Each entry of `headers` is one column's label stack, top to bottom. Entries may be `ReportHeader`
    instances or raw values. Neighbouring labels merge into a shared group only when every label above
    them merges too::

      ReportPage.from_header_matrix(
        name='Trips',
        headers=[['Asset'], ['Speed', 'Max'], ['Speed', 'Avg']],
        rows=[...],
      )

    :param name: Name of the page
    :param headers: One top-to-bottom label stack per column
    :param rows: List of report rows
    :param freeze_header: Freeze the whole header block
    :return: The page, with `header_rows` resolved from the matrix

    :raises ValueError: If a column declares no headers, or the matrix cannot be tiled
    """
    return cls(
      name=name,
      header_rows=collapse_header_matrix(headers),
      rows=list(rows or []),
      freeze_header=freeze_header,
    )

  @property
  def resolved_header_rows(self: Self) -> list[list[ReportHeader]]:
    """Header definition as rows, top to bottom. A page with a flat header resolves to `[headers]`."""
    if self.header_rows:
      return self.header_rows
    return [self.headers] if self.headers else []

  @property
  def header_depth(self: Self) -> int:
    """Number of sheet rows the header block occupies. 0 when the page declares no headers."""
    return len(self.resolved_header_rows)

  @property
  def column_count(self: Self) -> int:
    """Number of columns the page declares"""
    return len(self.headers)
