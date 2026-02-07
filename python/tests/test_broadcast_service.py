from layrz_sdk.entities.broadcast import BroadcastService


def test_broadcast_service() -> None:
  data = {
    'id': 5,
    'name': 'Webhook Service',
    'credentials': {
      'url': 'https://example.com/webhook',
      'format': 'json',
      'auth_token': 'secret123',
    },
  }
  svc = BroadcastService.model_validate(data)

  assert svc.pk == 5
  assert svc.name == 'Webhook Service'
  assert len(svc.credentials) == 3
  assert svc.credentials['url'] == 'https://example.com/webhook'

  dumped = svc.model_dump(mode='json', by_alias=True)
  roundtrip = BroadcastService.model_validate(dumped)
  assert roundtrip.pk == svc.pk
  assert roundtrip.name == svc.name
