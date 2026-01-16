package entities

// Device represents a device entity.
type Device struct {
	// Unique identifier of the device.
	Id int64 `json:"id"`
	// Name of the device.
	Name string `json:"name"`
	// Unique ident of the device. Depending of the protocol, it can be IMEI, MAC address, etc.
	Ident string `json:"ident"`
	// Optional protocol ID associated with the device. Can be nil depending of the context.
	ProtocolId *int64 `json:"protocol_id,omitempty"`
	// Optional protocol name associated with the device. Can be nil depending of the context.
	Protocol *string `json:"protocol,omitempty"`
	// Indicates if the device is the primary device for the asset.
	IsPrimary bool `json:"is_primary"`
	// Optional Modbus configuration for the device. Can be nil if not applicable.
	Modbus *ModbusConfig `json:"modbus,omitempty"`
}
