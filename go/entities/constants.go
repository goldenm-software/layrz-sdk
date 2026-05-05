package entities

// RejectedKeys mirrors Python's layrz_sdk.constants.REJECTED_KEYS.
// These raw telemetry keys are not copied into the DeviceMessage payload.
var RejectedKeys = map[string]struct{}{
	"timestamp":        {},
	"ident":            {},
	"server.timestamp": {},
	"protocol.id":      {},
	"channel.id":       {},
	"device.name":      {},
	"device.id":        {},
	"device.type.id":   {},
}
