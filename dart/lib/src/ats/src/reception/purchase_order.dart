part of '../../ats.dart';

enum PurchaseOrderOperation {
  purchase,
  seller,
  all;

  String toJson() {
    switch (this) {
      case PurchaseOrderOperation.purchase:
        return 'PURCHASE';
      case PurchaseOrderOperation.seller:
        return 'SELLER';
      case PurchaseOrderOperation.all:
        return 'ALL';
    }
  }

  static PurchaseOrderOperation fromJson(String value) {
    switch (value) {
      case 'PURCHASE':
        return PurchaseOrderOperation.purchase;
      case 'SELLER':
        return PurchaseOrderOperation.seller;
      case 'ALL':
        return PurchaseOrderOperation.all;
      default:
        throw Exception('Unknown PurchaseOrderOperation value: $value');
    }
  }
}

class PurchaseOrderOperationConverter implements JsonConverter<PurchaseOrderOperation, String> {
  const PurchaseOrderOperationConverter();

  @override
  PurchaseOrderOperation fromJson(String json) => PurchaseOrderOperation.fromJson(json);

  @override
  String toJson(PurchaseOrderOperation object) => object.toJson();
}

class PurchaseOrderOperationOrNullConverter implements JsonConverter<PurchaseOrderOperation?, String?> {
  const PurchaseOrderOperationOrNullConverter();

  @override
  PurchaseOrderOperation? fromJson(String? json) {
    if (json == null) return null;
    return PurchaseOrderOperation.fromJson(json);
  }

  @override
  String? toJson(PurchaseOrderOperation? object) {
    if (object == null) return null;
    return object.toJson();
  }
}

@freezed
abstract class AtsPurchaseOrder with _$AtsPurchaseOrder {
  factory AtsPurchaseOrder({
    /// ID of the [Asset] entity. This ID is unique.
    String? id,

    /// External API ID
    String? ownerId,

    /// Order or invoice number.
    String? orderId,

    /// ID of the asset.
    String? assetId,

    /// ID of the seller asset.
    String? sellerAssetId,

    /// ID of the transport asset.
    String? transportAssetId,

    /// Unix of last [AtsReception] date.
    @TimestampOrNullConverter() DateTime? purchasedAt,

    /// Unix of last [AtsReception] date.
    @TimestampOrNullConverter() DateTime? receivedAt,

    /// [Asset] linked to the [AtsPurchaseOrder].
    Asset? asset,

    /// Legal information about the seller. Please read the comments of CompanyInformation definition for more information.
    AtsCompanyInformation? sellerInformation,

    /// Legal information about the receiver. Please read the comments of CompanyInformation definition for more information.
    AtsCompanyInformation? receiverInformation,

    /// List of products purchased. Please read the comments of ProductInformation definition for more information.
    List<AtsProductInformation>? productsInformation,

    /// Total information. Please read the comments of Total definition for more information.
    AtsPurchaseTotal? total,

    /// True if the purchase order was received.
    bool? isReceived,

    /// True is the purchase order has a reception
    bool? hasReception,

    /// Legal information about the transport. Please read the comments of TransportInformation definition for more information.
    AtsTransportInformation? transportInformation,

    /// True if the purchase order has a raw xml
    bool? hasRawXml,

    /// Invoice type (NFe, CTe)
    String? invoiceType,

    /// Invoice identifier (chNFe/chCTe)
    String? invoiceId,

    /// Parent invoice
    AtsPurchaseOrder? parentInvoice,

    /// Ide information
    AtsIdeInformation? ideInformation,

    /// Unix of reception at.
    @TimestampOrNullConverter() DateTime? receptionAt,

    /// Purchase order operation
    @PurchaseOrderOperationOrNullConverter() PurchaseOrderOperation? action,

    /// `transportAsset` represet the truck that will transport the product.
    Asset? transportAsset,

    /// `sellerAsset` represet the terminal that will sell the product.
    Asset? sellerAsset,

    /// `orderStatus` defines the order status.
    @AtsPurchaseOrderStatusOrNullConverter() AtsPurchaseOrderStatus? orderStatus,

    /// `inTransitAt` defines the in transit date.
    @TimestampOrNullConverter() DateTime? inTransitAt,

    /// `waitingToDispatchAt` defines the waiting to dispatch date.
    @TimestampOrNullConverter() DateTime? waitingToDispatchAt,

    /// `deliveredAt` defines the delivered date.
    @TimestampOrNullConverter() DateTime? deliveredAt,

    /// `deliverCategory` defines the delivery category.
    @AtsPurchaseOrderSubCategoriesOrNullConverter() AtsPurchaseOrderSubCategories? deliverCategory,

    /// `category` defines the category.
    @AtsPurchaseOrderCategoriesEntityOrNullConverter() AtsPurchaseOrderCategoriesEntity? category,

    /// `operation` associated to the purchase order.
    AtsOperation? operation,

    /// `operations` associated to the purchase order. A purchase order shared
    /// across a road and a fluvial operation exposes each linked operation here
    /// with its own `transportAsset`, so the client can resolve the correct
    /// transport by the id the scan query returns in `operationMatched` instead of
    /// relying on `transportAsset` (which may point at the fluvial asset).
    @Default([]) List<AtsOperation> operations,

    /// [eta] defines the estimated time of arrival.
    @TimestampOrNullConverter() DateTime? eta,

    /// [etaUpdatedAt] defines the estimated time of arrival updated at.
    @TimestampOrNullConverter() DateTime? etaUpdatedAt,

    /// [originalBuyerAsset] Original buyer Asset linked to the purchase order.
    Asset? originalBuyerAsset,

    /// [receptionAssetId] defines the reception asset id.
    String? receptionAssetId,
  }) = _AtsPurchaseOrder;

