from layrz_sdk.entities import Geofence


def test_geofence() -> None:
  data = {
    'id': 10,
    'name': 'Office',
    'color': '#FF5733',
    'geom_wgs84': {
      'type': 'Polygon',
      'coordinates': [[[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]]],
    },
    'geom_web_mercator': {
      'type': 'Polygon',
      'coordinates': [[[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]]],
    },
    'owner_id': 5,
  }
  geo = Geofence.model_validate(data)

  assert geo.pk == 10
  assert geo.name == 'Office'
  assert geo.color == '#FF5733'
  assert geo.geom_wgs84['type'] == 'Polygon'
  assert geo.owner_id == 5


def test_geofence_without_owner() -> None:
  data = {
    'id': 1,
    'name': 'Zone A',
    'color': '#00FF00',
    'geom_wgs84': {},
    'geom_web_mercator': {},
  }
  geo = Geofence.model_validate(data)

  assert geo.owner_id is None
