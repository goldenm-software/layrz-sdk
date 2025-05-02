from collections.abc import Callable
from typing import Any, Optional, Protocol

from pydantic import BaseModel, Field
from xlsxwriter import Workbook
from xlsxwriter.worksheet import Worksheet


class BuilderFunction(Protocol):
  """
  Protocol for the builder function.
  """

  def __call__(self, sheet: Worksheet, *args: Any, **kwargs: Any) -> None: ...


class CustomReportPage(BaseModel):
  """
  Custom report page
  Basically it's a wrapper of the `xlswriter` worksheet that uses a function to construct the page
  """

  name: str = Field(description='Name of the page. Length should be less than 60 characters')
  builder: BuilderFunction = Field(
    description=(
      'Function to build the page. The first argument is the worksheet object, followed by optional arguments'
    ),
  )
