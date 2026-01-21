package entities

import "github.com/goldenm-software/layrz-sdk/go/types"

// Timezone represents a timezone with its name and offset.
type Timezone struct {
	// ID is the unique identifier for the timezone in Layrz system.
	ID int64 `json:"id"`
	// Name is the name of the timezone (e.g., "America/New_York").
	Name string `json:"name"`
	// Offset is the UTC offset of the timezone
	Offset types.Duration `json:"offset"`
}
