package entities

// Position is the geographical position with latitude, longitude and other optional data.
type Position struct {
	// Latitude is the latitude of the position.
	Latitude *float64 `json:"latitude,omitempty" validate:"omitempty,gte=-90,lte=90"`
	// Longitude is the longitude of the position.
	Longitude *float64 `json:"longitude,omitempty" validate:"omitempty,gte=-180,lte=180"`
	// Altitude is the altitude of the position in meters.
	Altitude *float64 `json:"altitude,omitempty"`
	// Speed is the speed at the position in meters per second.
	Speed *float64 `json:"speed,omitempty"`
	// Direction is the heading at the position in degrees.
	Direction *float64 `json:"direction,omitempty" validate:"omitempty,gte=0,lte=360"`
	// Satellites is the number of satellites used to determine the position.
	Satellites *int `json:"satellites,omitempty" validate:"omitempty,gte=0"`
	// HDOP or Horizontal Dilution of Precision indicates the accuracy of the position.
	HDOP *float64 `json:"hdop,omitempty" validate:"omitempty,gte=0"`
}
