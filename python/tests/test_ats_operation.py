from datetime import datetime, timezone

from layrz_sdk.entities import (
  AtsOperation,
  AtsOperationMovement,
  DeliveryCategories,
  OrderCategories,
  OrderStatus,
)


def test_ats_operation_movement() -> None:
  data = {
    'id': 1,
    'status': 'IN_TRANSIT',
    'created_at': 1700000000,
    'asset_id': 10,
    'operation_id': 20,
  }
  movement = AtsOperationMovement.model_validate(data)

  assert movement.pk == 1
  assert movement.status == OrderStatus.IN_TRANSIT
  assert movement.created_at == datetime.fromtimestamp(1700000000, tz=timezone.utc)
  assert movement.asset_id == 10
  assert movement.operation_id == 20


def test_ats_operation_movement_defaults() -> None:
  movement = AtsOperationMovement.model_validate({})

  assert movement.pk is None
  assert movement.status is None
  assert movement.created_at is None
  assert movement.asset_id is None
  assert movement.operation_id is None


def test_ats_operation() -> None:
  data = {
    'id': 1,
    'purchased_at': 1700000000,
    'order_status': 'DELIVERED',
    'category': 'TRANSFER',
    'deliver_category': 'SAME_STATE',
    'seller_asset_id': 10,
    'transport_asset_id': 20,
    'history': [
      {
        'id': 1,
        'status': 'GENERATED',
        'created_at': 1700000000,
        'asset_id': 10,
        'operation_id': 1,
      },
    ],
    'purchase_orders': [
      {
        'id': 5,
        'purchased_at': 1700000000,
        'order_status': 'VALIDATED',
        'order_id': 500,
        'seller_asset_id': 10,
        'asset_id': 30,
        'invoice_type': 'NFe',
      },
    ],
  }
  operation = AtsOperation.model_validate(data)

  assert operation.pk == 1
  assert operation.purchased_at == datetime.fromtimestamp(1700000000, tz=timezone.utc)
  assert operation.order_status == OrderStatus.DELIVERED
  assert operation.category == OrderCategories.TRANSFER
  assert operation.deliver_category == DeliveryCategories.SAME_STATE
  assert operation.seller_asset_id == 10
  assert operation.transport_asset_id == 20
  assert operation.finished_at is None
  assert operation.validated_at is None
  assert len(operation.history) == 1
  assert operation.history[0].pk == 1
  assert len(operation.purchase_orders) == 1
  assert operation.purchase_orders[0].order_id == 500


def test_ats_operation_serialization() -> None:
  purchased_at = datetime(2023, 11, 14, 22, 13, 20, tzinfo=timezone.utc)
  finished_at = datetime(2023, 11, 15, 22, 13, 20, tzinfo=timezone.utc)
  validated_at = datetime(2023, 11, 16, 22, 13, 20, tzinfo=timezone.utc)

  operation = AtsOperation(
    id=1,
    purchased_at=purchased_at,
    order_status=OrderStatus.VALIDATED,
    category=OrderCategories.DELIVERY_TO_RESELLER,
    deliver_category=DeliveryCategories.OTHER_STATE,
    seller_asset_id=10,
    transport_asset_id=20,
    finished_at=finished_at,
    validated_at=validated_at,
    history=[],
    purchase_orders=[],
  )

  serialized = operation.model_dump(by_alias=True)

  assert serialized['id'] == 1
  assert serialized['purchased_at'] == purchased_at.timestamp()
  assert serialized['order_status'] == 'VALIDATED'
  assert serialized['category'] == 'DELIVERY_TO_RESELLER'
  assert serialized['deliver_category'] == 'OTHER_STATE'
  assert serialized['finished_at'] == finished_at.timestamp()
  assert serialized['validated_at'] == validated_at.timestamp()
  assert serialized['history'] == []
  assert serialized['purchase_orders'] == []
