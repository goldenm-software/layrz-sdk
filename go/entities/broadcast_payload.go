package entities

import "github.com/goldenm-software/layrz-sdk/go/v4/types"

// BroadcastPayload represents the payload data for broadcasting.
type BroadcastPayload struct {
	// Asset is the Asset object related to the broadcast.
	Asset Asset `json:"asset"`
	// PrimaryDevice is the primary Device object related to the broadcast.
	PrimaryDevice *Device `json:"primary_device,omitempty"`
	// Trigger is the event or condition that triggered the broadcast.
	Trigger *Trigger `json:"trigger,omitempty"`
	// MessageId is the identifier of the message being broadcasted.
	MessageId types.Uuid `json:"message_id"`
	// Service is the BroadcastService used for the broadcast.
	Service *BroadcastService `json:"service,omitempty"`
	// Position is the map containing position data related to the broadcast.
	Position map[string]any `json:"position"`
	// Payload is the actual data being broadcasted.
	Payload map[string]any `json:"payload"`
	// Sensors is the map containing sensor data related to the broadcast.
	Sensors map[string]any `json:"sensors"`
	// ReceivedAt is the timestamp when the broadcast was received.
	ReceivedAt types.UnixTime `json:"received_at"`
	// Locator is the Locator object related to the broadcast.
	Locator *Locator `json:"locator,omitempty"`
}
