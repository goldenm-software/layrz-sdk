from datetime import datetime
from typing import Any

from pydantic import BaseModel, ConfigDict, Field, field_serializer


class RealtimeMessage(BaseModel):
  """RealtimeMessage entity"""

  model_config = ConfigDict(validate_by_name=False, validate_by_alias=True, serialize_by_alias=True)
  topic: str = Field(..., description='Defines the topic of the message')
  payload: dict[str, Any] = Field(..., description='Defines the payload of the message')
