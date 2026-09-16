package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// AtsPossibleEntry represents a possible entry entity in the ATS module.
type AtsPossibleEntry struct {
	// InitialTankLevel is the initial tank level in liters.
	InitialTankLevel float64 `json:"initial_tank_level"`
	// TankAccumulator is the tank accumulator in liters.
	TankAccumulator float64 `json:"tank_accumulator"`
	// IsReady indicates if the entry is ready.
	IsReady bool `json:"is_ready"`
	// IsValidated indicates if the entry is validated.
	IsValidated bool `json:"is_validated"`
	// StartAt is the start time of the entry.
	StartAt types.UnixTime `json:"start_at"`
	// EndAt is the end time of the entry.
	EndAt *types.UnixTime `json:"end_at,omitempty"`
	// AccumulatorHistory is the history of the tank accumulator in liters.
	AccumulatorHistory []float64 `json:"accumulator_history"`
	// IsRecalculated indicates if the entry is recalculated.
	IsRecalculated bool `json:"is_recalculated"`
	// IsBlackbox indicates if the entry is a black box.
	IsBlackbox bool `json:"is_blackbox"`
	// IsExecutedByCommand indicates if the entry is executed by command.
	IsExecutedByCommand *bool `json:"is_executed_by_command,omitempty"`
	// IsReadyByReception indicates if the entry is ready by reception.
	IsReadyByReception *bool `json:"is_ready_by_reception,omitempty"`
	// FalsePositiveCount is the count of false positives for the entry.
	FalsePositiveCount int `json:"false_positive_count"`
	// ReceptionID is the reception ID associated with the entry.
	ReceptionID *int64 `json:"reception_id,omitempty"`
}
