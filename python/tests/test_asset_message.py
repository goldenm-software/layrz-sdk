from datetime import datetime, timedelta

from layrz_sdk.constants import UTC
from layrz_sdk.entities import Asset, Device
from layrz_sdk.entities.telemetry.assetmessage import AssetMessage
from layrz_sdk.entities.telemetry.devicemessage import DeviceMessage


def test_asset_message() -> None:
  data = {
    'asset_id': 100,
    'position': {
      'latitude': 10.4806,
      'longitude': -66.9036,
      'speed': 55.0,
      'direction': 270,
    },
    'payload': {'ignition': True, 'fuel_level': 75.5},
    'sensors': {'speed': 55.0, 'temperature': 22.5},
    'geofences_ids': [10, 20, 30],
    'distance_traveled': 1500.75,
    'received_at': 1770465935,
    'elapsed_time': 120.5,
  }
  msg = AssetMessage.model_validate(data)

  assert msg.asset_id == 100
  assert len(msg.position) == 4
  assert len(msg.payload) == 2
  assert len(msg.sensors) == 2
  assert msg.geofences_ids == [10, 20, 30]
  assert abs(msg.distance_traveled - 1500.75) < 0.01
  assert abs(msg.received_at.timestamp() - 1770465935) < 0.001


def test_asset_message_methods() -> None:
  data = {
    'asset_id': 1,
    'position': {'latitude': 10.4806, 'longitude': -66.9036},
    'payload': {},
    'sensors': {},
    'geofences_ids': [],
    'distance_traveled': 0,
    'received_at': 1770465935,
    'elapsed_time': 0,
  }
  msg = AssetMessage.model_validate(data)

  assert msg.datum_gis == 4326
  assert msg.has_point is True
  assert msg.point_gis is not None
  assert msg.point_gis.startswith('POINT(')


def test_asset_message_no_position() -> None:
  data = {
    'asset_id': 1,
    'position': {},
    'payload': {},
    'sensors': {},
    'geofences_ids': [],
    'distance_traveled': 0,
    'received_at': 1770465935,
    'elapsed_time': 0,
  }
  msg = AssetMessage.model_validate(data)

  assert msg.has_point is False
  assert msg.point_gis is None


def test_asset_message_compute_elapsed_time() -> None:
  current = AssetMessage(
    asset_id=1,
    received_at=datetime.fromtimestamp(1770466000, tz=UTC),
  )
  previous = AssetMessage(
    asset_id=1,
    received_at=datetime.fromtimestamp(1770465900, tz=UTC),
  )

  elapsed = current.compute_elapsed_time(previous_message=previous)
  assert abs(elapsed.total_seconds() - 100.0) < 0.01


def test_asset_message_compute_elapsed_time_nil_previous() -> None:
  current = AssetMessage(
    asset_id=1,
    received_at=datetime.fromtimestamp(1770466000, tz=UTC),
  )

  elapsed = current.compute_elapsed_time(previous_message=None)
  assert elapsed == timedelta(seconds=0)


def test_asset_message_compute_distance_traveled() -> None:
  current = AssetMessage(
    asset_id=1,
    position={'latitude': 10.4806, 'longitude': -66.9036},
  )
  previous = AssetMessage(
    asset_id=1,
    position={'latitude': 10.4900, 'longitude': -66.9100},
  )

  distance = current.compute_distance_traveled(previous_message=previous)
  assert distance > 500
  assert distance < 3000


def test_asset_message_compute_distance_nil_previous() -> None:
  current = AssetMessage(
    asset_id=1,
    position={'latitude': 10.0, 'longitude': -66.0},
  )

  distance = current.compute_distance_traveled(previous_message=None)
  assert distance == 0.0


def test_asset_message_from_device_message() -> None:
  device = Device.model_validate(
    {
      'id': 1,
      'name': 'GPS-01',
      'ident': '860000000000001',
      'protocol_id': 5,
      'protocol': 'teltonika',
      'is_primary': True,
    }
  )

  raw_payload = {
    'position.latitude': 10.0,
    'position.longitude': -66.0,
    'ignition': True,
    'timestamp': 1770465935.0,
  }

  device_msg = DeviceMessage.parse_from_dict(raw_payload=raw_payload, device=device)

  asset = Asset.model_validate(
    {
      'id': 100,
      'name': 'Test Asset',
      'operation_mode': 'SINGLE',
      'devices': [
        {'id': 1, 'name': 'GPS-01', 'ident': '860000000000001', 'protocol': 'teltonika', 'is_primary': True},
      ],
    }
  )

  asset_msg = AssetMessage.parse_from_devicemessage(device_message=device_msg, asset=asset)

  assert asset_msg.asset_id == 100
  assert asset_msg.position.get('latitude') == 10.0
  assert asset_msg.distance_traveled == 0.0
