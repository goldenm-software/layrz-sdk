part of '../sensors.dart';

/// The execution behavior of a [Sensor].
///
/// [SensorType] determines how a sensor computes its value — from a constant formula, an
/// accumulator, an unpacked raw payload, a captured media file, or an executed script or function.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `CONSTANT`, `ACCUMULATOR`). Use
/// [toJson] and [fromJson] to convert between enum and wire format.
///
/// If deserialization encounters an unknown type value, it defaults to [constant].
@JsonEnum(alwaysCreate: true)
enum SensorType {
  /// [constant] is a sensor that will return any possible value from a formula and conversions (if apply).
  /// This is the fallback value used when an unknown type is received.
  @JsonValue('CONSTANT')
  constant,

  /// [accumulator] is a sensor that will accumulate.
  @JsonValue('ACCUMULATOR')
  accumulator,

  /// [unpack] is a sensor that will unpack a value from a raw value comming from message.
  @JsonValue('UNPACK')
  unpack,

  /// [authentication] is a sensor that will authenticate a user.
  @JsonValue('AUTHENTICATION')
  authentication,

  /// [image] is a sensor that will capture an image.
  @JsonValue('IMAGE')
  image,

  /// [video] is a sensor that will capture a video.
  @JsonValue('VIDEO')
  video,

  /// [audio] is a sensor that will capture an audio.
  @JsonValue('AUDIO')
  audio,

  /// [lambda] is a sensor that will execute a Layrz (ex-lambda) Function.
  @JsonValue('LAMBDA')
  lambda,

  /// [script] is a sensor that will execute a script.
  @JsonValue('SCRIPT')
  script,

  /// [dyn] is a sensor that will execute a dynamic script.
  @JsonValue('DYNAMIC')
  dyn,
  ;

  /// Returns the JSON representation of this type value (e.g., `CONSTANT`, `ACCUMULATOR`).
  @override
  String toString() => toJson();

  /// Converts this [SensorType] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is not found in
  /// the generated map (should never occur), defaults to `'CONSTANT'`.
  String toJson() => _$SensorTypeEnumMap[this] ?? 'CONSTANT';

  /// Converts a JSON string to a [SensorType].
  ///
  /// Accepts the uppercase JSON values (e.g., `'CONSTANT'`, `'ACCUMULATOR'`) from the server wire
  /// format. If the input does not match any known type, returns [constant] as the fallback
  /// default.
  static SensorType fromJson(String json) =>
      _$SensorTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? SensorType.constant;
}

/// Legacy [JsonConverter] for [SensorType]. Kept for backwards compatibility.
@Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
class SensorTypeConverter implements JsonConverter<SensorType, String> {
  /// Constructs a [SensorTypeConverter].
  @Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
  const SensorTypeConverter();

  @override
  SensorType fromJson(String json) {
    return SensorType.fromJson(json);
  }

  @override
  String toJson(SensorType object) {
    return object.toJson();
  }
}

/// Legacy [JsonConverter] for a nullable [SensorType]. Kept for backwards compatibility.
@Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
class SensorTypeOrNullConverter implements JsonConverter<SensorType?, String?> {
  /// Constructs a [SensorTypeOrNullConverter].
  @Deprecated('Now, uses the native converter from json_serializable and @JsonEnum decorator')
  const SensorTypeOrNullConverter();

  @override
  SensorType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SensorType.fromJson(json);
  }

  @override
  String? toJson(SensorType? object) {
    return object?.toJson();
  }
}
