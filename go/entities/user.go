package entities

// User represents a user in the system.
type User struct {
	// ID is the unique identifier for the user.
	ID int64 `json:"id"`
	// Name is the full name of the user.
	Name string `json:"name"`
}
