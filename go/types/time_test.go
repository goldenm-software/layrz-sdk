package types

import (
	"encoding/json"
	"testing"
)

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
