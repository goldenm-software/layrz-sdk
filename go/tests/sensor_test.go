package tests

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestSensor(t *testing.T) {
	t.Log("Running tests for Sensor entity")
	jsonData := `{
		"id": 15,
		"name": "Temperature",
		"formula": "GET_PARAM('temp') * 0.1",
		"script": "return params['temp'] * 0.1",
		"measuring_unit": "°C",
		"mask": [
			{
				"icon": "thermometer-high",
				"text": "Hot",
				"color": "#FF0000",
				"value": 40
			},
			{
				"icon": "thermometer-low",
				"text": "Cold",
				"color": "#0000FF",
				"value": 0
			}
		]
	}`

	var sensor entities.Sensor
	err := json.Unmarshal([]byte(jsonData), &sensor)
	if err != nil {
		t.Fatalf("Failed to unmarshal Sensor: %v", err)
	}

	if sensor.Id != 15 {
		t.Errorf("Expected Id 15, got %d", sensor.Id)
	}

	if sensor.Name != "Temperature" {
		t.Errorf("Expected Name 'Temperature', got '%s'", sensor.Name)
	}

	if sensor.Formula == nil || *sensor.Formula != "GET_PARAM('temp') * 0.1" {
		t.Error("Expected Formula to match")
	}

	if sensor.Script == nil || *sensor.Script != "return params['temp'] * 0.1" {
		t.Error("Expected Script to match")
	}

	if sensor.MeasuringUnit == nil || *sensor.MeasuringUnit != "°C" {
		t.Error("Expected MeasuringUnit '°C'")
	}

	if len(sensor.Mask) != 2 {
		t.Fatalf("Expected 2 masks, got %d", len(sensor.Mask))
	}

	if sensor.Mask[0].Text == nil || *sensor.Mask[0].Text != "Hot" {
		t.Error("Expected first mask Text 'Hot'")
	}

	if sensor.Mask[1].Text == nil || *sensor.Mask[1].Text != "Cold" {
		t.Error("Expected second mask Text 'Cold'")
	}
}

func TestSensorMinimal(t *testing.T) {
	t.Log("Running tests for Sensor with minimal fields")
	jsonData := `{
		"id": 1,
		"name": "Basic Sensor"
	}`

	var sensor entities.Sensor
	err := json.Unmarshal([]byte(jsonData), &sensor)
	if err != nil {
		t.Fatalf("Failed to unmarshal Sensor: %v", err)
	}

	if sensor.Formula != nil {
		t.Error("Expected Formula to be nil")
	}

	if sensor.Script != nil {
		t.Error("Expected Script to be nil")
	}

	if sensor.MeasuringUnit != nil {
		t.Error("Expected MeasuringUnit to be nil")
	}

	if len(sensor.Mask) != 0 {
		t.Errorf("Expected 0 masks, got %d", len(sensor.Mask))
	}
}
