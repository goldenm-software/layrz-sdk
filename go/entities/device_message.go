package entities

import (
	"encoding/binary"
	"fmt"
	"strconv"
	"strings"
	"time"

	"github.com/goldenm-software/layrz-sdk/go/v4/types"
	"github.com/google/uuid"
)

// DeviceMessage represents a message sent from or to a device.
type DeviceMessage struct {
	Id         *string        `json:"id,omitempty"`
	DeviceId   int64          `json:"device_id"`
	Ident      string         `json:"ident"`
	ProtocolId int64          `json:"protocol_id"`
	Position   map[string]any `json:"position"`
	Payload    map[string]any `json:"payload"`
}

// ReceivedAt extracts the timestamp embedded in the UUIDv7 Id.
// Returns current UTC time if Id is nil or not a valid UUIDv7.
func (a *DeviceMessage) ReceivedAt() time.Time {
	if a.Id == nil {
		return time.Now().UTC()
	}
	parsed, err := uuid.Parse(*a.Id)
	if err != nil {
		return time.Now().UTC()
	}
	u := types.Uuid(parsed)
	ts := u.TimestampFromV7()
	if ts == nil {
		return time.Now().UTC()
	}
	return *ts
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

// uuidV7FromTime builds a UUIDv7 with the given timestamp encoded in the first 48 bits.
func uuidV7FromTime(t time.Time) uuid.UUID {
	var u uuid.UUID
	msec := uint64(t.UnixMilli())
	// Encode ms timestamp into first 6 bytes
	binary.BigEndian.PutUint16(u[0:2], uint16(msec>>32))
	binary.BigEndian.PutUint32(u[2:6], uint32(msec))
	// Set version 7 in bits 4–7 of byte 6
	u[6] = (u[6] & 0x0f) | 0x70
	// Set variant bits (10xx) in byte 8
	u[8] = (u[8] & 0x3f) | 0x80
	return u
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
		if v, ok := (*data)["server.timestamp"]; ok {
			rawTimestamp = v
		} else if v, ok := (*data)["timestamp"]; ok {
			rawTimestamp = v
		} else {
			return nil, fmt.Errorf("received_at not found in data")
		}
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

	u := uuidV7FromTime(receivedAt)
	idStr := u.String()

	return &DeviceMessage{
		Id:         &idStr,
		DeviceId:   device.Id,
		Ident:      device.Ident,
		ProtocolId: *device.ProtocolId,
		Position:   position,
		Payload:    payload,
	}, nil
}
