from uuid import UUID

from layrz_sdk.entities import Device
from layrz_sdk.entities.telemetry.devicemessage import DeviceMessage


def test_device_message() -> None:
  data = {
    'id': '019513f0-7c00-7000-8000-000000000001',
    'device_id': 10,
    'ident': '860000000000001',
    'protocol_id': 5,
    'position': {
      'latitude': 10.4806,
      'longitude': -66.9036,
      'speed': 55.0,
      'direction': 270,
    },
    'payload': {
      'position.latitude': 10.4806,
      'position.longitude': -66.9036,
      'ignition': True,
      'fuel_level': 75.5,
    },
  }
  msg = DeviceMessage.model_validate(data)

  assert msg.pk == UUID('019513f0-7c00-7000-8000-000000000001')
  assert msg.device_id == 10
  assert msg.ident == '860000000000001'
  assert msg.protocol_id == 5
  assert len(msg.position) == 4
  assert len(msg.payload) == 4


def test_device_message_methods() -> None:
  data = {
    'id': '019513f0-7c00-7000-8000-000000000001',
    'device_id': 1,
    'ident': 'dev1',
    'protocol_id': 1,
    'position': {'latitude': 10.4806, 'longitude': -66.9036},
    'payload': {},
  }
  msg = DeviceMessage.model_validate(data)

  assert msg.datum_gis == 4326
  assert msg.has_point is True
  assert msg.point_gis is not None
  assert msg.point_gis.startswith('POINT(')


def test_device_message_no_position() -> None:
  data = {
    'id': '019513f0-7c00-7000-8000-000000000001',
    'device_id': 1,
    'ident': 'dev1',
    'protocol_id': 1,
    'position': {},
    'payload': {},
  }
  msg = DeviceMessage.model_validate(data)

  assert msg.has_point is False
  assert msg.point_gis is None


def test_device_message_from_map() -> None:
  protocol_id = 5
  device = Device.model_validate(
    {
      'id': 1,
      'name': 'GPS-01',
      'ident': '860000000000001',
      'protocol_id': protocol_id,
      'protocol': 'teltonika',
      'is_primary': True,
    }
  )

  raw_payload = {
    'position.latitude': 10.4806,
    'position.longitude': -66.9036,
    'position.speed': 55.0,
    'ignition': True,
    'timestamp': 1770465935.0,
  }

  msg = DeviceMessage.parse_from_dict(raw_payload=raw_payload, device=device)

  assert msg.device_id == 1
  assert msg.ident == '860000000000001'
  assert msg.protocol_id == 5
  assert 'latitude' in msg.position
  assert 'longitude' in msg.position
  assert 'ignition' in msg.payload
