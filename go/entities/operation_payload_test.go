package entities

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

func TestOperationPayloadMarshalJSON(t *testing.T) {
	now := types.UnixTime{}
	now.UnmarshalJSON([]byte("1234567890.5"))

	payload := &OperationPayload{
		Kind:        enums.OperationTypeWebhooks,
		ActivatedAt: now,
		LanguageID:  2,
		Payload:     "test payload",
		Asset: &Asset{
			Id:            1,
			Name:          "Test Asset",
			OperationMode: enums.AssetOperationModeSingle,
		},
		HttpURL:    strPtr("https://example.com/webhook"),
		HttpMethod: (*enums.HttpRequestType)(strPtr("POST")),
	}

	// Test marshaling
	data, err := json.Marshal(payload)
	if err != nil {
		t.Fatalf("failed to marshal: %v", err)
	}

	// Verify key names in JSON
	var m map[string]interface{}
	if err := json.Unmarshal(data, &m); err != nil {
		t.Fatalf("failed to unmarshal: %v", err)
	}

	// Check wire key names (aliases)
	if _, ok := m["operationType"]; !ok {
		t.Error("expected 'operationType' key in JSON")
	}
	if _, ok := m["activatedAt"]; !ok {
		t.Error("expected 'activatedAt' key in JSON")
	}
	if _, ok := m["languageId"]; !ok {
		t.Error("expected 'languageId' key in JSON")
	}
	if _, ok := m["method"]; !ok {
		t.Error("expected 'method' key in JSON (HTTP method alias)")
	}
	if _, ok := m["http_url"]; !ok {
		t.Error("expected 'http_url' key in JSON (no alias for http_url)")
	}
}

func strPtr(s string) *string {
	return &s
}
