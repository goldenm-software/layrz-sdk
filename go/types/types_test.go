package types

import (
	"encoding/json"
	"math"
	"testing"
	"time"
)

func TestUnixTime(t *testing.T) {
	t.Log("Running tests for UnixTime marshal/unmarshal")

	jsonData := `1770465935.123`

	var ut UnixTime
	err := json.Unmarshal([]byte(jsonData), &ut)
	if err != nil {
		t.Fatalf("Failed to unmarshal UnixTime: %v", err)
	}

	gotSeconds := float64(ut.UnixMicro()) / 1e6
	if math.Abs(gotSeconds-1770465935.123) > 0.001 {
		t.Errorf("Expected ~1770465935.123, got %f", gotSeconds)
	}

	marshaled, err := json.Marshal(ut)
	if err != nil {
		t.Fatalf("Failed to marshal UnixTime: %v", err)
	}

	var roundtrip UnixTime
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip UnixTime: %v", err)
	}

	rtSeconds := float64(roundtrip.UnixMicro()) / 1e6
	if math.Abs(rtSeconds-gotSeconds) > 0.001 {
		t.Errorf("Roundtrip mismatch: expected %f, got %f", gotSeconds, rtSeconds)
	}
}

func TestUnixTimeInteger(t *testing.T) {
	t.Log("Running tests for UnixTime with integer input")

	jsonData := `1770465935`

	var ut UnixTime
	err := json.Unmarshal([]byte(jsonData), &ut)
	if err != nil {
		t.Fatalf("Failed to unmarshal UnixTime: %v", err)
	}

	gotSeconds := float64(ut.UnixMicro()) / 1e6
	if math.Abs(gotSeconds-1770465935) > 0.001 {
		t.Errorf("Expected ~1770465935, got %f", gotSeconds)
	}
}

func TestDuration(t *testing.T) {
	t.Log("Running tests for Duration marshal/unmarshal")

	jsonData := `300.5`

	var d Duration
	err := json.Unmarshal([]byte(jsonData), &d)
	if err != nil {
		t.Fatalf("Failed to unmarshal Duration: %v", err)
	}

	expectedNs := 300.5 * float64(time.Second)
	if math.Abs(float64(d)-expectedNs) > float64(time.Millisecond) {
		t.Errorf("Expected ~300.5s in nanoseconds, got %v", float64(d))
	}

	marshaled, err := json.Marshal(d)
	if err != nil {
		t.Fatalf("Failed to marshal Duration: %v", err)
	}

	var roundtrip Duration
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip Duration: %v", err)
	}

	if math.Abs(float64(roundtrip)-float64(d)) > float64(time.Millisecond) {
		t.Errorf("Roundtrip mismatch")
	}
}

func TestDurationZero(t *testing.T) {
	t.Log("Running tests for Duration with zero value")

	jsonData := `0`

	var d Duration
	err := json.Unmarshal([]byte(jsonData), &d)
	if err != nil {
		t.Fatalf("Failed to unmarshal Duration: %v", err)
	}

	if d != Duration(0) {
		t.Errorf("Expected zero duration, got %v", d)
	}
}

func TestTime(t *testing.T) {
	t.Log("Running tests for Time marshal/unmarshal")

	jsonData := `"14:30:45"`

	var tm Time
	err := json.Unmarshal([]byte(jsonData), &tm)
	if err != nil {
		t.Fatalf("Failed to unmarshal Time: %v", err)
	}

	marshaled, err := json.Marshal(tm)
	if err != nil {
		t.Fatalf("Failed to marshal Time: %v", err)
	}

	if string(marshaled) != `"14:30:45"` {
		t.Errorf("Expected \"14:30:45\", got %s", string(marshaled))
	}
}

func TestTimeNull(t *testing.T) {
	t.Log("Running tests for Time with null value")

	jsonData := `"null"`

	var tm Time
	err := json.Unmarshal([]byte(jsonData), &tm)
	if err != nil {
		t.Fatalf("Failed to unmarshal null Time: %v", err)
	}
}

func TestUuid(t *testing.T) {
	t.Log("Running tests for Uuid unmarshal and MarshalJSON")

	jsonData := `"550e8400-e29b-41d4-a716-446655440000"`

	var u Uuid
	err := json.Unmarshal([]byte(jsonData), &u)
	if err != nil {
		t.Fatalf("Failed to unmarshal Uuid: %v", err)
	}

	marshaled, err := u.MarshalJSON()
	if err != nil {
		t.Fatalf("Failed to MarshalJSON Uuid: %v", err)
	}

	expected := "550e8400-e29b-41d4-a716-446655440000"
	if string(marshaled) != expected {
		t.Errorf("Expected %s, got %s", expected, string(marshaled))
	}

	var roundtrip Uuid
	err = roundtrip.UnmarshalJSON(marshaled)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip Uuid: %v", err)
	}

	remarshaled, _ := roundtrip.MarshalJSON()
	if string(remarshaled) != string(marshaled) {
		t.Errorf("Roundtrip mismatch: %s vs %s", string(marshaled), string(remarshaled))
	}
}

func TestUuidInStruct(t *testing.T) {
	t.Log("Running tests for Uuid as struct field")
	jsonData := `{
		"id": "550e8400-e29b-41d4-a716-446655440000",
		"token": "test",
		"owner_id": 1,
		"created_at": 1770465935,
		"is_expired": false
	}`

	type UuidHolder struct {
		Id Uuid `json:"id"`
	}

	var holder UuidHolder
	err := json.Unmarshal([]byte(jsonData), &holder)
	if err != nil {
		t.Fatalf("Failed to unmarshal struct with Uuid: %v", err)
	}

	marshaled, _ := holder.Id.MarshalJSON()
	if string(marshaled) != "550e8400-e29b-41d4-a716-446655440000" {
		t.Errorf("Expected UUID value, got %s", string(marshaled))
	}
}

func TestUuidTimestampFromV7(t *testing.T) {
	t.Log("Running tests for Uuid TimestampFromV7")

	// UUIDv7 generated from a known timestamp
	// ts=2026-02-07T00:00:00Z → ms=1770422400000 → hex 0x019C3565F400
	// bytes: 01 9C 35 65 F4 00, version=7, variant=10
	jsonData := `"019c3565-f400-7000-8000-000000000000"`

	var u Uuid
	err := json.Unmarshal([]byte(jsonData), &u)
	if err != nil {
		t.Fatalf("Failed to unmarshal Uuid: %v", err)
	}

	ts := u.TimestampFromV7()
	if ts == nil {
		t.Fatal("Expected non-nil timestamp for UUIDv7")
	}

	expectedMs := int64(1770422400000)
	gotMs := ts.UnixMilli()
	if gotMs != expectedMs {
		t.Errorf("Expected timestamp %d ms, got %d ms", expectedMs, gotMs)
	}
}

func TestUuidTimestampFromV7NonV7(t *testing.T) {
	t.Log("Running tests for Uuid TimestampFromV7 with non-v7 UUID")

	// UUIDv4
	jsonData := `"550e8400-e29b-41d4-a716-446655440000"`

	var u Uuid
	err := json.Unmarshal([]byte(jsonData), &u)
	if err != nil {
		t.Fatalf("Failed to unmarshal Uuid: %v", err)
	}

	ts := u.TimestampFromV7()
	if ts != nil {
		t.Error("Expected nil timestamp for non-v7 UUID")
	}
}
