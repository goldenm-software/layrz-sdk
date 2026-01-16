package entities

// StaticPosition represents a fixed position with latitude, longitude and optional altitude.
type StaticPosition struct {
	// Latitude of the static position. Should be in the range of -90 to 90.
	Latitude float64 `json:"latitude" validate:"required,min=-90,max=90"`
	// Longitude of the static position. Should be in the range of -180 to 180.
	Longitude float64 `json:"longitude" validate:"required,min=-180,max=180"`
	// Optional altitude of the static position. Measured in meters.
	Altitude *float64 `json:"altitude,omitempty"`
}
