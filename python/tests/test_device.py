from layrz_sdk.entities import Device
from layrz_sdk.entities.modbus import ModbusConfig


def test_device() -> None:
  data = {
    'id': 1,
    'name': 'GPS-01',
    'ident': '860000000000001',
    'protocol_id': 5,
    'protocol': 'teltonika',
    'is_primary': True,
    'modbus': {
      'port_id': 'COM1',
      'is_enabled': True,
      'parameters': [],
    },
  }
  device = Device.model_validate(data)

  assert device.pk == 1
  assert device.name == 'GPS-01'
  assert device.ident == '860000000000001'
  assert device.protocol_id == 5
  assert device.protocol == 'teltonika'
  assert device.is_primary is True
  assert device.modbus is not None
  assert isinstance(device.modbus, ModbusConfig)


def test_device_minimal() -> None:
  data = {
    'id': 2,
    'name': 'Basic Device',
    'ident': 'dev-002',
    'protocol': 'generic',
    'is_primary': False,
  }
  device = Device.model_validate(data)

  assert device.pk == 2
  assert device.protocol_id is None
  assert device.is_primary is False
  assert device.modbus is None


def test_device_marshal_roundtrip() -> None:
  data = {
    'id': 1,
    'name': 'GPS-01',
    'ident': '860000000000001',
    'protocol_id': 5,
    'protocol': 'teltonika',
    'is_primary': True,
  }
  device = Device.model_validate(data)
  dumped = device.model_dump(mode='json', by_alias=True)

  roundtrip = Device.model_validate(dumped)
  assert roundtrip.pk == device.pk
  assert roundtrip.ident == device.ident
