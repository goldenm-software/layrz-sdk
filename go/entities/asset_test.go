package entities

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
)

func TestAsset(t *testing.T) {
	t.Log("Running tests for Asset entity")
	jsonData := `{
		"id": 100,
		"name": "Truck-01",
		"vin": "1HGBH41JXMN109186",
		"plate": "ABC-1234",
		"kind_id": 5,
		"operation_mode": "SINGLE",
		"static_position": {
			"latitude": 10.4806,
			"longitude": -66.9036,
			"altitude": 920.5
		},
		"points": [
			{"latitude": 10.48, "longitude": -66.90},
			{"latitude": 10.49, "longitude": -66.91}
		],
		"primary_id": 1,
		"contacts": [
			{"name": "Dispatch", "phone": "+1234567890", "email": "dispatch@example.com"}
		],
		"owner_id": 7,
		"partition_number": 3,
		"devices": [
			{
				"id": 1,
				"name": "GPS-01",
				"ident": "860000000000001",
				"protocol_id": 2,
				"protocol": "teltonika",
				"is_primary": true,
				"modbus": null
			},
			{
				"id": 2,
				"name": "GPS-02",
				"ident": "860000000000002",
				"is_primary": false
			}
		],
		"children": [],
		"custom_fields": [
			{"name": "fleet", "value": "north", "is_fixed": true},
			{"name": "driver", "value": "John", "is_fixed": false}
		],
		"sensors": [
			{
				"id": 10,
				"name": "Speed",
				"formula": "GET_PARAM('speed')",
				"measuring_unit": "km/h",
				"mask": []
			}
		]
	}`

	var asset Asset
	err := json.Unmarshal([]byte(jsonData), &asset)
	if err != nil {
		t.Fatalf("Failed to unmarshal Asset: %v", err)
	}

	if asset.Id != 100 {
		t.Errorf("Expected Id 100, got %d", asset.Id)
	}

	if asset.Name != "Truck-01" {
		t.Errorf("Expected Name 'Truck-01', got '%s'", asset.Name)
	}

	if asset.VIN == nil || *asset.VIN != "1HGBH41JXMN109186" {
		t.Error("Expected VIN '1HGBH41JXMN109186'")
	}

	if asset.Plate == nil || *asset.Plate != "ABC-1234" {
		t.Error("Expected Plate 'ABC-1234'")
	}

	if asset.KindId == nil || *asset.KindId != 5 {
		t.Error("Expected KindId 5")
	}

	if asset.OperationMode == nil || *asset.OperationMode != enums.AssetOperationModeSingle {
		t.Error("Expected OperationMode 'SINGLE'")
	}

	// StaticPosition
	if asset.StaticPosition == nil {
		t.Fatal("Expected StaticPosition to be non-nil")
	}

	if asset.StaticPosition.Latitude != 10.4806 {
		t.Errorf("Expected StaticPosition Latitude 10.4806, got %f", asset.StaticPosition.Latitude)
	}

	if asset.StaticPosition.Altitude == nil || *asset.StaticPosition.Altitude != 920.5 {
		t.Error("Expected StaticPosition Altitude 920.5")
	}

	// Points
	if len(asset.Points) != 2 {
		t.Fatalf("Expected 2 points, got %d", len(asset.Points))
	}

	// Contacts
	if len(asset.Contacts) != 1 {
		t.Fatalf("Expected 1 contact, got %d", len(asset.Contacts))
	}

	if asset.Contacts[0].Name != "Dispatch" {
		t.Errorf("Expected contact name 'Dispatch', got '%s'", asset.Contacts[0].Name)
	}

	// Devices
	if len(asset.Devices) != 2 {
		t.Fatalf("Expected 2 devices, got %d", len(asset.Devices))
	}

	if !asset.Devices[0].IsPrimary {
		t.Error("Expected first device to be primary")
	}

	if asset.Devices[1].IsPrimary {
		t.Error("Expected second device to not be primary")
	}

	// CustomFields
	if len(asset.CustomFields) != 2 {
		t.Fatalf("Expected 2 custom fields, got %d", len(asset.CustomFields))
	}

	if asset.CustomFields[0].Name != "fleet" || asset.CustomFields[0].Value != "north" {
		t.Error("Expected first custom field to be fleet=north")
	}

	// Sensors
	if len(asset.Sensors) != 1 {
		t.Fatalf("Expected 1 sensor, got %d", len(asset.Sensors))
	}

	if asset.Sensors[0].Name != "Speed" {
		t.Errorf("Expected sensor name 'Speed', got '%s'", asset.Sensors[0].Name)
	}

	// Children
	if len(asset.Children) != 0 {
		t.Errorf("Expected 0 children, got %d", len(asset.Children))
	}

	if asset.PrimaryId == nil || *asset.PrimaryId != 1 {
		t.Error("Expected PrimaryId 1")
	}

	if asset.OwnerId == nil || *asset.OwnerId != 7 {
		t.Error("Expected OwnerId 7")
	}

	if asset.PartitionNumber == nil || *asset.PartitionNumber != 3 {
		t.Error("Expected PartitionNumber 3")
	}
}

func TestAssetWithChildren(t *testing.T) {
	t.Log("Running tests for Asset with children (ASSETMULTIPLE mode)")
	jsonData := `{
		"id": 200,
		"name": "Fleet-A",
		"operation_mode": "ASSETMULTIPLE",
		"devices": [],
		"children": [
			{
				"id": 201,
				"name": "Child-1",
				"devices": [],
				"children": [],
				"sensors": [],
				"custom_fields": [],
				"contacts": [],
				"points": []
			}
		],
		"sensors": [],
		"custom_fields": [],
		"contacts": [],
		"points": []
	}`

	var asset Asset
	err := json.Unmarshal([]byte(jsonData), &asset)
	if err != nil {
		t.Fatalf("Failed to unmarshal Asset: %v", err)
	}

	if *asset.OperationMode != enums.AssetOperationModeAssetMultiple {
		t.Errorf("Expected OperationMode 'ASSETMULTIPLE', got '%s'", *asset.OperationMode)
	}

	if len(asset.Children) != 1 {
		t.Fatalf("Expected 1 child, got %d", len(asset.Children))
	}

	if asset.Children[0].Id != 201 {
		t.Errorf("Expected child Id 201, got %d", asset.Children[0].Id)
	}
}

func TestAssetMethods(t *testing.T) {
	t.Log("Running tests for Asset methods")

	kindId := int64(5)
	asset := Asset{
		Id:     1,
		Name:   "Test",
		KindId: &kindId,
	}

	// Primary() currently returns nil
	if asset.Primary() != nil {
		t.Error("Expected Primary() to return nil")
	}

	// AssetType() is an alias for KindId
	assetType := asset.AssetType()
	if assetType == nil || *assetType != 5 {
		t.Error("Expected AssetType() to return 5")
	}
}
