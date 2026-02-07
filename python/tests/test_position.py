from layrz_sdk.entities import Position


def test_position() -> None:
  data = {
    'latitude': 10.4806,
    'longitude': -66.9036,
    'altitude': 920.0,
    'hdop': 1.2,
    'speed': 55.0,
    'direction': 270.0,
    'satellites': 12,
  }
  pos = Position.model_validate(data)

  assert pos.latitude == 10.4806
  assert pos.longitude == -66.9036
  assert pos.altitude == 920.0
  assert pos.hdop == 1.2
  assert pos.speed == 55.0
  assert pos.direction == 270.0
  assert pos.satellites == 12


def test_position_minimal() -> None:
  data: dict = {}
  pos = Position.model_validate(data)

  assert pos.latitude is None
  assert pos.longitude is None
  assert pos.altitude is None
  assert pos.speed is None
  assert pos.direction is None


def test_position_invalid_latitude() -> None:
  data = {'latitude': 95.0, 'longitude': -66.9036}
  pos = Position.model_validate(data)

  assert pos.latitude is None
  assert pos.longitude == -66.9036
