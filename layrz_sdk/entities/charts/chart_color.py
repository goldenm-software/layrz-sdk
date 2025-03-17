"""Chart alignment"""

import sys
from enum import Enum
from typing import Any, List

if sys.version_info >= (3, 11):
  from typing import Self
else:
  from typing_extensions import Self


class ChartColor(Enum):
  """Chart color list, ideal to use to colorize the series"""

  RED = '#F44336'
  BLUE = '#2196F3'
  GREEN = '#4CAF50'
  PURPLE = '#9C27B0'
  ORANGE = '#FF9800'
  PINK = '#E91E63'
  TEAL = '#009688'
  AMBER = '#FFC107'
  CYAN = '#00BCD4'
  INDIGO = '#3F51B5'
  LIME = '#CDDC39'

  def __str__(self: Self) -> str:
    """Readable property"""
    return self.name

  def __repr__(self: Self) -> str:
    """Readable property"""
    return f'ChartColor.{self.name}'

  @staticmethod
  def get_colors() -> List[str]:
    """Get a color from the list"""
    return [color.value for color in ChartColor]


def get_color_list() -> List[str]:
  """Get all colors"""
  return ChartColor.get_colors()
