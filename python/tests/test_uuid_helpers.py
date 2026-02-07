from datetime import datetime
from uuid import UUID

import pytest

from layrz_sdk.constants import UTC
from layrz_sdk.helpers import compose_uuid, extract_timestamp_from_uuidv7


def test_compose_uuid_lower() -> None:
  ts = datetime(2026, 2, 7, 0, 0, 0, tzinfo=UTC)
  result = compose_uuid(ts=ts, bound='lower')

  assert isinstance(result, UUID)
  assert result.version == 7


def test_compose_uuid_upper() -> None:
  ts = datetime(2026, 2, 7, 0, 0, 0, tzinfo=UTC)
  result = compose_uuid(ts=ts, bound='upper')

  assert isinstance(result, UUID)
  assert result.version == 7

  lower = compose_uuid(ts=ts, bound='lower')
  assert result > lower


def test_extract_timestamp_from_uuidv7() -> None:
  ts = datetime(2026, 2, 7, 0, 0, 0, tzinfo=UTC)
  uuid_val = compose_uuid(ts=ts, bound='lower')

  extracted = extract_timestamp_from_uuidv7(uuid_val)
  assert abs(extracted.timestamp() - ts.timestamp()) < 0.001


def test_extract_timestamp_from_non_v7_raises() -> None:
  uuid_v4 = UUID('12345678-1234-4123-8123-123456789abc')

  with pytest.raises(ValueError, match='non-UUIDv7'):
    extract_timestamp_from_uuidv7(uuid_v4)


def test_compose_uuid_roundtrip() -> None:
  ts = datetime(2026, 6, 15, 12, 30, 45, tzinfo=UTC)
  uuid_val = compose_uuid(ts=ts, bound='lower')
  extracted = extract_timestamp_from_uuidv7(uuid_val)

  assert abs(extracted.timestamp() - ts.timestamp()) < 0.001
