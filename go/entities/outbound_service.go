package entities

// OutboundService represents an outbound service configuration.
type OutboundService struct {
	// ID is the unique identifier for the outbound service.
	ID int64 `json:"id"`
	// Name is the name of the outbound service.
	Name string `json:"name"`
	// ProtocolName is the name of the protocol used by the outbound service.
	ProtocolName *string `json:"protocol_name,omitempty"`
	// MqttTopic is the MQTT topic associated with the outbound service.
	MqttTopic *string `json:"mqtt_topic,omitempty"`
	// IsConsumed indicates whether the outbound service has been consumed.
	IsConsumed bool `json:"is_consumed"`
	// Credentials is the map of credentials for the outbound service.
	Credentials map[string]any `json:"credentials"`
}
