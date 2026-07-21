package entities

import (
	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

// Operation represents an operation configuration.
type Operation struct {
	// ID is the unique identifier of the operation.
	ID int64 `json:"id"`
	// Name is the name of the operation.
	Name string `json:"name"`
	// CooldownTime is the cooldown time in seconds before the operation can be triggered again.
	CooldownTime types.Duration `json:"cooldown_time"`
	// OperationType is the type of the operation.
	OperationType enums.OperationType `json:"operation_type"`
	// RequestType is the HTTP method for webhook operations.
	RequestType *enums.HttpRequestType `json:"request_type,omitempty"`
	// URL is the URL for webhook operations.
	URL *string `json:"url,omitempty"`
	// Headers are the HTTP headers for webhook operations.
	Headers []map[string]any `json:"headers,omitempty"`
	// ReceptionEmails are the email addresses for email operations.
	ReceptionEmails []string `json:"reception_emails,omitempty"`
	// LanguageID is the language identifier for the operation.
	LanguageID int `json:"language_id"`
	// Payload is the templated payload string for the operation.
	Payload string `json:"payload,omitempty"`
	// TimezoneName is the IANA timezone name for the operation.
	TimezoneName string `json:"timezone_name"`
	// DateTimeFormat is the date-time format string for the operation.
	DateTimeFormat string `json:"date_time_format"`
	// LayrzTemplate is the Layrz template string for the operation.
	LayrzTemplate string `json:"layrz_template,omitempty"`
	// EmailSubject is the subject line for email operations.
	EmailSubject string `json:"email_subject,omitempty"`
	// Color is the color associated with the operation in HEX format.
	Color string `json:"color,omitempty"`
	// AccountID is the external account ID of the operation.
	AccountID *int64 `json:"account_id,omitempty"`
	// NotificationType is the Twilio notification type for Twilio operations.
	NotificationType enums.TwilioNotificationType `json:"notification_type"`
	// HostPhone is the host phone number for Twilio operations.
	HostPhone *DestinationPhone `json:"host_phone,omitempty"`
	// Username is the username for authentication in some operations.
	Username *string `json:"username,omitempty"`
	// Token is the token for authentication in some operations.
	Token *string `json:"token,omitempty"`
	// DestinationPhones are the destination phone numbers for Twilio operations.
	DestinationPhones []DestinationPhone `json:"destination_phones,omitempty"`
	// AttachImage indicates if the operation should attach an image.
	AttachImage bool `json:"attach_image"`
	// UseAssetContactsInstead indicates if the operation should use asset contacts instead of reception emails.
	UseAssetContactsInstead bool `json:"use_asset_contacts_instead"`
	// EmailTemplateID is the email template ID for email operations.
	EmailTemplateID *int64 `json:"email_template_id,omitempty"`
	// PushPlatforms are the platforms for push notifications.
	PushPlatforms []enums.Platform `json:"push_platforms,omitempty"`
	// PushTitle is the title for push notifications.
	PushTitle string `json:"push_title,omitempty"`
	// RequiresBhsValidation indicates if the operation requires BHS validation.
	RequiresBhsValidation bool `json:"requires_bhs_validation"`
	// BhsTierID is the BHS tier ID for the operation.
	BhsTierID *int64 `json:"bhs_tier_id,omitempty"`
	// SoundEffect is the sound effect for the operation.
	SoundEffect enums.SoundEffect `json:"sound_effect"`
	// SoundEffectURI is the URI for custom sound effects.
	SoundEffectURI *string `json:"sound_effect_uri,omitempty"`
	// Duration is the duration of the operation in seconds.
	Duration *types.Duration `json:"duration,omitempty"`
	// Credentials is a map of credentials for the operation.
	Credentials map[string]any `json:"credentials,omitempty"`
	// Icon is the icon for the operation.
	Icon *string `json:"icon,omitempty"`
}
