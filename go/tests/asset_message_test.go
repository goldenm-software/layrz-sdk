package tests

import (
	"encoding/json"
	"math"
	"strings"
	"testing"
	"time"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

func TestAssetMessage(t *testing.T) {
	t.Log("Running tests for AssetMessage entity")
	jsonData := `{
		"id": "019513f0-7c00-7000-8000-000000000001",
		"asset_id": 100,
		"position": {
			"latitude": 10.4806,
			"longitude": -66.9036,
			"speed": 55.0,
			"direction": 270
		},
		"payload": {
			"ignition": true,
			"fuel_level": 75.5
		},
		"sensors": {
			"speed": 55.0,
			"temperature": 22.5
		},
		"geofences_ids": [10, 20, 30],
		"distance_traveled": 1500.75,
		"received_at": 1770465935,
		"elapsed_time": 120.5
	}`

	var msg entities.AssetMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal AssetMessage: %v", err)
	}

	if msg.Id == nil || *msg.Id != "019513f0-7c00-7000-8000-000000000001" {
		t.Error("Expected Id '019513f0-7c00-7000-8000-000000000001'")
	}

	if msg.AssetId != 100 {
		t.Errorf("Expected AssetId 100, got %d", msg.AssetId)
	}

	if len(msg.Position) != 4 {
		t.Errorf("Expected 4 position keys, got %d", len(msg.Position))
	}

	if len(msg.Payload) != 2 {
		t.Errorf("Expected 2 payload keys, got %d", len(msg.Payload))
	}

	if len(msg.Sensors) != 2 {
		t.Errorf("Expected 2 sensor keys, got %d", len(msg.Sensors))
	}

	if len(msg.GeofencesIds) != 3 {
		t.Fatalf("Expected 3 geofence IDs, got %d", len(msg.GeofencesIds))
	}

	if msg.GeofencesIds[0] != 10 {
		t.Errorf("Expected first geofence ID 10, got %d", msg.GeofencesIds[0])
	}

	if math.Abs(msg.DistanceTraveled-1500.75) > 0.01 {
		t.Errorf("Expected DistanceTraveled ~1500.75, got %f", msg.DistanceTraveled)
	}

	receivedAtUnix := float64(msg.ReceivedAt.UnixMicro()) / 1e6
	if math.Abs(receivedAtUnix-1770465935) > 0.001 {
		t.Errorf("Expected ReceivedAt ~1770465935, got %f", receivedAtUnix)
	}
}

