package enums

// TextAlignment represents text alignment options. This alignments is vertical-axis.
type TextAlignment string

const (
	// TextAlignmentLeft indicates left-aligned text.
	TextAlignmentLeft TextAlignment = "LEFT"
	// TextAlignmentCenter indicates center-aligned text.
	TextAlignmentCenter TextAlignment = "CENTER"
	// TextAlignmentRight indicates right-aligned text.
	TextAlignmentRight TextAlignment = "RIGHT"
	// TextAlignmentJustify indicates justified text.
	TextAlignmentJustify TextAlignment = "JUSTIFY"
)
