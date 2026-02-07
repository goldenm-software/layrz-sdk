from layrz_sdk.entities import CustomField


def test_custom_field() -> None:
  data = {'name': 'color', 'value': 'red', 'is_fixed': True}
  cf = CustomField.model_validate(data)

  assert cf.name == 'color'
  assert cf.value == 'red'
  assert cf.is_fixed is True


def test_custom_field_with_id() -> None:
  data = {'id': 5, 'name': 'size', 'value': 'large', 'is_fixed': False}
  cf = CustomField.model_validate(data)

  assert cf.pk == 5
  assert cf.name == 'size'
  assert cf.is_fixed is False
