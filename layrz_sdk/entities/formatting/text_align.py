""" Text alignment """
from enum import Enum
from typing import Self


class TextAlignment(Enum):
  """ Text alignment enum definition """
  CENTER = 'center'
  LEFT = 'left'
  RIGHT = 'right'
  JUSTIFY = 'justify'

  @property
  def _readable(self: Self) -> str:
    """ Readable """
    return f'TextAlignment.{self.value}'

  def __str__(self: Self) -> str:
    """ Readable property """
    return self._readable

  def __repr__(self: Self) -> str:
    """ Readable property """
    return self._readable
