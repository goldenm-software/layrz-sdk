package entities

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

func unixTime(t *testing.T, raw string) types.UnixTime {
	t.Helper()
	var u types.UnixTime
	if err := u.UnmarshalJSON([]byte(raw)); err != nil {
		t.Fatalf("failed to build UnixTime: %v", err)
	}
	return u
}

func TestAtsEntryMarshalJSON(t *testing.T) {
	entry := &AtsEntry{
		ID:                  1,
		OldTankLevel:        100.5,
		NewTankLevel:        150.5,
		IsExecutedByCommand: true,
	}

	data, err := json.Marshal(entry)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	var m map[string]any
	if err := json.Unmarshal(data, &m); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	if _, ok := m["id"]; !ok {
		t.Error("expected 'id' key in JSON")
	}
	if _, ok := m["old_tank_level"]; !ok {
		t.Error("expected 'old_tank_level' key in JSON")
	}
	if _, ok := m["density"]; ok {
		t.Error("expected 'density' key to be omitted when nil")
	}
}

func TestAtsExitExecutionHistoryMarshalJSON(t *testing.T) {
	history := &AtsExitExecutionHistory{
		ID:            1,
		FromAssetID:   2,
		ToAssetID:     3,
		Status:        enums.AtsExitStatusSuccess,
		GeneratedByID: 4,
		CreatedAt:     unixTime(t, "1234567890.5"),
		UpdatedAt:     unixTime(t, "1234567891.5"),
	}

	data, err := json.Marshal(history)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	var decoded AtsExitExecutionHistory
	if err := json.Unmarshal(data, &decoded); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	if decoded.Status != enums.AtsExitStatusSuccess {
		t.Errorf("expected status SUCCESS, got %s", decoded.Status)
	}
	if !decoded.CreatedAt.Equal(history.CreatedAt.Time) {
		t.Errorf("expected created_at to round-trip, got %v", decoded.CreatedAt)
	}
}

func TestAtsOperationMarshalJSON(t *testing.T) {
	op := &AtsOperation{
		ID:              1,
		PurchasedAt:     unixTime(t, "1234567890"),
		OrderStatus:     enums.OrderStatusGenerated,
		Category:        enums.OrderCategoriesTransfer,
		DeliverCategory: enums.DeliveryCategoriesSameState,
		SellerAssetID:   10,
		History:         []AtsOperationMovement{},
		PurchaseOrders:  []AtsPurchaseOrder{},
	}

	data, err := json.Marshal(op)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	var m map[string]any
	if err := json.Unmarshal(data, &m); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	if _, ok := m["transport_asset_id"]; ok {
		t.Error("expected 'transport_asset_id' key to be omitted when nil")
	}
	if _, ok := m["history"]; !ok {
		t.Error("expected 'history' key to always be present")
	}
}

func TestAtsPurchaseOrderMarshalJSON(t *testing.T) {
	order := &AtsPurchaseOrder{
		ID:                  1,
		PurchasedAt:         unixTime(t, "1234567890"),
		OrderStatus:         enums.OrderStatusDelivered,
		OrderID:             2,
		SellerAssetID:       3,
		AssetID:             4,
		InvoiceType:         "NFE",
		OperationsIDs:       []int64{1, 2, 3},
		ProductsInformation: []map[string]any{},
	}

	data, err := json.Marshal(order)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	var decoded AtsPurchaseOrder
	if err := json.Unmarshal(data, &decoded); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	if len(decoded.OperationsIDs) != 3 {
		t.Errorf("expected 3 operation ids, got %d", len(decoded.OperationsIDs))
	}
}

func TestAtsReceptionMarshalJSON(t *testing.T) {
	reception := &AtsReception{
		ID:           1,
		VolumeBought: 500.0,
		ReceivedAt:   unixTime(t, "1234567890"),
		FuelType:     "DIESEL",
	}

	data, err := json.Marshal(reception)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	var m map[string]any
	if err := json.Unmarshal(data, &m); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	if _, ok := m["received_at"]; !ok {
		t.Error("expected 'received_at' key in JSON")
	}
}
