package entities

import (
	"encoding/json"
	"testing"
)

func TestGeofence(t *testing.T) {
	t.Log("Running tests for Geofence entity")
	jsonData := `{
		"id": 50,
		"name": "Warehouse Zone",
		"color": "#00FF00",
		"geom_wgs84": {
			"type": "Polygon",
			"coordinates": [[[10.0, -66.0], [10.1, -66.0], [10.1, -66.1], [10.0, -66.1], [10.0, -66.0]]]
		},
		"geom_web_mercator": {
			"type": "Polygon",
			"coordinates": [[[1113195, -7345899], [1124514, -7345899]]]
		},
		"owner_id": 5
	}`

	var gf Geofence
	err := json.Unmarshal([]byte(jsonData), &gf)
	if err != nil {
		t.Fatalf("Failed to unmarshal Geofence: %v", err)
	}

	if gf.ID != 50 {
		t.Errorf("Expected ID 50, got %d", gf.ID)
	}

	if gf.Name != "Warehouse Zone" {
		t.Errorf("Expected Name 'Warehouse Zone', got '%s'", gf.Name)
	}

	if gf.Color != "#00FF00" {
		t.Errorf("Expected Color '#00FF00', got '%s'", gf.Color)
	}

	if gf.GeomWGS84 == nil {
		t.Fatal("Expected GeomWGS84 to be non-nil")
	}

	if gf.GeomWGS84["type"] != "Polygon" {
		t.Errorf("Expected GeomWGS84 type 'Polygon', got '%v'", gf.GeomWGS84["type"])
	}

	if gf.GeomWebMercator == nil {
		t.Fatal("Expected GeomWebMercator to be non-nil")
	}

	if gf.OwnerId == nil || *gf.OwnerId != 5 {
		t.Error("Expected OwnerId 5")
	}
}

func TestGeofenceWithoutOwner(t *testing.T) {
	t.Log("Running tests for Geofence without owner")
	jsonData := `{
		"id": 1,
		"name": "Test",
		"color": "#000000",
		"geom_wgs84": {},
		"geom_web_mercator": {}
	}`

	var gf Geofence
	err := json.Unmarshal([]byte(jsonData), &gf)
	if err != nil {
		t.Fatalf("Failed to unmarshal Geofence: %v", err)
	}

	if gf.OwnerId != nil {
		t.Error("Expected OwnerId to be nil")
	}
}
