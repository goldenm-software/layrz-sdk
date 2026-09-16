package entities

import (
	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

// AtsPurchaseOrder represents a purchase order entity in the ATS module.
type AtsPurchaseOrder struct {
	// ID is the primary key of the purchase order.
	ID int64 `json:"id"`
	// PurchasedAt is the timestamp when the operation was purchased.
	PurchasedAt types.UnixTime `json:"purchased_at"`
	// OrderStatus is the current status of the order.
	OrderStatus enums.OrderStatus `json:"order_status"`
	// OrderID is the ID of the order.
	OrderID int64 `json:"order_id"`
	// Category is the category of the operation.
	Category *enums.OrderCategories `json:"category,omitempty"`
	// DeliverCategory is the delivery category of the operation.
	DeliverCategory *enums.DeliveryCategories `json:"deliver_category,omitempty"`
	// SellerAssetID is the ID of the seller asset.
	SellerAssetID int64 `json:"seller_asset_id"`
	// TransportAssetID is the ID of the transport asset.
	TransportAssetID *int64 `json:"transport_asset_id,omitempty"`
	// AssetID is the ID of the asset.
	AssetID int64 `json:"asset_id"`
	// SellerAsset is the seller asset details.
	SellerAsset *Asset `json:"seller_asset,omitempty"`
	// TransportAsset is the transport asset details.
	TransportAsset *Asset `json:"transport_asset,omitempty"`
	// Asset is the destination asset details.
	Asset *Asset `json:"asset,omitempty"`
	// DeliveredAt is the timestamp when the operation was delivered.
	DeliveredAt *types.UnixTime `json:"delivered_at,omitempty"`
	// ValidatedAt is the timestamp when the operation was validated.
	ValidatedAt *types.UnixTime `json:"validated_at,omitempty"`
	// Eta is the estimated time of arrival to the destination.
	Eta *types.UnixTime `json:"eta,omitempty"`
	// EtaUpdatedAt is the timestamp when the ETA was last updated.
	EtaUpdatedAt *types.UnixTime `json:"eta_updated_at,omitempty"`
	// InvoiceType is the type of the invoice.
	InvoiceType string `json:"invoice_type"`
	// OperationID is the ID of the operation.
	OperationID *int64 `json:"operation_id,omitempty"`
	// OperationsIDs is the list of operation IDs.
	OperationsIDs []int64 `json:"operations_ids"`
	// ProductsInformation is the list of products information.
	ProductsInformation []map[string]any `json:"products_information"`
}
