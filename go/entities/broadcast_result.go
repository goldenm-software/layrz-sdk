package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// RawBroadcastResult represents the result of a broadcast operation.
type RawBroadcastResult struct {
	// Id is the unique identifier of the broadcast result.
	Id *int64 `json:"id,omitempty"`
	// TriggerId is the unique identifier of the trigger.
	TriggerId *int64 `json:"trigger_id,omitempty"`
	// Trigger is the name of the trigger that initiated the broadcast.
	Trigger *map[string]any `json:"trigger,omitempty"`
	// ServiceId is the unique identifier of the service.
	ServiceId *int64 `json:"service_id,omitempty"`
	// Service is the name of the service to which the broadcast was sent.
	Service *map[string]any `json:"service,omitempty"`
	// AssetId is the unique identifier of the asset.
	AssetId *int64 `json:"asset_id,omitempty"`
	// Asset is the name of the asset associated with the broadcast.
	Asset *map[string]any `json:"asset,omitempty"`
	// Algorithm is the name of the algorithm used for the broadcast.
	Algorithm *string `json:"algorithm,omitempty"`
	// Request is the request payload sent to the service.
	Request map[string]any `json:"request"`
	// Response is the response payload received from the service.
	Response map[string]any `json:"response"`
	// Error is the error message, if any, encountered during the broadcast operation.
	Error map[string]any `json:"error,omitempty"`
	// SubmittedAt is the timestamp when the broadcast was submitted.
	SubmittedAt types.UnixTime `json:"at,omitempty"`
	// Status is the status of the broadcast operation (e.g., "success", "failure").
	Status BroadcastStatus `json:"status,omitempty"`
}
