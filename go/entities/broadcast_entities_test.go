package entities

import (
	"encoding/json"
	"testing"
)

func TestBroadcastService(t *testing.T) {
	t.Log("Running tests for BroadcastService entity")
	jsonData := `{
		"id": 5,
		"name": "Webhook Service",
		"credentials": {
			"url": "https://example.com/webhook",
			"format": "json",
			"auth_token": "secret123"
		}
	}`

	var svc BroadcastService
	err := json.Unmarshal([]byte(jsonData), &svc)
	if err != nil {
		t.Fatalf("Failed to unmarshal BroadcastService: %v", err)
	}

	if svc.Id != 5 {
		t.Errorf("Expected Id 5, got %d", svc.Id)
	}

	if svc.Name != "Webhook Service" {
		t.Errorf("Expected Name 'Webhook Service', got '%s'", svc.Name)
	}

	if len(svc.Credentials) != 3 {
		t.Errorf("Expected 3 credential keys, got %d", len(svc.Credentials))
	}

	if svc.Credentials["url"] != "https://example.com/webhook" {
		t.Errorf("Expected url credential 'https://example.com/webhook', got '%v'", svc.Credentials["url"])
	}

	// Marshal roundtrip
	marshaled, err := json.Marshal(svc)
	if err != nil {
		t.Fatalf("Failed to marshal BroadcastService: %v", err)
	}

	var roundtrip BroadcastService
	err = json.Unmarshal(marshaled, &roundtrip)
	if err != nil {
		t.Fatalf("Failed to unmarshal roundtrip: %v", err)
	}

	if roundtrip.Id != svc.Id || roundtrip.Name != svc.Name {
		t.Error("Roundtrip mismatch")
	}
}

func TestBroadcastRequest(t *testing.T) {
	t.Log("Running tests for BroadcastRequest entity")
	jsonData := `{
		"parsed": {"key": "value", "count": 42},
		"raw": "{\"key\":\"value\",\"count\":42}"
	}`

	var req BroadcastRequest
	err := json.Unmarshal([]byte(jsonData), &req)
	if err != nil {
		t.Fatalf("Failed to unmarshal BroadcastRequest: %v", err)
	}

	if req.Raw != "{\"key\":\"value\",\"count\":42}" {
		t.Errorf("Expected Raw to match, got '%s'", req.Raw)
	}

	if req.Parsed == nil {
		t.Fatal("Expected Parsed to be non-nil")
	}

	parsed, ok := req.Parsed.(map[string]any)
	if !ok {
		t.Fatal("Expected Parsed to be map[string]any")
	}

	if parsed["key"] != "value" {
		t.Errorf("Expected Parsed key 'value', got '%v'", parsed["key"])
	}
}

func TestBroadcastRequestWithArrayParsed(t *testing.T) {
	t.Log("Running tests for BroadcastRequest with array parsed")
	jsonData := `{
		"parsed": [1, 2, 3],
		"raw": "[1,2,3]"
	}`

	var req BroadcastRequest
	err := json.Unmarshal([]byte(jsonData), &req)
	if err != nil {
		t.Fatalf("Failed to unmarshal BroadcastRequest: %v", err)
	}

	parsed, ok := req.Parsed.([]any)
	if !ok {
		t.Fatal("Expected Parsed to be []any")
	}

	if len(parsed) != 3 {
		t.Errorf("Expected 3 elements, got %d", len(parsed))
	}
}

func TestBroadcastResponse(t *testing.T) {
	t.Log("Running tests for BroadcastResponse entity")
	jsonData := `{
		"parsed": {"status": "ok", "code": 200},
		"raw": "{\"status\":\"ok\",\"code\":200}"
	}`

	var resp BroadcastResponse
	err := json.Unmarshal([]byte(jsonData), &resp)
	if err != nil {
		t.Fatalf("Failed to unmarshal BroadcastResponse: %v", err)
	}

	if resp.Raw != "{\"status\":\"ok\",\"code\":200}" {
		t.Errorf("Expected Raw to match, got '%s'", resp.Raw)
	}

	parsed, ok := resp.Parsed.(map[string]any)
	if !ok {
		t.Fatal("Expected Parsed to be map[string]any")
	}

	if parsed["status"] != "ok" {
		t.Errorf("Expected status 'ok', got '%v'", parsed["status"])
	}
}
