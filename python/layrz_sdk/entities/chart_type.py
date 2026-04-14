"""Chart type enum"""

from strenum import StrEnum


class ChartType(StrEnum):
  """Available chart types"""

  PIE = 'PIE'
  BAR = 'BAR'
  LINE = 'LINE'
  AREA = 'AREA'
  COLUMN = 'COLUMN'
  RADIALBAR = 'RADIALBAR'
  SCATTER = 'SCATTER'
  TIMELINE = 'TIMELINE'
  RADAR = 'RADAR'
  MAP = 'MAP'
  HTML = 'HTML'
  NUMBER = 'NUMBER'
  TABLE = 'TABLE'
