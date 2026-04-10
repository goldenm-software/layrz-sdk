# go migrated
from typing import Any

from pydantic import BaseModel, ConfigDict, Field, field_validator


class SensorMask(BaseModel):
  """Sensor entity"""

  model_config = ConfigDict(
    validate_by_name=False,
    validate_by_alias=True,
    serialize_by_alias=True,
  )

  icon: str | None = Field(
    default=None,
    description='Defines the icon of the sensor',
  )
  text: str | None = Field(
    default=None,
    description='Defines the text of the sensor',
  )
  color: str | None = Field(
    default=None,
    description='Defines the color of the sensor, used for visual representation',
  )
  value: str | float | int | None = Field(
    default=None,
    description='Defines the value of the sensor, can be of various types',
  )

  @field_validator('value', mode='before')
  @classmethod
  def validate_value(cls, v: Any) -> str | float | int | None:
    """Validates the value of the sensor mask, ensuring it is of the correct type"""
    if isinstance(v, str):
      if v.isdigit():
        try:
          return float(v)
        except ValueError:
          return v

    return v
