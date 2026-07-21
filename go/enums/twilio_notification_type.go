package enums

// TwilioNotificationType represents the type of Twilio notification.
type TwilioNotificationType string

const (
	// TwilioNotificationTypeSMS sends a Short Message Service (SMS) notification.
	TwilioNotificationTypeSMS TwilioNotificationType = "SMS"
	// TwilioNotificationTypeVoice makes a voice call notification.
	TwilioNotificationTypeVoice TwilioNotificationType = "VOICE"
	// TwilioNotificationTypeWhatsApp sends a WhatsApp notification.
	TwilioNotificationTypeWhatsApp TwilioNotificationType = "WHATSAPP"
)
