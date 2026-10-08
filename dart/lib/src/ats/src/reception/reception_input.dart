part of '../../ats.dart';

/// Input of an ATS reception product.
@unfreezed
abstract class AtsReceptionProductInput with _$AtsReceptionProductInput {
  /// Constructs a mutable [AtsReceptionProductInput].
  factory AtsReceptionProductInput({
    /// Fuel ANP category code
    String? fuelAnp,

    /// List of tank photos
    List<String>? tanksImages,
  }) = _AtsReceptionProductInput;

  /// Deserializes an [AtsReceptionProductInput] from a JSON map.
  factory AtsReceptionProductInput.fromJson(Map<String, dynamic> json) => _$AtsReceptionProductInputFromJson(json);
}

/// Input used to create or update an ATS reception.
@unfreezed
abstract class AtsReceptionInput with _$AtsReceptionInput {
  /// Constructs a mutable [AtsReceptionInput].
  factory AtsReceptionInput({
    /// ID of the reception. This ID is unique.
    String? id,

    /// List of purchase order IDs.
    @Deprecated('Use purchaseOrderIds instead') List<String>? ordersIds,

    /// Different [AtsReceptionProductInput] obtained of the purchase order
    List<AtsReceptionProductInput>? products,

    /// ID of the [Asset] supply point
    String? assetId,

    /// Reception operation time
    @DurationOrNullConverter() Duration? operationTime,

    /// App used to create the reception.
    @AtsFromAppOrNullConverter() AtsFromApp? app,

    /// IDs of the purchase orders.
    List<String>? purchaseOrderIds,

    /// Type of the reception.
    @AtsReceptionTypeOrNullConverter() AtsReceptionType? receptionType,
  }) = _AtsReceptionInput;

  /// Deserializes an [AtsReceptionInput] from a JSON map.
  factory AtsReceptionInput.fromJson(Map<String, dynamic> json) => _$AtsReceptionInputFromJson(json);
}
