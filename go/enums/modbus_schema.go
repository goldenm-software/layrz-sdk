package enums

// ModbusSchema defines the schema type for Modbus parameters.
type ModbusSchema string

const (
	// ModbusSchemaSingle indicates a single schema, aka, one parameter per read.
	ModbusSchemaSingle ModbusSchema = "SINGLE"
	// ModbusSchemaMultiple indicates a multiple schema, aka, multiple parameters per read.
	ModbusSchemaMultiple ModbusSchema = "MULTIPLE"
)
