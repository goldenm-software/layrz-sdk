from uuid import UUID

from layrz_sdk.entities import Asset, BroadcastPayload
from layrz_sdk.entities.broadcast import BroadcastService


def test_broadcast_payload() -> None:
  data = {
    'asset': {
      'id': 100,
      'name': 'Vehicle 1',
      'operation_mode': 'SINGLE',
      'devices': [
        {
          'id': 1,
          'name': 'GPS-01',
          'ident': '860000000000001',
          'protocol': 'teltonika',
          'is_primary': True,
        },
      ],
    },
    'primary_device': {
      'id': 1,
      'name': 'GPS-01',
      'ident': '860000000000001',
      'protocol': 'teltonika',
      'is_primary': True,
    },
    'message_id': '019c4e15-9438-7000-a9b0-267d78ee7c4d',
    'service': {
      'id': 5,
      'name': 'Webhook',
      'credentials': {'url': 'https://example.com'},
    },
    'position': {'latitude': 10.4806, 'longitude': -66.9036},
    'sensors': {'speed': 55.0},
    'payload': {'ignition': True},
    'received_at': 1770465935,
  }
  bp = BroadcastPayload.model_validate(data)

  assert bp.asset.pk == 100
  assert bp.asset.name == 'Vehicle 1'
  assert bp.primary_device is not None
  assert bp.primary_device.pk == 1
  assert bp.message_id == UUID('019c4e15-9438-7000-a9b0-267d78ee7c4d')
  assert bp.service is not None
  assert bp.service.pk == 5
  assert bp.position['latitude'] == 10.4806
  assert bp.sensors['speed'] == 55.0
  assert bp.payload['ignition'] is True
  assert abs(bp.received_at.timestamp() - 1770465935) < 0.001


def test_broadcast_payload_with_trigger() -> None:
  data = {
    'asset': {
      'id': 1,
      'name': 'Vehicle',
      'operation_mode': 'SINGLE',
      'devices': [],
    },
    'trigger': {
      'id': 1,
      'name': 'Speed Alert',
      'code': 'SPEED_ALERT',
      'type': 'FORMULA',
      'cooldown_time': 0,
    },
    'message_id': '019c4e15-9438-7000-a9b0-267d78ee7c4d',
    'received_at': 1770465935,
  }
  bp = BroadcastPayload.model_validate(data)

  assert bp.trigger is not None
  assert bp.trigger.pk == 1
  assert bp.trigger.name == 'Speed Alert'


def test_broadcast_payload_roundtrip() -> None:
  data = {
    'asset': {
      'id': 1,
      'name': 'Vehicle',
      'operation_mode': 'SINGLE',
      'devices': [
        {'id': 1, 'name': 'GPS', 'ident': 'dev1', 'protocol': 'generic', 'is_primary': True},
      ],
    },
    'message_id': '019c4e15-9438-7000-a9b0-267d78ee7c4d',
    'received_at': 1770465935,
  }
  bp = BroadcastPayload.model_validate(data)
  dumped = bp.model_dump(mode='json', by_alias=True)

  assert dumped['asset']['id'] == 1
  assert dumped['asset']['name'] == 'Vehicle'

  roundtrip = BroadcastPayload.model_validate(dumped)
  assert roundtrip.asset.pk == bp.asset.pk
