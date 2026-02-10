package entities

import (
	"encoding/json"
	"math"
	"testing"
)

func TestBroadcastPayload(t *testing.T) {
	t.Log("Running tests for BroadcastPayload entity")
	jsonData := `{
      "asset": {
          "id": 1,
          "name": "Asset",
          "vin": "N/A",
          "plate": "N/A",
          "kind_id": 1,
          "operation_mode": "SINGLE",
          "sensors": [],
          "custom_fields": [
              {
                  "id": 1,
                  "name": "field",
                  "value": "value",
                  "is_fixed": false
              }
          ],
          "devices": [
              {
                  "id": 1,
                  "name": "Device",
                  "ident": "ident",
                  "protocol_id": 2,
                  "protocol": "wialonretranslator",
                  "is_primary": true,
                  "modbus": null
              }
          ],
          "children": [],
          "static_position": null,
          "points": [],
          "primary_id": 1,
          "contacts": [],
          "owner_id": 1,
          "partition_number": 1
      },
      "primary_device": {
          "id": 1,
          "name": "Device",
          "ident": "ident",
          "protocol_id": 2,
          "protocol": "wialonretranslator",
          "is_primary": true,
          "modbus": null
      },
      "trigger": null,
      "message_id": 8029712957,
      "service": {
          "id": 1,
          "name": "[REDACTED]",
          "credentials": {
              "url": "[REDACTED]",
              "name": "[REDACTED]",
              "format": "basic",
              "password": "[REDACTED]",
              "username": "[REDACTED]",
              "identifier": "[REDACTED]"
          }
      },
      "position": {
          "direction": 0,
          "latitude": 0.00,
          "longitude": 0.00,
          "speed": 0
      },
      "sensors": {},
      "payload": {
          "ident.position.direction": 0,
          "ident.position.latitude": 0.00,
          "ident.position.longitude": 0.00,
          "ident.position.speed": 0
      },
      "received_at": 1770465935,
      "locator": null
  }`

	var payload BroadcastPayload
	err := json.Unmarshal([]byte(jsonData), &payload)
	if err != nil {
		t.Fatalf("Failed to unmarshal JSON: %v", err)
	}

	// Asset assertions
	if payload.Asset == nil {
		t.Fatal("Expected Asset to be non-nil")
	}

	if payload.Asset.Id != 1 {
		t.Errorf("Expected Asset ID to be 1, got %d", payload.Asset.Id)
	}

	if payload.Asset.Name != "Asset" {
		t.Errorf("Expected Asset Name to be 'Asset', got '%s'", payload.Asset.Name)
	}

	if *payload.Asset.VIN != "N/A" {
		t.Errorf("Expected Asset VIN to be 'N/A', got '%s'", *payload.Asset.VIN)
	}

	if *payload.Asset.Plate != "N/A" {
		t.Errorf("Expected Asset Plate to be 'N/A', got '%s'", *payload.Asset.Plate)
	}

	if *payload.Asset.KindId != 1 {
		t.Errorf("Expected Asset KindId to be 1, got %d", *payload.Asset.KindId)
	}

	if *payload.Asset.PrimaryId != 1 {
		t.Errorf("Expected Asset PrimaryId to be 1, got %d", *payload.Asset.PrimaryId)
	}

	if *payload.Asset.OwnerId != 1 {
		t.Errorf("Expected Asset OwnerId to be 1, got %d", *payload.Asset.OwnerId)
	}

	if *payload.Asset.PartitionNumber != 1 {
		t.Errorf("Expected Asset PartitionNumber to be 1, got %d", *payload.Asset.PartitionNumber)
	}

	// Asset.Devices
	if len(payload.Asset.Devices) != 1 {
		t.Fatalf("Expected 1 device in Asset, got %d", len(payload.Asset.Devices))
	}

	device := payload.Asset.Devices[0]
	if device.Id != 1 {
		t.Errorf("Expected Asset Device ID to be 1, got %d", device.Id)
	}

	if device.Ident != "ident" {
		t.Errorf("Expected Asset Device Ident to be 'ident', got '%s'", device.Ident)
	}

	if !device.IsPrimary {
		t.Error("Expected Asset Device IsPrimary to be true")
	}

	// Asset.CustomFields
	if len(payload.Asset.CustomFields) != 1 {
		t.Fatalf("Expected 1 custom field in Asset, got %d", len(payload.Asset.CustomFields))
	}

	// PrimaryDevice assertions
	if payload.PrimaryDevice == nil {
		t.Fatal("Expected PrimaryDevice to be non-nil")
	}

	if payload.PrimaryDevice.Id != 1 {
		t.Errorf("Expected PrimaryDevice ID to be 1, got %d", payload.PrimaryDevice.Id)
	}

	if payload.PrimaryDevice.Name != "Device" {
		t.Errorf("Expected PrimaryDevice Name to be 'Device', got '%s'", payload.PrimaryDevice.Name)
	}

	if payload.PrimaryDevice.Ident != "ident" {
		t.Errorf("Expected PrimaryDevice Ident to be 'ident', got '%s'", payload.PrimaryDevice.Ident)
	}

	if !payload.PrimaryDevice.IsPrimary {
		t.Error("Expected PrimaryDevice IsPrimary to be true")
	}

	// MessageId assertion
	if payload.MessageId == nil {
		t.Fatal("Expected MessageId to be non-nil")
	}

	if *payload.MessageId != 8029712957 {
		t.Errorf("Expected MessageId to be 8029712957, got %d", *payload.MessageId)
	}

	// Service assertions
	if payload.Service == nil {
		t.Fatal("Expected Service to be non-nil")
	}

	if payload.Service.Id != 1 {
		t.Errorf("Expected Service ID to be 1, got %d", payload.Service.Id)
	}

	if payload.Service.Name != "[REDACTED]" {
		t.Errorf("Expected Service Name to be '[REDACTED]', got '%s'", payload.Service.Name)
	}

	if len(payload.Service.Credentials) != 6 {
		t.Errorf("Expected 6 credential keys, got %d", len(payload.Service.Credentials))
	}

	// Position assertions
	if payload.Position == nil {
		t.Fatal("Expected Position to be non-nil")
	}

	if len(payload.Position) != 4 {
		t.Errorf("Expected 4 position keys, got %d", len(payload.Position))
	}

	// Payload assertions
	if payload.Payload == nil {
		t.Fatal("Expected Payload to be non-nil")
	}

	if len(payload.Payload) != 4 {
		t.Errorf("Expected 4 payload keys, got %d", len(payload.Payload))
	}

	// Sensors assertions
	if payload.Sensors == nil {
		t.Fatal("Expected Sensors to be non-nil")
	}

	if len(payload.Sensors) != 0 {
		t.Errorf("Expected 0 sensor keys, got %d", len(payload.Sensors))
	}

	// ReceivedAt assertion
	if payload.ReceivedAt == nil {
		t.Fatal("Expected ReceivedAt to be non-nil")
	}

	receivedAtUnix := float64(payload.ReceivedAt.UnixMicro()) / 1e6
	if math.Abs(receivedAtUnix-1770465935) > 0.001 {
		t.Errorf("Expected ReceivedAt unix to be ~1770465935, got %f", receivedAtUnix)
	}

	// Null fields
	if payload.Trigger != nil {
		t.Error("Expected Trigger to be nil")
	}

	if payload.Locator != nil {
		t.Error("Expected Locator to be nil")
	}
}

