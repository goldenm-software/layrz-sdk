package entities

import "github.com/goldenm-software/layrz-sdk/go/types"

// Locator represents the public location link
type Locator struct {
	// Id is the unique identifier of the locator.
	Id types.Uuid `json:"id"`
	// Token is the token string associated with the locator.
	Token string `json:"token"`
	// OwnerId is the unique identifier of the owner of the locator.
	OwnerId int64 `json:"owner_id"`
	// CreatedAt is the timestamp when the locator was created.
	CreatedAt types.UnixTime `json:"created_at"`
	// Assets is the slice of assets associated with the locator.
	Assets []Asset `json:"assets,omitempty"`
	// Geofences is the slice of geofences associated with the locator.
	Geofences []Geofence `json:"geofences,omitempty"`
	// Triggers is the slice of triggers associated with the locator.
	Triggers []Trigger `json:"triggers,omitempty"`
	// IsExpired indicates whether the locator has expired.
	IsExpired bool `json:"is_expired"`
	// ExpiresAt is the timestamp when the locator will expire.
	ExpiresAt *types.UnixTime `json:"expires_at,omitempty"`
	// CustomizationId is the identifier for any customization applied to the locator.
	CustomizationId *int64 `json:"customization_id,omitempty"`
}
