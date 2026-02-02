from datetime import datetime
from typing import Literal
from uuid import UUID

from layrz_sdk.constants import UTC


def compose_uuid(*, ts: datetime, bound: Literal['lower', 'upper']) -> UUID:
  """
  Converts a datetime to a UUIDv7 with zeroed random bits.
  """

  unix_ts_ms = int(ts.timestamp() * 1000)

  # Start with the 48-bit timestamp in the upper bits
  uuid_int = (unix_ts_ms & 0xFFFFFFFFFFFF) << 80

  # Set version 7 (bits 48-51)
  uuid_int |= 7 << 76

  # Set variant 10 (bits 62-63)
  uuid_int |= 0x8000000000000000

  if bound == 'upper':
    # Fill remaining random bits with 1s (bits 0-61 and 64-75)
    uuid_int |= (0xFFF << 64) | 0x3FFFFFFFFFFFFFFF

  return UUID(int=uuid_int)


def extract_timestamp_from_uuidv7(u: UUID) -> datetime:
  """
  Extracts the timestamp from a UUIDv7.
  Raises ValueError if the UUID is not version 7.
  """
  if u.version != 7:
    raise ValueError('Cannot extract timestamp from non-UUIDv7')

  ts = u.int >> 80
  return datetime.fromtimestamp(ts / 1000, tz=UTC)
