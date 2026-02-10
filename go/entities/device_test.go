package entities

import (
	"encoding/json"
	"testing"
)

func TestDevice(t *testing.T) {
	t.Log("Running tests for Device entity with all fields")
	jsonData := `{
		"id": 10,
		"name": "GPS Tracker",
		"ident": "860000000000001",
		"protocol_id": 5,
		"protocol": "teltonika",
		"is_primary": true,
		"modbus": {
			"port_id": "COM1",
			"is_enabled": true,
			"parameters": [
				{
					"schema": "SINGLE",
					"split_each": 1,
					"data_length": 2,
					"data_address": 40001,
					"function_code": 3,
					"controller_address": 1
				}
			]
		}
	}`

	var device Device
	err := json.Unmarshal([]byte(jsonData), &device)
	if err != nil {
		t.Fatalf("Failed to unmarshal Device: %v", err)
	}

	if device.Id != 10 {
		t.Errorf("Expected Id 10, got %d", device.Id)
	}

	if device.Name != "GPS Tracker" {
		t.Errorf("Expected Name 'GPS Tracker', got '%s'", device.Name)
	}

	if device.Ident != "860000000000001" {
		t.Errorf("Expected Ident '860000000000001', got '%s'", device.Ident)
	}

	if device.ProtocolId == nil || *device.ProtocolId != 5 {
		t.Error("Expected ProtocolId 5")
	}

	if device.Protocol == nil || *device.Protocol != "teltonika" {
		t.Error("Expected Protocol 'teltonika'")
	}

	if !device.IsPrimary {
		t.Error("Expected IsPrimary to be true")
	}

	// Modbus
	if device.Modbus == nil {
		t.Fatal("Expected Modbus to be non-nil")
	}

	if device.Modbus.PortId != "COM1" {
		t.Errorf("Expected Modbus PortId 'COM1', got '%s'", device.Modbus.PortId)
	}

	if !device.Modbus.IsEnabled {
		t.Error("Expected Modbus IsEnabled to be true")
	}

	if len(device.Modbus.Parameters) != 1 {
		t.Fatalf("Expected 1 Modbus parameter, got %d", len(device.Modbus.Parameters))
	}
}

func TestDeviceMinimal(t *testing.T) {
	t.Log("Running tests for Device with minimal fields")
	jsonData := `{
		"id": 1,
		"name": "Basic Device",
		"ident": "ABC123",
		"is_primary": false
	}`

	var device Device
	err := json.Unmarshal([]byte(jsonData), &device)
	if err != nil {
		t.Fatalf("Failed to unmarshal Device: %v", err)
	}

	if device.Id != 1 {
		t.Errorf("Expected Id 1, got %d", device.Id)
	}

	if device.IsPrimary {
		t.Error("Expected IsPrimary to be false")
	}

	if device.ProtocolId != nil {
		t.Error("Expected ProtocolId to be nil")
	}

	if device.Protocol != nil {
		t.Error("Expected Protocol to be nil")
	}

	if device.Modbus != nil {
		t.Error("Expected Modbus to be nil")
	}
}

func TestDeviceMarshal(t *testing.T) {
	t.Log("Running tests for Device marshal roundtrip")
	jsonData := `{
		"id": 3,
		"name": "Roundtrip",
		"ident": "RT001",
		"protocol_id": 2,
		"protocol": "wialonretranslator",
		"is_primary": true
	}`

	var device Device
	err := json.Unmarshal([]byte(jsonData), &device)
	if err != nil {
		t.Fatalf("Failed to unmarshal Device: %v", err)
	}

	marshaled, err := json.Marshal(device)
	if err != nil {
		t.Fatalf("Failed to marshal Device: %v", err)
	}

	var roundtrip Device
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip: %v", err)
	}

	if roundtrip.Id != device.Id || roundtrip.Ident != device.Ident || roundtrip.IsPrimary != device.IsPrimary {
		t.Error("Roundtrip mismatch")
	}
}
