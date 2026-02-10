package entities

import (
	"encoding/json"
	"math"
	"testing"
)

func TestParameterUpdate(t *testing.T) {
	t.Log("Running tests for ParameterUpdate entity")
	jsonData := `{
		"asset_id": 100,
		"parameters": {
			"speed": {
				"value": 85.5,
				"updated_at": 1770465935
			},
			"ignition": {
				"value": true,
				"updated_at": 1770465930
			}
		}
	}`

	var pu ParameterUpdate
	err := json.Unmarshal([]byte(jsonData), &pu)
	if err != nil {
		t.Fatalf("Failed to unmarshal ParameterUpdate: %v", err)
	}

	if pu.AssetId != 100 {
		t.Errorf("Expected AssetId 100, got %d", pu.AssetId)
	}

	if len(pu.Parameters) != 2 {
		t.Fatalf("Expected 2 parameters, got %d", len(pu.Parameters))
	}

	speedParam, ok := pu.Parameters["speed"]
	if !ok {
		t.Fatal("Expected 'speed' parameter")
	}

	if speedParam.Value == nil {
		t.Fatal("Expected speed value to be non-nil")
	}

	speedVal, ok := (*speedParam.Value).(float64)
	if !ok {
		t.Fatal("Expected speed value to be float64")
	}

	if math.Abs(speedVal-85.5) > 0.01 {
		t.Errorf("Expected speed value ~85.5, got %f", speedVal)
	}

	speedUpdatedAt := float64(speedParam.UpdatedAt.UnixMicro()) / 1e6
	if math.Abs(speedUpdatedAt-1770465935) > 0.001 {
		t.Errorf("Expected speed updated_at ~1770465935, got %f", speedUpdatedAt)
	}
}

func TestParameterUpdateKeySanitization(t *testing.T) {
	t.Log("Running tests for ParameterUpdate double-underscore key sanitization")
	jsonData := `{
		"asset_id": 1,
		"parameters": {
			"position__latitude": {
				"value": 10.4806,
				"updated_at": 1770465935
			},
			"position__longitude": {
				"value": -66.9036,
				"updated_at": 1770465935
			},
			"device__ident__status": {
				"value": "active",
				"updated_at": 1770465935
			}
		}
	}`

	var pu ParameterUpdate
	err := json.Unmarshal([]byte(jsonData), &pu)
	if err != nil {
		t.Fatalf("Failed to unmarshal ParameterUpdate: %v", err)
	}

	// "__" should be replaced with "."
	if _, ok := pu.Parameters["position.latitude"]; !ok {
		t.Error("Expected key 'position.latitude' after sanitization")
	}

	if _, ok := pu.Parameters["position.longitude"]; !ok {
		t.Error("Expected key 'position.longitude' after sanitization")
	}

	if _, ok := pu.Parameters["device.ident.status"]; !ok {
		t.Error("Expected key 'device.ident.status' after sanitization")
	}

	// Original keys should NOT exist
	if _, ok := pu.Parameters["position__latitude"]; ok {
		t.Error("Original key 'position__latitude' should not exist after sanitization")
	}

	if _, ok := pu.Parameters["device__ident__status"]; ok {
		t.Error("Original key 'device__ident__status' should not exist after sanitization")
	}
}

func TestParameterUpdateNullValue(t *testing.T) {
	t.Log("Running tests for ParameterUpdate with null value")
	jsonData := `{
		"asset_id": 1,
		"parameters": {
			"temperature": {
				"updated_at": 1770465935
			}
		}
	}`

	var pu ParameterUpdate
	err := json.Unmarshal([]byte(jsonData), &pu)
	if err != nil {
		t.Fatalf("Failed to unmarshal ParameterUpdate: %v", err)
	}

	param, ok := pu.Parameters["temperature"]
	if !ok {
		t.Fatal("Expected 'temperature' parameter")
	}

	if param.Value != nil {
		t.Error("Expected temperature value to be nil")
	}
}
