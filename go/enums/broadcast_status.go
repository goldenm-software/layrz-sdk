package enums

type BroadcastStatus string

const (
	BroadcastStatusOk            BroadcastStatus = "OK"
	BroadcastStatusBad_Request   BroadcastStatus = "BADREQUEST"
	BroadcastStatusInternalError BroadcastStatus = "INTERNALERROR"
	BroadcastStatusUnauthorized  BroadcastStatus = "UNAUTHORIZED"
	BroadcastStatusUnprocessable BroadcastStatus = "UNPROCESSABLE"
	BroadcastStatusDisconnected  BroadcastStatus = "DISCONNECTED"
)
