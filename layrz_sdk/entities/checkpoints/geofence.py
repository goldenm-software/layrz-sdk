""" Geofence entity """
from typing import Self


class Geofence:
  """
  Geofence entity definition
  ---
  Attributes
    - pk : Geofence ID
    - name : Geofence name
    - color : Geofence color in Hex format
  """

  def __init__(self: Self, pk: int, name: str, color: str) -> None:
    """ Constructor """
    self.pk = pk
    self.name = name
    self.color = color

  @property
  def _readable(self: Self) -> str | None | bool:
    """ Readable """
    return f'Geofence(pk={self.pk}, name={self.name}, color={self.color})'

  def __str__(self: Self) -> str | None | bool:
    """ Readable property """
    return self._readable

  def __repr__(self: Self) -> str | None | bool:
    """ Readable property """
    return self._readable
