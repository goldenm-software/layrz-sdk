from __future__ import annotations

import uuid
from datetime import datetime
from typing import Any, Self
from uuid import UUID

from pydantic import BaseModel, ConfigDict, Field, field_serializer, field_validator

from layrz_sdk.constants import REJECTED_KEYS, UTC
from layrz_sdk.entities.device import Device
from layrz_sdk.entities.message import Message
from layrz_sdk.entities.position import Position
from layrz_sdk.helpers import compose_uuid, extract_timestamp_from_uuidv7


class DeviceMessage(BaseModel):
  """Device message model"""

  model_config = ConfigDict(
    validate_by_name=False,
    validate_by_alias=True,
    serialize_by_alias=True,
  )
  pk: UUID | None = Field(
    default=None,
    description='Device message ID. On UUIDv7 format.',
    alias='id',
  )

  @field_validator('pk', mode='before')
  def validate_pk(cls: type[DeviceMessage], value: Any) -> UUID | None:
    """Validate the pk field to ensure it is a valid UUIDv7 or None."""
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

  @field_serializer('pk', when_used='always')
  def serialize_pk(self, v: UUID | None) -> str | None:
    if v is None:
      return None
    return str(v)

  ident: str = Field(..., description='Device identifier')
  device_id: int = Field(..., description='Device ID')
  protocol_id: int = Field(..., description='Protocol ID')

  position: dict[str, float | int] = Field(
    default_factory=dict,
    description='Current position of the device',
  )

  payload: dict[str, Any] = Field(
    default_factory=dict,
    description='Payload data of the device message',
  )

  @property
  def datum_gis(self: Self) -> int:
    """Get the GIS datum of the message."""
    return 4326

  @property
  def point_gis(self: Self) -> str | None:
    """Get the GIS point of the message on WKT (Well-Known Text) format for OGC (Open Geospatial Consortium)."""
    latitude = self.position.get('latitude')
    longitude = self.position.get('longitude')

    if latitude is not None and longitude is not None:
      return f'POINT({longitude} {latitude})'

    return None

  @property
  def has_point(self: Self) -> bool:
    """Check if the message has a point."""
    latitude = self.position.get('latitude')
    longitude = self.position.get('longitude')

    return latitude is not None and longitude is not None

  @classmethod
  def parse_from_dict(cls, *, raw_payload: dict[str, Any], device: Device) -> DeviceMessage:
    """Format a DeviceMessage from a dictionary."""
    if not device.protocol_id:
      raise ValueError('Device protocol_id is required to parse DeviceMessage')

    received_at: datetime
    position: dict[str, float | int] = {}
    payload: dict[str, Any] = {}

    if 'timestamp' in raw_payload:
      received_at = datetime.fromtimestamp(raw_payload['timestamp'], tz=UTC)
    else:
      received_at = datetime.now(UTC)

    for key, value in raw_payload.items():
      if key.startswith('position.'):
        if isinstance(value, (float, int)):
          position[key[9:]] = value

      if key not in REJECTED_KEYS:
        payload[key] = value

    pk = compose_uuid(ts=received_at, bound='lower')
    return cls(
      id=pk,  # type: ignore
      ident=device.ident,
      device_id=device.pk,
      protocol_id=device.protocol_id,
      position=position,
      payload=payload,
    )

  def to_message(self: Self) -> Message:
    """Convert the asset message to a Message object."""
    return Message(
      id=self.pk if self.pk is not None else 0,  # type: ignore
      asset_id=self.device_id if self.device_id is not None else 0,
      position=Position.model_validate(self.position),
      payload=self.payload,
      received_at=self.received_at,
    )

  @property
  def received_at(self: Self) -> datetime:
    return extract_timestamp_from_uuidv7(self.pk) if self.pk is not None else datetime.now(UTC)
