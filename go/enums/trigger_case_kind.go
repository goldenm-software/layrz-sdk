package enums

type TriggerCaseKind string

const (
	TriggerCaseKindOnFollow         TriggerCaseKind = "ON_FOLLOW"
	TriggerCaseKindOnClose          TriggerCaseKind = "ON_CLOSE"
	TriggerCaseKindOnDismiss        TriggerCaseKind = "ON_DISMISS"
	TriggerCaseKindOnCommentPattern TriggerCaseKind = "ON_COMMENT_PATTERN"
)
