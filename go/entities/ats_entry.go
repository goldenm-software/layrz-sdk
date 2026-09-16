package entities

// AtsEntry represents an entry entity in the ATS module.
type AtsEntry struct {
	// ID is the primary key of the entry.
	ID int64 `json:"id"`
	// OldTankLevel is the tank level in liters before the entry.
	OldTankLevel float64 `json:"old_tank_level"`
	// NewTankLevel is the tank level in liters after the entry.
	NewTankLevel float64 `json:"new_tank_level"`
	// Density is the density of the fuel in kg/m3.
	Density *float64 `json:"density,omitempty"`
	// Temperature is the temperature of the fuel in Celsius.
	Temperature *float64 `json:"temperature,omitempty"`
	// IsExecutedByCommand indicates if the entry is executed by command.
	IsExecutedByCommand bool `json:"is_executed_by_command"`
}
