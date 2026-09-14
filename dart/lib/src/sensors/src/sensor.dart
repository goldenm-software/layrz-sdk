part of '../sensors.dart';

/// Immutable sensor data for the Layrz platform.
///
/// A [Sensor] represents a calculated or raw value extracted from a device's telemetry, using an
/// LCL [formula], a [script], or a raw unpack configuration ([hasHeaders], [csvHeaders],
/// [csvSeparator]). Use [SensorInput] for creating or updating sensors.
@freezed
abstract class Sensor with _$Sensor {
  const factory Sensor({
    /// [id] of the sensor. Must be unique along of all sensors of the asset.
    required String id,

    /// [name] of the sensor. Must be unique along of all sensors of the asset.
    required String name,

    /// [iterationCycle] of the sensor. Only will accept positive values.
    int? iterationCycle,

    /// [slug] of the sensor. Must be unique along of all sensors of the asset.
    required String slug,

    /// [isInstant] is a boolean to indicate if the sensor is an instant sensor. Means what the sensor execution
    /// returns `null`, if it's `true`, the sensor is will "disappear" from the calculated sensors, otherwise it will
    /// take the previous value of the sensor.
    bool? isInstant,

    /// [icon] of the sensor. To send it to API, will convert to javascript codename, but from Flutter execution
    /// will convert to MdiRemapIcon entity.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [measuringUnit] of the sensor. Can be an estandard unit or a custom one.
    String? measuringUnit,

    /// [type] of the sensor.
    @JsonKey(unknownEnumValue: SensorType.constant) SensorType? type,

    /// [subtype] of the sensor.
    @JsonKey(unknownEnumValue: SensorSubType.raw) SensorSubType? subtype,

    /// [parameter] of the sensor.
    String? parameter,

    /// [externalIdentifiers] is the list of external identifiers of the sensor.
    List<String>? externalIdentifiers,

    /// [formula] is the LCL formula to execute.
    String? formula,

    /// [script] is the script to execute.
    String? script,

    /// Only for [SensorType.unpack] and [SensorSubType.csv], [hasHeaders], [csvHeaders] and [csvSeparator] means the
    /// configuration to unpack a CSV data comming from message.
    /// [hasHeaders] is a boolean to indicate if the CSV has headers inside of the message.
    bool? hasHeaders,

    /// [csvHeaders] is a list of strings to indicate the names of the columns of the CSV. Only when [hasHeaders] is
    /// true.
    List<String>? csvHeaders,

    /// [csvSeparator] is a string to indicate the separator of the CSV.
    String? csvSeparator,

    /// [ranges] of the sensor, only for [SensorType.interval] linear conversion.
    /// It's a list of [SensorRange] objects.
    List<SensorRange>? ranges,

    /// [mask] of the sensor. Is basically a list of [MaskPoint] objects.
    List<MaskPoint>? mask,

    /// [hasValidator] is a boolean to indicate if the sensor has a [double] validator. When true, [minValue] and
    /// [maxValue] will define the range, both values can be `null` if the minimum or maximum range is
    /// `double.infinity`.
    bool? hasValidator,

    /// [minValue] is a [double] to indicate the minimum value of the sensor. Only when [hasValidator] is true.
    /// Can return `null` if the minimum range is `double.infinity`.
    double? minValue,

    /// [maxValue] is a [double] to indicate the maximum value of the sensor. Only when [hasValidator] is true.
    /// [maxValue] must be greater than [minValue].
    /// If [maxValue] is `null`, the minimum range is `double.infinity`.
    double? maxValue,

    /// [contentType] is a string to indicate the content type of the sensor, only used for [SensorType.image],
    /// [SensorType.video] and [SensorType.audio], but only when the [SensorSubType] is [SensorSubType.base64].
    String? contentType,

    /// [parentId] is a string to indicate the id of the parent sensor.
    String? parentId,

    /// [parent] is a [Sensor] to indicate the parent sensor.
    Sensor? parent,

    /// [functionId] is a string to indicate the id of the Function of the sensor.
    String? functionId,

    /// [lastExit] is the last [AtsExit] registered by this sensor.
    AtsExit? lastExit,

    /// [qrCode] is a string to indicate the QR code URI of the sensor.
    String? qrCode,

    /// [assignedAssetsIds] is the list of assets ids assigned to this sensor.
    List<String>? assignedAssetsIds,

    /// [assignedAssets] is the list of assets assigned to this sensor.
    List<Asset>? assignedAssets,

    /// [isTemplate] is a boolean to indicate if the sensor is a template.
    /// So, this sensor was created from the Golden M, and their authorized you to use it.
    bool? isTemplate,

    /// [isGlobal] defines if the sensor is global or not.
    @Default(false) bool isGlobal,

    /// [access] is the list of granted access.
    List<Access>? access,

    /// [maxHistorySearch] defines the maximum search interval for the history of the sensor.
    @DurationOrNullConverter() Duration? maxHistorySearch,
  }) = _Sensor;