func TestBroadcastPayloadWithTrigger(t *testing.T) {
	t.Log("Running tests for BroadcastPayload with Trigger")
	jsonData := `{
      "asset": {
          "id": 10,
          "name": "Truck-01",
          "devices": [],
          "sensors": [],
          "custom_fields": [],
          "children": [],
          "points": [],
          "contacts": []
      },
      "primary_device": {
          "id": 5,
          "name": "GPS-01",
          "ident": "860000000000001",
          "is_primary": true
      },
      "trigger": {
          "id": 42,
          "name": "Speeding Alert",
          "code": "SPD_ALERT",
          "cooldown_time": 300,
          "type": "FORMULA",
          "priority": 3,
          "is_legacy": false,
          "should_stack": false,
          "is_paused": false,
          "should_generate_locator": false
      },
      "message_id": 9000000001,
      "service": {
          "id": 2,
          "name": "Webhook",
          "credentials": {}
      },
      "position": {
          "latitude": 10.4806,
          "longitude": -66.9036,
          "speed": 95.5,
          "direction": 180
      },
      "sensors": {
          "speed": 95.5,
          "ignition": true
      },
      "payload": {
          "gps.speed": 95.5
      },
      "received_at": 1770466000.123,
      "locator": null
  }`

	var payload BroadcastPayload
	err := json.Unmarshal([]byte(jsonData), &payload)
	if err != nil {
		t.Fatalf("Failed to unmarshal JSON: %v", err)
	}

	// Trigger assertions
	if payload.Trigger == nil {
		t.Fatal("Expected Trigger to be non-nil")
	}

	if payload.Trigger.Id != 42 {
		t.Errorf("Expected Trigger ID to be 42, got %d", payload.Trigger.Id)
	}

	if payload.Trigger.Name != "Speeding Alert" {
		t.Errorf("Expected Trigger Name to be 'Speeding Alert', got '%s'", payload.Trigger.Name)
	}

	if payload.Trigger.Code != "SPD_ALERT" {
		t.Errorf("Expected Trigger Code to be 'SPD_ALERT', got '%s'", payload.Trigger.Code)
	}

	if string(payload.Trigger.Type) != "FORMULA" {
		t.Errorf("Expected Trigger Type to be 'FORMULA', got '%s'", payload.Trigger.Type)
	}

	if payload.Trigger.Priority != 3 {
		t.Errorf("Expected Trigger Priority to be 3, got %d", payload.Trigger.Priority)
	}

	// Position with real coordinates
	lat, ok := payload.Position["latitude"].(float64)
	if !ok {
		t.Fatal("Expected Position latitude to be float64")
	}

	if math.Abs(lat-10.4806) > 0.0001 {
		t.Errorf("Expected latitude to be ~10.4806, got %f", lat)
	}

	lng, ok := payload.Position["longitude"].(float64)
	if !ok {
		t.Fatal("Expected Position longitude to be float64")
	}

	if math.Abs(lng-(-66.9036)) > 0.0001 {
		t.Errorf("Expected longitude to be ~-66.9036, got %f", lng)
	}

	// Sensors with values
	speedVal, ok := payload.Sensors["speed"].(float64)
	if !ok {
		t.Fatal("Expected Sensors speed to be float64")
	}

	if math.Abs(speedVal-95.5) > 0.01 {
		t.Errorf("Expected speed sensor to be 95.5, got %f", speedVal)
	}

	ignition, ok := payload.Sensors["ignition"].(bool)
	if !ok {
		t.Fatal("Expected Sensors ignition to be bool")
	}

	if !ignition {
		t.Error("Expected ignition to be true")
	}
}

