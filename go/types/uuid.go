package types

import (
	"encoding/binary"
	"time"

	"github.com/google/uuid"
)

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

// TimestampFromV7 extracts the timestamp from a UUIDv7.
// Returns nil if the UUID is not version 7.
func (u Uuid) TimestampFromV7() *time.Time {
	libUUID := uuid.UUID(u)
	if libUUID.Version() != 7 {
		return nil
	}

	// UUIDv7: first 48 bits are Unix timestamp in milliseconds
	msec := int64(binary.BigEndian.Uint16(libUUID[0:2]))<<32 |
		int64(binary.BigEndian.Uint32(libUUID[2:6]))

	t := time.UnixMilli(msec).UTC()
	return &t
}
