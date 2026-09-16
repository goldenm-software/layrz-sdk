package entities

import (
	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

// AtsOperationMovement represents a movement within an ATS operation's history.
type AtsOperationMovement struct {
	// ID is the primary key of the operation movement.
	ID *int64 `json:"id,omitempty"`
	// Status is the current status of the order.
	Status *enums.OrderStatus `json:"status,omitempty"`
	// CreatedAt is the timestamp when the operation movement was created.
	CreatedAt *types.UnixTime `json:"created_at,omitempty"`
	// AssetID is the ID of the asset.
	AssetID *int64 `json:"asset_id,omitempty"`
	// OperationID is the ID of the operation.
	OperationID *int64 `json:"operation_id,omitempty"`
}

// AtsOperation represents an ATS operation.
type AtsOperation struct {
	// ID is the primary key of the operation.
	ID int64 `json:"id"`
	// PurchasedAt is the timestamp when the operation was purchased.
	PurchasedAt types.UnixTime `json:"purchased_at"`
	// OrderStatus is the current status of the order.
	OrderStatus enums.OrderStatus `json:"order_status"`
	// Category is the category of the operation.
	Category enums.OrderCategories `json:"category"`
	// DeliverCategory is the delivery category of the operation.
	DeliverCategory enums.DeliveryCategories `json:"deliver_category"`
	// SellerAssetID is the ID of the seller asset.
	SellerAssetID int64 `json:"seller_asset_id"`
	// TransportAssetID is the ID of the transport asset.
	TransportAssetID *int64 `json:"transport_asset_id,omitempty"`
	// FinishedAt is the timestamp when the operation was finished.
	FinishedAt *types.UnixTime `json:"finished_at,omitempty"`
	// ValidatedAt is the timestamp when the operation was validated.
	ValidatedAt *types.UnixTime `json:"validated_at,omitempty"`
	// History is the list of operation movements.
	History []AtsOperationMovement `json:"history"`
	// PurchaseOrders is the list of purchase orders.
	PurchaseOrders []AtsPurchaseOrder `json:"purchase_orders"`
}
