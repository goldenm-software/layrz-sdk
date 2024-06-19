""" Broadcast Result Response data """
from typing import Dict, List, Self


class BroadcastResponse:
  """
  Broadcast response data
  ---
  Attributes
    - json (dict|list): Parsed data
    - raw (str): Raw data
  """

  def __init__(self: Self, json: Dict | List, raw: str) -> None:
    self.json = json
    self.raw = raw

  @property
  def _readable(self: Self) -> str:
    """ Readable """
    return f'BroadcastResponse(json={self.json}, raw={self.raw})'

  def __repr__(self: Self) -> str:
    """ Readable property """
    return self._readable

  def __str__(self: Self) -> str:
    """ Readable property """
    return self._readable
