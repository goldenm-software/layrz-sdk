package entities

// AssetContact represents a contact associated with an asset.
type AssetContact struct {
	// Name of the contact person.
	Name string `json:"name"`
	// Phone number of the contact person. should include country code.
	Phone string `json:"phone"`
	// Email address of the contact person.
	Email string `json:"email"`
}
