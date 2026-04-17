package entities

import (
	"encoding/json"
	"strings"
	"testing"
)

func TestDeviceMessage(t *testing.T) {
	t.Log("Running tests for DeviceMessage entity")
	jsonData := `{
		"id": "019513f0-7c00-7000-8000-000000000001",
		"device_id": 10,
		"ident": "860000000000001",
		"protocol_id": 5,
		"position": {
			"latitude": 10.4806,
			"longitude": -66.9036,
			"speed": 55.0,
			"direction": 270
		},
		"payload": {
			"position.latitude": 10.4806,
			"position.longitude": -66.9036,
			"ignition": true,
			"fuel_level": 75.5
		},
		"received_at": 1770465935
	}`

	var msg DeviceMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal DeviceMessage: %v", err)
	}

	if msg.Id == nil || *msg.Id != "019513f0-7c00-7000-8000-000000000001" {
		id := "<nil>"
		if msg.Id != nil {
			id = *msg.Id
		}
		t.Errorf("Expected Id '019513f0-7c00-7000-8000-000000000001', got '%s'", id)
	}

	if msg.DeviceId != 10 {
		t.Errorf("Expected DeviceId 10, got %d", msg.DeviceId)
	}

	if msg.Ident != "860000000000001" {
		t.Errorf("Expected Ident '860000000000001', got '%s'", msg.Ident)
	}

	if msg.ProtocolId != 5 {
		t.Errorf("Expected ProtocolId 5, got %d", msg.ProtocolId)
	}

	if len(msg.Position) != 4 {
		t.Errorf("Expected 4 position keys, got %d", len(msg.Position))
	}

	if len(msg.Payload) != 4 {
		t.Errorf("Expected 4 payload keys, got %d", len(msg.Payload))
	}

	// ReceivedAt is derived from the UUIDv7 id "019513f0-7c00-...", which encodes ~1739796282s
	receivedAt := msg.ReceivedAt()
	if receivedAt.IsZero() {
		t.Error("Expected non-zero ReceivedAt")
	}
	if receivedAt.Unix() < 1739796282 || receivedAt.Unix() > 1739796283 {
		t.Errorf("Expected ReceivedAt ~1739796282, got %d", receivedAt.Unix())
	}
}

func TestDeviceMessageMethods(t *testing.T) {
	t.Log("Running tests for DeviceMessage methods")
	jsonData := `{
		"id": "test-id",
		"device_id": 1,
		"ident": "dev1",
		"protocol_id": 1,
		"position": {
			"latitude": 10.4806,
			"longitude": -66.9036
		},
		"payload": {},
		"received_at": 1770465935
	}`

	var msg DeviceMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal DeviceMessage: %v", err)
	}

	// DatumGis
	if msg.DatumGis() != 4326 {
		t.Errorf("Expected DatumGis 4326, got %d", msg.DatumGis())
	}

	// HasPoint
	if !msg.HasPoint() {
		t.Error("Expected HasPoint to be true")
	}

	// PointGis
	point := msg.PointGis()
	if point == nil {
		t.Fatal("Expected PointGis to be non-nil")
	}

	if !strings.HasPrefix(*point, "POINT(") {
		t.Errorf("Expected PointGis to start with 'POINT(', got '%s'", *point)
	}
}

func TestDeviceMessageNoPosition(t *testing.T) {
	t.Log("Running tests for DeviceMessage without valid position")
	jsonData := `{
		"id": "test-id",
		"device_id": 1,
		"ident": "dev1",
		"protocol_id": 1,
		"position": {},
		"payload": {},
		"received_at": 1770465935
	}`

	var msg DeviceMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal DeviceMessage: %v", err)
	}

	if msg.HasPoint() {
		t.Error("Expected HasPoint to be false for empty position")
	}

	if msg.PointGis() != nil {
		t.Error("Expected PointGis to be nil for empty position")
	}
}

func TestDeviceMessageFromMap(t *testing.T) {
	t.Log("Running tests for DeviceMessageFromMap constructor")
	protocolId := int64(5)
	device := &Device{
		Id:         1,
		Name:       "GPS-01",
		Ident:      "860000000000001",
		ProtocolId: &protocolId,
		IsPrimary:  true,
	}

	data := map[string]any{
		"position.latitude":  10.4806,
		"position.longitude": -66.9036,
		"position.speed":     55.0,
		"ignition":           true,
		"received_at":        1770465935.0,
	}

	msg, err := DeviceMessageFromMap(&data, device)
	if err != nil {
		t.Fatalf("Failed to create DeviceMessage from map: %v", err)
	}

	if msg.DeviceId != 1 {
		t.Errorf("Expected DeviceId 1, got %d", msg.DeviceId)
	}

	if msg.Ident != "860000000000001" {
		t.Errorf("Expected Ident '860000000000001', got '%s'", msg.Ident)
	}

	if msg.ProtocolId != 5 {
		t.Errorf("Expected ProtocolId 5, got %d", msg.ProtocolId)
	}

	// Position fields should be extracted from "position." prefix
	if _, ok := msg.Position["latitude"]; !ok {
		t.Error("Expected 'latitude' key in Position")
	}

	if _, ok := msg.Position["longitude"]; !ok {
		t.Error("Expected 'longitude' key in Position")
	}

	// Payload should contain all keys (including position. prefixed)
	if _, ok := msg.Payload["ignition"]; !ok {
		t.Error("Expected 'ignition' key in Payload")
	}

	// Id should be set (UUIDv7 composed from received_at)
	if msg.Id == nil {
		t.Fatal("Expected Id to be non-nil after DeviceMessageFromMap")
	}

	// ReceivedAt() should recover a timestamp close to the input (ms precision)
	receivedAt := msg.ReceivedAt()
	if receivedAt.IsZero() {
		t.Error("Expected non-zero ReceivedAt")
	}
	if receivedAt.Unix() < 1770465934 || receivedAt.Unix() > 1770465936 {
		t.Errorf("Expected ReceivedAt ~1770465935, got %d", receivedAt.Unix())
	}
}

func TestDeviceMessageFromMapNilData(t *testing.T) {
	t.Log("Running tests for DeviceMessageFromMap with nil data")
	protocolId := int64(5)
	device := &Device{
		Id:         1,
		Ident:      "test",
		ProtocolId: &protocolId,
	}

	_, err := DeviceMessageFromMap(nil, device)
	if err == nil {
		t.Error("Expected error for nil data")
	}
}

func TestDeviceMessageFromMapNilDevice(t *testing.T) {
	t.Log("Running tests for DeviceMessageFromMap with nil device")
	data := map[string]any{"received_at": 1770465935.0}

	_, err := DeviceMessageFromMap(&data, nil)
	if err == nil {
		t.Error("Expected error for nil device")
	}
}
