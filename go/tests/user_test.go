package tests

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/entities"
)

func TestUser(t *testing.T) {
	t.Log("Running tests for User entity")
	jsonData := `{"id": 42, "name": "John Doe"}`

	var user entities.User
	err := json.Unmarshal([]byte(jsonData), &user)
	if err != nil {
		t.Fatalf("Failed to unmarshal User: %v", err)
	}

	if user.ID != 42 {
		t.Errorf("Expected ID 42, got %d", user.ID)
	}

	if user.Name != "John Doe" {
		t.Errorf("Expected Name 'John Doe', got '%s'", user.Name)
	}

	marshaled, err := json.Marshal(user)
	if err != nil {
		t.Fatalf("Failed to marshal User: %v", err)
	}

	var roundtrip entities.User
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip: %v", err)
	}

	if roundtrip.ID != user.ID || roundtrip.Name != user.Name {
		t.Error("Roundtrip mismatch")
	}
}
