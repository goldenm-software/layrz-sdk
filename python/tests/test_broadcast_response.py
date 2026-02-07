from layrz_sdk.entities.broadcast import BroadcastResponse


def test_broadcast_response() -> None:
  data = {
    'parsed': {'status': 'ok', 'code': 200},
    'raw': '{"status":"ok","code":200}',
  }
  resp = BroadcastResponse.model_validate(data)

  assert resp.raw == '{"status":"ok","code":200}'
  assert isinstance(resp.parsed, dict)
  assert resp.parsed['status'] == 'ok'
