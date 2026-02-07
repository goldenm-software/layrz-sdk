from datetime import datetime

from layrz_sdk.constants import UTC
from layrz_sdk.entities import Locator


def test_locator() -> None:
  data = {
    'id': 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
    'token': 'secret-token-123',
    'owner_id': 5,
    'created_at': 1770465935,
    'updated_at': 1770465935,
    'mqtt_config': {
      'host': 'broker.example.com',
      'port': 1883,
      'username': 'user',
      'password': 'pass',
      'topic': 'locator/data',
    },
    'assets': [
      {
        'id': 1,
        'name': 'Vehicle 1',
        'operation_mode': 'SINGLE',
        'devices': [
          {'id': 1, 'name': 'GPS', 'ident': 'dev1', 'protocol': 'generic', 'is_primary': True},
        ],
      },
    ],
    'geofences': [
      {'id': 1, 'name': 'Zone A', 'color': '#FF0000'},
    ],
    'triggers': [
      {'id': 1, 'name': 'Alert', 'code': 'ALERT', 'type': 'FORMULA', 'cooldown_time': 0},
    ],
    'is_expired': False,
    'expires_at': 1770552335,
  }
  loc = Locator.model_validate(data)

  assert loc.pk == 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'
  assert loc.token == 'secret-token-123'
  assert loc.owner_id == 5
  assert isinstance(loc.created_at, datetime)
  assert abs(loc.created_at.timestamp() - 1770465935) < 0.001
  assert loc.mqtt_config is not None
  assert loc.mqtt_config.host == 'broker.example.com'
  assert len(loc.assets) == 1
  assert len(loc.geofences) == 1
  assert len(loc.triggers) == 1
  assert loc.is_expired is False
  assert loc.expires_at is not None


def test_locator_expired() -> None:
  data = {
    'id': 'expired-loc',
    'token': 'old-token',
    'owner_id': 1,
    'created_at': 1770465935,
    'updated_at': 1770465935,
    'mqtt_config': None,
    'is_expired': True,
  }
  loc = Locator.model_validate(data)

  assert loc.is_expired is True
  assert loc.mqtt_config is None
  assert loc.expires_at is None
  assert len(loc.assets) == 0
