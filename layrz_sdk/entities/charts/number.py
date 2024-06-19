""" Number chart """
from typing import Dict, Self

from .render_technology import ChartRenderTechnology


class NumberChart:
  """
  Number chart configuration
  """

  def __init__(self: Self, value: float, color: str, label: str) -> None:
    """
    Constructor

    Arguments
    ---
    value : Value of the number
    color : Color of the number
    label : Label of the number
    """
    self.value = value
    self.color = color
    self.label = label

  def render(self: Self, technology: ChartRenderTechnology = ChartRenderTechnology.FLUTTER) -> Dict:
    """
    Render chart to a graphic Library.
    """
    if technology == ChartRenderTechnology.FLUTTER:
      return {
        'library': 'FLUTTER',
        'chart': 'NUMBER',
        'configuration': self._render_flutter(),
      }

    return {
      'library': 'FLUTTER',
      'chart': 'TEXT',
      'configuration': [f'Unsupported {technology}'],
    }

  def _render_flutter(self: Self) -> Dict:
    """
    Converts the configuration of the chart to a Flutter native components.
    """
    return {
      'value': self.value,
      'color': self.color,
      'label': self.label,
    }