func TestAssetMessageMethods(t *testing.T) {
	t.Log("Running tests for AssetMessage methods")
	jsonData := `{
		"asset_id": 1,
		"position": {
			"latitude": 10.4806,
			"longitude": -66.9036
		},
		"payload": {},
		"sensors": {},
		"geofences_ids": [],
		"distance_traveled": 0,
		"received_at": 1770465935,
		"elapsed_time": 0
	}`

	var msg entities.AssetMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal AssetMessage: %v", err)
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

func TestAssetMessageNoPosition(t *testing.T) {
	t.Log("Running tests for AssetMessage without valid position")
	jsonData := `{
		"asset_id": 1,
		"position": {},
		"payload": {},
		"sensors": {},
		"geofences_ids": [],
		"distance_traveled": 0,
		"received_at": 1770465935,
		"elapsed_time": 0
	}`

	var msg entities.AssetMessage
	err := json.Unmarshal([]byte(jsonData), &msg)
	if err != nil {
		t.Fatalf("Failed to unmarshal AssetMessage: %v", err)
	}

	if msg.HasPoint() {
		t.Error("Expected HasPoint to be false")
	}

	if msg.PointGis() != nil {
		t.Error("Expected PointGis to be nil")
	}
}

func TestAssetMessageComputeElapsedTime(t *testing.T) {
	t.Log("Running tests for AssetMessage ComputeElapsedTime")

	current := &entities.AssetMessage{
		AssetId:    1,
		ReceivedAt: types.UnixTime{Time: time.Unix(1770466000, 0)},
	}

	previous := &entities.AssetMessage{
		AssetId:    1,
		ReceivedAt: types.UnixTime{Time: time.Unix(1770465900, 0)},
	}

	elapsed := current.ComputeElapsedTime(previous)
	if elapsed == nil {
		t.Fatal("Expected elapsed to be non-nil")
	}

	expectedSeconds := 100.0
	gotSeconds := float64(*elapsed) / float64(time.Second)
	if math.Abs(gotSeconds-expectedSeconds) > 0.01 {
		t.Errorf("Expected elapsed ~100s, got %f", gotSeconds)
	}
}

func TestAssetMessageComputeElapsedTimeNilPrevious(t *testing.T) {
	t.Log("Running tests for AssetMessage ComputeElapsedTime with nil previous")

	current := &entities.AssetMessage{
		AssetId:    1,
		ReceivedAt: types.UnixTime{Time: time.Unix(1770466000, 0)},
	}

	elapsed := current.ComputeElapsedTime(nil)
	if elapsed == nil {
		t.Fatal("Expected elapsed to be non-nil")
	}

	if *elapsed != types.Duration(0) {
		t.Error("Expected zero duration for nil previous")
	}
}

func TestAssetMessageComputeDistanceTraveled(t *testing.T) {
	t.Log("Running tests for AssetMessage ComputeDistanceTraveled")

	current := &entities.AssetMessage{
		AssetId: 1,
		Position: map[string]any{
			"latitude":  10.4806,
			"longitude": -66.9036,
		},
	}

	previous := &entities.AssetMessage{
		AssetId: 1,
		Position: map[string]any{
			"latitude":  10.4900,
			"longitude": -66.9100,
		},
	}

	distance := current.ComputeDistanceTraveled(previous)
	if distance <= 0 {
		t.Error("Expected positive distance")
	}

	// ~1.2 km between these points, so ~1200 meters
	if distance < 500 || distance > 3000 {
		t.Errorf("Expected distance between 500-3000m, got %f", distance)
	}
}

func TestAssetMessageComputeDistanceNilPrevious(t *testing.T) {
	t.Log("Running tests for AssetMessage ComputeDistanceTraveled with nil previous")

	current := &entities.AssetMessage{
		Position: map[string]any{"latitude": 10.0, "longitude": -66.0},
	}

	distance := current.ComputeDistanceTraveled(nil)
	if distance != 0 {
		t.Errorf("Expected 0 distance for nil previous, got %f", distance)
	}
}

func TestAssetMessageFromDeviceMessage(t *testing.T) {
	t.Log("Running tests for AssetMessageFromDeviceMessage")

	deviceMsg := &entities.DeviceMessage{
		Id:         "test-id",
		DeviceId:   1,
		Ident:      "dev1",
		ProtocolId: 5,
		Position:   map[string]any{"latitude": 10.0, "longitude": -66.0},
		Payload:    map[string]any{"ignition": true},
		ReceivedAt: types.UnixTime{Time: time.Unix(1770465935, 0)},
	}

	asset := &entities.Asset{
		Id:   100,
		Name: "Test Asset",
	}

	assetMsg := entities.AssetMessageFromDeviceMessage(deviceMsg, asset)
	if assetMsg == nil {
		t.Fatal("Expected non-nil AssetMessage")
	}

	if assetMsg.AssetId != 100 {
		t.Errorf("Expected AssetId 100, got %d", assetMsg.AssetId)
	}

	if assetMsg.Position["latitude"] != 10.0 {
		t.Error("Expected position to be copied from DeviceMessage")
	}

	if assetMsg.DistanceTraveled != 0 {
		t.Error("Expected DistanceTraveled to be 0")
	}
}

func TestAssetMessageFromDeviceMessageNil(t *testing.T) {
	t.Log("Running tests for AssetMessageFromDeviceMessage with nil inputs")

	asset := &entities.Asset{Id: 1, Name: "Test"}

	if entities.AssetMessageFromDeviceMessage(nil, asset) != nil {
		t.Error("Expected nil for nil DeviceMessage")
	}

	deviceMsg := &entities.DeviceMessage{Id: "test"}

	if entities.AssetMessageFromDeviceMessage(deviceMsg, nil) != nil {
		t.Error("Expected nil for nil Asset")
	}
}
