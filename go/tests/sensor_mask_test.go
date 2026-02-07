package tests

import (
	"encoding/json"
	"math"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestSensorMask(t *testing.T) {
	t.Log("Running tests for SensorMask entity")
	jsonData := `{
		"icon": "warning",
		"text": "High Temperature",
		"color": "#FF0000",
		"value": 95.5
	}`

	var sm entities.SensorMask
	err := json.Unmarshal([]byte(jsonData), &sm)
	if err != nil {
		t.Fatalf("Failed to unmarshal SensorMask: %v", err)
	}

	if sm.Icon == nil || *sm.Icon != "warning" {
		t.Error("Expected Icon 'warning'")
	}

	if sm.Text == nil || *sm.Text != "High Temperature" {
		t.Error("Expected Text 'High Temperature'")
	}

	if sm.Color == nil || *sm.Color != "#FF0000" {
		t.Error("Expected Color '#FF0000'")
	}

	if sm.Value == nil {
		t.Fatal("Expected Value to be non-nil")
	}

	val, ok := (*sm.Value).(float64)
	if !ok {
		t.Fatal("Expected Value to be float64")
	}

	if math.Abs(val-95.5) > 0.01 {
		t.Errorf("Expected Value ~95.5, got %f", val)
	}
}
