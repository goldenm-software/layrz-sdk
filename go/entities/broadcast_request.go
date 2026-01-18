package entities

// BroadcastRequest represents a request to broadcast a message.
type BroadcastRequest struct {
	// Parsed is the slice or map containing the parsed data to be broadcasted.
	Parsed any `json:"parsed"`
	// Raw is the raw string data to be broadcasted.
	Raw string `json:"raw"`
}
