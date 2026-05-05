package entities

import (
	"encoding/binary"
	"encoding/json"
	"fmt"
	"strconv"
	"strings"
	"time"

	"github.com/goldenm-software/layrz-sdk/go/v4/types"
	"github.com/google/uuid"
)

// DeviceMessage represents a message sent from or to a device.
type DeviceMessage struct {
	Id         *string        `json:"id"`
	DeviceId   int64          `json:"device_id"`
	Ident      string         `json:"ident"`
	ProtocolId int64          `json:"protocol_id"`
	Position   map[string]any `json:"position"`
	Payload    map[string]any `json:"payload"`
}

// MarshalJSON ensures nil maps serialize as {} rather than null, matching Python defaults.
func (d DeviceMessage) MarshalJSON() ([]byte, error) {
	type alias DeviceMessage
	a := alias(d)
	if a.Position == nil {
		a.Position = map[string]any{}
	}
	if a.Payload == nil {
		a.Payload = map[string]any{}
	}
	return json.Marshal(a)
}

// UnmarshalJSON validates that Id, if present, is a valid UUIDv7 string.
func (d *DeviceMessage) UnmarshalJSON(data []byte) error {
	type alias DeviceMessage
	var a alias
	if err := json.Unmarshal(data, &a); err != nil {
		return err
	}
	if a.Id != nil {
		parsed, err := uuid.Parse(*a.Id)
		if err != nil || parsed.Version() != 7 {
			return fmt.Errorf("id must be a valid UUIDv7, got %q", *a.Id)
		}
	}
	*d = DeviceMessage(a)
	return nil
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

// HasPoint checks if the device message contains valid latitude and longitude in its position.
// Accepts both float64 and integer numeric types.
func (a *DeviceMessage) HasPoint() bool {
	if a.Position == nil {
		return false
	}
	return toFloat64(a.Position["latitude"]) != nil && toFloat64(a.Position["longitude"]) != nil
}

// PointGis returns the GIS point representation of the device message
func (a *DeviceMessage) PointGis() *string {
	if !a.HasPoint() {
		return nil
	}

	lat := *toFloat64(a.Position["latitude"])
	lon := *toFloat64(a.Position["longitude"])

	point := fmt.Sprintf("POINT(%f %f)", lon, lat)
	return &point
}

// toFloat64 converts common numeric JSON-unmarshaled types to *float64.
func toFloat64(v any) *float64 {
	switch n := v.(type) {
	case float64:
		return &n
	case float32:
		f := float64(n)
		return &f
	case int:
		f := float64(n)
		return &f
	case int32:
		f := float64(n)
		return &f
	case int64:
		f := float64(n)
		return &f
	}
	return nil
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

// DeviceMessageFromMap constructs a DeviceMessage from a raw telemetry map and a Device.
// Mirrors Python's DeviceMessage.parse_from_dict:
//   - reads "timestamp" key (Unix seconds) for received_at; falls back to now
//   - position.* keys populate position (stripped, numeric only) and payload (raw)
//   - keys in RejectedKeys are excluded from payload
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

	var receivedAt time.Time
	if rawTimestamp, ok := (*data)["timestamp"]; ok {
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
				return nil, fmt.Errorf("invalid string format for timestamp: %v", err)
			}
			timestamp = parsed
		default:
			return nil, fmt.Errorf("invalid type for timestamp: %T", rawTimestamp)
		}
		msec := int64(timestamp * types.MicrosecondsToSeconds)
		receivedAt = time.UnixMicro(msec).UTC()
	} else {
		receivedAt = time.Now().UTC()
	}

	position := make(map[string]any)
	payload := make(map[string]any)

	for key, value := range *data {
		if posKey, ok := strings.CutPrefix(key, "position."); ok {
			// Only numeric values go into position (mirrors Python's isinstance(value, (float, int)))
			if f := toFloat64(value); f != nil {
				position[posKey] = *f
			}
			// Raw position.* key also goes into payload unless rejected
			if _, rejected := RejectedKeys[key]; !rejected {
				payload[key] = value
			}
			continue
		}

		if _, rejected := RejectedKeys[key]; !rejected {
			payload[key] = value
		}
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
