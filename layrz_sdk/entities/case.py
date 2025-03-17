"""Events entitites"""

import sys
from datetime import datetime
from typing import Any, Dict, List, Optional

from pydantic import BaseModel, Field, model_validator

from .case_ignored_status import CaseIgnoredStatus
from .case_status import CaseStatus
from .comment import Comment
from .trigger import Trigger

if sys.version_info >= (3, 11):
  from typing import Self
else:
  from typing_extensions import Self


class Case(BaseModel):
  """Case entity"""

  pk: int = Field(description='Defines the primary key of the case')
  trigger: Trigger = Field(description='Defines the trigger of the case')
  asset_id: int = Field(description='Defines the asset ID of the case')
  comments: List[Comment] = Field(default_factory=list, description='Defines the comments of the case')
  opened_at: datetime = Field(description='Defines the date when the case was opened')
  closed_at: Optional[datetime] = Field(default=None, description='Defines the date when the case was closed')
  status: CaseStatus = Field(description='Defines the status of the case', default=CaseStatus.CLOSED)
  ignored_status: CaseIgnoredStatus = Field(
    description='Defines the ignored status of the case',
    default=CaseIgnoredStatus.NORMAL,
  )
  sequence: Optional[int | str] = Field(
    default=None,
    description='Defines the sequence of the case. This is a unique identifier for the case',
  )

  @model_validator(mode='before')
  def _validate_model(cls: Self, data: Dict[str, Any]) -> Dict[str, Any]:
    """Validate model"""
    sequence = data.get('sequence')
    if sequence is not None and isinstance(sequence, int):
      data['sequence'] = f'{data["trigger"].code}/{sequence}'
    else:
      data['sequence'] = f'GENERIC/{data["pk"]}'

    return data
