"""Chart data source enum"""

from strenum import StrEnum


class ChartDataSource(StrEnum):
  """Data source used to feed the chart"""

  MESSAGES = 'MESSAGES'
  EVENTS = 'EVENTS'
  CASES = 'CASES'
  CHECKPOINTS = 'CHECKPOINTS'
  CORE_PROCESSES = 'CORE_PROCESSES'
  ATS_OPERATIONS = 'ATS_OPERATIONS'
  ATS_PURCHASEORDERS = 'ATS_PURCHASEORDERS'
  LAST_MESSAGES = 'LAST_MESSAGES'
  LAST_EVENTS = 'LAST_EVENTS'
