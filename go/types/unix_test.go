package types

import (
	"encoding/json"
	"math"
	"testing"
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
