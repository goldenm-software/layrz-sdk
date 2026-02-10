package entities

import (
	"encoding/json"
	"math"
	"testing"
)

func TestPosition(t *testing.T) {
	t.Log("Running tests for Position entity")
	jsonData := `{
		"latitude": 10.4806,
		"longitude": -66.9036,
		"altitude": 920.5,
		"speed": 65.3,
		"direction": 180.0,
		"satellites": 12,
		"hdop": 0.8
	}`

	var pos Position
	err := json.Unmarshal([]byte(jsonData), &pos)
	if err != nil {
		t.Fatalf("Failed to unmarshal Position: %v", err)
	}

	if pos.Latitude == nil || math.Abs(*pos.Latitude-10.4806) > 0.0001 {
		t.Error("Expected Latitude ~10.4806")
	}

	if pos.Longitude == nil || math.Abs(*pos.Longitude-(-66.9036)) > 0.0001 {
		t.Error("Expected Longitude ~-66.9036")
	}

	if pos.Altitude == nil || math.Abs(*pos.Altitude-920.5) > 0.01 {
		t.Error("Expected Altitude ~920.5")
	}

	if pos.Speed == nil || math.Abs(*pos.Speed-65.3) > 0.01 {
		t.Error("Expected Speed ~65.3")
	}

	if pos.Direction == nil || math.Abs(*pos.Direction-180.0) > 0.01 {
		t.Error("Expected Direction ~180.0")
	}

	if pos.Satellites == nil || *pos.Satellites != 12 {
		t.Error("Expected Satellites 12")
	}

	if pos.HDOP == nil || math.Abs(*pos.HDOP-0.8) > 0.01 {
		t.Error("Expected HDOP ~0.8")
	}
}

func TestPositionMinimal(t *testing.T) {
	t.Log("Running tests for Position with no fields")
	jsonData := `{}`

	var pos Position
	err := json.Unmarshal([]byte(jsonData), &pos)
	if err != nil {
		t.Fatalf("Failed to unmarshal Position: %v", err)
	}

	if pos.Latitude != nil {
		t.Error("Expected Latitude to be nil")
	}

	if pos.Speed != nil {
		t.Error("Expected Speed to be nil")
	}
}

func TestStaticPosition(t *testing.T) {
	t.Log("Running tests for StaticPosition entity")
	jsonData := `{
		"latitude": 40.7128,
		"longitude": -74.0060,
		"altitude": 10.0
	}`

	var sp StaticPosition
	err := json.Unmarshal([]byte(jsonData), &sp)
	if err != nil {
		t.Fatalf("Failed to unmarshal StaticPosition: %v", err)
	}

	if math.Abs(sp.Latitude-40.7128) > 0.0001 {
		t.Errorf("Expected Latitude ~40.7128, got %f", sp.Latitude)
	}

	if math.Abs(sp.Longitude-(-74.0060)) > 0.0001 {
		t.Errorf("Expected Longitude ~-74.0060, got %f", sp.Longitude)
	}

	if sp.Altitude == nil || math.Abs(*sp.Altitude-10.0) > 0.01 {
		t.Error("Expected Altitude ~10.0")
	}
}

func TestStaticPositionWithoutAltitude(t *testing.T) {
	t.Log("Running tests for StaticPosition without altitude")
	jsonData := `{"latitude": 0.0, "longitude": 0.0}`

	var sp StaticPosition
	err := json.Unmarshal([]byte(jsonData), &sp)
	if err != nil {
		t.Fatalf("Failed to unmarshal StaticPosition: %v", err)
	}

	if sp.Altitude != nil {
		t.Error("Expected Altitude to be nil")
	}
}
