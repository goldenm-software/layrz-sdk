package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// AtsPossibleExit represents a possible exit entity in the ATS module.
type AtsPossibleExit struct {
	// ID is the primary key of the possible exit.
	ID int64 `json:"id"`
	// Identifier is a nullable identifier for the exit.
	Identifier *int64 `json:"identifier,omitempty"`
	// InitialTankVolume is the initial tank volume in liters.
	InitialTankVolume *float64 `json:"initial_tank_volume,omitempty"`
	// InitialFluxometer is the initial fluxometer reading in liters.
	InitialFluxometer *float64 `json:"initial_fluxometer,omitempty"`
	// TotalLiters is the total liters of fuel involved in the exit.
	TotalLiters float64 `json:"total_liters"`
	// IsReady indicates if the exit is ready.
	IsReady bool `json:"is_ready"`
	// InProgress indicates if the exit is in progress.
	InProgress bool `json:"in_progress"`
	// IsValidated indicates if the exit is validated.
	IsValidated bool `json:"is_validated"`
	// StartAt is the timestamp when the exit started.
	StartAt types.UnixTime `json:"start_at"`
	// EndAt is the timestamp when the exit ended.
	EndAt *types.UnixTime `json:"end_at,omitempty"`
	// IsRecalculated indicates if the exit has been recalculated.
	IsRecalculated bool `json:"is_recalculated"`
	// IsBlackbox indicates if the exit is a blackbox.
	IsBlackbox *bool `json:"is_blackbox,omitempty"`
	// FalsePositiveCount is the count of false positives detected.
	FalsePositiveCount *int `json:"false_positive_count,omitempty"`
}
