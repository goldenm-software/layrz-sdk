""" Device entitiy """
from typing import Self


class Device:
  """
  Device definition
  ---
  Attributes
    - pk : Device ID
    - name : Name of the device
    - ident : Unique identifier of the device.
    - protocol : Protocol slug of the device.
    - is_primary : True if this device is the primary device of the asset.
  """

  def __init__(
    self: Self,
    pk: int,
    name: str,
    ident: str,
    protocol: str,
    is_primary: bool = False,
  ) -> None:
    """ Constructor """
    self.pk = pk
    self.name = name
    self.ident = ident
    self.protocol = protocol
    self.is_primary = is_primary

  @property
  def _readable(self: Self) -> str:
    """ Readable """
    return f'Device(pk={self.pk}, ident={self.ident}, name={self.name}, protocol={self.protocol}, ' +\
           f'is_primary={self.is_primary})'

  def __str__(self: Self) -> str:
    """ Readable property """
    return self._readable

  def __repr__(self: Self) -> str:
    """ Readable property """
    return self._readable
