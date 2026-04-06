package entities

type RealtimeMessage struct {
	Topic   string         `json:"topic"`
	Payload map[string]any `json:"payload"`
}
