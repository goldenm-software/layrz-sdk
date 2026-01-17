package entities

// Sensor represents a sensor associated with a device.
type Sensor struct {
	// Unique identifier of the sensor.
	Id int64 `json:"id"`
	// Name of the sensor.
	Name string `json:"name"`
	// Unique ident of the sensor within the device.
	Formula *string `json:"formula,omitempty"`
	// Script used to compute the sensor value.
	Script *string `json:"script,omitempty"`
	// Optional mask applied to the sensor data.
	Mask []SensorMask `json:"mask,omitempty"`
	// Optional measuring unit of the sensor data.
	MeasuringUnit *string `json:"measuring_unit,omitempty"`
}
