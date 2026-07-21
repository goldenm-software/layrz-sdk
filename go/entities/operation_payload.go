package entities

import (
	"encoding/json"

	"github.com/goldenm-software/layrz-sdk/go/v4/enums"
	"github.com/goldenm-software/layrz-sdk/go/v4/types"
)

// OperationPayload represents a message produced to the operations.runner.v1 Kafka topic.
type OperationPayload struct {
	// Kind defines the type of the operation (wire key: operationType).
	Kind enums.OperationType `json:"operationType"`
	// Asset is the asset associated with the operation.
	Asset *Asset `json:"asset,omitempty"`
	// Trigger is the trigger associated with the operation.
	Trigger *Trigger `json:"trigger,omitempty"`
	// Operation is the operation to be executed.
	Operation *Operation `json:"operation,omitempty"`
	// ActivatedAt is the timestamp when the operation was activated (wire key: activatedAt).
	ActivatedAt types.UnixTime `json:"activatedAt"`
	// Position contains the current position data of the asset.
	Position map[string]any `json:"position,omitempty"`
	// Sensors contains the current sensor readings of the asset.
	Sensors map[string]any `json:"sensors,omitempty"`
	// Geofence is the geofence associated with the operation, if any.
	Geofence *Geofence `json:"geofence,omitempty"`
	// PresenceType indicates the type of geofence presence event (wire key: presenceType).
	PresenceType *enums.PresenceType `json:"presenceType,omitempty"`
	// Case is the case associated with the operation, if any (wire key: case).
	Case *OperationCase `json:"case,omitempty"`
	// LanguageID is the language identifier for the operation (wire key: languageId).
	LanguageID int `json:"languageId"`
	// Payload is the templated payload string for the operation.
	Payload string `json:"payload,omitempty"`
	// UseAssetContactsInstead indicates if the operation should use asset
	// contacts instead of reception emails (wire key: useAssetContactsInstead).
	UseAssetContactsInstead bool `json:"useAssetContactsInstead"`
	// AccountID is the external account ID of the operation (wire key: accountId).
	AccountID *int64 `json:"accountId,omitempty"`

	// HTTP/Webhook fields
	// HttpURL is the URL for HTTP webhook operations.
	HttpURL *string `json:"http_url,omitempty"`
	// HttpMethod is the HTTP method for webhook operations (wire key: method).
	HttpMethod *enums.HttpRequestType `json:"method,omitempty"`
	// HttpHeaders are the HTTP headers for webhook operations (wire key: headers).
	HttpHeaders []map[string]any `json:"headers,omitempty"`

	// Email fields
	// EmailSubject is the subject line for email operations (wire key: emailSubject).
	EmailSubject string `json:"emailSubject,omitempty"`
	// AttachImage indicates if the operation should attach an image to emails (wire key: attachImage).
	AttachImage bool `json:"attachImage"`
	// ReceptionEmails are the email addresses to send to (wire key: receptionEmails).
	ReceptionEmails []string `json:"receptionEmails,omitempty"`
	// TemplateID is the email template ID (wire key: templateId).
	TemplateID *int64 `json:"templateId,omitempty"`

	// Twilio/Phone fields
	// Destinations are the phone number destinations for Twilio notifications.
	Destinations []DestinationPhone `json:"destinations,omitempty"`
	// TwilioHostPhone is the host phone number for Twilio operations (wire key: hostPhone).
	TwilioHostPhone *DestinationPhone `json:"hostPhone,omitempty"`
	// TwilioNotificationType is the type of Twilio notification (wire key: notificationType).
	TwilioNotificationType enums.TwilioNotificationType `json:"notificationType"`
	// Username is the username for authentication in some operations.
	Username *string `json:"username,omitempty"`
	// Token is the token for authentication in some operations.
	Token *string `json:"token,omitempty"`

	// BHS validation fields
	// RequiresBhsValidation indicates if the operation requires BHS validation (wire key: requiresBhsValidation).
	RequiresBhsValidation bool `json:"requiresBhsValidation"`
	// BhsTierID is the BHS tier ID for the operation (wire key: bhsTierId).
	BhsTierID *int64 `json:"bhsTierId,omitempty"`

	// Push notification fields
	// PushTitle is the title for push notifications (wire key: pushTitle).
	PushTitle string `json:"pushTitle,omitempty"`
	// PushPlatforms are the platforms for push notifications (wire key: pushPlatforms).
	PushPlatforms []enums.Platform `json:"pushPlatforms,omitempty"`
	// PushServiceAccount is the decrypted Firebase service-account JSON for Layrz Push (wire key: pushServiceAccount).
	PushServiceAccount json.RawMessage `json:"pushServiceAccount,omitempty"`
	// PushDevices are the push device UUIDs for the operation (wire key: pushDevices).
	PushDevices []string `json:"pushDevices,omitempty"`
	// PushAppID is the registered app ID owning the push credentials (wire key: pushAppId).
	PushAppID *int64 `json:"pushAppId,omitempty"`

	// In-app notification fields
	// DestinationsIDs are the destination IDs for in-app notifications (wire key: destinationsIds).
	DestinationsIDs []int64 `json:"destinationsIds,omitempty"`
	// SoundEffect is the sound effect for the operation (wire key: soundEffect).
	SoundEffect enums.SoundEffect `json:"soundEffect"`
	// SoundEffectURI is the URI for custom sound effects (wire key: soundEffectUri).
	SoundEffectURI *string `json:"soundEffectUri,omitempty"`
	// Icon is the icon for the in-app notification.
	Icon *string `json:"icon,omitempty"`
	// Duration is the display duration of the in-app notification in seconds (wire key: duration).
	Duration *types.Duration `json:"duration,omitempty"`

	// Locator is the generated locator for the operation, if any.
	Locator *Locator `json:"locator,omitempty"`
}
