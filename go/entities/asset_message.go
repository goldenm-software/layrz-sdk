package entities

import (
	"fmt"

	"github.com/goldenm-software/layrz-sdk/go/v4/types"
	"github.com/umahmood/haversine"
)

// AssetMessage represents a message sent from or to an asset.
type AssetMessage struct {
	// ID of the asset message, can be nil if not stored yet.
	Id *int64 `json:"id"`
	// ID of the associated asset.
	AssetId int64 `json:"asset_id"`
	// Position data including latitude and longitude.
	Position map[string]any `json:"position"`
	// Payload data from the asset message.
	Payload map[string]any `json:"payload"`
	// Sensor data extracted from the payload. Can be an empty map if no sensors are present or it was not processed.
	Sensors map[string]any `json:"sensors"`
	// IDs of geofences associated with the asset message. Can be an empty slice if none are associated.
	GeofencesIds []int64 `json:"geofences_ids"`
	// Distance traveled since the last message in meters. To be computed externally.
	// You can compute this using the ComputeDistanceTraveled method.
	DistanceTraveled float64 `json:"distance_traveled"`
	// Time when the message was received.
	ReceivedAt types.UnixTime `json:"received_at"`
	// Elapsed time since the last message. To be computed externally.
	// You can compute this using the ComputeElapsedTime method.
	ElapsedTime types.Duration `json:"elapsed_time"`
}

// DatumGis returns the EPSG code for WGS 84
func (a *AssetMessage) DatumGis() int32 {
	return 4326
}

// HasPoint checks if the asset message contains valid latitude and longitude in its position
func (a *AssetMessage) HasPoint() bool {
	if a.Position == nil {
		return false
	}

	_, latOk := a.Position["latitude"].(float64)
	_, lonOk := a.Position["longitude"].(float64)

	return latOk && lonOk
}

// PointGis returns the GIS point representation of the asset message
func (a *AssetMessage) PointGis() *string {
	if !a.HasPoint() {
		return nil
	}

	lat := a.Position["latitude"].(float64)
	lon := a.Position["longitude"].(float64)

	point := fmt.Sprintf("POINT(%f %f)", lon, lat)
	return &point
}

// ComputeElapsedTime calculates the elapsed time between this message and a previous message
func (a *AssetMessage) ComputeElapsedTime(previousMessage *AssetMessage) *types.Duration {
	zero := types.Duration(0)
	if previousMessage == nil {
		return &zero
	}

	if a.ReceivedAt.Before(previousMessage.ReceivedAt.Time) {
		return &zero
	}

	elapsed := a.ReceivedAt.Sub(previousMessage.ReceivedAt.Time)
	duration := types.Duration(elapsed)
	return &duration
}

// ComputeDistanceTraveled calculates the distance traveled between this message and a previous message
func (a *AssetMessage) ComputeDistanceTraveled(previousMessage *AssetMessage) float64 {
	if previousMessage == nil || !a.HasPoint() || !previousMessage.HasPoint() {
		return 0
	}

	lat1 := a.Position["latitude"].(float64)
	lon1 := a.Position["longitude"].(float64)
	lat2 := previousMessage.Position["latitude"].(float64)
	lon2 := previousMessage.Position["longitude"].(float64)

	msg1 := haversine.Coord{Lat: lat1, Lon: lon1}
	msg2 := haversine.Coord{Lat: lat2, Lon: lon2}

	_, distance := haversine.Distance(msg1, msg2)
	return distance * 1000 // The haversine package returns distance in kilometers, convert to meters
}

// Helper function to create an AssetMessage from a DeviceMessage
func AssetMessageFromDeviceMessage(deviceMessage *DeviceMessage, asset *Asset) *AssetMessage {
	zero := types.Duration(0)
	if deviceMessage == nil {
		return nil
	}

	if asset == nil {
		return nil
	}

	return &AssetMessage{
		AssetId:          asset.Id,
		Position:         deviceMessage.Position,
		Payload:          deviceMessage.Payload,
		Sensors:          make(map[string]any),
		GeofencesIds:     make([]int64, 0),
		DistanceTraveled: 0,
		ElapsedTime:      zero,
		ReceivedAt:       deviceMessage.ReceivedAt,
	}
}
