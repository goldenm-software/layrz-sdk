package types

import (
	"strings"
	"time"
)

type Time time.Time

func (t Time) MarshalJSON() ([]byte, error) {
	formatted := time.Time(t).Format("15:04:05")
	return []byte(`"` + formatted + `"`), nil
}

func (t *Time) UnmarshalJSON(data []byte) error {
	s := strings.Trim(string(data), `"`)
	if s == "null" {
		return nil
	}

	parsed, err := time.Parse("15:04:05", s)
	if err != nil {
		return err
	}

	*t = Time(parsed)
	return nil
}
