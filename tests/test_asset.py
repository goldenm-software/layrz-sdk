import pytest

from layrz_sdk.entities.asset import Asset
from layrz_sdk.entities.asset_operation_mode import AssetOperationMode
from layrz_sdk.entities.custom_field import CustomField
from layrz_sdk.entities.device import Device
from layrz_sdk.entities.sensor import Sensor

"""Tests for Asset class."""

primary_device = Device(pk=1, name='Primary Device', ident='test', protocol='test', is_primary=True)


def test_assets_creation() -> None:
  """Test the creation of an Asset instance with valid data."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.SINGLE,
    sensors=[],
    custom_fields=[],
    devices=[Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=True)],
    children=[],
  )
  assert asset.pk == 1
  assert asset.name == 'Test Asset'
  assert asset.asset_type == 1
  assert asset.operation_mode == AssetOperationMode.SINGLE
  assert asset.sensors == []
  assert asset.custom_fields == []
  assert asset.devices == [Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=True)]
  assert asset.children == []


def test_assets_validate_model_assetmultiple() -> None:
  """Test _validate_model when operation_mode is ASSETMULTIPLE."""
  data = {
    'pk': 1,
    'name': 'Test Asset',
    'asset_type': 1,
    'operation_mode': AssetOperationMode.ASSETMULTIPLE,
    'sensors': [],
    'custom_fields': [],
    'devices': [Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=True)],
    'children': [],
  }
  asset = Asset.model_validate(data)
  assert asset.devices == []


def test_assets_validate_model_single_with_primary() -> None:
  """Test _validate_model when operation_mode is SINGLE and there's a primary device."""
  data = {
    'pk': 1,
    'name': 'Test Asset',
    'asset_type': 1,
    'operation_mode': AssetOperationMode.SINGLE,
    'sensors': [],
    'custom_fields': [],
    'devices': [primary_device, Device(pk=2, name='Secondary Device', ident='test', protocol='test', is_primary=False)],
    'children': [],
  }
  asset = Asset.model_validate(data)
  assert asset.devices == [primary_device]


def test_assets_validate_model_single_without_primary() -> None:
  """Test _validate_model when operation_mode is SINGLE and there's no primary device."""
  data = {
    'pk': 1,
    'name': 'Test Asset',
    'asset_type': 1,
    'operation_mode': AssetOperationMode.SINGLE,
    'sensors': [],
    'custom_fields': [],
    'devices': [Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=False)],
    'children': [],
  }
  with pytest.raises(ValueError, match='Single asset must have a primary device'):
    Asset.model_validate(data)


def test_assets_validate_model_other_operation_mode() -> None:
  """Test _validate_model when operation_mode is not ASSETMULTIPLE or SINGLE."""
  data = {
    'pk': 1,
    'name': 'Test Asset',
    'asset_type': 1,
    'operation_mode': AssetOperationMode.MULTIPLE,
    'sensors': [],
    'custom_fields': [],
    'devices': [Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=True)],
    'children': [
      Asset(
        pk=2,
        name='Child Asset',
        asset_type=1,
        operation_mode=AssetOperationMode.SINGLE,
        sensors=[],
        custom_fields=[],
        devices=[],
        children=[],
      )
    ],
  }
  asset = Asset.model_validate(data)
  assert asset.children == []


def test_assets_primary_property_single_with_primary() -> None:
  """Test primary property when operation_mode is SINGLE and a primary device exists."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.SINGLE,
    sensors=[],
    custom_fields=[],
    devices=[primary_device, Device(pk=2, name='Secondary Device', ident='test', protocol='test', is_primary=False)],
    children=[],
  )
  assert asset.primary == primary_device


def test_assets_primary_property_single_without_primary() -> None:
  """Test primary property when operation_mode is SINGLE and no primary device exists."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.SINGLE,
    sensors=[],
    custom_fields=[],
    devices=[Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=False)],
    children=[],
  )
  assert asset.primary is None


def test_assets_primary_property_multiple_with_primary() -> None:
  """Test primary property when operation_mode is MULTIPLE and a primary device exists."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.MULTIPLE,
    sensors=[],
    custom_fields=[],
    devices=[primary_device, Device(pk=2, name='Secondary Device', ident='test', protocol='test', is_primary=False)],
    children=[],
  )
  assert asset.primary == primary_device


def test_assets_primary_property_multiple_without_primary() -> None:
  """Test primary property when operation_mode is MULTIPLE and no primary device exists."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.MULTIPLE,
    sensors=[],
    custom_fields=[],
    devices=[Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=False)],
    children=[],
  )
  assert asset.primary is None


def test_assets_primary_property_other_operation_mode() -> None:
  """Test primary property when operation_mode is not SINGLE or MULTIPLE."""
  asset = Asset(
    pk=1,
    name='Test Asset',
    asset_type=1,
    operation_mode=AssetOperationMode.DISCONNECTED,
    sensors=[],
    custom_fields=[],
    devices=[Device(pk=1, name='Test Device', ident='test', protocol='test', is_primary=True)],
    children=[],
  )
  assert asset.primary is None
