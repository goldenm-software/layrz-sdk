package types

import (
	"encoding/json"
	"math"
	"testing"
	"time"
)

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
