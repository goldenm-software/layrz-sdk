"""Chart algorithm enum"""

from strenum import StrEnum


class ChartAlgorithm(StrEnum):
  """Algorithm used to compute the chart data"""

  PYTHON = 'PYTHON'
  LCL = 'LCL'
  AUTO = 'AUTO'
