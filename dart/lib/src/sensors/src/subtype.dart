part of '../sensors.dart';

/// The execution sub-behavior of a [Sensor], qualifying its [SensorType].
///
/// [SensorSubType] further refines how a sensor of a given [SensorType] computes or unpacks its
/// value — e.g. a raw or interval-converted formula for [SensorType.constant], a condition or
/// message-driven increment for [SensorType.accumulator], or a CSV/JSON/XML unpack format for
/// [SensorType.unpack].
///
/// Each value is serialized to JSON as an uppercase string (e.g., `RAW`, `INTERVAL`). Use [toJson]
/// and [fromJson] to convert between enum and wire format.
///
/// If deserialization encounters an unknown subtype value, it defaults to [raw].
@JsonEnum(alwaysCreate: true)
enum SensorSubType {
  /// [raw] is used to perform a Layrz Compute Language formula, only used for [SensorType.constant].
  /// This is the fallback value used when an unknown subtype is received.
  @JsonValue('RAW')
  raw,

  /// [interval] is used to perform a Layrz Compute Language formula but applying a linear conversion, only used for
  /// [SensorType.constant].
  @JsonValue('INTERVAL')
  interval,

  /// [condition] is used to perform a Layrz Compute Language formula, when the execution is true, will increment by
  /// 1 the accumulator, only used for [SensorType.accumulator].
  @JsonValue('CONDITION')
  condition,

  /// [message] will increment by 1 the accumulator when a new message comes, only used for
  /// [SensorType.accumulator].
  @JsonValue('MESSAGE')
  message,

  /// [driver] is only used for [SensorType.authentication].
  @JsonValue('DRIVER')
  driver,

  /// [passenger] is only used for [SensorType.authentication].
  @JsonValue('PASSENGER')
  passenger,

  /// [op] is Operator, only used for [SensorType.authentication].
  @JsonValue('OPERATOR')
  op,

  /// [csv] is CSV raw format, only used for [SensorType.unpack].
  @JsonValue('CSV')
  csv,

  /// [json] is JSON raw format, only used for [SensorType.unpack].
  @JsonValue('JSON')
  json,

  /// [xml] is XML raw format, only used for [SensorType.unpack].
  @JsonValue('XML')
  xml,

  /// [base64] is image packed/encoded into base64, only used for [SensorType.image].
  @JsonValue('BASE64')
  base64,

  /// [flespi] is Flespi Media Server format for images.
  @JsonValue('FLESPI')
  flespi,

  /// [layrz] is the Layrz Media Server format for images.
  @JsonValue('LAYRZ')
  layrz,

  /// [unused] is a wildcard subtype.
  @JsonValue('UNUSED')
  unused,

  /// [python] is deprecated.
  @JsonValue('PYTHON')
  python,
  ;

  /// Returns the JSON representation of this subtype value (e.g., `RAW`, `INTERVAL`).
  @override
  String toString() => toJson();

  /// Converts this [SensorSubType] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is not found in
  /// the generated map (should never occur), defaults to `'RAW'`.
  String toJson() => _$SensorSubTypeEnumMap[this] ?? 'RAW';

  /// Converts a JSON string to a [SensorSubType].
  ///
  /// Accepts the uppercase JSON values (e.g., `'RAW'`, `'INTERVAL'`) from the server wire format.
  /// If the input does not match any known subtype, returns [raw] as the fallback default.
  static SensorSubType fromJson(String json) =>
      _$SensorSubTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? SensorSubType.raw;
}

/// Legacy [JsonConverter] for a nullable [SensorSubType]. Kept for backwards compatibility.
@Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
class SensorSubTypeOrNullConverter implements JsonConverter<SensorSubType?, String?> {
  /// Constructs a [SensorSubTypeOrNullConverter].
  @Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
  const SensorSubTypeOrNullConverter();

  @override
  SensorSubType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SensorSubType.fromJson(json);
  }

  @override
  String? toJson(SensorSubType? object) {
    return object?.toJson();
  }
}

/// Legacy [JsonConverter] for [SensorSubType]. Kept for backwards compatibility.
@Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
class SensorSubTypeConverter implements JsonConverter<SensorSubType, String> {
  /// Constructs a [SensorSubTypeConverter].
  @Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
  const SensorSubTypeConverter();

  @override
  SensorSubType fromJson(String json) {
    return SensorSubType.fromJson(json);
  }

  @override
  String toJson(SensorSubType object) {
    return object.toJson();
  }
}
