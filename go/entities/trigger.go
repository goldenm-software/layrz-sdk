package entities

import (
	"github.com/goldenm-software/layrz-sdk/enums"
	"github.com/goldenm-software/layrz-sdk/types"
)

// Trigger is the event or condition that causes a broadcast to be sent.
type Trigger struct {
	// Id is the unique identifier of the trigger.
	Id int64 `json:"id"`
	// Name is the name of the trigger.
	Name string `json:"name"`
	// Code is the code associated with the trigger.
	Code string `json:"code"`
	// CooldownTime is the cooldown time in seconds before the trigger can be activated again.
	CooldownTime types.Duration `json:"cooldown_time"`
	// Type is the type of the trigger.
	Type enums.TriggerKind `json:"type"`
	// PresenceType is the presence type for presence-in-geofence triggers.
	PresenceType *enums.TriggerPresenceType `json:"presence_type,omitempty"`
	// CaseType is the case type for case-related triggers.
	CaseType *enums.TriggerCaseKind `json:"case_type,omitempty"`
	// CaeCommentPattern is the comment pattern for comment-related triggers.
	CaseCommentPattern *enums.TriggerCommentPattern `json:"case_comment_pattern,omitempty"`
	// CaseCommentValue is the comment value for comment-related triggers.
	CaseCommentValue *string `json:"case_comment_value,omitempty"`
	// ExactHour is the exact hour for exact-time triggers.
	ExactHour *types.Time `json:"exact_hour,omitempty"`
	// CrontabFormat is the crontab format for scheduling triggers.
	CrontabFormat *string `json:"crontab_format,omitempty"`
	// Weekdays is the list of weekdays for scheduling triggers.
	Weekdays []enums.Weekday `json:"weekdays,omitempty"`
	// IsPlainCrontab indicates if the crontab is plain (without seconds).
	IsPlainCrontab *bool `json:"is_plain_crontab,omitempty"`
	// TimezoneId is the timezone identifier for scheduling triggers.
	TimezoneId *int64 `json:"timezone_id,omitempty"`
	// Parameters is the list of parameters for the trigger.
	Parameters []string `json:"parameters,omitempty"`
	// ManualActionFields is the list of manual action fields for manual action triggers.
	ManualActionFields []map[string]any `json:"manual_action_fields,omitempty"`
	// Formula is the formula for formula-based triggers.
	Formula *string `json:"formula,omitempty"`
	// Script is the script for python script triggers.
	Script *string `json:"script,omitempty"`
	// IsLegacy indicates if the trigger is a legacy trigger.
	IsLegacy bool `json:"is_legacy,omitempty"`
	// Priority is the priority of the trigger.
	Priority int `json:"priority,omitempty"`
	// Color is the color associated with the trigger.
	Color *string `json:"color,omitempty"`
	// Sequence is the sequence number of the trigger.
	Sequence *int `json:"sequence,omitempty"`
	// CareProtocolId is the care protocol identifier associated with the trigger.
	CareProtocolId *int64 `json:"care_protocol_id,omitempty"`
	// HasCaseExpirity indicates if the trigger has case expiry.
	HasCaseExpiry bool `json:"has_case_expiry,omitempty"`
	// WhenCaseExpiresDelta is the duration after which the case expires.
	WhenCaseExpiresDelta *types.Duration `json:"when_case_expires_delta,omitempty"`
	// ShouldStack indicates if the trigger should stack.
	ShouldStack bool `json:"should_stack,omitempty"`
	// StackUpperLimit is the upper limit for stacking.
	StackUpperLimit *int `json:"stack_upper_limit,omitempty"`
	// OwnerId is the identifier of the owner of the trigger.
	OwnerId *int64 `json:"owner_id,omitempty"`
	// SearchTimeDelta is the search time duration for the trigger.
	SearchTimeDelta *types.Duration `json:"search_time_delta,omitempty"`
	// IsPaused indicates if the trigger is paused.
	IsPaused bool `json:"is_paused,omitempty"`
	// ShouldGenerateLocator indicates if the trigger should generate a locator.
	ShouldGenerateLocator bool `json:"should_generate_locator,omitempty"`
	// LocatorExpiresDelta is the duration after which the locator expires.
	LocatorExpiresDelta *types.Duration `json:"locator_expires_delta,omitempty"`
	// LocatorExpiresTriggersIds is the list of trigger IDs that cause the locator to expire.
	LocatorExpiresTriggersIds []int64 `json:"locator_expires_triggers_ids,omitempty"`
	// LocatorGeofencesIds is the list of geofence IDs associated with the locator.
	LocatorGeofencesIds []int64 `json:"locator_geofences_ids,omitempty"`
	// LocatorCustomizationId is the customization ID for the locator.
	LocatorCustomizationId *int64 `json:"locator_customization_id,omitempty"`
}
