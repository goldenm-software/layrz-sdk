package converters

import (
	"encoding/json"
	"time"
)

// Duration is a custom wrapper around time.Duration to handle JSON marshalling/unmarshalling in seconds.
// Useful to keep precision in multi-language environments.
type Duration struct {
	time.Duration
}

func (d Duration) MarshalJSON() ([]byte, error) {
	return json.Marshal(d.Seconds())
}

func (d *Duration) UnmarshalJSON(data []byte) error {
	var seconds float64
	if err := json.Unmarshal(data, &seconds); err != nil {
		return err
	}
	d.Duration = time.Duration(seconds * float64(time.Second))
	return nil
}
