from layrz_sdk.entities.modbus import ModbusConfig, ModbusSchema


def test_modbus_config() -> None:
  data = {
    'port_id': 'COM1',
    'is_enabled': True,
    'parameters': [
      {
        'schema': 'SINGLE',
        'split_each': 2,
        'data_length': 4,
        'data_address': 100,
        'function_code': 3,
        'controller_address': 1,
      },
    ],
  }
  mc = ModbusConfig.model_validate(data)

  assert mc.port_id == 'COM1'
  assert mc.is_enabled is True
  assert len(mc.parameters) == 1

  param = mc.parameters[0]
  assert param.schema_ == ModbusSchema.SINGLE
  assert param.split_each == 2
  assert param.data_length == 4
  assert param.data_address == 100
  assert param.function_code == 3
  assert param.controller_address == 1
