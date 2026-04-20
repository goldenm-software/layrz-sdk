package types

import (
	"encoding/json"
	"testing"
)

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

	expected := `"550e8400-e29b-41d4-a716-446655440000"`
	if string(marshaled) != expected {
		t.Errorf("Expected %s, got %s", expected, string(marshaled))
	}

	var roundtrip Uuid
	err = json.Unmarshal(marshaled, &roundtrip)
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
	if string(marshaled) != `"550e8400-e29b-41d4-a716-446655440000"` {
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
