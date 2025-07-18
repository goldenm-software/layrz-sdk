"""Message entity"""

from datetime import datetime
from typing import Any, TypeAlias

from pydantic import BaseModel, Field

from layrz_sdk.constants import UTC

from .position import Position

PayloadType: TypeAlias = dict[str, Any]


class Message(BaseModel):
  """Message definition"""

  model_config = {
    'json_encoders': {
      datetime: lambda v: v.timestamp(),
    }
  }

  pk: int = Field(..., description='Message ID', alias='id')
  asset_id: int = Field(..., description='Asset ID')
  position: Position = Field(
    default_factory=lambda: Position(),
    description='Current position of the device',
  )
  payload: PayloadType = Field(
    default_factory=dict,
    description='Payload data of the device message',
  )
  sensors: PayloadType = Field(
    default_factory=dict,
    description='Sensor data of the device message',
  )
  received_at: datetime = Field(
    default_factory=lambda: datetime.now(UTC),
    description='Timestamp when the message was received',
  )