  /// Deserializes a [Sensor] from a JSON map.
  factory Sensor.fromJson(Map<String, dynamic> json) => _$SensorFromJson(json);
}

/// Mutable input data for creating or updating a [Sensor].
///
/// [SensorInput] mirrors the fields of [Sensor] but is mutable and provides sensible defaults,
/// making it suitable for form binding before submission.
@unfreezed
abstract class SensorInput with _$SensorInput {
  factory SensorInput({
    /// Unique identifier for this sensor, or `null` when creating a new one.
    String? id,

    /// [assetId] is the id of the asset this sensor belongs to.
    String? assetId,

    /// [name] of the sensor. Defaults to an empty string.
    @Default('') String name,

    /// [slug] of the sensor. Defaults to an empty string.
    @Default('') String slug,

    /// [measuringUnit] of the sensor. Defaults to an empty string.
    @Default('') String measuringUnit,

    /// [type] of the sensor. Defaults to [SensorType.constant].
    @JsonKey(unknownEnumValue: SensorType.constant) @Default(SensorType.constant) SensorType type,

    /// [subtype] of the sensor. Defaults to [SensorSubType.raw].
    @JsonKey(unknownEnumValue: SensorSubType.raw) @Default(SensorSubType.raw) SensorSubType subtype,

    /// [parameter] of the sensor. Defaults to an empty string.
    @Default('') String parameter,

    /// [iterationCycle] of the sensor. Defaults to `1`.
    @Default(1) int iterationCycle,

    /// [formula] is the LCL formula to execute. Defaults to an empty string.
    @Default('') String formula,

    /// [script] is the script to execute. Defaults to an empty string.
    @Default('') String script,

    /// [icon] of the sensor.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [contentType] is the content type of the sensor.
    String? contentType,

    /// [ranges] of the sensor. Defaults to an empty list.
    @Default([]) List<SensorRangeInput> ranges,

    /// [mask] of the sensor. Defaults to an empty list.
    @Default([]) List<MaskPointInput> mask,

    /// [parentId] is the id of the parent sensor.
    String? parentId,

    /// [isInstant] indicates if the sensor is an instant sensor. Defaults to `false`.
    @Default(false) bool isInstant,

    /// [hasValidator] indicates if the sensor has a [double] validator. Defaults to `false`.
    @Default(false) bool hasValidator,

    /// [minValue] is the minimum value of the sensor.
    double? minValue,

    /// [maxValue] is the maximum value of the sensor.
    double? maxValue,

    /// [hasHeaders] indicates if the CSV has headers inside of the message. Defaults to `false`.
    @Default(false) bool hasHeaders,

    /// [csvSeparator] is the separator of the CSV. Defaults to `,`.
    @Default(',') String csvSeparator,

    /// [csvHeaders] is the list of names of the columns of the CSV. Defaults to an empty list.
    @Default([]) List<String> csvHeaders,

    /// [functionId] is the id of the Function of the sensor.
    String? functionId,

    /// [assignedAssetsIds] is the list of assets ids assigned to this sensor. Defaults to an empty list.
    @Default([]) List<String> assignedAssetsIds,

    /// [maxHistorySearch] defines the maximum search interval for the history of the sensor.
    @DurationOrNullConverter() Duration? maxHistorySearch,
  }) = _SensorInput;

  /// Deserializes a [SensorInput] from a JSON map.
  factory SensorInput.fromJson(Map<String, dynamic> json) => _$SensorInputFromJson(json);
}
