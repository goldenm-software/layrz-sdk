package enums

type TriggerKind string

const (
	TriggerKindPresenceingeofence TriggerKind = "PRESENCEINGEOFENCE"
	TriggerKindExacttime          TriggerKind = "EXACTTIME"
	TriggerKindFormula            TriggerKind = "FORMULA"
	TriggerKindAuthentication     TriggerKind = "AUTHENTICATION"
	TriggerKindPythonscript       TriggerKind = "PYTHONSCRIPT"
	TriggerKindCaseschanges       TriggerKind = "CASES_CHANGES"
	TriggerKindBhsspeeding        TriggerKind = "BHS_SPEEDING"
	TriggerKindBhspresence        TriggerKind = "BHS_PRESENCE"
	TriggerKindManualaction       TriggerKind = "MANUAL_ACTION"
	TriggerKindNested             TriggerKind = "NESTED_TRIGGERS"
)
