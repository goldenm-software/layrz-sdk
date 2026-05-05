package entities

import (
	"encoding/json"
	"math"
	"strings"
	"testing"
	"time"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
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

	var msg AssetMessage
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

	var msg AssetMessage
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

	var msg AssetMessage
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

	current := &AssetMessage{
		AssetId:    1,
		ReceivedAt: types.UnixTime{Time: time.Unix(1770466000, 0)},
	}

	previous := &AssetMessage{
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

	current := &AssetMessage{
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

	current := &AssetMessage{
		AssetId: 1,
		Position: map[string]any{
			"latitude":  10.4806,
			"longitude": -66.9036,
		},
	}

	previous := &AssetMessage{
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

	current := &AssetMessage{
		Position: map[string]any{"latitude": 10.0, "longitude": -66.0},
	}

	distance := current.ComputeDistanceTraveled(nil)
	if distance != 0 {
		t.Errorf("Expected 0 distance for nil previous, got %f", distance)
	}
}

func TestAssetMessageFromDeviceMessage(t *testing.T) {
	t.Log("Running tests for AssetMessageFromDeviceMessage")

	testId := "019513f0-7c00-7000-8000-000000000001"
	deviceMsg := &DeviceMessage{
		Id:         &testId,
		DeviceId:   1,
		Ident:      "dev1",
		ProtocolId: 5,
		Position:   map[string]any{"latitude": 10.0, "longitude": -66.0},
		Payload:    map[string]any{"ignition": true},
	}

	asset := &Asset{
		Id:   100,
		Name: "Test Asset",
	}

	assetMsg := AssetMessageFromDeviceMessage(deviceMsg, asset)
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

	// Payload keys must be prefixed with ident
	if _, ok := assetMsg.Payload["dev1.ignition"]; !ok {
		t.Error("Expected 'dev1.ignition' key in Payload (ident prefix)")
	}
	if _, ok := assetMsg.Payload["ignition"]; ok {
		t.Error("Did not expect unprefixed 'ignition' key in Payload")
	}
}

func TestAssetMessageFromDeviceMessageNil(t *testing.T) {
	t.Log("Running tests for AssetMessageFromDeviceMessage with nil inputs")

	asset := &Asset{Id: 1, Name: "Test"}

	if AssetMessageFromDeviceMessage(nil, asset) != nil {
		t.Error("Expected nil for nil DeviceMessage")
	}

	testId2 := "test"
	deviceMsg2 := &DeviceMessage{Id: &testId2}

	if AssetMessageFromDeviceMessage(deviceMsg2, nil) != nil {
		t.Error("Expected nil for nil Asset")
	}
}

func TestAssetMessageFromDeviceMessageOperationModes(t *testing.T) {
	t.Log("Running tests for AssetMessageFromDeviceMessage operation mode position derivation")

	testId := "019513f0-7c00-7000-8000-000000000001"
	deviceMsg := &DeviceMessage{
		Id:       &testId,
		Ident:    "dev1",
		Position: map[string]any{"latitude": 10.0, "longitude": -66.0},
		Payload:  map[string]any{},
	}

	altitude := 100.0

	tests := []struct {
		name        string
		asset       *Asset
		expectLat   *float64
		expectLon   *float64
		expectEmpty bool
	}{
		{
			name:        "DISCONNECTED gives empty position",
			asset:       &Asset{Id: 1, OperationMode: enums.AssetOperationModeDisconnected},
			expectEmpty: true,
		},
		{
			name: "STATIC gives static position",
			asset: &Asset{
				Id:             1,
				OperationMode:  enums.AssetOperationModeStatic,
				StaticPosition: &StaticPosition{Latitude: 5.0, Longitude: -70.0, Altitude: &altitude},
			},
			expectLat: floatPtr(5.0),
			expectLon: floatPtr(-70.0),
		},
		{
			name: "STATIC with nil StaticPosition gives empty",
			asset: &Asset{
				Id:            1,
				OperationMode: enums.AssetOperationModeStatic,
			},
			expectEmpty: true,
		},
		{
			name: "ZONE computes centroid",
			asset: &Asset{
				Id:            1,
				OperationMode: enums.AssetOperationModeZone,
				Points: []StaticPosition{
					{Latitude: 10.0, Longitude: -66.0},
					{Latitude: 12.0, Longitude: -68.0},
				},
			},
			expectLat: floatPtr(11.0),
			expectLon: floatPtr(-67.0),
		},
		{
			name: "ZONE with no points gives empty",
			asset: &Asset{
				Id:            1,
				OperationMode: enums.AssetOperationModeZone,
			},
			expectEmpty: true,
		},
		{
			name:      "SINGLE uses device position",
			asset:     &Asset{Id: 1, OperationMode: enums.AssetOperationModeSingle},
			expectLat: floatPtr(10.0),
			expectLon: floatPtr(-66.0),
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			msg := AssetMessageFromDeviceMessage(deviceMsg, tc.asset)
			if msg == nil {
				t.Fatal("Expected non-nil AssetMessage")
			}
			if tc.expectEmpty {
				if len(msg.Position) != 0 {
					t.Errorf("Expected empty position, got %v", msg.Position)
				}
				return
			}
			lat := toFloat64(msg.Position["latitude"])
			lon := toFloat64(msg.Position["longitude"])
			if lat == nil || math.Abs(*lat-*tc.expectLat) > 1e-9 {
				t.Errorf("Expected latitude %v, got %v", tc.expectLat, lat)
			}
			if lon == nil || math.Abs(*lon-*tc.expectLon) > 1e-9 {
				t.Errorf("Expected longitude %v, got %v", tc.expectLon, lon)
			}
		})
	}
}

func floatPtr(f float64) *float64 { return &f }

func TestAssetMessageNilMapMarshal(t *testing.T) {
	t.Log("Nil maps/slices must serialize as {}/{} not null")

	msg := AssetMessage{AssetId: 1}
	data, err := json.Marshal(&msg)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}
	s := string(data)
	for _, want := range []string{`"position":{}`, `"payload":{}`, `"sensors":{}`, `"geofences_ids":[]`} {
		if !strings.Contains(s, want) {
			t.Errorf("Expected %s in JSON, got: %s", want, s)
		}
	}
}

func TestAssetMessageInvalidUUID(t *testing.T) {
	t.Log("UnmarshalJSON must reject non-UUIDv7 id")

	jsonData := `{"id": "not-a-uuid", "asset_id": 1, "position": {}, "payload": {}, "sensors": {}, "geofences_ids": [], "distance_traveled": 0, "received_at": 1770465935, "elapsed_time": 0}`
	var msg AssetMessage
	if err := json.Unmarshal([]byte(jsonData), &msg); err == nil {
		t.Error("Expected error for invalid UUIDv7 id")
	}
}

func TestAssetMessageGeodesicDistance(t *testing.T) {
	t.Log("ComputeDistanceTraveled must match geopy.distance.geodesic reference values")

	type testCase struct {
		label                  string
		lat1, lon1, lat2, lon2 float64
		want                   float64
		tol                    float64
	}

	tests := []testCase{
		{"Caracas small", 10.4806, -66.9036, 10.4900, -66.9100, 1253.771872, 0.01},
		{"equator 1deg", 0.0, 0.0, 0.0, 1.0, 111319.490793, 0.01},
		{"NYC to London", 40.7128, -74.0060, 51.5074, -0.1278, 5585233.578931, 1.0},
		{"pole to pole", 90.0, 0.0, -90.0, 0.0, 20003931.458625, 1.0},
		{"same point", 10.4806, -66.9036, 10.4806, -66.9036, 0.0, 1e-6},
	}

	for _, tc := range tests {
		t.Run(tc.label, func(t *testing.T) {
			current := &AssetMessage{
				Position: map[string]any{"latitude": tc.lat1, "longitude": tc.lon1},
			}
			previous := &AssetMessage{
				Position: map[string]any{"latitude": tc.lat2, "longitude": tc.lon2},
			}
			got := current.ComputeDistanceTraveled(previous)
			if math.Abs(got-tc.want) > tc.tol {
				t.Errorf("%s: want %.6f m, got %.6f m (diff %.6f > tol %.6f)", tc.label, tc.want, got, math.Abs(got-tc.want), tc.tol)
			}
		})
	}
}
