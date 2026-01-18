package entities

// BroadcastService represents the broadcast service entity.
type BroadcastService struct {
	// Id is the unique identifier of the service.
	Id int64 `json:"id"`
	// Name of the service
	Name string `json:"name"`
	// Credentials associated with the service
	Credentials map[string]any `json:"credentials"`
}
