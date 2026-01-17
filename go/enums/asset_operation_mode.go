package enums

// AssetOperationMode represents the operation mode of an asset.
type AssetOperationMode string

const (
	// Single mode: The asset operates in single mode. It only can have one device associated.
	AssetOperationModeSingle AssetOperationMode = "SINGLE"
	// Multiple mode: The asset can have multiple devices associated.
	AssetOperationModeMultiple AssetOperationMode = "MULTIPLE"
	// AssetMultiple mode: The asset can have multiple assets associated, not devices
	AssetOperationModeAssetMultiple AssetOperationMode = "ASSETMULTIPLE"
	// Disconnected mode: The asset is disconnected and not associated with any device.
	// Useful for representing assets without tracking capabilities.
	AssetOperationModeDisconnected AssetOperationMode = "DISCONNECTED"
	// Static mode: The asset has a fixed static position.
	AssetOperationModeStatic AssetOperationMode = "STATIC"
	// Zone mode: The asset operates within a defined zone.
	AssetOperationModeZone AssetOperationMode = "ZONE"
)
