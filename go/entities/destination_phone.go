package entities

// DestinationPhone represents a phone number destination for notifications.
type DestinationPhone struct {
	// PhoneNumber is the phone number for the destination.
	PhoneNumber string `json:"phoneNumber"`
	// CountryCode is the country code for the phone number.
	CountryCode string `json:"countryCode"`
}
