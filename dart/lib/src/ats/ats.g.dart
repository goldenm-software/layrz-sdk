// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AtsExit _$AtsExitFromJson(Map<String, dynamic> json) => _AtsExit(
  id: json['id'] as String?,
  identifier: (json['identifier'] as num?)?.toInt(),
  fromAssetId: json['fromAssetId'] as String?,
  fromAsset: json['fromAsset'] == null
      ? null
      : Asset.fromJson(json['fromAsset'] as Map<String, dynamic>),
  toAssetId: json['toAssetId'] as String?,
  toAsset: json['toAsset'] == null
      ? null
      : Asset.fromJson(json['toAsset'] as Map<String, dynamic>),
  errorPercent: (json['errorPercent'] as num?)?.toDouble(),
  totalLiters: (json['totalLiters'] as num?)?.toDouble(),
  toAssetMileage: (json['toAssetMileage'] as num?)?.toDouble(),
  startAt: const TimestampOrNullConverter().fromJson(json['startAt'] as num?),
  endAt: const TimestampOrNullConverter().fromJson(json['endAt'] as num?),
  totalTime: json['totalTime'] as String?,
  totalTimeDuration: const DurationOrNullConverter().fromJson(
    json['totalTimeDuration'] as num?,
  ),
  initialFluxometer: (json['initialFluxometer'] as num?)?.toDouble(),
  finalFluxometer: (json['finalFluxometer'] as num?)?.toDouble(),
  initialTankVolume: (json['initialTankVolume'] as num?)?.toDouble(),
  finalTankVolume: (json['finalTankVolume'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
  attendantName: json['attendantName'] as String?,
  attendantId: json['attendantId'] as String?,
);

Map<String, dynamic> _$AtsExitToJson(_AtsExit instance) => <String, dynamic>{
  'id': instance.id,
  'identifier': instance.identifier,
  'fromAssetId': instance.fromAssetId,
  'fromAsset': instance.fromAsset?.toJson(),
  'toAssetId': instance.toAssetId,
  'toAsset': instance.toAsset?.toJson(),
  'errorPercent': instance.errorPercent,
  'totalLiters': instance.totalLiters,
  'toAssetMileage': instance.toAssetMileage,
  'startAt': const TimestampOrNullConverter().toJson(instance.startAt),
  'endAt': const TimestampOrNullConverter().toJson(instance.endAt),
  'totalTime': instance.totalTime,
  'totalTimeDuration': const DurationOrNullConverter().toJson(
    instance.totalTimeDuration,
  ),
  'initialFluxometer': instance.initialFluxometer,
  'finalFluxometer': instance.finalFluxometer,
  'initialTankVolume': instance.initialTankVolume,
  'finalTankVolume': instance.finalTankVolume,
  'price': instance.price,
  'attendantName': instance.attendantName,
  'attendantId': instance.attendantId,
};

_AtsAuthenticationCard _$AtsAuthenticationCardFromJson(
  Map<String, dynamic> json,
) => _AtsAuthenticationCard(
  id: json['id'] as String,
  number: (json['number'] as num).toInt(),
  externalIdentifier: (json['externalIdentifier'] as num).toInt(),
  externalIdentifierHex: json['externalIdentifierHex'] as String,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  isSuspended: json['isSuspended'] as bool?,
  typeId: const AtsSelectCardConverter().fromJson(json['typeId'] as String),
  history: (json['history'] as List<dynamic>?)
      ?.map(
        (e) => AtsHistoryAuthenticationCard.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  createdAt: const TimestampOrNullConverter().fromJson(
    json['createdAt'] as num?,
  ),
);

Map<String, dynamic> _$AtsAuthenticationCardToJson(
  _AtsAuthenticationCard instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'externalIdentifier': instance.externalIdentifier,
  'externalIdentifierHex': instance.externalIdentifierHex,
  'asset': instance.asset?.toJson(),
  'owner': instance.owner?.toJson(),
  'isSuspended': instance.isSuspended,
  'typeId': const AtsSelectCardConverter().toJson(instance.typeId),
  'history': instance.history?.map((e) => e.toJson()).toList(),
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
};

_AtsHistoryAuthenticationCard _$AtsHistoryAuthenticationCardFromJson(
  Map<String, dynamic> json,
) => _AtsHistoryAuthenticationCard(
  id: json['id'] as String,
  operation: const AtsHistoryAuthenticationCardOperationConverter().fromJson(
    json['operation'] as String,
  ),
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  owner: json['owner'] == null
      ? null
      : User.fromJson(json['owner'] as Map<String, dynamic>),
  createdBy: User.fromJson(json['createdBy'] as Map<String, dynamic>),
  createdAt: const TimestampConverter().fromJson(json['createdAt'] as num),
);

Map<String, dynamic> _$AtsHistoryAuthenticationCardToJson(
  _AtsHistoryAuthenticationCard instance,
) => <String, dynamic>{
  'id': instance.id,
  'operation': const AtsHistoryAuthenticationCardOperationConverter().toJson(
    instance.operation,
  ),
  'asset': instance.asset?.toJson(),
  'owner': instance.owner?.toJson(),
  'createdBy': instance.createdBy.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
};

_AtsReceptionProductInput _$AtsReceptionProductInputFromJson(
  Map<String, dynamic> json,
) => _AtsReceptionProductInput(
  fuelAnp: json['fuelAnp'] as String?,
  tanksImages: (json['tanksImages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AtsReceptionProductInputToJson(
  _AtsReceptionProductInput instance,
) => <String, dynamic>{
  'fuelAnp': instance.fuelAnp,
  'tanksImages': instance.tanksImages,
};

_AtsReceptionInput _$AtsReceptionInputFromJson(Map<String, dynamic> json) =>
    _AtsReceptionInput(
      id: json['id'] as String?,
      ordersIds: (json['ordersIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map(
            (e) => AtsReceptionProductInput.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      assetId: json['assetId'] as String?,
      operationTime: const DurationOrNullConverter().fromJson(
        json['operationTime'] as num?,
      ),
      app: const AtsFromAppOrNullConverter().fromJson(json['app'] as String?),
      purchaseOrderIds: (json['purchaseOrderIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      receptionType: const AtsReceptionTypeOrNullConverter().fromJson(
        json['receptionType'] as String?,
      ),
    );

Map<String, dynamic> _$AtsReceptionInputToJson(_AtsReceptionInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordersIds': instance.ordersIds,
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'assetId': instance.assetId,
      'operationTime': const DurationOrNullConverter().toJson(
        instance.operationTime,
      ),
      'app': const AtsFromAppOrNullConverter().toJson(instance.app),
      'purchaseOrderIds': instance.purchaseOrderIds,
      'receptionType': const AtsReceptionTypeOrNullConverter().toJson(
        instance.receptionType,
      ),
    };

_AtsReceptionProduct _$AtsReceptionProductFromJson(Map<String, dynamic> json) =>
    _AtsReceptionProduct(
      id: json['id'] as String?,
      assetId: json['assetId'] as String?,
      fuelType: const AtsFuelTypeOrNullConverter().fromJson(
        json['fuelType'] as String?,
      ),
      fuelSubtype: const AtsFuelSubTypeOrNullConverter().fromJson(
        json['fuelSubtype'] as String?,
      ),
      density: (json['density'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      volumeBought: (json['volumeBought'] as num?)?.toDouble(),
      realVolume: (json['realVolume'] as num?)?.toDouble(),
      receivedAt: const TimestampOrNullConverter().fromJson(
        json['receivedAt'] as num?,
      ),
      provider: json['provider'] as String?,
      tanksImages:
          (json['tanksImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AtsReceptionProductToJson(
  _AtsReceptionProduct instance,
) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'fuelType': const AtsFuelTypeOrNullConverter().toJson(instance.fuelType),
  'fuelSubtype': const AtsFuelSubTypeOrNullConverter().toJson(
    instance.fuelSubtype,
  ),
  'density': instance.density,
  'temperature': instance.temperature,
  'volumeBought': instance.volumeBought,
  'realVolume': instance.realVolume,
  'receivedAt': const TimestampOrNullConverter().toJson(instance.receivedAt),
  'provider': instance.provider,
  'tanksImages': instance.tanksImages,
  'price': instance.price,
};

_AtsTransportInformation _$AtsTransportInformationFromJson(
  Map<String, dynamic> json,
) => _AtsTransportInformation(
  cnpj: json['cnpj'] as String?,
  name: json['name'] as String?,
  address: json['address'] as String?,
  mun: json['mun'] as String?,
  freightMod: json['freightMod'] as String?,
  federalUnit: json['federalUnit'] as String?,
  businessNumber: json['businessNumber'] as String?,
  vehiclePlate: json['vehiclePlate'] as String?,
  vehicleUf: json['vehicleUf'] as String?,
  vehicleName: json['vehicleName'] as String?,
  destination: json['destination'] as String?,
  driver: json['driver'] as String?,
  origin: json['origin'] as String?,
  stateRegistration: json['stateRegistration'] as String?,
);

Map<String, dynamic> _$AtsTransportInformationToJson(
  _AtsTransportInformation instance,
) => <String, dynamic>{
  'cnpj': instance.cnpj,
  'name': instance.name,
  'address': instance.address,
  'mun': instance.mun,
  'freightMod': instance.freightMod,
  'federalUnit': instance.federalUnit,
  'businessNumber': instance.businessNumber,
  'vehiclePlate': instance.vehiclePlate,
  'vehicleUf': instance.vehicleUf,
  'vehicleName': instance.vehicleName,
  'destination': instance.destination,
  'driver': instance.driver,
  'origin': instance.origin,
  'stateRegistration': instance.stateRegistration,
};

_AtsExecuteLoadInput _$AtsExecuteLoadInputFromJson(Map<String, dynamic> json) =>
    _AtsExecuteLoadInput(
      fromAssetId: json['fromAssetId'] as String?,
      toAssetId: json['toAssetId'] as String?,
    );

Map<String, dynamic> _$AtsExecuteLoadInputToJson(
  _AtsExecuteLoadInput instance,
) => <String, dynamic>{
  'fromAssetId': instance.fromAssetId,
  'toAssetId': instance.toAssetId,
};

_AtsCompanyInformation _$AtsCompanyInformationFromJson(
  Map<String, dynamic> json,
) => _AtsCompanyInformation(
  name: json['name'] as String?,
  cnpj: json['cnpj'] as String?,
  address: json['address'] as String?,
  email: json['email'] as String?,
  stateRegistration: json['stateRegistration'] as String?,
);

Map<String, dynamic> _$AtsCompanyInformationToJson(
  _AtsCompanyInformation instance,
) => <String, dynamic>{
  'name': instance.name,
  'cnpj': instance.cnpj,
  'address': instance.address,
  'email': instance.email,
  'stateRegistration': instance.stateRegistration,
};

_AtsProductInformation _$AtsProductInformationFromJson(
  Map<String, dynamic> json,
) => _AtsProductInformation(
  ncm: json['ncm'] as String?,
  name: json['name'] as String?,
  measureUnit: json['measureUnit'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  unitValue: (json['unitValue'] as num?)?.toDouble(),
  productValue: (json['productValue'] as num?)?.toDouble(),
  cfop: json['cfop'] as String?,
  subcategory: json['subcategory'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AtsProductInformationToJson(
  _AtsProductInformation instance,
) => <String, dynamic>{
  'ncm': instance.ncm,
  'name': instance.name,
  'measureUnit': instance.measureUnit,
  'quantity': instance.quantity,
  'unitValue': instance.unitValue,
  'productValue': instance.productValue,
  'cfop': instance.cfop,
  'subcategory': instance.subcategory,
};

_AtsPurchaseOrder _$AtsPurchaseOrderFromJson(Map<String, dynamic> json) =>
    _AtsPurchaseOrder(
      id: json['id'] as String?,
      ownerId: json['ownerId'] as String?,
      orderId: json['orderId'] as String?,
      assetId: json['assetId'] as String?,
      sellerAssetId: json['sellerAssetId'] as String?,
      transportAssetId: json['transportAssetId'] as String?,
      purchasedAt: const TimestampOrNullConverter().fromJson(
        json['purchasedAt'] as num?,
      ),
      receivedAt: const TimestampOrNullConverter().fromJson(
        json['receivedAt'] as num?,
      ),
      asset: json['asset'] == null
          ? null
          : Asset.fromJson(json['asset'] as Map<String, dynamic>),
      sellerInformation: json['sellerInformation'] == null
          ? null
          : AtsCompanyInformation.fromJson(
              json['sellerInformation'] as Map<String, dynamic>,
            ),
      receiverInformation: json['receiverInformation'] == null
          ? null
          : AtsCompanyInformation.fromJson(
              json['receiverInformation'] as Map<String, dynamic>,
            ),
      productsInformation: (json['productsInformation'] as List<dynamic>?)
          ?.map(
            (e) => AtsProductInformation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      total: json['total'] == null
          ? null
          : AtsPurchaseTotal.fromJson(json['total'] as Map<String, dynamic>),
      isReceived: json['isReceived'] as bool?,
      hasReception: json['hasReception'] as bool?,
      transportInformation: json['transportInformation'] == null
          ? null
          : AtsTransportInformation.fromJson(
              json['transportInformation'] as Map<String, dynamic>,
            ),
      hasRawXml: json['hasRawXml'] as bool?,
      invoiceType: json['invoiceType'] as String?,
      invoiceId: json['invoiceId'] as String?,
      parentInvoice: json['parentInvoice'] == null
          ? null
          : AtsPurchaseOrder.fromJson(
              json['parentInvoice'] as Map<String, dynamic>,
            ),
      ideInformation: json['ideInformation'] == null
          ? null
          : AtsIdeInformation.fromJson(
              json['ideInformation'] as Map<String, dynamic>,
            ),
      receptionAt: const TimestampOrNullConverter().fromJson(
        json['receptionAt'] as num?,
      ),
      action: const PurchaseOrderOperationOrNullConverter().fromJson(
        json['action'] as String?,
      ),
      transportAsset: json['transportAsset'] == null
          ? null
          : Asset.fromJson(json['transportAsset'] as Map<String, dynamic>),
      sellerAsset: json['sellerAsset'] == null
          ? null
          : Asset.fromJson(json['sellerAsset'] as Map<String, dynamic>),
      orderStatus: const AtsPurchaseOrderStatusOrNullConverter().fromJson(
        json['orderStatus'] as String?,
      ),
      inTransitAt: const TimestampOrNullConverter().fromJson(
        json['inTransitAt'] as num?,
      ),
      waitingToDispatchAt: const TimestampOrNullConverter().fromJson(
        json['waitingToDispatchAt'] as num?,
      ),
      deliveredAt: const TimestampOrNullConverter().fromJson(
        json['deliveredAt'] as num?,
      ),
      deliverCategory: const AtsPurchaseOrderSubCategoriesOrNullConverter()
          .fromJson(json['deliverCategory'] as String?),
      category: const AtsPurchaseOrderCategoriesEntityOrNullConverter()
          .fromJson(json['category'] as String?),
      operation: json['operation'] == null
          ? null
          : AtsOperation.fromJson(json['operation'] as Map<String, dynamic>),
      operations:
          (json['operations'] as List<dynamic>?)
              ?.map((e) => AtsOperation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      eta: const TimestampOrNullConverter().fromJson(json['eta'] as num?),
      etaUpdatedAt: const TimestampOrNullConverter().fromJson(
        json['etaUpdatedAt'] as num?,
      ),
      originalBuyerAsset: json['originalBuyerAsset'] == null
          ? null
          : Asset.fromJson(json['originalBuyerAsset'] as Map<String, dynamic>),
      receptionAssetId: json['receptionAssetId'] as String?,
    );

Map<String, dynamic> _$AtsPurchaseOrderToJson(
  _AtsPurchaseOrder instance,
) => <String, dynamic>{
  'id': instance.id,
  'ownerId': instance.ownerId,
  'orderId': instance.orderId,
  'assetId': instance.assetId,
  'sellerAssetId': instance.sellerAssetId,
  'transportAssetId': instance.transportAssetId,
  'purchasedAt': const TimestampOrNullConverter().toJson(instance.purchasedAt),
  'receivedAt': const TimestampOrNullConverter().toJson(instance.receivedAt),
  'asset': instance.asset?.toJson(),
  'sellerInformation': instance.sellerInformation?.toJson(),
  'receiverInformation': instance.receiverInformation?.toJson(),
  'productsInformation': instance.productsInformation
      ?.map((e) => e.toJson())
      .toList(),
  'total': instance.total?.toJson(),
  'isReceived': instance.isReceived,
  'hasReception': instance.hasReception,
  'transportInformation': instance.transportInformation?.toJson(),
  'hasRawXml': instance.hasRawXml,
  'invoiceType': instance.invoiceType,
  'invoiceId': instance.invoiceId,
  'parentInvoice': instance.parentInvoice?.toJson(),
  'ideInformation': instance.ideInformation?.toJson(),
  'receptionAt': const TimestampOrNullConverter().toJson(instance.receptionAt),
  'action': const PurchaseOrderOperationOrNullConverter().toJson(
    instance.action,
  ),
  'transportAsset': instance.transportAsset?.toJson(),
  'sellerAsset': instance.sellerAsset?.toJson(),
  'orderStatus': const AtsPurchaseOrderStatusOrNullConverter().toJson(
    instance.orderStatus,
  ),
  'inTransitAt': const TimestampOrNullConverter().toJson(instance.inTransitAt),
  'waitingToDispatchAt': const TimestampOrNullConverter().toJson(
    instance.waitingToDispatchAt,
  ),
  'deliveredAt': const TimestampOrNullConverter().toJson(instance.deliveredAt),
  'deliverCategory': const AtsPurchaseOrderSubCategoriesOrNullConverter()
      .toJson(instance.deliverCategory),
  'category': const AtsPurchaseOrderCategoriesEntityOrNullConverter().toJson(
    instance.category,
  ),
  'operation': instance.operation?.toJson(),
  'operations': instance.operations.map((e) => e.toJson()).toList(),
  'eta': const TimestampOrNullConverter().toJson(instance.eta),
  'etaUpdatedAt': const TimestampOrNullConverter().toJson(
    instance.etaUpdatedAt,
  ),
  'originalBuyerAsset': instance.originalBuyerAsset?.toJson(),
  'receptionAssetId': instance.receptionAssetId,
};

_AtsPurchaseTotal _$AtsPurchaseTotalFromJson(Map<String, dynamic> json) =>
    _AtsPurchaseTotal(
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      discountValue: (json['discountValue'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      totalLoad: (json['totalLoad'] as num?)?.toDouble(),
      predominantProduct: json['predominantProduct'] as String?,
      totalFreight: (json['totalFreight'] as num?)?.toDouble(),
      totalReceived: (json['totalReceived'] as num?)?.toDouble(),
      loadQuantity: (json['loadQuantity'] as num?)?.toDouble(),
      loadQuantityMeasure: json['loadQuantityMeasure'] as String?,
      freightWeight: (json['freightWeight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AtsPurchaseTotalToJson(_AtsPurchaseTotal instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'discountValue': instance.discountValue,
      'total': instance.total,
      'totalLoad': instance.totalLoad,
      'predominantProduct': instance.predominantProduct,
      'totalFreight': instance.totalFreight,
      'totalReceived': instance.totalReceived,
      'loadQuantity': instance.loadQuantity,
      'loadQuantityMeasure': instance.loadQuantityMeasure,
      'freightWeight': instance.freightWeight,
    };

_AtsReception _$AtsReceptionFromJson(
  Map<String, dynamic> json,
) => _AtsReception(
  id: json['id'] as String,
  orderId: (json['orderId'] as num?)?.toInt(),
  errorRate: (json['errorRate'] as num?)?.toDouble(),
  receptionStatus: _$JsonConverterFromJson<String, AtsReceptionStatus>(
    json['receptionStatus'],
    const AtsReceptionStatusConverter().fromJson,
  ),
  order: json['order'] == null
      ? null
      : AtsPurchaseOrder.fromJson(json['order'] as Map<String, dynamic>),
  orders:
      (json['orders'] as List<dynamic>?)
          ?.map((e) => AtsPurchaseOrder.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ordersIds:
      (json['ordersIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  entry: json['entry'] == null
      ? null
      : AtsEntry.fromJson(json['entry'] as Map<String, dynamic>),
  loadingParamsForm:
      (json['loadingParamsForm'] as List<dynamic>?)
          ?.map((e) => AtsLoadingParamsForm.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => AtsReceptionProduct.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AtsReceptionToJson(_AtsReception instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'errorRate': instance.errorRate,
      'receptionStatus': _$JsonConverterToJson<String, AtsReceptionStatus>(
        instance.receptionStatus,
        const AtsReceptionStatusConverter().toJson,
      ),
      'order': instance.order?.toJson(),
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'ordersIds': instance.ordersIds,
      'entry': instance.entry?.toJson(),
      'loadingParamsForm': instance.loadingParamsForm
          .map((e) => e.toJson())
          .toList(),
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_AtsEntryUnloadInput _$AtsEntryUnloadInputFromJson(Map<String, dynamic> json) =>
    _AtsEntryUnloadInput(
      id: json['id'] as String?,
      fromAssetId: json['fromAssetId'] as String?,
      receptionId: json['receptionId'] as String?,
      isBluetooth: json['isBluetooth'] as bool?,
    );

Map<String, dynamic> _$AtsEntryUnloadInputToJson(
  _AtsEntryUnloadInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'fromAssetId': instance.fromAssetId,
  'receptionId': instance.receptionId,
  'isBluetooth': instance.isBluetooth,
};

_AtsIdeInformation _$AtsIdeInformationFromJson(Map<String, dynamic> json) =>
    _AtsIdeInformation(
      ideType: json['ideType'] as String?,
      serie: json['serie'] as String?,
      model: json['model'] as String?,
      cfop: json['cfop'] as String?,
      operationType: json['operationType'] as String?,
      modal: json['modal'] as String?,
    );

Map<String, dynamic> _$AtsIdeInformationToJson(_AtsIdeInformation instance) =>
    <String, dynamic>{
      'ideType': instance.ideType,
      'serie': instance.serie,
      'model': instance.model,
      'cfop': instance.cfop,
      'operationType': instance.operationType,
      'modal': instance.modal,
    };

_OperationProductInformation _$OperationProductInformationFromJson(
  Map<String, dynamic> json,
) => _OperationProductInformation(
  category: json['category'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  subcategory: json['subcategory'] as String?,
  fuelType: json['fuelType'] as String?,
);

Map<String, dynamic> _$OperationProductInformationToJson(
  _OperationProductInformation instance,
) => <String, dynamic>{
  'category': instance.category,
  'quantity': instance.quantity,
  'subcategory': instance.subcategory,
  'fuelType': instance.fuelType,
};

_AtsLoadingParamsFormInput _$AtsLoadingParamsFormInputFromJson(
  Map<String, dynamic> json,
) => _AtsLoadingParamsFormInput(
  id: json['id'] as String?,
  formNumber: json['formNumber'] as String?,
  assetId: json['assetId'] as String?,
  receptionId: json['receptionId'] as String?,
  driver: json['driver'] as String?,
  sampleDensity: (json['sampleDensity'] as num?)?.toDouble(),
  sampleTemperature: (json['sampleTemperature'] as num?)?.toDouble(),
  assetTemperature: (json['assetTemperature'] as num?)?.toDouble(),
  analyzedAt: (json['analyzedAt'] as num?)?.toDouble(),
  sampleType: const AtsLoadingParamsSampleOrNullConverter().fromJson(
    json['sampleType'] as String?,
  ),
  fuelSubtype: json['fuelSubtype'] as String?,
  ambientVolume: (json['ambientVolume'] as num?)?.toDouble(),
  modality: const AtsParamsFormModalityOrNullConverter().fromJson(
    json['modality'] as String?,
  ),
  inpm: (json['inpm'] as num?)?.toDouble(),
  initialWeight: (json['initialWeight'] as num?)?.toDouble(),
  finalWeight: (json['finalWeight'] as num?)?.toDouble(),
  volume20: (json['volume20'] as num?)?.toDouble(),
  density20: (json['density20'] as num?)?.toDouble(),
  correctionFactor: (json['correctionFactor'] as num?)?.toDouble(),
  liquidWeight: (json['liquidWeight'] as num?)?.toDouble(),
  destinyInformation:
      (json['destinyInformation'] as List<dynamic>?)
          ?.map(
            (e) =>
                AtsDestinyInformationInput.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$AtsLoadingParamsFormInputToJson(
  _AtsLoadingParamsFormInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'formNumber': instance.formNumber,
  'assetId': instance.assetId,
  'receptionId': instance.receptionId,
  'driver': instance.driver,
  'sampleDensity': instance.sampleDensity,
  'sampleTemperature': instance.sampleTemperature,
  'assetTemperature': instance.assetTemperature,
  'analyzedAt': instance.analyzedAt,
  'sampleType': const AtsLoadingParamsSampleOrNullConverter().toJson(
    instance.sampleType,
  ),
  'fuelSubtype': instance.fuelSubtype,
  'ambientVolume': instance.ambientVolume,
  'modality': const AtsParamsFormModalityOrNullConverter().toJson(
    instance.modality,
  ),
  'inpm': instance.inpm,
  'initialWeight': instance.initialWeight,
  'finalWeight': instance.finalWeight,
  'volume20': instance.volume20,
  'density20': instance.density20,
  'correctionFactor': instance.correctionFactor,
  'liquidWeight': instance.liquidWeight,
  'destinyInformation': instance.destinyInformation
      .map((e) => e.toJson())
      .toList(),
};

_AtsDestinyInformationInput _$AtsDestinyInformationInputFromJson(
  Map<String, dynamic> json,
) => _AtsDestinyInformationInput(
  capacity: (json['capacity'] as num?)?.toDouble(),
  replesnishOrWithdraw: (json['replesnishOrWithdraw'] as num?)?.toDouble(),
  destinyInformationSetaVerification:
      const AtsReplenishmentOrWithdrawOrNullConverter().fromJson(
        json['destinyInformationSetaVerification'] as String?,
      ),
);

Map<String, dynamic> _$AtsDestinyInformationInputToJson(
  _AtsDestinyInformationInput instance,
) => <String, dynamic>{
  'capacity': instance.capacity,
  'replesnishOrWithdraw': instance.replesnishOrWithdraw,
  'destinyInformationSetaVerification':
      const AtsReplenishmentOrWithdrawOrNullConverter().toJson(
        instance.destinyInformationSetaVerification,
      ),
};

_AtsLoadingParamsForm _$AtsLoadingParamsFormFromJson(
  Map<String, dynamic> json,
) => _AtsLoadingParamsForm(
  id: json['id'] as String?,
  assetId: json['assetId'] as String?,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  receptionId: json['receptionId'] as String?,
  reception: json['reception'] == null
      ? null
      : AtsReception.fromJson(json['reception'] as Map<String, dynamic>),
  driver: json['driver'] as String?,
  sampleDensity: (json['sampleDensity'] as num?)?.toDouble(),
  sampleTemperature: (json['sampleTemperature'] as num?)?.toDouble(),
  assetTemperature: (json['assetTemperature'] as num?)?.toDouble(),
  analyzedAt: const TimestampOrNullConverter().fromJson(
    json['analyzedAt'] as num?,
  ),
  sampleType: const AtsLoadingParamsSampleOrNullConverter().fromJson(
    json['sampleType'] as String?,
  ),
  fuelType: const AtsFuelTypeOrNullConverter().fromJson(
    json['fuelType'] as String?,
  ),
  formNumber: json['formNumber'] as String?,
  fuelSubtype: json['fuelSubtype'] as String?,
  modality: const AtsParamsFormModalityOrNullConverter().fromJson(
    json['modality'] as String?,
  ),
  inpm: (json['inpm'] as num?)?.toDouble(),
  destinyInformation: (json['destinyInformation'] as List<dynamic>?)
      ?.map((e) => AtsDestinyInformation.fromJson(e as Map<String, dynamic>))
      .toList(),
  balanceParams: json['balanceParams'] == null
      ? null
      : AtsBalanceParams.fromJson(
          json['balanceParams'] as Map<String, dynamic>,
        ),
  skidSetaParams: json['skidSetaParams'] == null
      ? null
      : AtsSkidSetaParams.fromJson(
          json['skidSetaParams'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AtsLoadingParamsFormToJson(
  _AtsLoadingParamsForm instance,
) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'asset': instance.asset?.toJson(),
  'receptionId': instance.receptionId,
  'reception': instance.reception?.toJson(),
  'driver': instance.driver,
  'sampleDensity': instance.sampleDensity,
  'sampleTemperature': instance.sampleTemperature,
  'assetTemperature': instance.assetTemperature,
  'analyzedAt': const TimestampOrNullConverter().toJson(instance.analyzedAt),
  'sampleType': const AtsLoadingParamsSampleOrNullConverter().toJson(
    instance.sampleType,
  ),
  'fuelType': const AtsFuelTypeOrNullConverter().toJson(instance.fuelType),
  'formNumber': instance.formNumber,
  'fuelSubtype': instance.fuelSubtype,
  'modality': const AtsParamsFormModalityOrNullConverter().toJson(
    instance.modality,
  ),
  'inpm': instance.inpm,
  'destinyInformation': instance.destinyInformation
      ?.map((e) => e.toJson())
      .toList(),
  'balanceParams': instance.balanceParams?.toJson(),
  'skidSetaParams': instance.skidSetaParams?.toJson(),
};

_AtsDestinyInformation _$AtsDestinyInformationFromJson(
  Map<String, dynamic> json,
) => _AtsDestinyInformation(
  capacity: (json['capacity'] as num?)?.toDouble(),
  replesnishOrWithdraw: (json['replesnishOrWithdraw'] as num?)?.toDouble(),
  destinyInformationSetaVerification:
      const AtsReplenishmentOrWithdrawOrNullConverter().fromJson(
        json['destinyInformationSetaVerification'] as String?,
      ),
);

Map<String, dynamic> _$AtsDestinyInformationToJson(
  _AtsDestinyInformation instance,
) => <String, dynamic>{
  'capacity': instance.capacity,
  'replesnishOrWithdraw': instance.replesnishOrWithdraw,
  'destinyInformationSetaVerification':
      const AtsReplenishmentOrWithdrawOrNullConverter().toJson(
        instance.destinyInformationSetaVerification,
      ),
};

_AtsBalanceParams _$AtsBalanceParamsFromJson(Map<String, dynamic> json) =>
    _AtsBalanceParams(
      initialWeight: (json['initialWeight'] as num?)?.toDouble(),
      finalWeight: (json['finalWeight'] as num?)?.toDouble(),
      liquidWeight: (json['liquidWeight'] as num?)?.toDouble(),
      sampleDensity: (json['sampleDensity'] as num?)?.toDouble(),
      sampleTemperature: (json['sampleTemperature'] as num?)?.toDouble(),
      density20: (json['density20'] as num?)?.toDouble(),
      inpm: (json['inpm'] as num?)?.toDouble(),
      volume20: (json['volume20'] as num?)?.toDouble(),
      spareVolume: (json['spareVolume'] as num?)?.toDouble(),
      ambientVolume: (json['ambientVolume'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AtsBalanceParamsToJson(_AtsBalanceParams instance) =>
    <String, dynamic>{
      'initialWeight': instance.initialWeight,
      'finalWeight': instance.finalWeight,
      'liquidWeight': instance.liquidWeight,
      'sampleDensity': instance.sampleDensity,
      'sampleTemperature': instance.sampleTemperature,
      'density20': instance.density20,
      'inpm': instance.inpm,
      'volume20': instance.volume20,
      'spareVolume': instance.spareVolume,
      'ambientVolume': instance.ambientVolume,
    };

_AtsSkidSetaParams _$AtsSkidSetaParamsFromJson(Map<String, dynamic> json) =>
    _AtsSkidSetaParams(
      modality: const AtsParamsFormModalityOrNullConverter().fromJson(
        json['modality'] as String?,
      ),
      sampleDensity: (json['sampleDensity'] as num?)?.toDouble(),
      sampleTemperature: (json['sampleTemperature'] as num?)?.toDouble(),
      density20: (json['density20'] as num?)?.toDouble(),
      assetTemperature: (json['assetTemperature'] as num?)?.toDouble(),
      correctionFactor: (json['correctionFactor'] as num?)?.toDouble(),
      retiraVolume: (json['retiraVolume'] as num?)?.toDouble(),
      volume20: (json['volume20'] as num?)?.toDouble(),
      inpm: (json['inpm'] as num?)?.toDouble(),
      ambientVolume: (json['ambientVolume'] as num?)?.toDouble(),
      spareVolume: (json['spareVolume'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AtsSkidSetaParamsToJson(_AtsSkidSetaParams instance) =>
    <String, dynamic>{
      'modality': const AtsParamsFormModalityOrNullConverter().toJson(
        instance.modality,
      ),
      'sampleDensity': instance.sampleDensity,
      'sampleTemperature': instance.sampleTemperature,
      'density20': instance.density20,
      'assetTemperature': instance.assetTemperature,
      'correctionFactor': instance.correctionFactor,
      'retiraVolume': instance.retiraVolume,
      'volume20': instance.volume20,
      'inpm': instance.inpm,
      'ambientVolume': instance.ambientVolume,
      'spareVolume': instance.spareVolume,
    };

_AtsSilUnloadingOrderInput _$AtsSilUnloadingOrderInputFromJson(
  Map<String, dynamic> json,
) => _AtsSilUnloadingOrderInput(
  operationId: (json['operationId'] as num?)?.toInt(),
  driverName: json['driverName'] as String?,
  driverRg: json['driverRg'] as String?,
  driverCpf: json['driverCpf'] as String?,
  truckPlate: json['truckPlate'] as String?,
  trailers:
      (json['trailers'] as List<dynamic>?)
          ?.map((e) => AtsSilTrailerInput.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  vehicleColor: json['vehicleColor'] as String?,
  hasDnit: json['hasDnit'] as bool?,
  seals: json['seals'] as String?,
);

Map<String, dynamic> _$AtsSilUnloadingOrderInputToJson(
  _AtsSilUnloadingOrderInput instance,
) => <String, dynamic>{
  'operationId': instance.operationId,
  'driverName': instance.driverName,
  'driverRg': instance.driverRg,
  'driverCpf': instance.driverCpf,
  'truckPlate': instance.truckPlate,
  'trailers': instance.trailers.map((e) => e.toJson()).toList(),
  'vehicleColor': instance.vehicleColor,
  'hasDnit': instance.hasDnit,
  'seals': instance.seals,
};

_AtsSilTrailerInput _$AtsSilTrailerInputFromJson(Map<String, dynamic> json) =>
    _AtsSilTrailerInput(
      trailerPlate: json['trailerPlate'] as String?,
      compartments:
          (json['compartments'] as List<dynamic>?)
              ?.map(
                (e) =>
                    AtsSilCompartmentInput.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AtsSilTrailerInputToJson(_AtsSilTrailerInput instance) =>
    <String, dynamic>{
      'trailerPlate': instance.trailerPlate,
      'compartments': instance.compartments.map((e) => e.toJson()).toList(),
    };

_AtsSilCompartmentInput _$AtsSilCompartmentInputFromJson(
  Map<String, dynamic> json,
) => _AtsSilCompartmentInput(
  compartmentNumber: (json['compartmentNumber'] as num?)?.toInt(),
  dischargeVolume: (json['dischargeVolume'] as num?)?.toInt(),
  productCode: (json['productCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$AtsSilCompartmentInputToJson(
  _AtsSilCompartmentInput instance,
) => <String, dynamic>{
  'compartmentNumber': instance.compartmentNumber,
  'dischargeVolume': instance.dischargeVolume,
  'productCode': instance.productCode,
};

_AtsExecuteExitInput _$AtsExecuteExitInputFromJson(Map<String, dynamic> json) =>
    _AtsExecuteExitInput(
      fromAssetId: json['fromAssetId'] as String?,
      sensorId: json['sensorId'] as String?,
      presetValue: (json['presetValue'] as num?)?.toInt(),
      toAssetId: json['toAssetId'] as String?,
      toAssetMileage: (json['toAssetMileage'] as num?)?.toDouble(),
      fromApp: const AtsFromAppOrNullConverter().fromJson(
        json['fromApp'] as String?,
      ),
    );

Map<String, dynamic> _$AtsExecuteExitInputToJson(
  _AtsExecuteExitInput instance,
) => <String, dynamic>{
  'fromAssetId': instance.fromAssetId,
  'sensorId': instance.sensorId,
  'presetValue': instance.presetValue,
  'toAssetId': instance.toAssetId,
  'toAssetMileage': instance.toAssetMileage,
  'fromApp': const AtsFromAppOrNullConverter().toJson(instance.fromApp),
};

_AtsEntry _$AtsEntryFromJson(Map<String, dynamic> json) => _AtsEntry(
  id: json['id'] as String,
  assetId: json['assetId'] as String?,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  oldTankLevel: (json['oldTankLevel'] as num?)?.toDouble(),
  newTankLevel: (json['newTankLevel'] as num?)?.toDouble(),
  startAt: const TimestampOrNullConverter().fromJson(json['startAt'] as num?),
  endAt: const TimestampOrNullConverter().fromJson(json['endAt'] as num?),
  errorPercent: (json['errorPercent'] as num?)?.toDouble(),
  reception: json['reception'] == null
      ? null
      : AtsReception.fromJson(json['reception'] as Map<String, dynamic>),
  receptions: (json['receptions'] as List<dynamic>?)
      ?.map((e) => AtsReception.fromJson(e as Map<String, dynamic>))
      .toList(),
  isLinked: json['isLinked'] as bool?,
  fuelType: json['fuelType'] as String?,
  fuelSubtype: json['fuelSubtype'] as String?,
  temperature: (json['temperature'] as num?)?.toDouble(),
  initialTemperature: (json['initialTemperature'] as num?)?.toDouble(),
  density: (json['density'] as num?)?.toDouble(),
  initialDensity: (json['initialDensity'] as num?)?.toDouble(),
  waterLevel: (json['waterLevel'] as num?)?.toDouble(),
  initialWaterLevel: (json['initialWaterLevel'] as num?)?.toDouble(),
  volumeHistory:
      (json['volumeHistory'] as List<dynamic>?)
          ?.map((e) => AtsVolume.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  fuelAnp: json['fuelAnp'] as String?,
  height: (json['height'] as num?)?.toDouble(),
  initialHeight: (json['initialHeight'] as num?)?.toDouble(),
  operationId: json['operationId'] as String?,
  initialDensity20: (json['initialDensity20'] as num?)?.toDouble(),
  finalDensity20: (json['finalDensity20'] as num?)?.toDouble(),
  initialVolume20: (json['initialVolume20'] as num?)?.toDouble(),
  finalVolume20: (json['finalVolume20'] as num?)?.toDouble(),
  initialCorrectionFactor: (json['initialCorrectionFactor'] as num?)
      ?.toDouble(),
  finalCorrectionFactor: (json['finalCorrectionFactor'] as num?)?.toDouble(),
  totalExits: (json['totalExits'] as num?)?.toDouble(),
  totalExits20: (json['totalExits20'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AtsEntryToJson(_AtsEntry instance) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'asset': instance.asset?.toJson(),
  'oldTankLevel': instance.oldTankLevel,
  'newTankLevel': instance.newTankLevel,
  'startAt': const TimestampOrNullConverter().toJson(instance.startAt),
  'endAt': const TimestampOrNullConverter().toJson(instance.endAt),
  'errorPercent': instance.errorPercent,
  'reception': instance.reception?.toJson(),
  'receptions': instance.receptions?.map((e) => e.toJson()).toList(),
  'isLinked': instance.isLinked,
  'fuelType': instance.fuelType,
  'fuelSubtype': instance.fuelSubtype,
  'temperature': instance.temperature,
  'initialTemperature': instance.initialTemperature,
  'density': instance.density,
  'initialDensity': instance.initialDensity,
  'waterLevel': instance.waterLevel,
  'initialWaterLevel': instance.initialWaterLevel,
  'volumeHistory': instance.volumeHistory.map((e) => e.toJson()).toList(),
  'fuelAnp': instance.fuelAnp,
  'height': instance.height,
  'initialHeight': instance.initialHeight,
  'operationId': instance.operationId,
  'initialDensity20': instance.initialDensity20,
  'finalDensity20': instance.finalDensity20,
  'initialVolume20': instance.initialVolume20,
  'finalVolume20': instance.finalVolume20,
  'initialCorrectionFactor': instance.initialCorrectionFactor,
  'finalCorrectionFactor': instance.finalCorrectionFactor,
  'totalExits': instance.totalExits,
  'totalExits20': instance.totalExits20,
};

_AtsVolume _$AtsVolumeFromJson(Map<String, dynamic> json) => _AtsVolume(
  assetId: json['assetId'] as String?,
  procedureResult: (json['procedureResult'] as num?)?.toDouble(),
  at: const TimestampOrNullConverter().fromJson(json['at'] as num?),
);

Map<String, dynamic> _$AtsVolumeToJson(_AtsVolume instance) =>
    <String, dynamic>{
      'assetId': instance.assetId,
      'procedureResult': instance.procedureResult,
      'at': const TimestampOrNullConverter().toJson(instance.at),
    };

_AtsOperationHistory _$AtsOperationHistoryFromJson(Map<String, dynamic> json) =>
    _AtsOperationHistory(
      status: $enumDecode(
        _$AtsPurchaseOrderStatusEnumMap,
        json['status'],
        unknownValue: AtsPurchaseOrderStatus.generated,
      ),
      createdAt: const TimestampConverter().fromJson(json['createdAt'] as num),
      asset: json['asset'] == null
          ? null
          : Asset.fromJson(json['asset'] as Map<String, dynamic>),
      assetId: json['assetId'] as String?,
      bookedFor: const TimestampOrNullConverter().fromJson(
        json['bookedFor'] as num?,
      ),
    );

Map<String, dynamic> _$AtsOperationHistoryToJson(
  _AtsOperationHistory instance,
) => <String, dynamic>{
  'status': instance.status.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'asset': instance.asset?.toJson(),
  'assetId': instance.assetId,
  'bookedFor': const TimestampOrNullConverter().toJson(instance.bookedFor),
};

const _$AtsPurchaseOrderStatusEnumMap = {
  AtsPurchaseOrderStatus.generated: 'GENERATED',
  AtsPurchaseOrderStatus.waitingToDispatch: 'WAITING_TO_DISPATCH',
  AtsPurchaseOrderStatus.inTransit: 'IN_TRANSIT',
  AtsPurchaseOrderStatus.delivered: 'DELIVERED',
  AtsPurchaseOrderStatus.readyToOperate: 'READY_TO_OPERATE',
  AtsPurchaseOrderStatus.unloadingOperation: 'UNLOADING_OPERATION',
  AtsPurchaseOrderStatus.unloadingFuel: 'UNLOADING_FUEL',
  AtsPurchaseOrderStatus.unloadingFuelInterrupted: 'UNLOADING_FUEL_INTERRUPTED',
  AtsPurchaseOrderStatus.destinationBerthExit: 'DESTINATION_BERTH_EXIT',
  AtsPurchaseOrderStatus.loadingBooked: 'LOADING_BOOKED',
  AtsPurchaseOrderStatus.unloadingBooked: 'UNLOADING_BOOKED',
  AtsPurchaseOrderStatus.validated: 'VALIDATED',
  AtsPurchaseOrderStatus.orderReceived: 'ORDER_RECEIVED',
  AtsPurchaseOrderStatus.nfeChanged: 'NFE_CHANGED',
};

_AtsOperation _$AtsOperationFromJson(Map<String, dynamic> json) =>
    _AtsOperation(
      id: json['id'] as String?,
      sellerAssetId: json['sellerAssetId'] as String?,
      transportAssetId: json['transportAssetId'] as String?,
      transportCompanyAssetId: json['transportCompanyAssetId'] as String?,
      purchasedAt: const TimestampOrNullConverter().fromJson(
        json['purchasedAt'] as num?,
      ),
      createdAt: const TimestampOrNullConverter().fromJson(
        json['createdAt'] as num?,
      ),
      finishedAt: const TimestampOrNullConverter().fromJson(
        json['finishedAt'] as num?,
      ),
      pendingToReview: json['pendingToReview'] as bool?,
      ordersIds: (json['ordersIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sellerAsset: json['sellerAsset'] == null
          ? null
          : Asset.fromJson(json['sellerAsset'] as Map<String, dynamic>),
      transportAsset: json['transportAsset'] == null
          ? null
          : Asset.fromJson(json['transportAsset'] as Map<String, dynamic>),
      transportCompanyAsset: json['transportCompanyAsset'] == null
          ? null
          : Asset.fromJson(
              json['transportCompanyAsset'] as Map<String, dynamic>,
            ),
      sellerInformation: json['sellerInformation'] == null
          ? null
          : AtsCompanyInformation.fromJson(
              json['sellerInformation'] as Map<String, dynamic>,
            ),
      transportInformation: json['transportInformation'] == null
          ? null
          : AtsTransportInformation.fromJson(
              json['transportInformation'] as Map<String, dynamic>,
            ),
      orderStatus: $enumDecodeNullable(
        _$AtsPurchaseOrderStatusEnumMap,
        json['orderStatus'],
        unknownValue: AtsPurchaseOrderStatus.generated,
      ),
      category: $enumDecodeNullable(
        _$AtsPurchaseOrderCategoriesEntityEnumMap,
        json['category'],
        unknownValue: AtsPurchaseOrderCategoriesEntity.notDefined,
      ),
      deliverCategory: $enumDecodeNullable(
        _$AtsPurchaseOrderSubCategoriesEnumMap,
        json['deliverCategory'],
        unknownValue: AtsPurchaseOrderSubCategories.notDefined,
      ),
      purchaseOrders: (json['purchaseOrders'] as List<dynamic>?)
          ?.map((e) => AtsPurchaseOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      statuses: (json['statuses'] as List<dynamic>?)
          ?.map((e) => AtsOperationStatuses.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalQuantity: (json['totalQuantity'] as num?)?.toDouble(),
      productsInformation: (json['productsInformation'] as List<dynamic>?)
          ?.map(
            (e) =>
                OperationProductInformation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      ctes: (json['ctes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      caclFormsIds: (json['caclFormsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      caclForms: (json['caclForms'] as List<dynamic>?)
          ?.map((e) => CaclEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      manifests: (json['manifests'] as List<dynamic>?)
          ?.map((e) => Manifest.fromJson(e as Map<String, dynamic>))
          .toList(),
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => AtsOperationHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      minEta: const TimestampOrNullConverter().fromJson(json['minEta'] as num?),
      etaStatus: $enumDecodeNullable(_$AtsEtaStatusEnumMap, json['etaStatus']),
      loadingOrders: (json['loadingOrders'] as List<dynamic>?)
          ?.map((e) => AtsLoadingOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      terminalEntryAt: const TimestampOrNullConverter().fromJson(
        json['terminalEntryAt'] as num?,
      ),
      terminalExitAt: const TimestampOrNullConverter().fromJson(
        json['terminalExitAt'] as num?,
      ),
      mdfeId: json['mdfeId'] as String?,
      mdfe: json['mdfe'] == null
          ? null
          : AtsMdfe.fromJson(json['mdfe'] as Map<String, dynamic>),
      mdfes: (json['mdfes'] as List<dynamic>?)
          ?.map((e) => AtsMdfe.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkInAt: const TimestampOrNullConverter().fromJson(
        json['checkInAt'] as num?,
      ),
      merges: (json['merges'] as List<dynamic>?)
          ?.map((e) => AtsOperationMerge.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AtsOperationToJson(
  _AtsOperation instance,
) => <String, dynamic>{
  'id': instance.id,
  'sellerAssetId': instance.sellerAssetId,
  'transportAssetId': instance.transportAssetId,
  'transportCompanyAssetId': instance.transportCompanyAssetId,
  'purchasedAt': const TimestampOrNullConverter().toJson(instance.purchasedAt),
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
  'finishedAt': const TimestampOrNullConverter().toJson(instance.finishedAt),
  'pendingToReview': instance.pendingToReview,
  'ordersIds': instance.ordersIds,
  'sellerAsset': instance.sellerAsset?.toJson(),
  'transportAsset': instance.transportAsset?.toJson(),
  'transportCompanyAsset': instance.transportCompanyAsset?.toJson(),
  'sellerInformation': instance.sellerInformation?.toJson(),
  'transportInformation': instance.transportInformation?.toJson(),
  'orderStatus': instance.orderStatus?.toJson(),
  'category': instance.category?.toJson(),
  'deliverCategory': instance.deliverCategory?.toJson(),
  'purchaseOrders': instance.purchaseOrders?.map((e) => e.toJson()).toList(),
  'statuses': instance.statuses?.map((e) => e.toJson()).toList(),
  'totalQuantity': instance.totalQuantity,
  'productsInformation': instance.productsInformation
      ?.map((e) => e.toJson())
      .toList(),
  'ctes': instance.ctes,
  'caclFormsIds': instance.caclFormsIds,
  'caclForms': instance.caclForms?.map((e) => e.toJson()).toList(),
  'manifests': instance.manifests?.map((e) => e.toJson()).toList(),
  'history': instance.history?.map((e) => e.toJson()).toList(),
  'minEta': const TimestampOrNullConverter().toJson(instance.minEta),
  'etaStatus': instance.etaStatus?.toJson(),
  'loadingOrders': instance.loadingOrders?.map((e) => e.toJson()).toList(),
  'terminalEntryAt': const TimestampOrNullConverter().toJson(
    instance.terminalEntryAt,
  ),
  'terminalExitAt': const TimestampOrNullConverter().toJson(
    instance.terminalExitAt,
  ),
  'mdfeId': instance.mdfeId,
  'mdfe': instance.mdfe?.toJson(),
  'mdfes': instance.mdfes?.map((e) => e.toJson()).toList(),
  'checkInAt': const TimestampOrNullConverter().toJson(instance.checkInAt),
  'merges': instance.merges?.map((e) => e.toJson()).toList(),
};

const _$AtsPurchaseOrderCategoriesEntityEnumMap = {
  AtsPurchaseOrderCategoriesEntity.pickup: 'PICKUP',
  AtsPurchaseOrderCategoriesEntity.pickupToSupplier: 'PICKUP_TO_SUPPLIER',
  AtsPurchaseOrderCategoriesEntity.transfer: 'TRANSFER',
  AtsPurchaseOrderCategoriesEntity.deliveryToSupplier: 'DELIVERY_TO_SUPPLIER',
  AtsPurchaseOrderCategoriesEntity.deliveryToReseller: 'DELIVERY_TO_RESELLER',
  AtsPurchaseOrderCategoriesEntity.forSaleOutside: 'FOR_SALE_OUTSIDE',
  AtsPurchaseOrderCategoriesEntity.deliveryToStorage: 'DELIVERY_TO_STORAGE',
  AtsPurchaseOrderCategoriesEntity.returnFromStorage: 'RETURN_FROM_STORAGE',
  AtsPurchaseOrderCategoriesEntity.productionSaleToFreeTradeZone:
      'PRODUCTION_SALE_TO_FREE_TRADE_ZONE',
  AtsPurchaseOrderCategoriesEntity.saleFromThirdPartyTank:
      'SALE_FROM_THIRD_PARTY_TANK',
  AtsPurchaseOrderCategoriesEntity.saleFromThirdPartyDeliveredBySeller:
      'SALE_FROM_THIRD_PARTY_DELIVERED_BY_SELLER',
  AtsPurchaseOrderCategoriesEntity.notDefined: 'NOT_DEFINED',
  AtsPurchaseOrderCategoriesEntity.remittanceSale: 'REMITTANCE_SALE',
  AtsPurchaseOrderCategoriesEntity.saleReturn: 'SALE_RETURN',
  AtsPurchaseOrderCategoriesEntity.loan: 'LOAN',
  AtsPurchaseOrderCategoriesEntity.loanReturn: 'LOAN_RETURN',
};

const _$AtsPurchaseOrderSubCategoriesEnumMap = {
  AtsPurchaseOrderSubCategories.sameState: 'SAME_STATE',
  AtsPurchaseOrderSubCategories.otherState: 'OTHER_STATE',
  AtsPurchaseOrderSubCategories.notDefined: 'NOT_DEFINED',
};

const _$AtsEtaStatusEnumMap = {
  AtsEtaStatus.pending: 'PENDING',
  AtsEtaStatus.lowAccuracy: 'LOW_ACCURACY',
  AtsEtaStatus.highAccuracy: 'HIGH_ACCURACY',
  AtsEtaStatus.mediumAccuracy: 'MEDIUM_ACCURACY',
  AtsEtaStatus.notEnoughData: 'NOT_ENOUGH_DATA',
};

_AtsOperationStatuses _$AtsOperationStatusesFromJson(
  Map<String, dynamic> json,
) => _AtsOperationStatuses(
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  inTransitAt: const TimestampOrNullConverter().fromJson(
    json['inTransitAt'] as num?,
  ),
  waitingToDispatchAt: const TimestampOrNullConverter().fromJson(
    json['waitingToDispatchAt'] as num?,
  ),
  deliveredAt: const TimestampOrNullConverter().fromJson(
    json['deliveredAt'] as num?,
  ),
  unloadingOperationAt: const TimestampOrNullConverter().fromJson(
    json['unloadingOperationAt'] as num?,
  ),
  readyToOperateAt: const TimestampOrNullConverter().fromJson(
    json['readyToOperateAt'] as num?,
  ),
  eta: const TimestampOrNullConverter().fromJson(json['eta'] as num?),
);

Map<String, dynamic> _$AtsOperationStatusesToJson(
  _AtsOperationStatuses instance,
) => <String, dynamic>{
  'asset': instance.asset?.toJson(),
  'inTransitAt': const TimestampOrNullConverter().toJson(instance.inTransitAt),
  'waitingToDispatchAt': const TimestampOrNullConverter().toJson(
    instance.waitingToDispatchAt,
  ),
  'deliveredAt': const TimestampOrNullConverter().toJson(instance.deliveredAt),
  'unloadingOperationAt': const TimestampOrNullConverter().toJson(
    instance.unloadingOperationAt,
  ),
  'readyToOperateAt': const TimestampOrNullConverter().toJson(
    instance.readyToOperateAt,
  ),
  'eta': const TimestampOrNullConverter().toJson(instance.eta),
};

_AtsMdfe _$AtsMdfeFromJson(Map<String, dynamic> json) => _AtsMdfe(
  id: json['id'] as String?,
  manifestId: json['manifestId'] as String?,
  createdAt: const TimestampOrNullConverter().fromJson(
    json['createdAt'] as num?,
  ),
  updatedAt: const TimestampOrNullConverter().fromJson(
    json['updatedAt'] as num?,
  ),
  operation: json['operation'] == null
      ? null
      : AtsOperation.fromJson(json['operation'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AtsMdfeToJson(_AtsMdfe instance) => <String, dynamic>{
  'id': instance.id,
  'manifestId': instance.manifestId,
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
  'updatedAt': const TimestampOrNullConverter().toJson(instance.updatedAt),
  'operation': instance.operation?.toJson(),
};

_AtsOperationMerge _$AtsOperationMergeFromJson(Map<String, dynamic> json) =>
    _AtsOperationMerge(
      mergeId: json['mergeId'] as String?,
      mergedBy: json['mergedBy'] == null
          ? null
          : User.fromJson(json['mergedBy'] as Map<String, dynamic>),
      mergedAt: const TimestampOrNullConverter().fromJson(
        json['mergedAt'] as num?,
      ),
      sourceOperationsIds: (json['sourceOperationsIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      revertedBy: json['revertedBy'] == null
          ? null
          : User.fromJson(json['revertedBy'] as Map<String, dynamic>),
      revertedAt: const TimestampOrNullConverter().fromJson(
        json['revertedAt'] as num?,
      ),
    );

Map<String, dynamic> _$AtsOperationMergeToJson(
  _AtsOperationMerge instance,
) => <String, dynamic>{
  'mergeId': instance.mergeId,
  'mergedBy': instance.mergedBy?.toJson(),
  'mergedAt': const TimestampOrNullConverter().toJson(instance.mergedAt),
  'sourceOperationsIds': instance.sourceOperationsIds,
  'revertedBy': instance.revertedBy?.toJson(),
  'revertedAt': const TimestampOrNullConverter().toJson(instance.revertedAt),
};

_Manifest _$ManifestFromJson(Map<String, dynamic> json) => _Manifest(
  id: json['id'] as String?,
  assetId: json['assetId'] as String?,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  terminalId: json['terminalId'] as String?,
  terminal: json['terminal'] == null
      ? null
      : Asset.fromJson(json['terminal'] as Map<String, dynamic>),
  totalVolume: (json['totalVolume'] as num?)?.toDouble(),
  totalConvertedVolume: (json['totalConvertedVolume'] as num?)?.toDouble(),
  operationId: json['operationId'] as String?,
  operation: json['operation'] == null
      ? null
      : AtsOperation.fromJson(json['operation'] as Map<String, dynamic>),
  createdAt: const TimestampOrNullConverter().fromJson(
    json['createdAt'] as num?,
  ),
  executedAt: const TimestampOrNullConverter().fromJson(
    json['executedAt'] as num?,
  ),
  trim: (json['trim'] as num?)?.toDouble(),
  banda: (json['banda'] as num?)?.toDouble(),
  tankMeasurements: (json['tankMeasurements'] as List<dynamic>?)
      ?.map((e) => TankMeasurement.fromJson(e as Map<String, dynamic>))
      .toList(),
  kind: $enumDecodeNullable(
    _$ManifestKindEnumMap,
    json['kind'],
    unknownValue: ManifestKind.manual,
  ),
  position: json['position'] == null
      ? null
      : TelemetryPosition.fromJson(json['position'] as Map<String, dynamic>),
  sensors: (json['sensors'] as List<dynamic>?)
      ?.map((e) => TelemetrySensor.fromJson(e as Map<String, dynamic>))
      .toList(),
  messageId: json['messageId'] as String?,
);

Map<String, dynamic> _$ManifestToJson(_Manifest instance) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'asset': instance.asset?.toJson(),
  'terminalId': instance.terminalId,
  'terminal': instance.terminal?.toJson(),
  'totalVolume': instance.totalVolume,
  'totalConvertedVolume': instance.totalConvertedVolume,
  'operationId': instance.operationId,
  'operation': instance.operation?.toJson(),
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
  'executedAt': const TimestampOrNullConverter().toJson(instance.executedAt),
  'trim': instance.trim,
  'banda': instance.banda,
  'tankMeasurements': instance.tankMeasurements
      ?.map((e) => e.toJson())
      .toList(),
  'kind': instance.kind?.toJson(),
  'position': instance.position?.toJson(),
  'sensors': instance.sensors?.map((e) => e.toJson()).toList(),
  'messageId': instance.messageId,
};

const _$ManifestKindEnumMap = {
  ManifestKind.manual: 'MANUAL',
  ManifestKind.unload: 'UNLOAD',
  ManifestKind.movementBeforeStop: 'MOVEMENT_BEFORE_STOP',
  ManifestKind.movementAfterStop: 'MOVEMENT_AFTER_STOP',
  ManifestKind.beforeUnload: 'BEFORE_UNLOAD',
};

_TankMeasurement _$TankMeasurementFromJson(Map<String, dynamic> json) =>
    _TankMeasurement(
      tankSlug: json['tankSlug'] as String?,
      fuelSubtype: json['fuelSubtype'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      fuelDensity: (json['fuelDensity'] as num?)?.toDouble(),
      conversionFactor: (json['conversionFactor'] as num?)?.toDouble(),
      convertedDensity: (json['convertedDensity'] as num?)?.toDouble(),
      convertedVolume: (json['convertedVolume'] as num?)?.toDouble(),
      sampleTemperature: (json['sampleTemperature'] as num?)?.toDouble(),
      tankTemperature: (json['tankTemperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TankMeasurementToJson(_TankMeasurement instance) =>
    <String, dynamic>{
      'tankSlug': instance.tankSlug,
      'fuelSubtype': instance.fuelSubtype,
      'height': instance.height,
      'temperature': instance.temperature,
      'volume': instance.volume,
      'fuelDensity': instance.fuelDensity,
      'conversionFactor': instance.conversionFactor,
      'convertedDensity': instance.convertedDensity,
      'convertedVolume': instance.convertedVolume,
      'sampleTemperature': instance.sampleTemperature,
      'tankTemperature': instance.tankTemperature,
    };

_CaclEntity _$CaclEntityFromJson(Map<String, dynamic> json) => _CaclEntity(
  id: json['id'] as String?,
  assetId: json['assetId'] as String?,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  transportAssetId: json['transportAssetId'] as String?,
  transportAsset: json['transportAsset'] == null
      ? null
      : Asset.fromJson(json['transportAsset'] as Map<String, dynamic>),
  transportUserId: json['transportUserId'] as String?,
  transportUser: json['transportUser'] == null
      ? null
      : User.fromJson(json['transportUser'] as Map<String, dynamic>),
  caclNumber: json['caclNumber'] as String?,
  category: $enumDecodeNullable(
    _$CaclCategoryEnumMap,
    json['category'],
    unknownValue: CaclCategory.load,
  ),
  product: json['product'] as String?,
  clientAssetId: json['clientAssetId'] as String?,
  clientAsset: json['clientAsset'] == null
      ? null
      : Asset.fromJson(json['clientAsset'] as Map<String, dynamic>),
  origin: json['origin'] as String?,
  tankNumber: json['tankNumber'] as String?,
  transport: json['transport'] as String?,
  equipments: json['equipments'] == null
      ? null
      : CaclEquipmentEntity.fromJson(
          json['equipments'] as Map<String, dynamic>,
        ),
  measurements: json['measurements'] == null
      ? null
      : MeasurementsEntity.fromJson(
          json['measurements'] as Map<String, dynamic>,
        ),
  results: json['results'] == null
      ? null
      : ResultsEntity.fromJson(json['results'] as Map<String, dynamic>),
  measurer01: json['measurer01'] == null
      ? null
      : CaclMeasurementOutput.fromJson(
          json['measurer01'] as Map<String, dynamic>,
        ),
  measurer02: json['measurer02'] == null
      ? null
      : CaclMeasurementOutput.fromJson(
          json['measurer02'] as Map<String, dynamic>,
        ),
  volumeMoved: json['volumeMoved'] == null
      ? null
      : VolumeMovedEntity.fromJson(json['volumeMoved'] as Map<String, dynamic>),
  observations: json['observations'] as String?,
  startedAt: const TimestampOrNullConverter().fromJson(
    json['startedAt'] as num?,
  ),
  finishedAt: const TimestampOrNullConverter().fromJson(
    json['finishedAt'] as num?,
  ),
  createdAt: const TimestampOrNullConverter().fromJson(
    json['createdAt'] as num?,
  ),
  createdByUserId: json['createdByUserId'] as String?,
  createdByUser: json['createdByUser'] == null
      ? null
      : User.fromJson(json['createdByUser'] as Map<String, dynamic>),
  operationId: json['operationId'] as String?,
  operation: json['operation'] == null
      ? null
      : AtsOperation.fromJson(json['operation'] as Map<String, dynamic>),
  localDateStart: const TimestampOrNullConverter().fromJson(
    json['localDateStart'] as num?,
  ),
  localDateEnd: const TimestampOrNullConverter().fromJson(
    json['localDateEnd'] as num?,
  ),
  lossPercentage: (json['lossPercentage'] as num?)?.toDouble(),
  isCombine: json['isCombine'] as bool?,
  tankAsset: json['tankAsset'] == null
      ? null
      : Asset.fromJson(json['tankAsset'] as Map<String, dynamic>),
  signedAt: const TimestampOrNullConverter().fromJson(json['signedAt'] as num?),
  tfbDetails: json['tfbDetails'] == null
      ? null
      : CaclTFBDetails.fromJson(json['tfbDetails'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CaclEntityToJson(
  _CaclEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'assetId': instance.assetId,
  'asset': instance.asset?.toJson(),
  'transportAssetId': instance.transportAssetId,
  'transportAsset': instance.transportAsset?.toJson(),
  'transportUserId': instance.transportUserId,
  'transportUser': instance.transportUser?.toJson(),
  'caclNumber': instance.caclNumber,
  'category': instance.category?.toJson(),
  'product': instance.product,
  'clientAssetId': instance.clientAssetId,
  'clientAsset': instance.clientAsset?.toJson(),
  'origin': instance.origin,
  'tankNumber': instance.tankNumber,
  'transport': instance.transport,
  'equipments': instance.equipments?.toJson(),
  'measurements': instance.measurements?.toJson(),
  'results': instance.results?.toJson(),
  'measurer01': instance.measurer01?.toJson(),
  'measurer02': instance.measurer02?.toJson(),
  'volumeMoved': instance.volumeMoved?.toJson(),
  'observations': instance.observations,
  'startedAt': const TimestampOrNullConverter().toJson(instance.startedAt),
  'finishedAt': const TimestampOrNullConverter().toJson(instance.finishedAt),
  'createdAt': const TimestampOrNullConverter().toJson(instance.createdAt),
  'createdByUserId': instance.createdByUserId,
  'createdByUser': instance.createdByUser?.toJson(),
  'operationId': instance.operationId,
  'operation': instance.operation?.toJson(),
  'localDateStart': const TimestampOrNullConverter().toJson(
    instance.localDateStart,
  ),
  'localDateEnd': const TimestampOrNullConverter().toJson(
    instance.localDateEnd,
  ),
  'lossPercentage': instance.lossPercentage,
  'isCombine': instance.isCombine,
  'tankAsset': instance.tankAsset?.toJson(),
  'signedAt': const TimestampOrNullConverter().toJson(instance.signedAt),
  'tfbDetails': instance.tfbDetails?.toJson(),
};

const _$CaclCategoryEnumMap = {
  CaclCategory.load: 'LOAD',
  CaclCategory.pumping: 'PUMPING',
  CaclCategory.unload: 'UNLOAD',
  CaclCategory.combinedLoad: 'COMBINED_LOAD',
};

_CaclEquipmentEntity _$CaclEquipmentEntityFromJson(Map<String, dynamic> json) =>
    _CaclEquipmentEntity(
      measuringTape: json['measuringTape'] == null
          ? null
          : EquipmentMeasurementEntity.fromJson(
              json['measuringTape'] as Map<String, dynamic>,
            ),
      densimeter: json['densimeter'] == null
          ? null
          : EquipmentMeasurementEntity.fromJson(
              json['densimeter'] as Map<String, dynamic>,
            ),
      thermometer: json['thermometer'] == null
          ? null
          : EquipmentMeasurementEntity.fromJson(
              json['thermometer'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CaclEquipmentEntityToJson(
  _CaclEquipmentEntity instance,
) => <String, dynamic>{
  'measuringTape': instance.measuringTape?.toJson(),
  'densimeter': instance.densimeter?.toJson(),
  'thermometer': instance.thermometer?.toJson(),
};

_MeasurementsEntity _$MeasurementsEntityFromJson(Map<String, dynamic> json) =>
    _MeasurementsEntity(
      referenceHeight: json['referenceHeight'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['referenceHeight'] as Map<String, dynamic>,
            ),
      productLevelHeight: json['productLevelHeight'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['productLevelHeight'] as Map<String, dynamic>,
            ),
      correctedLevelHeight: json['correctedLevelHeight'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['correctedLevelHeight'] as Map<String, dynamic>,
            ),
      waterHeight: json['waterHeight'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['waterHeight'] as Map<String, dynamic>,
            ),
      ambientLineVolume: json['ambientLineVolume'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['ambientLineVolume'] as Map<String, dynamic>,
            ),
      ambientDensity: json['ambientDensity'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['ambientDensity'] as Map<String, dynamic>,
            ),
      ambientTemperature: json['ambientTemperature'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['ambientTemperature'] as Map<String, dynamic>,
            ),
      averageTankTemperature: json['averageTankTemperature'] == null
          ? null
          : MeasurementEntity.fromJson(
              json['averageTankTemperature'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$MeasurementsEntityToJson(_MeasurementsEntity instance) =>
    <String, dynamic>{
      'referenceHeight': instance.referenceHeight?.toJson(),
      'productLevelHeight': instance.productLevelHeight?.toJson(),
      'correctedLevelHeight': instance.correctedLevelHeight?.toJson(),
      'waterHeight': instance.waterHeight?.toJson(),
      'ambientLineVolume': instance.ambientLineVolume?.toJson(),
      'ambientDensity': instance.ambientDensity?.toJson(),
      'ambientTemperature': instance.ambientTemperature?.toJson(),
      'averageTankTemperature': instance.averageTankTemperature?.toJson(),
    };

_ResultsEntity _$ResultsEntityFromJson(
  Map<String, dynamic> json,
) => _ResultsEntity(
  environmentalTankVolume: json['environmentalTankVolume'] == null
      ? null
      : MeasurementEntity.fromJson(
          json['environmentalTankVolume'] as Map<String, dynamic>,
        ),
  waterVolume: json['waterVolume'] == null
      ? null
      : MeasurementEntity.fromJson(json['waterVolume'] as Map<String, dynamic>),
  densityAt20: json['densityAt20'] == null
      ? null
      : MeasurementEntity.fromJson(json['densityAt20'] as Map<String, dynamic>),
  volumeCorrectionFactor: json['volumeCorrectionFactor'] == null
      ? null
      : MeasurementEntity.fromJson(
          json['volumeCorrectionFactor'] as Map<String, dynamic>,
        ),
  alcoholicContent: json['alcoholicContent'] == null
      ? null
      : MeasurementEntity.fromJson(
          json['alcoholicContent'] as Map<String, dynamic>,
        ),
  environmentalVolume: json['environmentalVolume'] == null
      ? null
      : MeasurementEntity.fromJson(
          json['environmentalVolume'] as Map<String, dynamic>,
        ),
  volumeAt20: json['volumeAt20'] == null
      ? null
      : MeasurementEntity.fromJson(json['volumeAt20'] as Map<String, dynamic>),
  kilogramsAt20: json['kilogramsAt20'] == null
      ? null
      : MeasurementEntity.fromJson(
          json['kilogramsAt20'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ResultsEntityToJson(_ResultsEntity instance) =>
    <String, dynamic>{
      'environmentalTankVolume': instance.environmentalTankVolume?.toJson(),
      'waterVolume': instance.waterVolume?.toJson(),
      'densityAt20': instance.densityAt20?.toJson(),
      'volumeCorrectionFactor': instance.volumeCorrectionFactor?.toJson(),
      'alcoholicContent': instance.alcoholicContent?.toJson(),
      'environmentalVolume': instance.environmentalVolume?.toJson(),
      'volumeAt20': instance.volumeAt20?.toJson(),
      'kilogramsAt20': instance.kilogramsAt20?.toJson(),
    };

_MeasurementEntity _$MeasurementEntityFromJson(Map<String, dynamic> json) =>
    _MeasurementEntity(
      start: (json['start'] as num?)?.toDouble(),
      end: (json['end'] as num?)?.toDouble(),
      differenceOrTotal: (json['differenceOrTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MeasurementEntityToJson(_MeasurementEntity instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'differenceOrTotal': instance.differenceOrTotal,
    };

_CaclMeasurementOutput _$CaclMeasurementOutputFromJson(
  Map<String, dynamic> json,
) => _CaclMeasurementOutput(
  start: (json['start'] as num?)?.toDouble(),
  end: (json['end'] as num?)?.toDouble(),
  differenceOrTotal: (json['differenceOrTotal'] as num?)?.toDouble(),
  invoicedVolume: (json['invoicedVolume'] as num?)?.toInt(),
  volumeAt20: (json['volumeAt20'] as num?)?.toInt(),
  massAt20: (json['massAt20'] as num?)?.toInt(),
);

Map<String, dynamic> _$CaclMeasurementOutputToJson(
  _CaclMeasurementOutput instance,
) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
  'differenceOrTotal': instance.differenceOrTotal,
  'invoicedVolume': instance.invoicedVolume,
  'volumeAt20': instance.volumeAt20,
  'massAt20': instance.massAt20,
};

_VolumeMovedEntity _$VolumeMovedEntityFromJson(Map<String, dynamic> json) =>
    _VolumeMovedEntity(
      ambientVolume: (json['ambientVolume'] as num?)?.toDouble(),
      volumeAt20: (json['volumeAt20'] as num?)?.toDouble(),
      kilogramsAt20: (json['kilogramsAt20'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VolumeMovedEntityToJson(_VolumeMovedEntity instance) =>
    <String, dynamic>{
      'ambientVolume': instance.ambientVolume,
      'volumeAt20': instance.volumeAt20,
      'kilogramsAt20': instance.kilogramsAt20,
    };

_EquipmentMeasurementEntity _$EquipmentMeasurementEntityFromJson(
  Map<String, dynamic> json,
) => _EquipmentMeasurementEntity(serialNumber: json['serialNumber'] as String?);

Map<String, dynamic> _$EquipmentMeasurementEntityToJson(
  _EquipmentMeasurementEntity instance,
) => <String, dynamic>{'serialNumber': instance.serialNumber};

_CaclTFBDetails _$CaclTFBDetailsFromJson(
  Map<String, dynamic> json,
) => _CaclTFBDetails(
  dockedAt: const TimestampOrNullConverter().fromJson(json['dockedAt'] as num?),
  arrivalAt: const TimestampOrNullConverter().fromJson(
    json['arrivalAt'] as num?,
  ),
  checklistAt: const TimestampOrNullConverter().fromJson(
    json['checklistAt'] as num?,
  ),
  cradle: (json['cradle'] as num?)?.toInt(),
  pumpStart: const TimestampOrNullConverter().fromJson(
    json['pumpStart'] as num?,
  ),
  pumpEnd: const TimestampOrNullConverter().fromJson(json['pumpEnd'] as num?),
  linePressure: json['linePressure'] as bool?,
  ventCheck: json['ventCheck'] as bool?,
  valvesSealed: json['valvesSealed'] as bool?,
  finalStopBoard: json['finalStopBoard'] as bool?,
  finalStop: $enumDecodeNullable(
    _$CaclTFBFinalStopEnumMap,
    json['finalStop'],
    unknownValue: CaclTFBFinalStop.bordo,
  ),
  reason: json['reason'] as String?,
  btInscription: json['btInscription'] as String?,
  vgNavio: json['vgNavio'] as String?,
);

Map<String, dynamic> _$CaclTFBDetailsToJson(
  _CaclTFBDetails instance,
) => <String, dynamic>{
  'dockedAt': const TimestampOrNullConverter().toJson(instance.dockedAt),
  'arrivalAt': const TimestampOrNullConverter().toJson(instance.arrivalAt),
  'checklistAt': const TimestampOrNullConverter().toJson(instance.checklistAt),
  'cradle': instance.cradle,
  'pumpStart': const TimestampOrNullConverter().toJson(instance.pumpStart),
  'pumpEnd': const TimestampOrNullConverter().toJson(instance.pumpEnd),
  'linePressure': instance.linePressure,
  'ventCheck': instance.ventCheck,
  'valvesSealed': instance.valvesSealed,
  'finalStopBoard': instance.finalStopBoard,
  'finalStop': instance.finalStop?.toJson(),
  'reason': instance.reason,
  'btInscription': instance.btInscription,
  'vgNavio': instance.vgNavio,
};

const _$CaclTFBFinalStopEnumMap = {
  CaclTFBFinalStop.bordo: 'BORDO',
  CaclTFBFinalStop.terra: 'TERRA',
};

_AtsCommandExecutionHistory _$AtsCommandExecutionHistoryFromJson(
  Map<String, dynamic> json,
) => _AtsCommandExecutionHistory(
  id: json['id'] as String?,
  commandId: json['commandId'] as String?,
  fromAsset: json['fromAsset'] == null
      ? null
      : Asset.fromJson(json['fromAsset'] as Map<String, dynamic>),
  toAsset: json['toAsset'] == null
      ? null
      : Asset.fromJson(json['toAsset'] as Map<String, dynamic>),
  status:
      $enumDecodeNullable(
        _$AtsCommandExecutionStatusEnumMap,
        json['status'],
        unknownValue: AtsCommandExecutionStatus.unknown,
      ) ??
      AtsCommandExecutionStatus.unknown,
  fromApp:
      $enumDecodeNullable(
        _$FromAppEnumMap,
        json['fromApp'],
        unknownValue: FromApp.unknown,
      ) ??
      FromApp.unknown,
  fatherAsset: json['fatherAsset'] == null
      ? null
      : Asset.fromJson(json['fatherAsset'] as Map<String, dynamic>),
  errorResponse: json['errorResponse'] as String?,
  generatedBy: json['generatedBy'] == null
      ? null
      : User.fromJson(json['generatedBy'] as Map<String, dynamic>),
  queueId: json['queueId'] as String?,
  toAssetMileage: (json['toAssetMileage'] as num?)?.toDouble(),
  createdAt: _$JsonConverterFromJson<num, DateTime>(
    json['createdAt'],
    const TimestampConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<num, DateTime>(
    json['updatedAt'],
    const TimestampConverter().fromJson,
  ),
  payload: json['payload'] as String?,
  commandType:
      $enumDecodeNullable(
        _$AtsCommandExecutionTypeEnumMap,
        json['commandType'],
        unknownValue: AtsCommandExecutionType.unknown,
      ) ??
      AtsCommandExecutionType.unknown,
  communicationMethod:
      $enumDecodeNullable(
        _$AtsCommunicationMethodEnumMap,
        json['communicationMethod'],
        unknownValue: AtsCommunicationMethod.unknown,
      ) ??
      AtsCommunicationMethod.unknown,
);

Map<String, dynamic> _$AtsCommandExecutionHistoryToJson(
  _AtsCommandExecutionHistory instance,
) => <String, dynamic>{
  'id': instance.id,
  'commandId': instance.commandId,
  'fromAsset': instance.fromAsset?.toJson(),
  'toAsset': instance.toAsset?.toJson(),
  'status': _$AtsCommandExecutionStatusEnumMap[instance.status]!,
  'fromApp': _$FromAppEnumMap[instance.fromApp]!,
  'fatherAsset': instance.fatherAsset?.toJson(),
  'errorResponse': instance.errorResponse,
  'generatedBy': instance.generatedBy?.toJson(),
  'queueId': instance.queueId,
  'toAssetMileage': instance.toAssetMileage,
  'createdAt': _$JsonConverterToJson<num, DateTime>(
    instance.createdAt,
    const TimestampConverter().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<num, DateTime>(
    instance.updatedAt,
    const TimestampConverter().toJson,
  ),
  'payload': instance.payload,
  'commandType': _$AtsCommandExecutionTypeEnumMap[instance.commandType]!,
  'communicationMethod':
      _$AtsCommunicationMethodEnumMap[instance.communicationMethod]!,
};

const _$AtsCommandExecutionStatusEnumMap = {
  AtsCommandExecutionStatus.pending: 'PENDING',
  AtsCommandExecutionStatus.failed: 'FAILED',
  AtsCommandExecutionStatus.success: 'SUCCESS',
  AtsCommandExecutionStatus.unknown: 'UNKNOWN',
};

const _$FromAppEnumMap = {
  FromApp.atsweb: 'ATSWEB',
  FromApp.atsmobile: 'ATSMOBILE',
  FromApp.unknown: 'UNKNOWN',
};

const _$AtsCommandExecutionTypeEnumMap = {
  AtsCommandExecutionType.reception: 'RECEPTION',
  AtsCommandExecutionType.executeExit: 'EXECUTE_EXIT',
  AtsCommandExecutionType.executeCargo: 'EXECUTE_CARGO',
  AtsCommandExecutionType.unknown: 'UNKNOWN',
};

const _$AtsCommunicationMethodEnumMap = {
  AtsCommunicationMethod.private: 'PRIVATE',
  AtsCommunicationMethod.public: 'PUBLIC',
  AtsCommunicationMethod.bluetooth: 'BLUETOOTH',
  AtsCommunicationMethod.unknown: 'UNKNOWN',
};

_AtsCommandExecuteHistoryInput _$AtsCommandExecuteHistoryInputFromJson(
  Map<String, dynamic> json,
) => _AtsCommandExecuteHistoryInput(
  commandId: json['commandId'] as String?,
  fromAssetId: json['fromAssetId'] as String?,
  toAssetId: json['toAssetId'] as String?,
  status:
      $enumDecodeNullable(
        _$AtsCommandExecutionStatusEnumMap,
        json['status'],
        unknownValue: AtsCommandExecutionStatus.unknown,
      ) ??
      AtsCommandExecutionStatus.unknown,
  fromApp:
      $enumDecodeNullable(
        _$FromAppEnumMap,
        json['fromApp'],
        unknownValue: FromApp.unknown,
      ) ??
      FromApp.unknown,
  fatherAssetId: json['fatherAssetId'] as String?,
  errorResponse: json['errorResponse'] as String?,
  generatedById: json['generatedById'] as String?,
  queueId: json['queueId'] as String?,
  toAssetMileage: (json['toAssetMileage'] as num?)?.toDouble(),
  payload: json['payload'] as String?,
  commandType:
      $enumDecodeNullable(
        _$AtsCommandExecutionTypeEnumMap,
        json['commandType'],
        unknownValue: AtsCommandExecutionType.unknown,
      ) ??
      AtsCommandExecutionType.unknown,
  createdAt: _$JsonConverterFromJson<num, DateTime>(
    json['createdAt'],
    const TimestampConverter().fromJson,
  ),
  communicationMethod:
      $enumDecodeNullable(
        _$AtsCommunicationMethodEnumMap,
        json['communicationMethod'],
        unknownValue: AtsCommunicationMethod.unknown,
      ) ??
      AtsCommunicationMethod.unknown,
);

Map<String, dynamic> _$AtsCommandExecuteHistoryInputToJson(
  _AtsCommandExecuteHistoryInput instance,
) => <String, dynamic>{
  'commandId': instance.commandId,
  'fromAssetId': instance.fromAssetId,
  'toAssetId': instance.toAssetId,
  'status': _$AtsCommandExecutionStatusEnumMap[instance.status]!,
  'fromApp': _$FromAppEnumMap[instance.fromApp]!,
  'fatherAssetId': instance.fatherAssetId,
  'errorResponse': instance.errorResponse,
  'generatedById': instance.generatedById,
  'queueId': instance.queueId,
  'toAssetMileage': instance.toAssetMileage,
  'payload': instance.payload,
  'commandType': _$AtsCommandExecutionTypeEnumMap[instance.commandType]!,
  'createdAt': _$JsonConverterToJson<num, DateTime>(
    instance.createdAt,
    const TimestampConverter().toJson,
  ),
  'communicationMethod':
      _$AtsCommunicationMethodEnumMap[instance.communicationMethod]!,
};

_AtsOrder _$AtsOrderFromJson(Map<String, dynamic> json) => _AtsOrder(
  id: json['id'] as String,
  cnpj: json['cnpj'] as String,
  customer: json['customer'] as String,
  customerAsset: json['customerAsset'] == null
      ? null
      : Asset.fromJson(json['customerAsset'] as Map<String, dynamic>),
  customerCode: json['customerCode'] as String,
  orderDate: const TimestampOrNullConverter().fromJson(
    json['orderDate'] as num?,
  ),
  inclusionDate: const TimestampOrNullConverter().fromJson(
    json['inclusionDate'] as num?,
  ),
  fiscalNumber: json['fiscalNumber'] as String,
  productAnp: json['productAnp'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  status: json['status'] as String,
  checkInAt: const TimestampOrNullConverter().fromJson(
    json['checkInAt'] as num?,
  ),
  orderStatusHistory: (json['orderStatusHistory'] as List<dynamic>?)
      ?.map((e) => AtsOrderStatusHistory.fromJson(e as Map<String, dynamic>))
      .toList(),
  loadingOrders: (json['loadingOrders'] as List<dynamic>?)
      ?.map((e) => AtsLoadingOrder.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AtsOrderToJson(_AtsOrder instance) => <String, dynamic>{
  'id': instance.id,
  'cnpj': instance.cnpj,
  'customer': instance.customer,
  'customerAsset': instance.customerAsset?.toJson(),
  'customerCode': instance.customerCode,
  'orderDate': const TimestampOrNullConverter().toJson(instance.orderDate),
  'inclusionDate': const TimestampOrNullConverter().toJson(
    instance.inclusionDate,
  ),
  'fiscalNumber': instance.fiscalNumber,
  'productAnp': instance.productAnp,
  'quantity': instance.quantity,
  'status': instance.status,
  'checkInAt': const TimestampOrNullConverter().toJson(instance.checkInAt),
  'orderStatusHistory': instance.orderStatusHistory
      ?.map((e) => e.toJson())
      .toList(),
  'loadingOrders': instance.loadingOrders?.map((e) => e.toJson()).toList(),
};

_AtsOrderStatusHistory _$AtsOrderStatusHistoryFromJson(
  Map<String, dynamic> json,
) => _AtsOrderStatusHistory(
  id: json['id'] as String,
  order: json['order'] == null
      ? null
      : AtsOrder.fromJson(json['order'] as Map<String, dynamic>),
  orderNumber: json['orderNumber'] as String,
  checkInAt: const TimestampOrNullConverter().fromJson(
    json['checkInAt'] as num?,
  ),
  inclusionDate: const TimestampOrNullConverter().fromJson(
    json['inclusionDate'] as num?,
  ),
  releaseDate: const TimestampOrNullConverter().fromJson(
    json['releaseDate'] as num?,
  ),
  orderDate: const TimestampOrNullConverter().fromJson(
    json['orderDate'] as num?,
  ),
  driver: json['driver'] as String?,
  asset: json['asset'] == null
      ? null
      : Asset.fromJson(json['asset'] as Map<String, dynamic>),
  assetPlate: json['assetPlate'] as String?,
  movementRecord: json['movementRecord'] as String?,
  compartmentExitAt: const TimestampOrNullConverter().fromJson(
    json['compartmentExitAt'] as num?,
  ),
  compartmentEntryAt: const TimestampOrNullConverter().fromJson(
    json['compartmentEntryAt'] as num?,
  ),
  orderSeries: json['orderSeries'] as String?,
  rmStatus: json['rmStatus'] as String?,
);

Map<String, dynamic> _$AtsOrderStatusHistoryToJson(
  _AtsOrderStatusHistory instance,
) => <String, dynamic>{
  'id': instance.id,
  'order': instance.order?.toJson(),
  'orderNumber': instance.orderNumber,
  'checkInAt': const TimestampOrNullConverter().toJson(instance.checkInAt),
  'inclusionDate': const TimestampOrNullConverter().toJson(
    instance.inclusionDate,
  ),
  'releaseDate': const TimestampOrNullConverter().toJson(instance.releaseDate),
  'orderDate': const TimestampOrNullConverter().toJson(instance.orderDate),
  'driver': instance.driver,
  'asset': instance.asset?.toJson(),
  'assetPlate': instance.assetPlate,
  'movementRecord': instance.movementRecord,
  'compartmentExitAt': const TimestampOrNullConverter().toJson(
    instance.compartmentExitAt,
  ),
  'compartmentEntryAt': const TimestampOrNullConverter().toJson(
    instance.compartmentEntryAt,
  ),
  'orderSeries': instance.orderSeries,
  'rmStatus': instance.rmStatus,
};

_AtsLoadingOrder _$AtsLoadingOrderFromJson(Map<String, dynamic> json) =>
    _AtsLoadingOrder(
      id: json['id'] as String,
      productAnp: json['productAnp'] as String,
      customer: json['customer'] as String,
      customerCode: json['customerCode'] as String,
      industryCode: json['industryCode'] as String,
      branchCode: json['branchCode'] as String,
      orderCode: json['orderCode'] as String,
      organizationCode: json['organizationCode'] as String,
      orderNumber: json['orderNumber'] as String,
      productCode: json['productCode'] as String,
      compartment: json['compartment'] as String,
      orderDate: const TimestampOrNullConverter().fromJson(
        json['orderDate'] as num?,
      ),
      compartmentEntryAt: const TimestampOrNullConverter().fromJson(
        json['compartmentEntryAt'] as num?,
      ),
      assetPlate: json['assetPlate'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      compartmentExitAt: const TimestampOrNullConverter().fromJson(
        json['compartmentExitAt'] as num?,
      ),
      ticketNumber: json['ticketNumber'] as String?,
      movementRecord: json['movementRecord'] as String?,
      asset: json['asset'] == null
          ? null
          : Asset.fromJson(json['asset'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : AtsOrder.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AtsLoadingOrderToJson(_AtsLoadingOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productAnp': instance.productAnp,
      'customer': instance.customer,
      'customerCode': instance.customerCode,
      'industryCode': instance.industryCode,
      'branchCode': instance.branchCode,
      'orderCode': instance.orderCode,
      'organizationCode': instance.organizationCode,
      'orderNumber': instance.orderNumber,
      'productCode': instance.productCode,
      'compartment': instance.compartment,
      'orderDate': const TimestampOrNullConverter().toJson(instance.orderDate),
      'compartmentEntryAt': const TimestampOrNullConverter().toJson(
        instance.compartmentEntryAt,
      ),
      'assetPlate': instance.assetPlate,
      'quantity': instance.quantity,
      'compartmentExitAt': const TimestampOrNullConverter().toJson(
        instance.compartmentExitAt,
      ),
      'ticketNumber': instance.ticketNumber,
      'movementRecord': instance.movementRecord,
      'asset': instance.asset?.toJson(),
      'order': instance.order?.toJson(),
    };

const _$AtsStreamModelEnumMap = {AtsStreamModel.exit: 'EXIT'};
