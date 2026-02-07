from layrz_sdk.entities import AssetContact


def test_asset_contact() -> None:
  data = {'name': 'Jane', 'phone': '+1234567890', 'email': 'jane@example.com'}
  ac = AssetContact.model_validate(data)

  assert ac.name == 'Jane'
  assert ac.phone == '+1234567890'
  assert ac.email == 'jane@example.com'
