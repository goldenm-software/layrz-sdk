package entities

type BroadcastStatus string

const (
	BroadcastStatusOk                  BroadcastStatus = "OK"
	BroadcastStatusBadRequest          BroadcastStatus = "BAD_REQUEST"
	BroadcastStatusInternalError       BroadcastStatus = "INTERNALERROR"
	BroadcastStatusUnauthorized        BroadcastStatus = "UNAUTHORIZED"
	BroadcastStatusUnprocessableEntity BroadcastStatus = "UNPROCESSABLE"
	BroadcastStatusDisconnected        BroadcastStatus = "DISCONNECTED"
)
