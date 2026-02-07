package tests

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestTimezone(t *testing.T) {
	t.Log("Running tests for Timezone entity")
	jsonData := `{
		"id": 1,
		"name": "America/New_York",
		"offset": -18000
	}`

	var tz entities.Timezone
	err := json.Unmarshal([]byte(jsonData), &tz)
	if err != nil {
		t.Fatalf("Failed to unmarshal Timezone: %v", err)
	}

	if tz.ID != 1 {
		t.Errorf("Expected ID 1, got %d", tz.ID)
	}

	if tz.Name != "America/New_York" {
		t.Errorf("Expected Name 'America/New_York', got '%s'", tz.Name)
	}
}
