from enum import StrEnum


class SensorType(StrEnum):
  """
  Sensor type, read the comments for more information
  """

  CONSTANT = 'CONSTANT'
  ACCUMULATOR = 'ACCUMULATOR'
  UNPACK = 'UNPACK'
  AUTHENTICATION = 'AUTHENTICATION'
  IMAGE = 'IMAGE'
  LAMBDA = 'LAMBDA'
  SCRIPT = 'SCRIPT'
  DYNAMIC = 'DYNAMIC'
  UNKNOWN = 'UNKNOWN'


class SensorSubtype(StrEnum):
  """
  Sensor subtype, read the comments for more information
  """

  RAW = 'RAW'
  INTERVAL = 'INTERVAL'
  CONDITION = 'CONDITION'
  MESSAGE = 'MESSAGE'
  DRIVER = 'DRIVER'
  PASSENGER = 'PASSENGER'
  OPERATOR = 'OPERATOR'
  CSV = 'CSV'
  JSON = 'JSON'
  XML = 'XML'
  BASE64 = 'BASE64'
  FLESPI = 'FLESPI'
  LAYRZ = 'LAYRZ'
  UNUSED = 'UNUSED'
  PYTHON = 'PYTHON'
  V8 = 'V8'
  UNKNOWN = 'UNKNOWN'
