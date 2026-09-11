from datetime import datetime, timezone

from layrz_sdk.entities import AtsPurchaseOrder, DeliveryCategories, OrderCategories, OrderStatus


def test_ats_purchaseorder() -> None:
  data = {
    'id': 1,
    'purchased_at': 1700000000,
    'order_status': 'IN_TRANSIT',
    'order_id': 100,
    'category': 'PICKUP',
    'deliver_category': 'SAME_STATE',
    'seller_asset_id': 10,
    'transport_asset_id': 20,
    'asset_id': 30,
    'invoice_type': 'NFe',
  }
  order = AtsPurchaseOrder.model_validate(data)

  assert order.pk == 1
  assert order.purchased_at == datetime.fromtimestamp(1700000000, tz=timezone.utc)
  assert order.order_status == OrderStatus.IN_TRANSIT
  assert order.order_id == 100
  assert order.category == OrderCategories.PICKUP
  assert order.deliver_category == DeliveryCategories.SAME_STATE
  assert order.seller_asset_id == 10
  assert order.transport_asset_id == 20
  assert order.asset_id == 30
  assert order.invoice_type == 'NFe'
  assert order.seller_asset is None
  assert order.transport_asset is None
  assert order.asset is None
  assert order.delivered_at is None
  assert order.validated_at is None
  assert order.eta is None
  assert order.eta_updated_at is None
  assert order.operation_id is None
  assert order.products_information == []


def test_ats_purchaseorder_defaults() -> None:
  data = {
    'id': 2,
    'purchased_at': 1700000000,
    'order_status': 'GENERATED',
    'order_id': 200,
    'seller_asset_id': 11,
    'asset_id': 31,
    'invoice_type': 'CTe',
  }
  order = AtsPurchaseOrder.model_validate(data)

  assert order.category is None
  assert order.deliver_category is None
  assert order.transport_asset_id is None
  assert order.operation_id is None
  assert order.products_information == []


def test_ats_purchaseorder_serialization() -> None:
  purchased_at = datetime(2023, 11, 14, 22, 13, 20, tzinfo=timezone.utc)
  validated_at = datetime(2023, 11, 15, 22, 13, 20, tzinfo=timezone.utc)

  order = AtsPurchaseOrder(
    id=1,
    purchased_at=purchased_at,
    order_status=OrderStatus.VALIDATED,
    order_id=100,
    category=OrderCategories.TRANSFER,
    deliver_category=DeliveryCategories.OTHER_STATE,
    seller_asset_id=10,
    transport_asset_id=20,
    asset_id=30,
    invoice_type='NFe',
    validated_at=validated_at,
    products_information=[{'ncm': 'ABC', 'quantity': 5}],
  )

  serialized = order.model_dump(by_alias=True)

  assert serialized['id'] == 1
  assert serialized['purchased_at'] == purchased_at.timestamp()
  assert serialized['order_status'] == 'VALIDATED'
  assert serialized['category'] == 'TRANSFER'
  assert serialized['deliver_category'] == 'OTHER_STATE'
  assert serialized['validated_at'] == validated_at.timestamp()
  assert serialized['delivered_at'] is None
  assert serialized['products_information'] == [{'ncm': 'ABC', 'quantity': 5}]
