from layrz_sdk.entities import OutboundService


def test_outbound_service() -> None:
  data = {
    'id': 5,
    'name': 'MQTT Service',
    'protocol_name': 'mqtt',
    'mqtt_topic': 'devices/data',
    'is_consumpted': True,
    'credentials': {'host': 'broker.example.com', 'port': 1883},
  }
  svc = OutboundService.model_validate(data)

  assert svc.pk == 5
  assert svc.name == 'MQTT Service'
  assert svc.protocol_name == 'mqtt'
  assert svc.mqtt_topic == 'devices/data'
  assert svc.is_consumpted is True
  assert len(svc.credentials) == 2


def test_outbound_service_minimal() -> None:
  data = {'id': 1, 'name': 'HTTP Service', 'is_consumpted': False, 'credentials': {}}
  svc = OutboundService.model_validate(data)

  assert svc.protocol_name is None
  assert svc.mqtt_topic is None
