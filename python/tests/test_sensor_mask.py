from layrz_sdk.entities import SensorMask


def test_sensor_mask() -> None:
  data = {'icon': 'warning', 'text': 'High Temperature', 'color': '#FF0000', 'value': 95.5}
  sm = SensorMask.model_validate(data)

  assert sm.icon == 'warning'
  assert sm.text == 'High Temperature'
  assert sm.color == '#FF0000'
  assert sm.value == 95.5


def test_sensor_mask_string_value() -> None:
  data = {'icon': 'check', 'text': 'OK', 'color': '#00FF00', 'value': 'active'}
  sm = SensorMask.model_validate(data)

  assert sm.value == 'active'
