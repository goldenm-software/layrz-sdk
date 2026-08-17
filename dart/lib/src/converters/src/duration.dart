part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [Duration] and [num?].
///
/// Converts from JSON numeric values (seconds) to Dart [Duration?] and back.
/// Returns `null` when the input is `null`.
class DurationOrNullConverter implements JsonConverter<Duration?, num?> {
  /// Creates a [DurationOrNullConverter].
  const DurationOrNullConverter();

  @override
  Duration? fromJson(num? json) {
    return json == null ? null : Duration(seconds: json.toInt());
  }

  @override
  num? toJson(Duration? object) {
    if (object == null) {
      return null;
    }
    return object.inSeconds;
  }
}

/// A [JsonConverter] that converts between [Duration] and [num].
///
/// Converts from JSON numeric values (seconds) to Dart [Duration] and back.
class DurationConverter implements JsonConverter<Duration, num> {
  /// Creates a [DurationConverter].
  const DurationConverter();

  @override
  Duration fromJson(num json) {
    return Duration(seconds: json.toInt());
  }

  @override
  num toJson(Duration object) {
    return object.inSeconds;
  }
}
