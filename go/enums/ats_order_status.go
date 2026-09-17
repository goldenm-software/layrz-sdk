package enums

// OrderStatus represents the status of an ATS order.
type OrderStatus string

const (
	OrderStatusOrderReceived            OrderStatus = "ORDER_RECEIVED"
	OrderStatusGenerated                OrderStatus = "GENERATED"
	OrderStatusOriginBerthExit          OrderStatus = "ORIGIN_BERTH_EXIT"
	OrderStatusInTransit                OrderStatus = "IN_TRANSIT"
	OrderStatusWaitingToDispatch        OrderStatus = "WAITING_TO_DISPATCH"
	OrderStatusDelivered                OrderStatus = "DELIVERED"
	OrderStatusUnloadingOperation       OrderStatus = "UNLOADING_OPERATION"
	OrderStatusUnloadingFuel            OrderStatus = "UNLOADING_FUEL"
	OrderStatusUnloadingFuelInterrupted OrderStatus = "UNLOADING_FUEL_INTERRUPTED"
	OrderStatusDestinationBerthExit     OrderStatus = "DESTINATION_BERTH_EXIT"
	OrderStatusReadyToOperate           OrderStatus = "READY_TO_OPERATE"
	OrderStatusLoadingBooked            OrderStatus = "LOADING_BOOKED"
	OrderStatusUnloadingBooked          OrderStatus = "UNLOADING_BOOKED"
	OrderStatusValidated                OrderStatus = "VALIDATED"
	OrderStatusNfeChanged               OrderStatus = "NFE_CHANGED"
	OrderStatusTerminalEntry            OrderStatus = "TERMINAL_ENTRY"
	OrderStatusTerminalExit             OrderStatus = "TERMINAL_EXIT"
	OrderStatusRedispatched             OrderStatus = "REDISPATCHED"
	OrderStatusMdfeConsolidated         OrderStatus = "MDFE_CONSOLIDATED"
	OrderStatusCteOperationMerged       OrderStatus = "CTE_OPERATION_MERGED"
)
