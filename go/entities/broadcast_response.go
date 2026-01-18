package entities

// BroadcastResponse represents the response after broadcasting a message.
type BroadcastResponse struct {
	// Parsed is the slice or map containing the parsed data sent.
	Parsed any `json:"parsed"`
	// Raw is the raw string data sent.
	Raw string `json:"raw"`
}
