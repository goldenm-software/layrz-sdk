# go migrated
from datetime import timedelta
from typing import Any

from pydantic import BaseModel, ConfigDict, Field, field_validator

from .sensor_mask import SensorMask
from .sensor_range import SensorRange
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

  script: str = Field(
    default='',
    description='Defines the script of the sensor, used for data processing',
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

  has_validator: bool = Field(
    default=False,
    description='Indicates whether the sensor has a validator, used for data validation',
  )

  min_value: float | int | None = Field(
    default=None,
    description='Defines the minimum value of the sensor, used for validation',
  )

  max_value: float | int | None = Field(
    default=None,
    description='Defines the maximum value of the sensor, used for validation',
  )

  is_instant: bool = Field(
    default=False,
    description='Indicates whether the sensor is instant, meaning it provides real-time data',
  )

  ranges: list[SensorRange] = Field(
    default_factory=list,
    description='Defines the ranges of the sensor, used for categorizing data',
  )

  has_headers: bool = Field(
    default=False,
    description='Indicates whether the sensor has headers, used for data representation',
  )

  headers: list[str] = Field(
    default_factory=list,
    description='Defines the headers of the sensor, used for data representation',
  )

  csv_separator: str = Field(
    default=',',
    description='Defines the CSV separator of the sensor, used for data representation',
  )

  parameter: str = Field(
    default='',
    description='Defines the parameter of the sensor, used for data mapping',
  )

  parent_id: int | None = Field(
    default=None,
    description='Defines the parent ID of the sensor, used for hierarchical relationships',
  )

  function_id: int | None = Field(
    default=None,
    description='Defines the function ID of the sensor, used for data processing',
  )

  is_legacy: bool = Field(
    default=False,
    description='Indicates whether the sensor is legacy, meaning it is an older version',
  )

  max_history_search: timedelta = Field(
    default=timedelta(minutes=1),
    description='Defines the maximum history search duration for the sensor, used for data retrieval',
  )
