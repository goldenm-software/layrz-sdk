package enums

// AtsExitApp represents the application from which an ATS exit was initiated.
type AtsExitApp string

const (
	AtsExitAppAtsWeb    AtsExitApp = "ATSWEB"
	AtsExitAppAtsMobile AtsExitApp = "ATSMOBILE"
	AtsExitAppNfc       AtsExitApp = "NFC"
)
