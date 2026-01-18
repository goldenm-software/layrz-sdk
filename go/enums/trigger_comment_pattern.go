package enums

type TriggerCommentPattern string

const (
	TriggerCommentPatternStartsWith TriggerCommentPattern = "STARTS_WITH"
	TriggerCommentPatternEndsWith   TriggerCommentPattern = "ENDS_WITH"
	TriggerCommentPatternContains   TriggerCommentPattern = "CONTAINS"
)
