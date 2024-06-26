""" Report formats """
from enum import Enum
from typing import Self


class ReportFormat(Enum):
  """
  Report format definition.
  """
  MICROSOFT_EXCEL = 'MICROSOFT_EXCEL'
  JSON = 'JSON'

  @property
  def _readable(self: Self) -> str | None | bool:
    """ Readable """
    return f'ReportFormat.{self.value}'

  def __str__(self: Self) -> str | None | bool:
    """ Readable property """
    return self._readable

  def __repr__(self: Self) -> str | None | bool:
    """ Readable property """
    return self._readable
