package entities

import (
	"encoding/json"
	"testing"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
)

func TestTriggerFormula(t *testing.T) {
	t.Log("Running tests for Trigger entity (FORMULA type)")
	jsonData := `{
		"id": 1,
		"name": "Speeding Alert",
		"code": "SPD_001",
		"cooldown_time": 300,
		"type": "FORMULA",
		"formula": "GET_SENSOR('speed') > 120",
		"priority": 3,
		"color": "#FF0000",
		"is_legacy": false,
		"is_paused": false,
		"should_stack": true,
		"stack_upper_limit": 5,
		"should_generate_locator": false,
		"owner_id": 10
	}`

	var trigger Trigger
	err := json.Unmarshal([]byte(jsonData), &trigger)
	if err != nil {
		t.Fatalf("Failed to unmarshal Trigger: %v", err)
	}

	if trigger.Id != 1 {
		t.Errorf("Expected Id 1, got %d", trigger.Id)
	}

	if trigger.Name != "Speeding Alert" {
		t.Errorf("Expected Name 'Speeding Alert', got '%s'", trigger.Name)
	}

	if trigger.Code != "SPD_001" {
		t.Errorf("Expected Code 'SPD_001', got '%s'", trigger.Code)
	}

	if trigger.Type != enums.TriggerKindFormula {
		t.Errorf("Expected Type 'FORMULA', got '%s'", trigger.Type)
	}

	if trigger.Formula == nil || *trigger.Formula != "GET_SENSOR('speed') > 120" {
		t.Error("Expected Formula to match")
	}

	if trigger.Priority != 3 {
		t.Errorf("Expected Priority 3, got %d", trigger.Priority)
	}

	if trigger.Color == nil || *trigger.Color != "#FF0000" {
		t.Error("Expected Color '#FF0000'")
	}

	if !trigger.ShouldStack {
		t.Error("Expected ShouldStack to be true")
	}

	if trigger.StackUpperLimit == nil || *trigger.StackUpperLimit != 5 {
		t.Error("Expected StackUpperLimit 5")
	}

	if trigger.OwnerId == nil || *trigger.OwnerId != 10 {
		t.Error("Expected OwnerId 10")
	}
}

func TestTriggerPresence(t *testing.T) {
	t.Log("Running tests for Trigger entity (PRESENCEINGEOFENCE type)")
	jsonData := `{
		"id": 2,
		"name": "Geofence Entry",
		"code": "GEO_ENTRY",
		"cooldown_time": 60,
		"type": "PRESENCEINGEOFENCE",
		"presence_type": "ENTRANCE",
		"priority": 1,
		"is_legacy": false,
		"is_paused": false,
		"should_stack": false,
		"should_generate_locator": true,
		"locator_expires_delta": 3600,
		"locator_expires_triggers_ids": [3, 4],
		"locator_geofences_ids": [10, 20, 30],
		"locator_customization_id": 1
	}`

	var trigger Trigger
	err := json.Unmarshal([]byte(jsonData), &trigger)
	if err != nil {
		t.Fatalf("Failed to unmarshal Trigger: %v", err)
	}

	if trigger.Type != enums.TriggerKindPresenceingeofence {
		t.Errorf("Expected Type 'PRESENCEINGEOFENCE', got '%s'", trigger.Type)
	}

	if trigger.PresenceType == nil || *trigger.PresenceType != enums.TriggerPresenceTypeEntrance {
		t.Error("Expected PresenceType 'ENTRANCE'")
	}

	if !trigger.ShouldGenerateLocator {
		t.Error("Expected ShouldGenerateLocator to be true")
	}

	if len(trigger.LocatorExpiresTriggersIds) != 2 {
		t.Fatalf("Expected 2 locator expires trigger IDs, got %d", len(trigger.LocatorExpiresTriggersIds))
	}

	if len(trigger.LocatorGeofencesIds) != 3 {
		t.Fatalf("Expected 3 locator geofence IDs, got %d", len(trigger.LocatorGeofencesIds))
	}

	if trigger.LocatorCustomizationId == nil || *trigger.LocatorCustomizationId != 1 {
		t.Error("Expected LocatorCustomizationId 1")
	}
}

