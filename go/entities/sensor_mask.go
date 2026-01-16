package entities

// SensorMask represents a mask for sensor data, indicating which sensors are active.
type SensorMask struct {
	// Icon replacement when this mask is applied.
	Icon *string `json:"icon,omitempty"`
	// Text replacement when this mask is applied.
	Text *string `json:"text,omitempty"`
	// Color replacement when this mask is applied.
	Color *string `json:"color,omitempty"`
	// Value replacement when this mask is applied. This value can be int (int32 or int64),
	// float (float32 or float64), string or bool.
	Value *any `json:"value,omitempty"`
}
