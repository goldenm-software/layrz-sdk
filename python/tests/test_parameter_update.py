from layrz_sdk.entities.parameter_update import ParameterUpdate


def test_parameter_update() -> None:
  data = {
    'asset_id': 100,
    'parameters': {
      'speed': {'value': 85.5, 'updated_at': 1770465935},
      'ignition': {'value': True, 'updated_at': 1770465930},
    },
  }
  pu = ParameterUpdate.model_validate(data)

  assert pu.asset_id == 100
  assert len(pu.parameters) == 2

  speed_param = pu.parameters['speed']
  assert speed_param.value == 85.5
  assert abs(speed_param.updated_at.timestamp() - 1770465935) < 0.001


def test_parameter_update_key_sanitization() -> None:
  data = {
    'asset_id': 1,
    'parameters': {
      'position__latitude': {'value': 10.4806, 'updated_at': 1770465935},
      'position__longitude': {'value': -66.9036, 'updated_at': 1770465935},
      'device__ident__status': {'value': 'active', 'updated_at': 1770465935},
    },
  }
  pu = ParameterUpdate.model_validate(data)

  assert 'position.latitude' in pu.parameters
  assert 'position.longitude' in pu.parameters
  assert 'device.ident.status' in pu.parameters
  assert 'position__latitude' not in pu.parameters
  assert 'device__ident__status' not in pu.parameters


def test_parameter_update_null_value() -> None:
  data = {
    'asset_id': 1,
    'parameters': {
      'temperature': {'updated_at': 1770465935},
    },
  }
  pu = ParameterUpdate.model_validate(data)

  param = pu.parameters['temperature']
  assert param.value is None
