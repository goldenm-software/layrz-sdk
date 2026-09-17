package enums

// OrderCategories represents the category of an ATS operation or purchase order.
type OrderCategories string

const (
	OrderCategoriesPickup                             OrderCategories = "PICKUP"
	OrderCategoriesPickupToSupplier                   OrderCategories = "PICKUP_TO_SUPPLIER"
	OrderCategoriesTransfer                           OrderCategories = "TRANSFER"
	OrderCategoriesDeliveryToSupplier                 OrderCategories = "DELIVERY_TO_SUPPLIER"
	OrderCategoriesDeliveryToReseller                 OrderCategories = "DELIVERY_TO_RESELLER"
	OrderCategoriesForSaleOutside                     OrderCategories = "FOR_SALE_OUTSIDE"
	OrderCategoriesDeliveryToStorage                  OrderCategories = "DELIVERY_TO_STORAGE"
	OrderCategoriesReturnFromStorage                  OrderCategories = "RETURN_FROM_STORAGE"
	OrderCategoriesProductionSaleToFreeTradeZone      OrderCategories = "PRODUCTION_SALE_TO_FREE_TRADE_ZONE"
	OrderCategoriesSaleFromThirdPartyTank             OrderCategories = "SALE_FROM_THIRD_PARTY_TANK"
	OrderCategoriesSaleFromThirdPartyDeliveryBySeller OrderCategories = "SALE_FROM_THIRD_PARTY_DELIVERY_BY_SELLER"
	OrderCategoriesRemittanceSale                     OrderCategories = "REMITTANCE_SALE"
	OrderCategoriesNotDefined                         OrderCategories = "NOT_DEFINED"
)
