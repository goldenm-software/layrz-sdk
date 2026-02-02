from datetime import datetime
from typing import Literal
from uuid import UUID


def compose_uuid(*, ts: datetime, bound: Literal['lower', 'upper']) -> UUID:
  """
  Converts a datetime to a UUIDv7 with zeroed random bits.
  """

  unix_ts_ms = int(ts.timestamp() * 1000)
  ts_bits = unix_ts_ms << 80

  if bound == 'lower':
    rand_bits = 0x00000000000000000000
  else:
    rand_bits = 0x0000FFFFFFFFFFFFFFFFFF

  uuid_int = ts_bits | 0x70000000000000000000 | rand_bits
  return UUID(int=uuid_int)
