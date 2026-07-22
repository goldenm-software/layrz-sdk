package enums

type BroadcastStatus string

const (
	BroadcastStatusOk            BroadcastStatus = "OK"
	BroadcastStatusBad_Request   BroadcastStatus = "BAD_REQUEST"
	BroadcastStatusInternalError BroadcastStatus = "INTERNALERROR"
	BroadcastStatusUnauthorized  BroadcastStatus = "UNAUTHORIZED"
	BroadcastStatusUnprocessable BroadcastStatus = "UNPROCESSABLE"
	BroadcastStatusDisconnected  BroadcastStatus = "DISCONNECTED"
)
