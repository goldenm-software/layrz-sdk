from datetime import datetime

from layrz_sdk.constants import UTC
from layrz_sdk.entities import Preset


def test_preset() -> None:
  data = {
    'id': 10,
    'name': 'Speed Warning',
    'valid_before': 1770465935,
    'comment': 'Auto-generated preset',
    'owner_id': 3,
  }
  preset = Preset.model_validate(data)

  assert preset.pk == 10
  assert preset.name == 'Speed Warning'
  assert preset.comment == 'Auto-generated preset'
  assert preset.owner_id == 3
  assert isinstance(preset.valid_before, datetime)
  assert abs(preset.valid_before.timestamp() - 1770465935) < 0.001


def test_preset_roundtrip() -> None:
  data = {
    'id': 10,
    'name': 'Speed Warning',
    'valid_before': 1770465935,
    'comment': 'Auto-generated preset',
    'owner_id': 3,
  }
  preset = Preset.model_validate(data)
  dumped = preset.model_dump(mode='json', by_alias=True)

  assert abs(dumped['valid_before'] - 1770465935) < 0.001

  roundtrip = Preset.model_validate(dumped)
  assert roundtrip.pk == preset.pk
