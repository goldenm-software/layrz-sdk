"""Chart helpers"""

from __future__ import annotations

import math
from datetime import datetime
from typing import TYPE_CHECKING

from layrz_sdk.entities.charts.chart_data_serie_type import ChartDataSerieType
from layrz_sdk.entities.charts.chart_data_type import ChartDataType

if TYPE_CHECKING:
  from layrz_sdk.entities.charts.chart_data_serie import ChartDataSerie
  from layrz_sdk.entities.charts.line_chart import LineChart

DEFAULT_TARGET = 2000

_ELIGIBLE_SERIE_TYPES = {ChartDataSerieType.LINE, ChartDataSerieType.AREA, ChartDataSerieType.SCATTER}


def _lttb(xs: list[float], ys: list[float], target: int) -> list[int]:
  """
  Largest Triangle Three Buckets downsampling algorithm.
  Returns the indices of the selected points.
  Always keeps the first and last points.
  """
  n = len(xs)
  if n <= target:
    return list(range(n))

  indices: list[int] = [0]
  bucket_size = (n - 2) / (target - 2)

  for i in range(1, target - 1):
    a = indices[-1]

    range_start = int(math.floor((i - 1) * bucket_size)) + 1
    range_end = min(int(math.floor(i * bucket_size)) + 1, n - 1)

    next_start = range_end
    next_end = min(int(math.floor((i + 1) * bucket_size)) + 1, n - 1)

    bucket_len = next_end - next_start
    if bucket_len == 0:
      avg_x = xs[next_start]
      avg_y = ys[next_start]
    else:
      avg_x = sum(xs[next_start:next_end]) / bucket_len
      avg_y = sum(ys[next_start:next_end]) / bucket_len

    ax, ay = xs[a], ys[a]

    max_area = -1.0
    best = range_start
    for j in range(range_start, range_end):
      area = abs((ax - avg_x) * (ys[j] - ay) - (ax - xs[j]) * (avg_y - ay)) * 0.5
      if area > max_area:
        max_area = area
        best = j

    indices.append(best)

  indices.append(n - 1)
  return indices


def _to_float_xs(serie: ChartDataSerie) -> list[float]:
  """Convert x_axis data to floats for LTTB."""
  result: list[float] = []
  for i, x in enumerate(serie.data):
    if serie.data_type == ChartDataType.DATETIME:
      if isinstance(x, datetime):
        result.append(x.timestamp())
      else:
        result.append(float(x))
    elif serie.data_type == ChartDataType.NUMBER:
      result.append(float(x))
    else:
      result.append(float(i))
  return result


def optimize_line_chart(chart: LineChart, width_px: int | None = None, enable_lttb: bool = True) -> LineChart:
  """
  Downsample a LineChart using the LTTB (Largest Triangle Three Buckets) algorithm.

  Only Y axis series with serie_type in {LINE, AREA, SCATTER} and data_type == NUMBER are
  downsampled. Series with serie_type == NONE are passed through unchanged.

  The selected X indices are determined from the first eligible Y series and applied
  consistently to all eligible series and to x_axis.data.

  :param chart: The LineChart to downsample.
  :param width_px: Target number of data points (physical pixels). Defaults to 1000.
  :param enable_lttb: When False, skips downsampling entirely and returns the original chart.
  :return: A new LineChart instance with downsampled data (or the original if no downsampling needed).
  """
  if not enable_lttb:
    return chart

  target = width_px if width_px is not None else DEFAULT_TARGET

  eligible_indices = [
    i
    for i, s in enumerate(chart.y_axis)
    if s.serie_type in _ELIGIBLE_SERIE_TYPES and s.data_type == ChartDataType.NUMBER
  ]

  if not eligible_indices:
    return chart

  first_eligible = chart.y_axis[eligible_indices[0]]
  if len(first_eligible.data) <= target:
    return chart

  xs_float = _to_float_xs(chart.x_axis)
  last_y = 0.0
  ys_float: list[float] = []
  for v in first_eligible.data:
    if v is not None:
      last_y = float(v)
    ys_float.append(last_y)

  selected = _lttb(xs_float, ys_float, target)

  new_x_data = [chart.x_axis.data[i] for i in selected]
  new_x_axis = chart.x_axis.model_copy(update={'data': new_x_data})

  new_y_axis: list[ChartDataSerie] = []
  for idx, serie in enumerate(chart.y_axis):
    if idx in eligible_indices:
      new_y_data = [serie.data[i] for i in selected]
      new_y_axis.append(serie.model_copy(update={'data': new_y_data}))
    else:
      new_y_axis.append(serie)

  return chart.model_copy(update={'x_axis': new_x_axis, 'y_axis': new_y_axis})
