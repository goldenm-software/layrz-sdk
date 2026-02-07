package tests

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestOutboundService(t *testing.T) {
	t.Log("Running tests for OutboundService entity")
	jsonData := `{
		"id": 5,
		"name": "MQTT Service",
		"protocol_name": "mqtt",
		"mqtt_topic": "devices/data",
		"is_consumed": true,
		"credentials": {"host": "broker.example.com", "port": 1883}
	}`

	var os entities.OutboundService
	err := json.Unmarshal([]byte(jsonData), &os)
	if err != nil {
		t.Fatalf("Failed to unmarshal OutboundService: %v", err)
	}

	if os.ID != 5 {
		t.Errorf("Expected ID 5, got %d", os.ID)
	}

	if os.Name != "MQTT Service" {
		t.Errorf("Expected Name 'MQTT Service', got '%s'", os.Name)
	}

	if os.ProtocolName == nil || *os.ProtocolName != "mqtt" {
		t.Error("Expected ProtocolName 'mqtt'")
	}

	if os.MqttTopic == nil || *os.MqttTopic != "devices/data" {
		t.Error("Expected MqttTopic 'devices/data'")
	}

	if !os.IsConsumed {
		t.Error("Expected IsConsumed to be true")
	}

	if len(os.Credentials) != 2 {
		t.Errorf("Expected 2 credential keys, got %d", len(os.Credentials))
	}
}

func TestOutboundServiceMinimal(t *testing.T) {
	t.Log("Running tests for OutboundService with minimal fields")
	jsonData := `{
		"id": 1,
		"name": "HTTP Service",
		"is_consumed": false,
		"credentials": {}
	}`

	var os entities.OutboundService
	err := json.Unmarshal([]byte(jsonData), &os)
	if err != nil {
		t.Fatalf("Failed to unmarshal OutboundService: %v", err)
	}

	if os.ProtocolName != nil {
		t.Error("Expected ProtocolName to be nil")
	}

	if os.MqttTopic != nil {
		t.Error("Expected MqttTopic to be nil")
	}
}
