package tests

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestAssetContact(t *testing.T) {
	t.Log("Running tests for AssetContact entity")
	jsonData := `{"name": "Jane", "phone": "+1234567890", "email": "jane@example.com"}`

	var ac entities.AssetContact
	err := json.Unmarshal([]byte(jsonData), &ac)
	if err != nil {
		t.Fatalf("Failed to unmarshal AssetContact: %v", err)
	}

	if ac.Name != "Jane" {
		t.Errorf("Expected Name 'Jane', got '%s'", ac.Name)
	}

	if ac.Phone != "+1234567890" {
		t.Errorf("Expected Phone '+1234567890', got '%s'", ac.Phone)
	}

	if ac.Email != "jane@example.com" {
		t.Errorf("Expected Email 'jane@example.com', got '%s'", ac.Email)
	}
}
