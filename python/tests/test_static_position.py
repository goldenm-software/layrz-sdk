from layrz_sdk.entities import StaticPosition


def test_static_position() -> None:
  data = {'latitude': 10.4806, 'longitude': -66.9036, 'altitude': 920.0}
  sp = StaticPosition.model_validate(data)

  assert sp.latitude == 10.4806
  assert sp.longitude == -66.9036
  assert sp.altitude == 920.0


def test_static_position_without_altitude() -> None:
  data = {'latitude': 10.4806, 'longitude': -66.9036}
  sp = StaticPosition.model_validate(data)

  assert sp.latitude == 10.4806
  assert sp.longitude == -66.9036
  assert sp.altitude is None
