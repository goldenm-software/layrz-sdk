package enums

// OrderStatus represents the status of an ATS order.
type OrderStatus string

const (
	OrderStatusOrderReceived            OrderStatus = "ORDER_RECEIVED"
	OrderStatusGenerated                OrderStatus = "GENERATED"
	OrderStatusInTransit                OrderStatus = "IN_TRANSIT"
	OrderStatusWaitingToDispatch        OrderStatus = "WAITING_TO_DISPATCH"
	OrderStatusDelivered                OrderStatus = "DELIVERED"
	OrderStatusValidated                OrderStatus = "VALIDATED"
	OrderStatusNfeChanged               OrderStatus = "NFE_CHANGED"
	OrderStatusReadyToOperate           OrderStatus = "READY_TO_OPERATE"
	OrderStatusUnloadingOperation       OrderStatus = "UNLOADING_OPERATION"
	OrderStatusUnloadingFuel            OrderStatus = "UNLOADING_FUEL"
	OrderStatusUnloadingFuelInterrupted OrderStatus = "UNLOADING_FUEL_INTERRUPTED"
	OrderStatusDestinationBerthExit     OrderStatus = "DESTINATION_BERTH_EXIT"
	OrderStatusOriginBerthExit          OrderStatus = "ORIGIN_BERTH_EXIT"
	OrderStatusLoadingBooked            OrderStatus = "LOADING_BOOKED"
	OrderStatusUnloadingBooked          OrderStatus = "UNLOADING_BOOKED"
)
