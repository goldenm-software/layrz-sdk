from layrz_sdk.entities import Asset
from layrz_sdk.entities.asset_operation_mode import AssetOperationMode


def test_asset() -> None:
  data = {
    'id': 100,
    'name': 'Vehicle 1',
    'vin': '1HGBH41JXMN109186',
    'plate': 'ABC-123',
    'kind_id': 5,
    'operation_mode': 'SINGLE',
    'devices': [
      {
        'id': 1,
        'name': 'GPS-01',
        'ident': '860000000000001',
        'protocol_id': 5,
        'protocol': 'teltonika',
        'is_primary': True,
      },
    ],
    'custom_fields': [
      {'name': 'color', 'value': 'red', 'is_fixed': True},
    ],
    'sensors': [
      {'id': 1, 'name': 'Speed', 'slug': 'speed'},
    ],
    'contacts': [
      {'name': 'Jane', 'phone': '+1234567890', 'email': 'jane@example.com'},
    ],
    'static_position': {'latitude': 10.4806, 'longitude': -66.9036},
    'points': [
      {'latitude': 10.0, 'longitude': -66.0},
      {'latitude': 10.1, 'longitude': -66.1},
    ],
  }
  asset = Asset.model_validate(data)

  assert asset.pk == 100
  assert asset.name == 'Vehicle 1'
  assert asset.vin == '1HGBH41JXMN109186'
  assert asset.plate == 'ABC-123'
  assert asset.kind_id == 5
  assert asset.operation_mode == AssetOperationMode.SINGLE
  assert len(asset.devices) == 1
  assert asset.devices[0].ident == '860000000000001'
  assert len(asset.custom_fields) == 1
  assert len(asset.sensors) == 1
  assert len(asset.contacts) == 1
  assert asset.static_position is not None
  assert asset.static_position.latitude == 10.4806
  assert len(asset.points) == 2
  assert len(asset.children) == 0


def test_asset_with_children() -> None:
  data = {
    'id': 200,
    'name': 'Fleet Group',
    'operation_mode': 'ASSETMULTIPLE',
    'children': [
      {
        'id': 201,
        'name': 'Child 1',
        'operation_mode': 'SINGLE',
        'devices': [
          {'id': 1, 'name': 'GPS', 'ident': 'dev1', 'protocol': 'generic', 'is_primary': True},
        ],
      },
    ],
  }
  asset = Asset.model_validate(data)

  assert asset.operation_mode == AssetOperationMode.ASSETMULTIPLE
  assert len(asset.devices) == 0
  assert len(asset.children) == 1
  assert asset.children[0].name == 'Child 1'


def test_asset_methods() -> None:
  data = {
    'id': 1,
    'name': 'Test',
    'kind_id': 5,
    'operation_mode': 'SINGLE',
    'devices': [
      {'id': 1, 'name': 'GPS', 'ident': 'dev1', 'protocol': 'generic', 'is_primary': False},
      {'id': 2, 'name': 'GPS-Primary', 'ident': 'dev2', 'protocol': 'generic', 'is_primary': True},
    ],
  }
  asset = Asset.model_validate(data)

  assert asset.primary is not None
  assert asset.primary.pk == 2
  assert asset.asset_type == 5
