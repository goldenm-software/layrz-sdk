# go migrated
from typing import Any

from pydantic import BaseModel, ConfigDict, Field, field_validator

from .sensor_mask import SensorMask
from .sensor_type import SensorSubtype, SensorType


class Sensor(BaseModel):
  """Sensor entity"""

  model_config = ConfigDict(
    validate_by_name=False,
    validate_by_alias=True,
    serialize_by_alias=True,
  )

  pk: int = Field(
    description='Defines the primary key of the sensor',
    alias='id',
  )
  name: str = Field(description='Defines the name of the sensor')
  slug: str = Field(description='Defines the slug of the sensor')

  type: SensorType = Field(description='Defines the type of the sensor', default=SensorType.UNKNOWN)
  subtype: SensorSubtype = Field(description='Defines the subtype of the sensor', default=SensorSubtype.UNKNOWN)

  formula: str = Field(
    default='',
    description='Defines the formula of the sensor, used for calculations',
  )

  mask: list[SensorMask] = Field(
    default_factory=list,
    description='Defines the mask of the sensor, used for filtering data',
  )

  @field_validator('mask', mode='before')
  @classmethod
  def validate_mask(cls, v: Any) -> list[SensorMask]:
    """Validates the mask of the sensor, ensuring it is a list of SensorMask"""
    if v is None:
      return []
    return v

  measuring_unit: str | None = Field(
    default=None,
    description='Defines the measuring unit of the sensor, e.g., km/h, °C',
  )
