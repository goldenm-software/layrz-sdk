from layrz_sdk.entities import Timezone


def test_timezone() -> None:
  data = {'id': 1, 'name': 'America/New_York', 'offset': -18000}
  tz = Timezone.model_validate(data)

  assert tz.pk == 1
  assert tz.name == 'America/New_York'
  assert tz.offset == -18000
