"""Timeline chart entities"""

import sys
from typing import Any, Dict, List

from pydantic import BaseModel, Field

from .chart_alignment import ChartAlignment
from .timeline_serie import TimelineSerie

if sys.version_info >= (3, 11):
  from typing import Self
else:
  from typing_extensions import Self


class TimelineChart(BaseModel):
  """Timeline chart configuration"""

  series: List[TimelineSerie] = Field(description='List of series to be displayed in the chart', default_factory=list)
  title: str = Field(description='Title of the chart', default='Chart')
  align: ChartAlignment = Field(description='Alignment of the chart', default=ChartAlignment.CENTER)

  def render(self: Self) -> Dict[str, Any]:
    """
    Render chart to a graphic Library.
    :param technology: The technology to use to render the chart.
    :return: The configuration of the chart.
    """
    return {'library': 'APEXCHARTS', 'configuration': self._render_apexcharts()}

  def _render_apexcharts(self: Self) -> Dict[str, Any]:
    """
    Converts the configuration of the chart to Javascript library ApexCharts.
    """

    series = []

    for serie in self.series:
      data = []

      for item in serie.data:
        data.append(
          {
            'x': item.name,
            'y': [item.start_at.timestamp() * 1000, item.end_at.timestamp() * 1000],
            'fillColor': item.color,
          }
        )

      series.append({'name': serie.label, 'data': data})

    config = {
      'series': series,
      'title': {
        'text': self.title,
        'align': self.align.value,
        'style': {'fontFamily': 'Fira Sans Condensed', 'fontSize': '20px', 'fontWeight': 'normal'},
      },
      'chart': {
        'type': 'rangeBar',
        'animations': {'enabled': False},
        'toolbar': {'show': False},
        'zoom': {'enabled': False},
      },
      'xaxis': {'type': 'datetime'},
      'plotOptions': {
        'bar': {
          'horizontal': True,
        }
      },
      'dataLabels': {'enabled': True},
    }

    return config