func TestTriggerScheduled(t *testing.T) {
	t.Log("Running tests for Trigger entity (EXACTTIME type)")
	jsonData := `{
		"id": 3,
		"name": "Daily Report",
		"code": "DAILY_RPT",
		"cooldown_time": 0,
		"type": "EXACTTIME",
		"exact_hour": "08:00:00",
		"weekdays": ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY"],
		"is_plain_crontab": false,
		"timezone_id": 42,
		"priority": 1,
		"is_legacy": false,
		"is_paused": false,
		"should_stack": false,
		"should_generate_locator": false
	}`

	var trigger Trigger
	err := json.Unmarshal([]byte(jsonData), &trigger)
	if err != nil {
		t.Fatalf("Failed to unmarshal Trigger: %v", err)
	}

	if trigger.Type != enums.TriggerKindExacttime {
		t.Errorf("Expected Type 'EXACTTIME', got '%s'", trigger.Type)
	}

	if trigger.ExactHour == nil {
		t.Fatal("Expected ExactHour to be non-nil")
	}

	if len(trigger.Weekdays) != 5 {
		t.Fatalf("Expected 5 weekdays, got %d", len(trigger.Weekdays))
	}

	if trigger.Weekdays[0] != enums.WeekdayMonday {
		t.Errorf("Expected first weekday 'MONDAY', got '%s'", trigger.Weekdays[0])
	}

	if trigger.TimezoneId == nil || *trigger.TimezoneId != 42 {
		t.Error("Expected TimezoneId 42")
	}

	plainCrontab := false
	if trigger.IsPlainCrontab == nil || *trigger.IsPlainCrontab != plainCrontab {
		t.Error("Expected IsPlainCrontab false")
	}
}

func TestTriggerCaseChanges(t *testing.T) {
	t.Log("Running tests for Trigger entity (CASES_CHANGES type)")
	jsonData := `{
		"id": 4,
		"name": "Case Comment",
		"code": "CASE_CMT",
		"cooldown_time": 0,
		"type": "CASES_CHANGES",
		"case_type": "ON_COMMENT_PATTERN",
		"case_comment_pattern": "STARTS_WITH",
		"case_comment_value": "URGENT:",
		"priority": 5,
		"has_case_expiry": true,
		"when_case_expires_delta": 86400,
		"is_legacy": false,
		"is_paused": false,
		"should_stack": false,
		"should_generate_locator": false
	}`

	var trigger Trigger
	err := json.Unmarshal([]byte(jsonData), &trigger)
	if err != nil {
		t.Fatalf("Failed to unmarshal Trigger: %v", err)
	}

	if trigger.Type != enums.TriggerKindCaseschanges {
		t.Errorf("Expected Type 'CASES_CHANGES', got '%s'", trigger.Type)
	}

	if trigger.CaseType == nil || *trigger.CaseType != enums.TriggerCaseKindOnCommentPattern {
		t.Error("Expected CaseType 'ON_COMMENT_PATTERN'")
	}

	if trigger.CaseCommentPattern == nil || *trigger.CaseCommentPattern != enums.TriggerCommentPatternStartsWith {
		t.Error("Expected CaseCommentPattern 'STARTS_WITH'")
	}

	if trigger.CaseCommentValue == nil || *trigger.CaseCommentValue != "URGENT:" {
		t.Error("Expected CaseCommentValue 'URGENT:'")
	}

	if !trigger.HasCaseExpiry {
		t.Error("Expected HasCaseExpiry to be true")
	}

	if trigger.WhenCaseExpiresDelta == nil {
		t.Fatal("Expected WhenCaseExpiresDelta to be non-nil")
	}
}
