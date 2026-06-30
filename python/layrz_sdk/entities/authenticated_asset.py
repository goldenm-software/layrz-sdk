# go migrated
from pydantic import BaseModel, ConfigDict, Field


class AuthenticatedAsset(BaseModel):
  """AuthenticatedAsset entity"""

  model_config = ConfigDict(
    validate_by_name=False,
    validate_by_alias=True,
    serialize_by_alias=True,
  )

  pk: int = Field(
    description='Defines the primary key of the authenticated asset',
    alias='id',
  )
  name: str = Field(description='Defines the name of the authenticated asset')