func TestBroadcastPayloadMarshal(t *testing.T) {
	t.Log("Running tests for BroadcastPayload marshal roundtrip")
	jsonData := `{
      "asset": {
          "id": 1,
          "name": "Test",
          "devices": [],
          "sensors": [],
          "custom_fields": [],
          "children": [],
          "points": [],
          "contacts": []
      },
      "primary_device": {
          "id": 1,
          "name": "Dev",
          "ident": "ABC123",
          "is_primary": true
      },
      "message_id": 100,
      "service": {
          "id": 1,
          "name": "Svc",
          "credentials": {}
      },
      "position": {"latitude": 1.0},
      "sensors": {"temp": 25},
      "payload": {"raw.temp": 25},
      "received_at": 1770465935
  }`

	var payload BroadcastPayload
	err := json.Unmarshal([]byte(jsonData), &payload)
	if err != nil {
		t.Fatalf("Failed to unmarshal JSON: %v", err)
	}

	marshaled, err := json.Marshal(payload)
	if err != nil {
		t.Fatalf("Failed to marshal JSON: %v", err)
	}

	var roundtrip BroadcastPayload
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip JSON: %v", err)
	}

	if roundtrip.Asset == nil || roundtrip.Asset.Id != 1 {
		t.Error("Roundtrip Asset mismatch")
	}

	if roundtrip.PrimaryDevice == nil || roundtrip.PrimaryDevice.Ident != "ABC123" {
		t.Error("Roundtrip PrimaryDevice mismatch")
	}

	if roundtrip.MessageId == nil || *roundtrip.MessageId != 100 {
		t.Error("Roundtrip MessageId mismatch")
	}

	if roundtrip.Service == nil || roundtrip.Service.Name != "Svc" {
		t.Error("Roundtrip Service mismatch")
	}

	receivedAtUnix := float64(roundtrip.ReceivedAt.UnixMicro()) / 1e6
	if math.Abs(receivedAtUnix-1770465935) > 0.001 {
		t.Errorf("Roundtrip ReceivedAt mismatch, got %f", receivedAtUnix)
	}
}
