part of '../outbound.dart';

/// [AtsStreamExitStructureType] enumerates the field types of an ATS Stream [AtsStreamModel.exit]
/// payload structure.
@JsonEnum(alwaysCreate: true)
enum AtsStreamExitStructureType {
  /// Layrz API equivalence: `constant`. A constant value, sent as a string.
  @JsonValue('constant')
  constant,

  /// Layrz API equivalence: `constant.number`. A constant value, sent as a number.
  @JsonValue('constant.number')
  constantNumber,

  /// Layrz API equivalence: `fromAsset.name`.
  @JsonValue('fromAsset.name')
  fromAssetName,

  /// Layrz API equivalence: `fromAsset.vin`.
  @JsonValue('fromAsset.vin')
  fromAssetVin,

  /// Layrz API equivalence: `fromAsset.plate`.
  @JsonValue('fromAsset.plate')
  fromAssetPlate,

  /// Layrz API equivalence: `fromAsset.custom.field`.
  @JsonValue('fromAsset.custom.field')
  fromAssetCustomField,

  /// Layrz API equivalence: `toAsset.name`.
  @JsonValue('toAsset.name')
  toAssetName,

  /// Layrz API equivalence: `toAsset.vin`.
  @JsonValue('toAsset.vin')
  toAssetVin,

  /// Layrz API equivalence: `toAsset.plate`.
  @JsonValue('toAsset.plate')
  toAssetPlate,

  /// Layrz API equivalence: `toAsset.custom.field`.
  @JsonValue('toAsset.custom.field')
  toAssetCustomField,

  /// Layrz API equivalence: `startAt`.
  @JsonValue('startAt')
  startAt,

  /// Layrz API equivalence: `endAt`.
  @JsonValue('endAt')
  endAt,

  /// Layrz API equivalence: `identifier`.
  @JsonValue('identifier')
  identifier,

  /// Layrz API equivalence: `initial.fluxometer`.
  @JsonValue('initial.fluxometer')
  initialFluxometer,

  /// Layrz API equivalence: `final.fluxometer`.
  @JsonValue('final.fluxometer')
  finalFluxometer,

  /// Layrz API equivalence: `total.liters`.
  @JsonValue('total.liters')
  totalLiters,

  /// Layrz API equivalence: `initial.tank.volume`.
  @JsonValue('initial.tank.volume')
  initialTankVolume,

  /// Layrz API equivalence: `final.tank.volume`.
  @JsonValue('final.tank.volume')
  finalTankVolume,

  /// Layrz API equivalence: `toAsset.mileage`.
  @JsonValue('toAsset.mileage')
  toAssetMileage,

  /// Layrz API equivalence: `density`.
  @JsonValue('density')
  density,

  /// Layrz API equivalence: `temperature`.
  @JsonValue('temperature')
  temperature,

  /// Layrz API equivalence: `fuel.type`.
  @JsonValue('fuel.type')
  fuelType,

  /// Layrz API equivalence: `fuel.subtype`.
  @JsonValue('fuel.subtype')
  fuelSubtype,

  /// Layrz API equivalence: `unit.value`.
  @JsonValue('unit.value')
  unitValue,

  /// Layrz API equivalence: `total.value`.
  @JsonValue('total.value')
  totalValue,

  /// Layrz API equivalence: `registerDate`.
  @JsonValue('registerDate')
  registerDate,

  /// Layrz API equivalence: `attendant.name`.
  @JsonValue('attendant.name')
  attendantName,

  /// Layrz API equivalence: `attendant.vin`.
  @JsonValue('attendant.vin')
  attendantVin,

  /// Layrz API equivalence: `attendant.plate`.
  @JsonValue('attendant.plate')
  attendantPlate,

  /// Layrz API equivalence: `attendant.custom.field`.
  @JsonValue('attendant.custom.field')
  attendantCustomField,

  /// Layrz API equivalence: `attendant.id`.
  @JsonValue('attendant.id')
  attendantId,

  /// Layrz API equivalence: `attendant.user.id`.
  @JsonValue('attendant.user.id')
  attendantUserId,

  /// Layrz API equivalence: `json`. A nested object built from [OutboundStructure.nested].
  @JsonValue('json')
  json,

  /// Layrz API equivalence: `json.array`. An array of objects, one per entry of [OutboundStructure.source], built from [OutboundStructure.nested].
  @JsonValue('json.array')
  jsonArray;

  @override
  String toString() => toJson();

  /// [toJson] returns the wire representation of this enum value.
  String toJson() => _$AtsStreamExitStructureTypeEnumMap[this] ?? 'constant';

  /// [fromJson] returns the enum value matching the wire [json] string, or [constant] when unknown.
  static AtsStreamExitStructureType fromJson(String json) {
    return _$AtsStreamExitStructureTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        AtsStreamExitStructureType.constant;
  }

  /// [isCustom] returns `true` when [search] is not the wire value of any [AtsStreamExitStructureType].
  static bool isCustom(String search) {
    List<String> defaultValues = AtsStreamExitStructureType.values.map((e) => e.toJson()).toList();
    return !defaultValues.contains(search);
  }
}
