package entities

// Geofence represents a geofence with its ID and name.
type Geofence struct {
	// ID is the unique identifier for the geofence.
	ID int64 `json:"id"`
	// Name is the name of the geofence.
	Name string `json:"name"`
	// Color is the color associated with the geofence. This color is in HEX format without alpha channel, e.g., "#FF5733".
	Color string `json:"color"`
	// GeomWGS84 is the geometry of the geofence in WGS84 format.
	GeomWGS84 map[string]any `json:"geom_wgs84"`
	// GeomWebMercator is the geometry of the geofence in Web Mercator format.
	GeomWebMercator map[string]any `json:"geom_web_mercator"`
	// OwnerId is the identifier of the user who owns the geofence.
	OwnerId *int64 `json:"owner_id,omitempty"`
}
