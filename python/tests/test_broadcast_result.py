import pytest
from pydantic import ValidationError

from layrz_sdk.entities.broadcast import BroadcastStatus, RawBroadcastResult


def _build(status: str) -> RawBroadcastResult:
  return RawBroadcastResult.model_validate({'service_id': 1, 'asset_id': 2, 'status': status, 'at': 1700000000})


@pytest.mark.parametrize(
  ('raw', 'expected'),
  [
    ('OK', BroadcastStatus.OK),
    ('BADREQUEST', BroadcastStatus.BAD_REQUEST),
    ('BAD_REQUEST', BroadcastStatus.BAD_REQUEST),
    ('INTERNAL_ERROR', BroadcastStatus.INTERNAL_ERROR),
    ('INTERNALERROR', BroadcastStatus.INTERNAL_ERROR),
  ],
)
def test_status_aliases(raw: str, expected: BroadcastStatus) -> None:
  assert _build(raw).status == expected


def test_invalid_status_lists_all_values() -> None:
  with pytest.raises(ValidationError) as exc:
    _build('NOPE')
  assert '"OK"' in str(exc.value)
