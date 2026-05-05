package entities

import (
	"encoding/json"
	"fmt"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
	"github.com/google/uuid"
)

// AssetMessage represents a message sent from or to an asset.
type AssetMessage struct {
	// ID of the asset message, can be nil if not stored yet.
	Id *string `json:"id"`
	// ID of the associated asset.
	AssetId int64 `json:"asset_id"`
	// Position data including latitude and longitude.
	Position map[string]any `json:"position"`
	// Payload data from the asset message.
	Payload map[string]any `json:"payload"`
	// Sensor data extracted from the payload.
	Sensors map[string]any `json:"sensors"`
	// IDs of geofences associated with the asset message.
	GeofencesIds []int64 `json:"geofences_ids"`
	// Distance traveled since the last message in meters.
	DistanceTraveled float64 `json:"distance_traveled"`
	// Time when the message was received.
	ReceivedAt types.UnixTime `json:"received_at"`
	// Elapsed time since the last message.
	ElapsedTime types.Duration `json:"elapsed_time"`
}

// MarshalJSON ensures nil maps/slices serialize as {}/{} rather than null, matching Python defaults.
func (a AssetMessage) MarshalJSON() ([]byte, error) {
	type alias AssetMessage
	a2 := alias(a)
	if a2.Position == nil {
		a2.Position = map[string]any{}
	}
	if a2.Payload == nil {
		a2.Payload = map[string]any{}
	}
	if a2.Sensors == nil {
		a2.Sensors = map[string]any{}
	}
	if a2.GeofencesIds == nil {
		a2.GeofencesIds = []int64{}
	}
	return json.Marshal(a2)
}

// UnmarshalJSON validates that Id, if present, is a valid UUIDv7 string.
func (a *AssetMessage) UnmarshalJSON(data []byte) error {
	type alias AssetMessage
	var a2 alias
	if err := json.Unmarshal(data, &a2); err != nil {
		return err
	}
	if a2.Id != nil {
		parsed, err := uuid.Parse(*a2.Id)
		if err != nil || parsed.Version() != 7 {
			return fmt.Errorf("id must be a valid UUIDv7, got %q", *a2.Id)
		}
	}
	*a = AssetMessage(a2)
	return nil
}

// DatumGis returns the EPSG code for WGS 84
func (a *AssetMessage) DatumGis() int32 {
	return 4326
}

// HasPoint checks if the asset message contains valid latitude and longitude in its position.
// Accepts both float64 and integer numeric types.
func (a *AssetMessage) HasPoint() bool {
	if a.Position == nil {
		return false
	}
	return toFloat64(a.Position["latitude"]) != nil && toFloat64(a.Position["longitude"]) != nil
}

// PointGis returns the GIS point representation of the asset message
func (a *AssetMessage) PointGis() *string {
	if !a.HasPoint() {
		return nil
	}

	lat := *toFloat64(a.Position["latitude"])
	lon := *toFloat64(a.Position["longitude"])

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

// ComputeDistanceTraveled calculates the distance in meters between this message and a previous one.
// Uses the Vincenty inverse formula on WGS-84, matching geopy.distance.geodesic (Python).
func (a *AssetMessage) ComputeDistanceTraveled(previousMessage *AssetMessage) float64 {
	if previousMessage == nil || !a.HasPoint() || !previousMessage.HasPoint() {
		return 0
	}

	lat1 := *toFloat64(a.Position["latitude"])
	lon1 := *toFloat64(a.Position["longitude"])
	lat2 := *toFloat64(previousMessage.Position["latitude"])
	lon2 := *toFloat64(previousMessage.Position["longitude"])

	return geodesicDistance(lat1, lon1, lat2, lon2)
}

// AssetMessageFromDeviceMessage constructs an AssetMessage from a DeviceMessage and Asset.
// Mirrors Python's AssetMessage.parse_from_devicemessage:
//   - position is derived from asset.operation_mode
//   - payload keys are prefixed with "{ident}."
func AssetMessageFromDeviceMessage(deviceMessage *DeviceMessage, asset *Asset) *AssetMessage {
	zero := types.Duration(0)
	if deviceMessage == nil {
		return nil
	}

	if asset == nil {
		return nil
	}

	var position map[string]any
	switch asset.OperationMode {
	case enums.AssetOperationModeDisconnected:
		position = map[string]any{}
	case enums.AssetOperationModeStatic:
		if asset.StaticPosition != nil {
			position = map[string]any{
				"latitude":  asset.StaticPosition.Latitude,
				"longitude": asset.StaticPosition.Longitude,
			}
			if asset.StaticPosition.Altitude != nil {
				position["altitude"] = *asset.StaticPosition.Altitude
			}
		} else {
			position = map[string]any{}
		}
	case enums.AssetOperationModeZone:
		if len(asset.Points) > 0 {
			var sumLat, sumLon float64
			for _, p := range asset.Points {
				sumLat += p.Latitude
				sumLon += p.Longitude
			}
			n := float64(len(asset.Points))
			position = map[string]any{
				"latitude":  sumLat / n,
				"longitude": sumLon / n,
			}
		} else {
			position = map[string]any{}
		}
	default:
		// SINGLE, MULTIPLE, ASSETMULTIPLE — use device position
		if deviceMessage.Position != nil {
			position = deviceMessage.Position
		} else {
			position = map[string]any{}
		}
	}

	payload := make(map[string]any, len(deviceMessage.Payload))
	for key, value := range deviceMessage.Payload {
		payload[deviceMessage.Ident+"."+key] = value
	}

	return &AssetMessage{
		AssetId:          asset.Id,
		Position:         position,
		Payload:          payload,
		Sensors:          make(map[string]any),
		GeofencesIds:     make([]int64, 0),
		DistanceTraveled: 0,
		ElapsedTime:      zero,
		ReceivedAt:       types.UnixTime{Time: deviceMessage.ReceivedAt()},
	}
}
