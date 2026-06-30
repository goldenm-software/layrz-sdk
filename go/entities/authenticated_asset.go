package entities

// AuthenticatedAsset represents an asset that is authenticated to interact with another asset.
type AuthenticatedAsset struct {
	// ID is the unique identifier of the authenticated asset.
	ID int64 `json:"id"`
	// Name is the name of the authenticated asset.
	Name string `json:"name"`
}
