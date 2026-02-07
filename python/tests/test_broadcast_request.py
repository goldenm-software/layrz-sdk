from layrz_sdk.entities.broadcast import BroadcastRequest


def test_broadcast_request() -> None:
  data = {
    'parsed': {'key': 'value', 'count': 42},
    'raw': '{"key":"value","count":42}',
  }
  req = BroadcastRequest.model_validate(data)

  assert req.raw == '{"key":"value","count":42}'
  assert isinstance(req.parsed, dict)
  assert req.parsed['key'] == 'value'


def test_broadcast_request_with_array() -> None:
  data = {
    'parsed': [1, 2, 3],
    'raw': '[1,2,3]',
  }
  req = BroadcastRequest.model_validate(data)

  assert isinstance(req.parsed, list)
  assert len(req.parsed) == 3
