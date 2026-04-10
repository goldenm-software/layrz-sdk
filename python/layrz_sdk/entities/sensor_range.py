from pydantic import BaseModel, ConfigDict, Field


class SensorRange(BaseModel):
  """Sensor range entity"""

  model_config = ConfigDict(validate_by_name=False, validate_by_alias=True, serialize_by_alias=True)

  x: float = Field(description='Defines the x value of the sensor range')
  y: float = Field(description='Defines the y value of the sensor range')