  /// from json factory
  factory AtsPurchaseOrder.fromJson(Map<String, dynamic> json) => _$AtsPurchaseOrderFromJson(json);

  // coverage:ignore-start
  /// The fields of an [AtsPurchaseOrder] selected by [fetchAll]: totals, products, seller, transport.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'orderId'),
    GqlField(name: 'purchasedAt'),
    GqlField(name: 'assetId'),
    GqlField(
      name: 'total',
      fields: [GqlField(name: 'total')],
    ),
    GqlField(
      name: 'productsInformation',
      fields: [
        GqlField(name: 'quantity'),
        GqlField(name: 'subcategory'),
      ],
    ),
    GqlField(
      name: 'sellerInformation',
      fields: [
        GqlField(name: 'cnpj'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(
      name: 'transportInformation',
      fields: [
        GqlField(name: 'cnpj'),
        GqlField(name: 'name'),
      ],
    ),
    GqlField(
      name: 'transportAsset',
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
      ],
    ),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the purchase orders of the assets [assetsIds] (`purchaseOrders`) in the range [startAt]-[endAt].
  ///
  /// Selects [fields] plus [extraFields]. An item that does not decode is logged and skipped. Returns an empty list
  /// on any error.
  static Future<List<AtsPurchaseOrder>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [assetsIds] are the IDs of the assets to filter by, if any.
    List<String>? assetsIds,

    /// [startAt] is the start of the range, if any.
    DateTime? startAt,

    /// [endAt] is the end of the range, if any.
    DateTime? endAt,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) {
    return _atsFetchMonitorEntities(
      operation: 'purchaseOrders',
      caller: 'AtsPurchaseOrder/fetchAll',
      fields: [...fields, ...?extraFields],
      fromJson: AtsPurchaseOrder.fromJson,
      apiToken: apiToken,
      uri: uri,
      assetsIds: assetsIds,
      startAt: startAt,
      endAt: endAt,
      onResponse: onResponse,
    );
  }
  // coverage:ignore-end
}
