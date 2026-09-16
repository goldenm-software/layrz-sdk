package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// AtsReception represents a reception entity in the ATS module.
type AtsReception struct {
	// ID is the primary key of the reception.
	ID int64 `json:"id"`
	// VolumeBought is the volume bought in liters.
	VolumeBought float64 `json:"volume_bought"`
	// RealVolume is the real volume in liters.
	RealVolume *float64 `json:"real_volume,omitempty"`
	// ReceivedAt is the date and time when the reception was made.
	ReceivedAt types.UnixTime `json:"received_at"`
	// FuelType is the type of fuel used in the reception.
	FuelType string `json:"fuel_type"`
	// IsMerged indicates if the reception is merged with another.
	IsMerged bool `json:"is_merged"`
	// OrderID is the order ID associated with the reception.
	OrderID *int64 `json:"order_id,omitempty"`
}
