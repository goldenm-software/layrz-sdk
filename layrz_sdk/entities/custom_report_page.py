from collections.abc import Callable

from pydantic import BaseModel, Field
from xlsxwriter import Workbook
from xlsxwriter.worksheet import Worksheet


class CustomReportPage(BaseModel):
  """
  Custom report page
  Basically it's a wrapper of the `xlswriter` worksheet that uses a function to construct the page
  """

  name: str = Field(description='Name of the page. Length should be less than 60 characters')
  builder: Callable[[Worksheet, Workbook | None], None] = Field(
    description='Function to build the page. The only argument is the worksheet object',
  )
