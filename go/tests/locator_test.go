package tests

import (
	"encoding/json"
	"math"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestLocator(t *testing.T) {
	t.Log("Running tests for Locator entity")
	jsonData := `{
		"id": "550e8400-e29b-41d4-a716-446655440000",
		"token": "abc123def456",
		"owner_id": 7,
		"created_at": 1770465935,
		"assets": [
			{
				"id": 1,
				"name": "Asset-1",
				"devices": [],
				"sensors": [],
				"custom_fields": [],
				"children": [],
				"contacts": [],
				"points": []
			}
		],
		"geofences": [
			{
				"id": 10,
				"name": "Zone A",
				"color": "#FF0000",
				"geom_wgs84": {"type": "Polygon"},
				"geom_web_mercator": {"type": "Polygon"}
			}
		],
		"triggers": [
			{
				"id": 20,
				"name": "Alert",
				"code": "ALT",
				"cooldown_time": 60,
				"type": "FORMULA"
			}
		],
		"is_expired": false,
		"expires_at": 1770552335,
		"customization_id": 3
	}`

	var locator entities.Locator
	err := json.Unmarshal([]byte(jsonData), &locator)
	if err != nil {
		t.Fatalf("Failed to unmarshal Locator: %v", err)
	}

	if locator.Token != "abc123def456" {
		t.Errorf("Expected Token 'abc123def456', got '%s'", locator.Token)
	}

	if locator.OwnerId != 7 {
		t.Errorf("Expected OwnerId 7, got %d", locator.OwnerId)
	}

	createdAtUnix := float64(locator.CreatedAt.UnixMicro()) / 1e6
	if math.Abs(createdAtUnix-1770465935) > 0.001 {
		t.Errorf("Expected CreatedAt ~1770465935, got %f", createdAtUnix)
	}

	// Assets
	if len(locator.Assets) != 1 {
		t.Fatalf("Expected 1 asset, got %d", len(locator.Assets))
	}

	if locator.Assets[0].Id != 1 {
		t.Errorf("Expected asset Id 1, got %d", locator.Assets[0].Id)
	}

	// Geofences
	if len(locator.Geofences) != 1 {
		t.Fatalf("Expected 1 geofence, got %d", len(locator.Geofences))
	}

	if locator.Geofences[0].Name != "Zone A" {
		t.Errorf("Expected geofence name 'Zone A', got '%s'", locator.Geofences[0].Name)
	}

	// Triggers
	if len(locator.Triggers) != 1 {
		t.Fatalf("Expected 1 trigger, got %d", len(locator.Triggers))
	}

	if locator.Triggers[0].Id != 20 {
		t.Errorf("Expected trigger Id 20, got %d", locator.Triggers[0].Id)
	}

	// Expiry
	if locator.IsExpired {
		t.Error("Expected IsExpired to be false")
	}

	if locator.ExpiresAt == nil {
		t.Fatal("Expected ExpiresAt to be non-nil")
	}

	expiresAtUnix := float64(locator.ExpiresAt.UnixMicro()) / 1e6
	if math.Abs(expiresAtUnix-1770552335) > 0.001 {
		t.Errorf("Expected ExpiresAt ~1770552335, got %f", expiresAtUnix)
	}

	if locator.CustomizationId == nil || *locator.CustomizationId != 3 {
		t.Error("Expected CustomizationId 3")
	}
}

func TestLocatorExpired(t *testing.T) {
	t.Log("Running tests for expired Locator")
	jsonData := `{
		"id": "550e8400-e29b-41d4-a716-446655440001",
		"token": "expired_token",
		"owner_id": 1,
		"created_at": 1770000000,
		"is_expired": true
	}`

	var locator entities.Locator
	err := json.Unmarshal([]byte(jsonData), &locator)
	if err != nil {
		t.Fatalf("Failed to unmarshal Locator: %v", err)
	}

	if !locator.IsExpired {
		t.Error("Expected IsExpired to be true")
	}

	if locator.ExpiresAt != nil {
		t.Error("Expected ExpiresAt to be nil")
	}

	if len(locator.Assets) != 0 {
		t.Errorf("Expected 0 assets, got %d", len(locator.Assets))
	}
}
