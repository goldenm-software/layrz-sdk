package entities

// CustomField represents a custom field entity.
type CustomField struct {
	// Name of the custom field.
	Name string `json:"name"`
	// Value of the custom field.
	Value string `json:"value"`
	// Indicates whether the custom field is fixed and cannot be modified.
	IsFixed bool `json:"is_fixed"`
}
