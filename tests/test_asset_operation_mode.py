from layrz_sdk.entities import AssetOperationMode

"""Tests for AssetOperationMode enum."""


def test_asset_operation_mode_enum_members() -> None:
  """Test that all enum members exist and have the correct values."""
  assert AssetOperationMode.SINGLE.value == 'SINGLE'
  assert AssetOperationMode.MULTIPLE.value == 'MULTIPLE'
  assert AssetOperationMode.ASSETMULTIPLE.value == 'ASSETMULTIPLE'
  assert AssetOperationMode.DISCONNECTED.value == 'DISCONNECTED'
  assert AssetOperationMode.STATIC.value == 'STATIC'
  assert AssetOperationMode.ZONE.value == 'ZONE'


def test_asset_operation_mode_str() -> None:
  """Test the __str__ method."""
  assert str(AssetOperationMode.SINGLE) == 'SINGLE'
  assert str(AssetOperationMode.MULTIPLE) == 'MULTIPLE'
  assert str(AssetOperationMode.ASSETMULTIPLE) == 'ASSETMULTIPLE'
  assert str(AssetOperationMode.DISCONNECTED) == 'DISCONNECTED'
  assert str(AssetOperationMode.STATIC) == 'STATIC'
  assert str(AssetOperationMode.ZONE) == 'ZONE'


def test_asset_operation_mode_repr() -> None:
  """Test the __repr__ method."""
  assert repr(AssetOperationMode.SINGLE) == 'AssetOperationMode.SINGLE'
  assert repr(AssetOperationMode.MULTIPLE) == 'AssetOperationMode.MULTIPLE'
  assert repr(AssetOperationMode.ASSETMULTIPLE) == 'AssetOperationMode.ASSETMULTIPLE'
  assert repr(AssetOperationMode.DISCONNECTED) == 'AssetOperationMode.DISCONNECTED'
  assert repr(AssetOperationMode.STATIC) == 'AssetOperationMode.STATIC'
  assert repr(AssetOperationMode.ZONE) == 'AssetOperationMode.ZONE'
