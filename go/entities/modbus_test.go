package entities

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
)

func TestModbusConfig(t *testing.T) {
	t.Log("Running tests for ModbusConfig entity")
	jsonData := `{
		"port_id": "COM1",
		"is_enabled": true,
		"parameters": [
			{
				"schema": "SINGLE",
				"split_each": 2,
				"data_length": 4,
				"data_address": 100,
				"function_code": 3,
				"controller_address": 1
			}
		]
	}`

	var mc ModbusConfig
	err := json.Unmarshal([]byte(jsonData), &mc)
	if err != nil {
		t.Fatalf("Failed to unmarshal ModbusConfig: %v", err)
	}

	if mc.PortId != "COM1" {
		t.Errorf("Expected PortId 'COM1', got '%s'", mc.PortId)
	}

	if !mc.IsEnabled {
		t.Error("Expected IsEnabled to be true")
	}

	if len(mc.Parameters) != 1 {
		t.Fatalf("Expected 1 parameter, got %d", len(mc.Parameters))
	}

	param := mc.Parameters[0]
	if param.Schema != enums.ModbusSchemaSingle {
		t.Errorf("Expected Schema 'SINGLE', got '%s'", param.Schema)
	}

	if param.SplitEach != 2 {
		t.Errorf("Expected SplitEach 2, got %d", param.SplitEach)
	}

	if param.Length != 4 {
		t.Errorf("Expected Length 4, got %d", param.Length)
	}

	if param.Address != 100 {
		t.Errorf("Expected Address 100, got %d", param.Address)
	}

	if param.FunctionCode != 3 {
		t.Errorf("Expected FunctionCode 3, got %d", param.FunctionCode)
	}

	if param.ControllerAddress != 1 {
		t.Errorf("Expected ControllerAddress 1, got %d", param.ControllerAddress)
	}
}
