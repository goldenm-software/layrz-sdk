package converters

import (
	"encoding/json"
	"time"
)

const (
	NanosecondsToSeconds  = 1e9
	MicrosecondsToSeconds = 1e6
	MillisecondsToSeconds = 1e3
)

// UnixTime is a custom wrapper around time.Time to handle JSON marshalling/unmarshalling
// as a float representing seconds since epoch.
// Useful to keep precision in multi-language environments.
type UnixTime struct {
	time.Time
}

// MarshalJSON converts the UnixTime to a JSON number representing seconds since epoch
// For precision, it uses the time.Time.UnixMicro method and divide it by 1e6
func (u UnixTime) MarshalJSON() ([]byte, error) {
	return json.Marshal(float64(u.UnixMicro()) / MicrosecondsToSeconds)
}

// UnmarshalJSON parses a JSON number representing seconds since epoch into a UnixTime
// It multiplies the seconds by 1e9 to convert to nanoseconds for time.Unix
func (u *UnixTime) UnmarshalJSON(data []byte) error {
	var seconds float64
	if err := json.Unmarshal(data, &seconds); err != nil {
		return err
	}

	msec := int64(seconds * MicrosecondsToSeconds)
	u.Time = time.UnixMicro(msec)
	return nil
}
