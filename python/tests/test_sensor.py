from layrz_sdk.entities import Sensor, SensorMask


def test_sensor() -> None:
  data = {
    'id': 1,
    'name': 'Speed Sensor',
    'slug': 'speed',
    'formula': 'GET_PARAM("position.speed", 0)',
    'mask': [
      {'icon': 'speedometer', 'text': 'Low', 'color': '#00FF00', 'value': 30.0},
      {'icon': 'speedometer', 'text': 'High', 'color': '#FF0000', 'value': 120.0},
    ],
    'measuring_unit': 'km/h',
  }
  sensor = Sensor.model_validate(data)

  assert sensor.pk == 1
  assert sensor.name == 'Speed Sensor'
  assert sensor.slug == 'speed'
  assert sensor.formula == 'GET_PARAM("position.speed", 0)'
  assert sensor.measuring_unit == 'km/h'
  assert sensor.mask is not None
  assert len(sensor.mask) == 2
  assert sensor.mask[0].text == 'Low'


def test_sensor_minimal() -> None:
  data = {'id': 2, 'name': 'Temp', 'slug': 'temp'}
  sensor = Sensor.model_validate(data)

  assert sensor.formula == ''
  assert sensor.mask is None
  assert sensor.measuring_unit is None
