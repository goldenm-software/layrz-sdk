package entities

// Asset represents an asset entity.
type Asset struct {
	// Id is the unique identifier of the asset.
	Id int64 `json:"id"`
	// Name of the asset
	Name string `json:"name"`
	// Optional Vehicle Identification Number or any other unique identifier
	VIN *string `json:"vin,omitempty"`
	// Optional License plate number of the asset, or any other secondary identifier
	Plate *string `json:"plate,omitempty"`
	// Optional KindId representing the type or category of the asset
	KindId *int64 `json:"kind_id,omitempty"`
	// OperationMode indicates the current operation mode of the asset
	OperationMode *AssetOperationMode `json:"operation_mode,omitempty"`
	// StaticPosition is the fixed position of the asset when in STATIC mode
	StaticPosition *StaticPosition `json:"static_position,omitempty"`
	// Points to the primary device associated with the asset
	Points []StaticPosition `json:"points,omitempty"`
	// PrimaryId is the identifier of the primary device linked to the asset
	PrimaryId *int64 `json:"primary_id,omitempty"`
	// Contacts associated with the asset
	Contacts []AssetContact `json:"contacts,omitempty"`
	// OwnerId is the identifier of the user who owns the asset
	OwnerId *int64 `json:"owner_id,omitempty"`
	// PartitionNumber is the partition number the asset belongs to, useful on multi-tenant systems
	PartitionNumber *int64 `json:"partition_number,omitempty"`
	// Devices associated with the asset, only populated on Operation Mode is not ASSETMULTIPLE
	Devices []Device `json:"devices,omitempty"`
	// Children assets, only populated when Operation Mode is ASSETMULTIPLE
	Children []Asset `json:"children,omitempty"`
	// CustomFields holds additional custom data for the asset
	CustomFields []CustomField `json:"custom_fields,omitempty"`
	// Sensors associated with the asset
	Sensors []Sensor `json:"sensors,omitempty"`
}

// Primary returns the Device of the primary device associated with the asset
func (a *Asset) Primary() *Device {
	return nil
}

// AssetType returns the KindId of the asset, it's an alias for better readability
func (a *Asset) AssetType() *int64 {
	return a.KindId
}
