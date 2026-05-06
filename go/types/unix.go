package types

import (
	"encoding/json"
	"strconv"
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

// UnmarshalJSON parses a JSON number or string representing seconds since epoch into a UnixTime.
// Accepts both numeric (1234567890.123) and string ("1234567890.123") forms for cross-language compatibility.
func (u *UnixTime) UnmarshalJSON(data []byte) error {
	var seconds float64
	if err := json.Unmarshal(data, &seconds); err != nil {
		var s string
		if err2 := json.Unmarshal(data, &s); err2 != nil {
			return err
		}
		f, err3 := strconv.ParseFloat(s, 64)
		if err3 != nil {
			return err3
		}
		seconds = f
	}

	u.Time = time.UnixMicro(int64(seconds * MicrosecondsToSeconds))
	return nil
}
