# go migrated
from __future__ import annotations

from datetime import datetime
from typing import Any
from uuid import UUID

from pydantic import BaseModel, Field, field_serializer, field_validator

from layrz_sdk.constants import UTC
from layrz_sdk.entities.asset import Asset
from layrz_sdk.entities.device import Device
from layrz_sdk.entities.locator import Locator
from layrz_sdk.entities.trigger import Trigger

from .service import BroadcastService


class BroadcastPayload(BaseModel):
  """Broadcast payload data, structure that is sent to the Outbound MQTT and other services"""

  asset: Asset = Field(..., description='Asset object')

  @field_serializer('asset', when_used='always')
  def serialize_asset(self, v: Asset) -> dict[str, Any]:
    return v.model_dump(mode='json', by_alias=True)

  primary_device: Device | None = Field(default=None, description='Primary device object')

  @field_serializer('primary_device', when_used='always')
  def serialize_primary_device(self, v: Device | None) -> dict[str, Any] | None:
    if v is None:
      return None
    return v.model_dump(mode='json', by_alias=True)

  trigger: Trigger | None = Field(default=None, description='Trigger object, if available')

  @field_serializer('trigger', when_used='always')
  def serialize_trigger(self, v: Trigger | None) -> dict[str, Any] | None:
    if v is None:
      return None
    return v.model_dump(mode='json', by_alias=True)

  message_id: UUID = Field(..., description='Message ID')

  @field_validator('message_id', mode='before')
  def validate_message_id(cls: type[BroadcastPayload], value: Any) -> UUID | None:
    """Validate the message_id field to ensure it is a valid UUIDv7 or None."""
    if value is None:
      return None

    if isinstance(value, UUID):
      return value

    try:
      uuid_obj = UUID(str(value))
      if uuid_obj.version == 7:
        return uuid_obj
    except (ValueError, AttributeError):
      pass

    raise ValueError('pk must be a valid UUIDv7 or None')

  @field_serializer('message_id', when_used='always')
  def serialize_message_id(self, v: UUID) -> str:
    return str(v)

  service: BroadcastService | None = Field(default=None, description='Broadcast service object')

  @field_serializer('service', when_used='always')
  def serialize_service(self, v: BroadcastService | None) -> dict[str, Any] | None:
    if v is None:
      return None
    return v.model_dump(mode='json', by_alias=True)

  position: dict[str, Any] = Field(default_factory=dict, description='Position data, if available')
  sensors: dict[str, Any] = Field(default_factory=dict, description='Sensors data, if available')
  payload: dict[str, Any] = Field(default_factory=dict, description='Payload data, if available')
  received_at: datetime = Field(
    default_factory=lambda: datetime.now(UTC),
    description='Broadcast payload received date',
  )

  @field_serializer('received_at', when_used='always')
  def serialize_received_at(self, v: datetime) -> float:
    return v.timestamp()

  locator: Locator | None = Field(default=None, description='Locator object, if available')

  @field_serializer('locator', when_used='always')
  def serialize_locator(self, v: Locator | None) -> dict[str, Any] | None:
    if v is None:
      return None
    return v.model_dump(mode='json', by_alias=True)
