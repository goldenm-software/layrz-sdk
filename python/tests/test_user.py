from layrz_sdk.entities import User


def test_user() -> None:
  data = {'id': 42, 'name': 'John Doe'}
  user = User.model_validate(data)

  assert user.pk == 42
  assert user.name == 'John Doe'

  dumped = user.model_dump(mode='json', by_alias=True)
  assert dumped['id'] == 42
  assert dumped['name'] == 'John Doe'

  roundtrip = User.model_validate(dumped)
  assert roundtrip.pk == user.pk
  assert roundtrip.name == user.name
