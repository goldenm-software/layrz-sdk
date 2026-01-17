package entities

import "github.com/goldenm-software/layrz-sdk/types"

// Preset is the programmed response under some conditions on triggers and assets for cases
type Preset struct {
	// ID is the unique identifier for the preset in Layrz system.
	ID int64 `json:"id"`
	// Name is the name of the preset.
	Name string `json:"name"`
	// ValidBefore defines the expiration date of the preset. If nil, the preset does not expire.
	ValidBefore types.UnixTime `json:"valid_before"`
	// Comment is the value that will be applied when the preset is activated.
	Comment string `json:"comment"`
	// OwnerId is the identifier of the user who owns the preset.
	OwnerId int64 `json:"owner_id"`
}
