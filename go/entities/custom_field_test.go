package entities

import (
	"encoding/json"
	"testing"
)

func TestCustomField(t *testing.T) {
	t.Log("Running tests for CustomField entity")
	jsonData := `{"name": "color", "value": "red", "is_fixed": true}`

	var cf CustomField
	err := json.Unmarshal([]byte(jsonData), &cf)
	if err != nil {
		t.Fatalf("Failed to unmarshal CustomField: %v", err)
	}

	if cf.Name != "color" {
		t.Errorf("Expected Name 'color', got '%s'", cf.Name)
	}

	if cf.Value != "red" {
		t.Errorf("Expected Value 'red', got '%s'", cf.Value)
	}

	if !cf.IsFixed {
		t.Error("Expected IsFixed to be true")
	}
}
