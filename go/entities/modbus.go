package entities

import "github.com/goldenm-software/layrz-sdk/go/enums"

// ModbusConfig represents the configuration for Modbus communication.
type ModbusConfig struct {
	// PortId is the identifier of the Modbus port.
	PortId string `json:"port_id"`
	// IsEnabled indicates whether Modbus communication is enabled.
	IsEnabled bool `json:"is_enabled"`
	// Parameters is a list of Modbus parameters for the device.
	Parameters []ModubsParameter `json:"parameters"`
}

// ModubsParameter represents a single Modbus parameter configuration.
type ModubsParameter struct {
	// Schema used for the Modbus parameter.
	Schema enums.ModbusSchema `json:"schema"`
	// SplitEach indicates how many items to read per split. It will only used on MULTIPLE schema.
	SplitEach int `json:"split_each"`
	// Length of data to read. Internally, we convert this number into hex
	Length int `json:"data_length"`
	// Address to read the data from. Internally, we convert this number into hex
	Address int `json:"data_address"`
	// FunctionCode represents the Modbus function code to be used for this parameter.
	FunctionCode int `json:"function_code"`
	// ControllerAddress represents the address of the Modbus controller.
	ControllerAddress int `json:"controller_address"`
}
