"""Radar chart"""

import sys
from typing import Any, Dict, List

from pydantic import BaseModel, Field

from .chart_alignment import ChartAlignment
from .chart_data_serie import ChartDataSerie
from .chart_data_serie_type import ChartDataSerieType

if sys.version_info >= (3, 11):
  from typing import Self
else:
  from typing_extensions import Self


class RadarChart(BaseModel):
  """Radar chart configuration"""

  x_axis: ChartDataSerie = Field(description='X Axis of the chart')
  y_axis: List[ChartDataSerie] = Field(description='Y Axis of the chart', default_factory=list)
  title: str = Field(description='Title of the chart', default='Chart')
  align: ChartAlignment = Field(description='Alignment of the chart', default=ChartAlignment.CENTER)

  def render(self: Self) -> Dict[str, Any]:
    """
    Render chart to a graphic Library.

    :param technology: The technology to use to render the chart.
    :type technology: ChartRenderTechnology

    :return: The configuration of the chart.
    :rtype: Dict[str, Any]
    """
    return {'library': 'APEXCHARTS', 'configuration': self._render_apexcharts()}

  def _render_apexcharts(self: Self) -> Dict[str, Any]:
    """
    Converts the configuration of the chart to Javascript library ApexCharts.
    """

    series = []
    colors = []

    for serie in self.y_axis:
      modified_serie = {'name': serie.label, 'data': serie.data}

      if serie.serie_type is not ChartDataSerieType.NONE:
        modified_serie['type'] = serie.serie_type.value

      series.append(modified_serie)
      colors.append(serie.color)

    config = {
      'series': series,
      'colors': colors,
      'xaxis': {
        'categories': self.x_axis.data,
        'type': self.x_axis.data_type.value,
        'title': {
          'text': self.x_axis.label,
          'style': {'fontFamily': 'Fira Sans Condensed', 'fontSize': '20px', 'fontWeight': 'normal'},
        },
      },
      'title': {
        'text': self.title,
        'align': self.align.value,
        'style': {'fontFamily': 'Fira Sans Condensed', 'fontSize': '20px', 'fontWeight': 'normal'},
      },
      'chart': {
        'type': 'radar',
        'animations': {'enabled': False},
        'toolbar': {'show': False},
        'zoom': {'enabled': False},
      },
      'dataLabels': {'enabled': True},
      'plotOptions': {'bar': {'horizontal': True, 'borderRadius': 4}},
    }

    return config
