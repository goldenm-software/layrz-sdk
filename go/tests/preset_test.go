package tests

import (
	"encoding/json"
	"math"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestPreset(t *testing.T) {
	t.Log("Running tests for Preset entity")
	jsonData := `{
		"id": 10,
		"name": "Speed Warning",
		"valid_before": 1770465935,
		"comment": "Auto-generated preset",
		"owner_id": 3
	}`

	var preset entities.Preset
	err := json.Unmarshal([]byte(jsonData), &preset)
	if err != nil {
		t.Fatalf("Failed to unmarshal Preset: %v", err)
	}

	if preset.ID != 10 {
		t.Errorf("Expected ID 10, got %d", preset.ID)
	}

	if preset.Name != "Speed Warning" {
		t.Errorf("Expected Name 'Speed Warning', got '%s'", preset.Name)
	}

	if preset.Comment != "Auto-generated preset" {
		t.Errorf("Expected Comment 'Auto-generated preset', got '%s'", preset.Comment)
	}

	if preset.OwnerId != 3 {
		t.Errorf("Expected OwnerId 3, got %d", preset.OwnerId)
	}

	receivedAtUnix := float64(preset.ValidBefore.UnixMicro()) / 1e6
	if math.Abs(receivedAtUnix-1770465935) > 0.001 {
		t.Errorf("Expected ValidBefore ~1770465935, got %f", receivedAtUnix)
	}
}
