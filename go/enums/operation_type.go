package enums

// OperationType represents the type of operation to be executed.
type OperationType string

const (
	// OperationTypeWebhooks sends an HTTP request to a webhook endpoint.
	OperationTypeWebhooks OperationType = "WEBHOOKS"
	// OperationTypeSendEmail sends an email notification.
	OperationTypeSendEmail OperationType = "SENDEMAIL"
	// OperationTypeRegisterOnAsset registers an event on an asset.
	OperationTypeRegisterOnAsset OperationType = "ACTIVATEASSET"
	// OperationTypeInAppNotification sends an in-app notification.
	OperationTypeInAppNotification OperationType = "INAPPNOTIFICATION"
	// OperationTypeTwilio sends a notification via Twilio.
	OperationTypeTwilio OperationType = "TWILIO"
	// OperationTypeMobilePopupNotification sends a mobile popup notification.
	OperationTypeMobilePopupNotification OperationType = "MOBILE_POPUP_NOTIFICATION"
	// OperationTypeBhsPush sends a Firebase push notification via BHS.
	OperationTypeBhsPush OperationType = "BHS_PUSH"
	// OperationTypePushNotification sends a Layrz push notification to registered devices.
	OperationTypePushNotification OperationType = "PUSH_NOTIFICATION"
	// OperationTypeSMS sends an SMS via Layrz notification engine.
	OperationTypeSMS OperationType = "SMS"
	// OperationTypeVoiceCall makes a voice call via Layrz notification engine.
	OperationTypeVoiceCall OperationType = "VOICE_CALL"
	// OperationTypeWhatsAppMessage sends a WhatsApp message via Layrz notification engine.
	OperationTypeWhatsAppMessage OperationType = "WHATSAPP_MESSAGE"
)
