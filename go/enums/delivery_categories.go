package enums

// DeliveryCategories represents the delivery category of an ATS operation or purchase order.
type DeliveryCategories string

const (
	DeliveryCategoriesSameState  DeliveryCategories = "SAME_STATE"
	DeliveryCategoriesOtherState DeliveryCategories = "OTHER_STATE"
	DeliveryCategoriesNotDefined DeliveryCategories = "NOT_DEFINED"
)
