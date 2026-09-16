package enums

// AtsExitStatus represents the status of an ATS exit execution.
type AtsExitStatus string

const (
	AtsExitStatusPending AtsExitStatus = "PENDING"
	AtsExitStatusFailed  AtsExitStatus = "FAILED"
	AtsExitStatusSuccess AtsExitStatus = "SUCCESS"
)
