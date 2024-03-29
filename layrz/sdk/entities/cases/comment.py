""" Comment entity """
from datetime import datetime

from layrz.sdk.entities.general.user import User


class Comment:
  """
  Case comment entity definition
  ---
  Attributes
    - pk : Comment ID
    - content : Comment content
    - user : Operator/User what commented the case
    - submitted_at : Date of comment submission
  """

  def __init__(self, pk: int, content: str, user: User, submitted_at: datetime) -> None:
    """ Constructor """
    self.pk = pk
    self.content = content
    self.user = user
    self.submitted_at = submitted_at

  @property
  def _readable(self) -> str:
    """ Readable """
    return f'Comment(pk={self.pk}, content="{self.content}", user={self.user}, submitted_at={self.submitted_at})'

  def __str__(self) -> str:
    """ Readable property """
    return self._readable

  def __repr__(self) -> str:
    """ Readable property """
    return self._readable
