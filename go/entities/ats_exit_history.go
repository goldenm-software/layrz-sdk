package entities

import (
	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

// AtsExitExecutionHistory represents the execution history of an ATS exit.
type AtsExitExecutionHistory struct {
	// ID is the primary key of the exit execution history.
	ID int64 `json:"id"`
	// FromAssetID is the ID of the asset from which the exit is initiated.
	FromAssetID int64 `json:"from_asset_id"`
	// ToAssetID is the ID of the asset to which the exit is directed.
	ToAssetID int64 `json:"to_asset_id"`
	// Status is the current status of the exit.
	Status enums.AtsExitStatus `json:"status"`
	// FromApp is the application from which the exit was initiated.
	FromApp *enums.AtsExitApp `json:"from_app,omitempty"`
	// ErrorResponse is the error response received during the exit process.
	ErrorResponse *string `json:"error_response,omitempty"`
	// GeneratedByID is the ID of the user or system that initiated the exit.
	GeneratedByID int64 `json:"generated_by_id"`
	// QueueID is the ID of the queue associated with the exit.
	QueueID *int64 `json:"queue_id,omitempty"`
	// ToAssetMileage is the mileage of the asset to which the exit is directed.
	ToAssetMileage *float64 `json:"to_asset_mileage,omitempty"`
	// CreatedAt is the timestamp when the exit was created.
	CreatedAt types.UnixTime `json:"created_at"`
	// UpdatedAt is the timestamp when the exit was last updated.
	UpdatedAt types.UnixTime `json:"updated_at"`
}
