package enums

// PresenceType represents the type of geofence presence event.
type PresenceType string

const (
	// PresenceTypeEntrance indicates entering a geofenced area.
	PresenceTypeEntrance PresenceType = "ENTRANCE"
	// PresenceTypeExit indicates exiting a geofenced area.
	PresenceTypeExit PresenceType = "EXIT"
)
