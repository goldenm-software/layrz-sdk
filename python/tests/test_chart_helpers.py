"""Tests for optimize_line_chart (LTTB downsampling)."""

from datetime import datetime, timezone

from layrz_sdk.entities.charts.chart_data_serie import ChartDataSerie
from layrz_sdk.entities.charts.chart_data_serie_type import ChartDataSerieType
from layrz_sdk.entities.charts.chart_data_type import ChartDataType
from layrz_sdk.entities.charts.line_chart import LineChart
from layrz_sdk.helpers import DEFAULT_TARGET, optimize_line_chart


def _make_chart(
  n: int,
  x_data_type: ChartDataType = ChartDataType.NUMBER,
  y_serie_types: list[ChartDataSerieType] | None = None,
  y_data_types: list[ChartDataType] | None = None,
) -> LineChart:
  """Helper to build a LineChart with n points and one or more Y series."""
  if y_serie_types is None:
    y_serie_types = [ChartDataSerieType.LINE]
  if y_data_types is None:
    y_data_types = [ChartDataType.NUMBER] * len(y_serie_types)

  if x_data_type == ChartDataType.DATETIME:
    base = datetime(2024, 1, 1, tzinfo=timezone.utc)
    x_data = [base.replace(second=i % 60, minute=(i // 60) % 60, hour=(i // 3600) % 24) for i in range(n)]
  else:
    x_data = list(range(n))

  x_axis = ChartDataSerie(data=x_data, data_type=x_data_type, serie_type=ChartDataSerieType.NONE)

  y_axis = [
    ChartDataSerie(
      data=[float(i) * (j + 1) for i in range(n)],
      data_type=y_data_types[j],
      serie_type=y_serie_types[j],
    )
    for j in range(len(y_serie_types))
  ]

  return LineChart(x_axis=x_axis, y_axis=y_axis)


def test_passthrough_no_eligible() -> None:
  """All Y series are NONE type — chart returned unchanged (same object)."""
  chart = _make_chart(5000, y_serie_types=[ChartDataSerieType.NONE])
  result = optimize_line_chart(chart, width_px=500)
  assert result is chart


def test_passthrough_below_threshold() -> None:
  """Series has fewer points than target — returned unchanged (same object)."""
  chart = _make_chart(10)
  result = optimize_line_chart(chart, width_px=1000)
  assert result is chart


def test_passthrough_equal_threshold() -> None:
  """Series has exactly target points — returned unchanged (same object)."""
  chart = _make_chart(500)
  result = optimize_line_chart(chart, width_px=500)
  assert result is chart


def test_lttb_reduces_points() -> None:
  """5000-point series downsampled to width_px=500 produces exactly 500 points."""
  chart = _make_chart(5000)
  result = optimize_line_chart(chart, width_px=500)
  assert len(result.x_axis.data) == 500
  assert len(result.y_axis[0].data) == 500


def test_lttb_keeps_first_and_last() -> None:
  """LTTB always preserves the first and last data points."""
  chart = _make_chart(5000)
  result = optimize_line_chart(chart, width_px=500)

  assert result.x_axis.data[0] == chart.x_axis.data[0]
  assert result.x_axis.data[-1] == chart.x_axis.data[-1]
  assert result.y_axis[0].data[0] == chart.y_axis[0].data[0]
  assert result.y_axis[0].data[-1] == chart.y_axis[0].data[-1]


def test_consistent_indices_across_series() -> None:
  """Two eligible Y series share the same selected X indices after downsampling."""
  chart = _make_chart(5000, y_serie_types=[ChartDataSerieType.LINE, ChartDataSerieType.AREA])
  result = optimize_line_chart(chart, width_px=500)

  # Both y series and x_axis must have same length
  assert len(result.x_axis.data) == len(result.y_axis[0].data) == len(result.y_axis[1].data)

  # Verify that indices chosen are the same for both series by checking x correspondence
  # (Since both series were downsampled together using the same indices, their values
  # should be a consistent subset of the original data.)
  original_x = chart.x_axis.data
  original_y0 = chart.y_axis[0].data
  original_y1 = chart.y_axis[1].data

  for rx, ry0, ry1 in zip(result.x_axis.data, result.y_axis[0].data, result.y_axis[1].data, strict=True):
    idx = original_x.index(rx)
    assert original_y0[idx] == ry0
    assert original_y1[idx] == ry1


def test_non_eligible_series_passthrough() -> None:
  """NONE-type series data is passed through untouched while eligible series are downsampled."""
  chart = _make_chart(
    5000,
    y_serie_types=[ChartDataSerieType.LINE, ChartDataSerieType.NONE],
    y_data_types=[ChartDataType.NUMBER, ChartDataType.NUMBER],
  )
  result = optimize_line_chart(chart, width_px=500)

  # Eligible series is downsampled
  assert len(result.y_axis[0].data) == 500
  # NONE series is unchanged
  assert result.y_axis[1].data is chart.y_axis[1].data


def test_default_target_used_when_none() -> None:
  """width_px=None uses DEFAULT_TARGET (1000)."""
  n = DEFAULT_TARGET + 500
  chart = _make_chart(n)
  result = optimize_line_chart(chart, width_px=None)
  assert len(result.x_axis.data) == DEFAULT_TARGET


def test_does_not_mutate_input() -> None:
  """optimize_line_chart must not modify the original chart."""
  chart = _make_chart(5000)
  original_x_len = len(chart.x_axis.data)
  original_y_len = len(chart.y_axis[0].data)

  optimize_line_chart(chart, width_px=500)

  assert len(chart.x_axis.data) == original_x_len
  assert len(chart.y_axis[0].data) == original_y_len


def test_datetime_x_axis() -> None:
  """LTTB works correctly when x_axis.data_type is DATETIME."""
  chart = _make_chart(5000, x_data_type=ChartDataType.DATETIME)
  result = optimize_line_chart(chart, width_px=500)
  assert len(result.x_axis.data) == 500
  assert result.x_axis.data[0] == chart.x_axis.data[0]
  assert result.x_axis.data[-1] == chart.x_axis.data[-1]


def test_scatter_type_eligible() -> None:
  """SCATTER serie_type with NUMBER data_type is eligible for downsampling."""
  chart = _make_chart(5000, y_serie_types=[ChartDataSerieType.SCATTER])
  result = optimize_line_chart(chart, width_px=500)
  assert len(result.y_axis[0].data) == 500


def test_non_number_data_type_passthrough() -> None:
  """A LINE series with data_type != NUMBER is not eligible and passes through unchanged."""
  chart = _make_chart(
    5000,
    y_serie_types=[ChartDataSerieType.LINE, ChartDataSerieType.LINE],
    y_data_types=[ChartDataType.NUMBER, ChartDataType.STRING],
  )
  result = optimize_line_chart(chart, width_px=500)

  # NUMBER series is downsampled
  assert len(result.y_axis[0].data) == 500
  # STRING series is unchanged
  assert result.y_axis[1].data is chart.y_axis[1].data
