from datetime import time, timedelta

from layrz_sdk.entities import Trigger
from layrz_sdk.entities.trigger_kind import TriggerCaseKind, TriggerGeofenceKind, TriggerKind
from layrz_sdk.entities.weekday import Weekday


def test_trigger_formula() -> None:
  data = {
    'id': 1,
    'name': 'Speed Alert',
    'code': 'SPEED_ALERT',
    'type': 'FORMULA',
    'cooldown_time': 300,
    'formula': 'GET_SENSOR("speed") > 120',
    'parameters': ['speed'],
    'priority': 1,
    'color': '#FF0000',
  }
  trigger = Trigger.model_validate(data)

  assert trigger.pk == 1
  assert trigger.name == 'Speed Alert'
  assert trigger.code == 'SPEED_ALERT'
  assert trigger.type_ == TriggerKind.FORMULA
  assert trigger.cooldown_time == timedelta(seconds=300)
  assert trigger.formula == 'GET_SENSOR("speed") > 120'
  assert trigger.parameters == ['speed']
  assert trigger.priority == 1
  assert trigger.color == '#FF0000'


def test_trigger_presence() -> None:
  data = {
    'id': 2,
    'name': 'Geofence Entry',
    'code': 'GEO_ENTRY',
    'type': 'PRESENCEINGEOFENCE',
    'presence_type': 'ENTRANCE',
    'cooldown_time': 0,
  }
  trigger = Trigger.model_validate(data)

  assert trigger.type_ == TriggerKind.PRESENCE_IN_GEOFENCE
  assert trigger.presence_type == TriggerGeofenceKind.ENTRANCE


def test_trigger_scheduled() -> None:
  data = {
    'id': 3,
    'name': 'Daily Report',
    'code': 'DAILY_REPORT',
    'type': 'EXACTTIME',
    'exact_hour': '08:00:00',
    'weekdays': ['MON', 'TUE', 'WED', 'THU', 'FRI'],
    'timezone_id': 1,
    'cooldown_time': 0,
  }
  trigger = Trigger.model_validate(data)

  assert trigger.type_ == TriggerKind.EXACT_TIME
  assert trigger.exact_hour == time(8, 0, 0)
  assert len(trigger.weekdays) == 5
  assert Weekday.MONDAY in trigger.weekdays
  assert trigger.timezone_id == 1


def test_trigger_case_changes() -> None:
  data = {
    'id': 4,
    'name': 'Case Follow',
    'code': 'CASE_FOLLOW',
    'type': 'CASES_CHANGES',
    'case_type': 'ON_FOLLOW',
    'cooldown_time': 0,
  }
  trigger = Trigger.model_validate(data)

  assert trigger.type_ == TriggerKind.CASES_CHANGES
  assert trigger.case_type == TriggerCaseKind.ON_FOLLOW


def test_trigger_serialization() -> None:
  data = {
    'id': 1,
    'name': 'Test',
    'code': 'TEST',
    'type': 'FORMULA',
    'cooldown_time': 300,
    'weekdays': ['MON', 'FRI'],
  }
  trigger = Trigger.model_validate(data)
  dumped = trigger.model_dump(mode='json', by_alias=True)

  assert dumped['type'] == 'FORMULA'
  assert dumped['cooldown_time'] == 300.0
  assert dumped['weekdays'] == ['MON', 'FRI']
