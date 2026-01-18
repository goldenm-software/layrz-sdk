package types

import "github.com/google/uuid"

type Uuid uuid.UUID

// UnmarshalJSON implements the json.Unmarshaler interface.
func (u *Uuid) UnmarshalJSON(data []byte) error {
	var libUUID uuid.UUID
	if err := libUUID.UnmarshalText(data); err != nil {
		return err
	}

	*u = Uuid(libUUID)
	return nil
}

// MarshalJSON implements the json.Marshaler interface.
func (u Uuid) MarshalJSON() ([]byte, error) {
	libUUID := uuid.UUID(u)
	return libUUID.MarshalText()
}
