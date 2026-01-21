package entities

import (
	"fmt"
	"strconv"
	"strings"
	"time"

	"github.com/goldenm-software/layrz-sdk/go/types"
)

// DeviceMessage represents a message sent from or to a device.
type DeviceMessage struct {
	Id         int64          `json:"id"`
	DeviceId   int64          `json:"device_id"`
	Ident      string         `json:"ident"`
	ProtocolId int64          `json:"protocol_id"`
	Position   map[string]any `json:"position"`
	Payload    map[string]any `json:"payload"`
	ReceivedAt types.UnixTime `json:"received_at"`
}

// DatumGis returns the EPSG code for WGS 84
func (a *DeviceMessage) DatumGis() int32 {
	return 4326
}

func (a *DeviceMessage) HasPoint() bool {
	if a.Position == nil {
		return false
	}

	_, latOk := a.Position["latitude"].(float64)
	_, lonOk := a.Position["longitude"].(float64)

	return latOk && lonOk
}

// PointGis returns the GIS point representation of the asset message
func (a *DeviceMessage) PointGis() *string {
	if !a.HasPoint() {
		return nil
	}

	lat := a.Position["latitude"].(float64)
	lon := a.Position["longitude"].(float64)

	point := fmt.Sprintf("POINT(%f %f)", lon, lat)
	return &point
}

func DeviceMessageFromMap(data *map[string]any, device *Device) (*DeviceMessage, error) {
	if data == nil {
		return nil, fmt.Errorf("data is nil")
	}

	if device == nil {
		return nil, fmt.Errorf("device is nil")
	}

	if device.ProtocolId == nil {
		return nil, fmt.Errorf("device protocol ID is nil")
	}

	rawTimestamp, ok := (*data)["received_at"]
	if !ok {
		return nil, fmt.Errorf("received_at not found in data")
	}

	var timestamp float64
	switch v := rawTimestamp.(type) {
	case float64:
		timestamp = v
	case float32:
		timestamp = float64(v)
	case int64:
		timestamp = float64(v)
	case int32:
		timestamp = float64(v)
	case int:
		timestamp = float64(v)
	case string:
		parsed, err := strconv.ParseFloat(v, 64)
		if err != nil {
			return nil, fmt.Errorf("invalid string format for received_at: %v", err)
		}
		timestamp = parsed
	default:
		return nil, fmt.Errorf("invalid type for received_at: %T", rawTimestamp)
	}

	msec := int64(timestamp * types.MicrosecondsToSeconds)
	receivedAt := time.UnixMicro(msec).UTC()

	position := make(map[string]any)
	payload := make(map[string]any)

	for key, value := range *data {
		if posKey, ok := strings.CutPrefix(key, "position."); ok {
			position[posKey] = value
			payload[key] = value
			continue
		}

		payload[key] = value
	}

	return &DeviceMessage{
		DeviceId:   device.Id,
		Ident:      device.Ident,
		ProtocolId: *device.ProtocolId,
		Position:   position,
		Payload:    payload,
		ReceivedAt: types.UnixTime{Time: receivedAt},
	}, nil
}
