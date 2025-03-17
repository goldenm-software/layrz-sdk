"""Broadcast Result Request data"""

from typing import Any

from pydantic import BaseModel, Field


class BroadcastRequest(BaseModel):
  """Broadcast request data"""

  json: Any = Field(description='Parsed data')
  raw: str = Field(description='Raw data')
