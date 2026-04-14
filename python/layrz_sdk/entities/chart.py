"""Chart entity"""

from pydantic import BaseModel, Field

from .chart_algorithm import ChartAlgorithm
from .chart_data_source import ChartDataSource
from .chart_type import ChartType


class Chart(BaseModel):
  """Represents a chart configuration object"""

  id: int = Field(description='Chart ID')
  name: str = Field(description='Chart name')
  description: str | None = Field(default=None, description='Chart description')

  chart: ChartType = Field(description='Chart type')
  algorithm: ChartAlgorithm = Field(description='Algorithm used to compute the chart data')
  data_source: ChartDataSource = Field(description='Data source used to feed the chart')

  script: str | None = Field(default=None, description='Python script for PYTHON algorithm charts')
  sensors: list[str] = Field(default_factory=list, description='Sensor slugs for AUTO algorithm charts')
  enable_lttb: bool = Field(default=True, description='Whether LTTB downsampling is enabled')

  asset_ids: list[int] = Field(default_factory=list, description='IDs of assets bound to this chart')
