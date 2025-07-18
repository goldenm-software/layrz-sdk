"""Ats Reception entity"""

from datetime import datetime

from pydantic import BaseModel, Field

from layrz_sdk.constants import UTC


class AtsReception(BaseModel):
  """AtsReception entity"""

  pk: int = Field(description='Defines the primary key of the AtsReception')
  volume_bought: float = Field(
    description='Volume bought in liters',
    default=0.0,
  )
  real_volume: float | None = Field(
    description='Real volume in liters',
    default=None,
  )

  received_at: datetime = Field(
    description='Date and time when the reception was made',
    default_factory=lambda: datetime.now(UTC),
  )
